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

#include <string>

#include <brainfuck.hpp>
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
		"Usage: %s [-S] [-o output] [-O] [-h] brainfuck_file\n\n",
		argv0);
	fprintf(stream, "\t-S\n\t\toutput assembly only\n");
	fprintf(stream,
		"\t-o output\n\t\tspecify output file, the default is ./a.out\n");
	fprintf(stream, "\t-O\n\t\tapply simple optimizations\n");
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

	char output_pathname[PATH_MAX] = "./a.out";
	char brainfuck_pathname[PATH_MAX];

	output_pathname[PATH_MAX - 1] = 0;
	brainfuck_pathname[PATH_MAX - 1] = 0;

	strcpy(brainfuck_pathname, "./app2.bf");

	uint32_t option_flags = 0;
	int opt = 0;

	while ((opt = getopt(argc, argv, "So:hO")) != -1) {
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

	int bf_fd = open(brainfuck_pathname, O_RDONLY);
	if (bf_fd == -1) {
		err(EXIT_FAILURE, "can not access %s", brainfuck_pathname);
	}

	std::string assembly_output;

	compile_brainfuck(&assembly_output, bf_fd, option_flags & FL_OPTIMIZE);
	close(bf_fd);

	if ((option_flags & FL_OUTPUT_ASSEMBLY) == 0) {
		assemble_and_link(assembly_output.c_str(), output_pathname);
	} else {
		output_to_file(assembly_output.c_str(), output_pathname);
	}

	return 0;
}
