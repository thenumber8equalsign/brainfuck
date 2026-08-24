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
#include <main_helpers.h>

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
	int ret;
	uint64_t option_flags = 0;
	int bf_fd;
	struct __array assembly_output;
	struct compiler_options options;

	output_pathname[PATH_MAX - 1] = 0;
	brainfuck_pathname[PATH_MAX - 1] = 0;

	strcpy(brainfuck_pathname, "./app2.bf");

	parse_options(argc, argv, &option_flags, &options, brainfuck_pathname,
		      output_pathname);

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
