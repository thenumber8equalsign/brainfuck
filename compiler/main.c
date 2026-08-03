// Brainfuck compiler for linux AMD64
#include <assert.h>
#include <limits.h>
#include <stdlib.h>
#include <stdio.h>
#include <err.h>
#include <fcntl.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/mman.h>
#include <stdint.h>

#include <brainfuck.h>

int main(int argc, char **argv)
{
	// ensure 64 bit
	assert(sizeof(long) == 8);
	assert(sizeof(size_t) == sizeof(long));
	assert(sizeof(uintptr_t) == sizeof(long));

	if (argc != 2) {
		fprintf(stderr, "Usage: %s <file>\n", argv[0]);
		return EXIT_FAILURE;
	}

	int fd = open(argv[1], O_RDONLY);
	if (fd == -1) {
		err(EXIT_FAILURE, "open");
	}

	char *assembly_output = malloc(ASSEMBLY_MAX_SIZE);
	if (assembly_output == NULL) {
		close(fd);
		err(EXIT_FAILURE, "malloc");
	}

	compile_brainfuck(assembly_output, fd);

	puts(assembly_output);

	close(fd);
	free(assembly_output);
	assembly_output = NULL;
	return 0;
}
