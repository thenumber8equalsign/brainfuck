// Brainfuck compiler for linux AMD64
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <err.h>

#include <linux/limits.h>
#include <unistd.h>
#include <fcntl.h>

#include <brainfuck.h>
#include <compiler.h>

// flags for compiler options
#define FL_OUTPUT_ASSEMBLY ((uint32_t)0x1)
#define FL_OPTIMIZE ((uint32_t)0x2)

extern char *optarg;

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
	fprintf(stream,
		"Usage: %s [-S] [-o output] [-O] [-h] [-B behavior] brainfuck_file\n\n",
		argv0);
	fprintf(stream, "\t-S\n\t\toutput assembly only\n");
	fprintf(stream,
		"\t-o output\n\t\tspecify output file, the default is ./a.out\n");
	fprintf(stream,
		"\t-O\n\t\tapply simple optimizations, the default being no optimizations\n");
	fprintf(stream,
		"\t-B behavior\n\t\tbehavior of pointer overflow/underflow,\n");
	fprintf(stream,
		"\t\tbehavior:\n\t\t\t\"undefined\": anything goes (fast)\n");
	fprintf(stream,
		"\t\t\t\"wrap\": wrap it by reducing the pointer modulo the array size, this is the default\n");
	fprintf(stream, "\t\t\twith some extra logic for decreasing it\n");
	fprintf(stream,
		"\t\t\t\"abort\": call SYS_exit(43). Why 43? Because it is Sheldon Cooper's\n");
	fprintf(stream,
		"\t\t\trecord for how many times he could kick the ball (S6E8 \"The 43 Peculiarity\").\n");
	fprintf(stream, "\t-h\n\t\tprint this help\n");
	fprintf(stream, "\n");
}

int main(int argc, char **argv)
{
	// ensure 64 bit
	assert(sizeof(long) == 8);
	assert(sizeof(size_t) == sizeof(long));
	assert(sizeof(uintptr_t) == sizeof(long));

	if (argc < 2) {
		print_help(true, argv[0]);
		return EXIT_FAILURE;
	}

	// ensure the user can't break our getopt, which uses the gnu extension
	// of moving the non-option arguments to the end
	unsetenv("POSIXLY_CORRECT");

	char output_pathname[PATH_MAX] = "./a.out";
	char brainfuck_pathname[PATH_MAX];
	const char *pointer_behavior = "wrap";
	int ret;
	uint32_t option_flags = 0;
	int opt = 0;
	int bf_fd;
	struct __array assembly_output;

	output_pathname[PATH_MAX - 1] = 0;
	brainfuck_pathname[PATH_MAX - 1] = 0;

	strcpy(brainfuck_pathname, "./app2.bf");

	while ((opt = getopt(argc, argv, "So:hOB:")) != -1) {
		switch (opt) {
		case 'S':
			option_flags |= FL_OUTPUT_ASSEMBLY;
			break;
		case 'o':
			strncpy(output_pathname, optarg, PATH_MAX);
			break;
		case 'h':
			print_help(false, argv[0]);
			exit(EXIT_SUCCESS);
		case 'O':
			option_flags |= FL_OPTIMIZE;
			break;
		case 'B':
			pointer_behavior = optarg;
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

	struct compiler_options options;

	options.optimize = option_flags & FL_OPTIMIZE;

	if (strcmp(pointer_behavior, "wrap") == 0) {
		options.overflow = POINTER_WRAP;
	} else if (strcmp(pointer_behavior, "abort") == 0) {
		options.overflow = POINTER_ABORT;
	} else if (strcmp(pointer_behavior, "undefined") == 0) {
		options.overflow = POINTER_UNDEFINED;
	} else {
		print_help(true, argv[0]);
		exit(EXIT_FAILURE);
	}

	bf_fd = open(brainfuck_pathname, O_RDONLY);
	if (bf_fd == -1) {
		err(EXIT_FAILURE, "can not access %s", brainfuck_pathname);
	}

	ret = array_init(&assembly_output);
	if (ret != 0) {
		warn("could not init");
		return -1;
	}


	ret = compile_brainfuck(&assembly_output, bf_fd, &options);
	if (ret != 0) {
		array_free(&assembly_output);
		warnx("could not compile");
		return -1;
	}
	close(bf_fd);

	if ((option_flags & FL_OUTPUT_ASSEMBLY) == 0) {
		assemble_and_link(assembly_output.data, output_pathname);
	} else {
		output_to_file(assembly_output.data, output_pathname);
	}

	array_free(&assembly_output);
	return 0;
}
