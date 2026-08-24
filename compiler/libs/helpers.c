#include <stdio.h>
#include <string.h>
#include <getopt.h>
#include <stdlib.h>
#include <brainfuck.h>
#include <main_helpers.h>

extern char *optarg;
extern int optind;

/**
 * print_help() - print a help message to stderr or stdout
 * @use_stderr: if true, output to stderr, otherwise output to stdout
 * @argv0: argv[0]
 *
 * Context: will not sleep
 *
 * Return: none
 */
void print_help(bool use_stderr, const char *argv0)
{
	FILE *stream = (use_stderr) ? stderr : stdout;

	// I stopped thinking how to name the options when i added -a
	fprintf(stream,
		"Usage: %s [-S] [-o output] [-O] [-h] [-B behavior]"
		" [-c width] [-a comment_style]"
		"brainfuck_file\n\n",
		argv0);

	fprintf(stream, "\t-S\n\t\toutput assembly only\n");

	fprintf(stream, "\t-o output\n\t\tspecify output file,"
			" the default is ./a.out\n");

	fprintf(stream, "\t-O\n\t\tapply simple optimizations,"
			" the default being no optimizations\n");

	fprintf(stream,
		"\t-B behavior\n\t\tbehavior of pointer overflow/underflow,\n");

	fprintf(stream,
		"\t\tbehavior:\n\t\t\t\"undefined\": anything goes (fast)\n");

	fprintf(stream, "\t\t\t\"wrap\": wrap it by reducing the pointer modulo"
			" the array size "
			"with some extra logic for decreasing it"
			", this is the default\n");

	fprintf(stream, "\t\t\t\"abort\": call SYS_exit(43). Why 43?"
			" Because it is Sheldon Cooper's\n");

	fprintf(stream, "\t\t\trecord for how many times he could kick "
			"the ball (S6E8 \"The 43 Peculiarity\").\n");

	fprintf(stream, "\t-c width\n\t\t"
			"set the cell width (in bytes), default is 1."
			" This should be one of 1, 2, 4, or 8\n");
	fprintf(stream,
		"\t-a comment_style\n\t\t"
		"comment behavior\n"
		"\t\tcomment_style:\n\t\t\t"
		"\"none\": disable comments entirely\n\t\t\t"
		"\"line\": comments begin with # and the entire rest of the "
		"line is ignored\n\t\t\t"
		"\"double\": same as \"line\", but with the added ## "
		"which will comment out all code until the next ## "
		"which allows for multi-line comments (default)\n"
	);

	fprintf(stream, "\t-h\n\t\tprint this help\n");

	fprintf(stream, "\n");
}

/**
 * parse_options() - parse command line options and put them into options
 * 	and option_flags
 * @argc: self explanatory
 * @argv: self explanatory
 * @option_flags: this will be set by this function to be one or more of the
 * 	FL_* macros (defined above) ORed together
 * @options: this will be set by this function to be the
 * 	struct compiler_options as dictated by the command line options,
 * 	or the defaults, which are defined inside this function
 * @brainfuck_pathname: this will be set to the pathname for the brainfuck file
 * @output_pathname: this will be set to the pathname for the output file,
 * 	or ./a.out which is the default
 *
 * Context: this may cause the program to exit if an error occurs
 *
 * Return: 0 for success, -1 for error
 */
int parse_options(int argc, char **argv, uint64_t *option_flags,
		  struct compiler_options *options, char *brainfuck_pathname,
		  char *output_pathname)
{
	int opt;
	char *pointer_behavior = "wrap";
	char *width_str = "1";
	char *endptr = NULL;
	char *comm = "double";

	while ((opt = getopt(argc, argv, "So:hOB:c:a:")) != -1) {
		switch (opt) {
		case 'S':
			*option_flags |= FL_OUTPUT_ASSEMBLY;
			break;
		case 'o':
			strncpy(output_pathname, optarg, PATH_MAX);
			break;
		case 'h':
			print_help(false, argv[0]);
			exit(EXIT_SUCCESS);
		case 'O':
			options->optimize = true;
			break;
		case 'B':
			pointer_behavior = optarg;
			break;
		case 'c':
			width_str = optarg;
			break;
		case 'a':
			comm = optarg;
			break;
		case '?':
		default:
			print_help(true, argv[0]);
			exit(EXIT_FAILURE);
		}
	}

	if (optind >= argc) {
		print_help(true, argv[0]);
		exit(EXIT_FAILURE);
	}

	strncpy(brainfuck_pathname, argv[optind], PATH_MAX);

	options->cell_width = strtoul(width_str, &endptr, 10);
	if (*endptr != 0) {
		print_help(true, argv[0]);
		exit(EXIT_FAILURE);
	}

	switch (options->cell_width) {
	case 1:
	case 2:
	case 4:
	case 8:
		break;
	default:
		print_help(true, argv[0]);
		exit(EXIT_FAILURE);
	}

	if (strcmp(pointer_behavior, "wrap") == 0) {
		options->overflow = POINTER_WRAP;
	} else if (strcmp(pointer_behavior, "abort") == 0) {
		options->overflow = POINTER_ABORT;
	} else if (strcmp(pointer_behavior, "undefined") == 0) {
		options->overflow = POINTER_UNDEFINED;
	} else {
		print_help(true, argv[0]);
		exit(EXIT_FAILURE);
	}

	if (strcmp(comm, "double") == 0) {
		options->comments = COMMENT_DOUBLE_HASH;
	} else if (strcmp(comm, "line") == 0) {
		options->comments = COMMENT_LF;
	} else if (strcmp(comm, "none") == 0) {
		options->comments = NO_COMMENTS;
	} else {
		print_help(true, argv[0]);
		exit(EXIT_FAILURE);
	}

	return 0;
}
