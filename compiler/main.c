// Brainfuck compiler for linux AMD64
#include <assert.h>
#include <errno.h>
#include <limits.h>
#include <linux/limits.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <err.h>
#include <fcntl.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/mman.h>
#include <stdint.h>
#include <time.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/wait.h>

#include <brainfuck.h>

extern char **environ;

/**
 * handle_child_process() - execute the assembler or linker depending on assemble
 * @filename: the filename for the assembly or the object file to assemble/link
 * @output_filename: the output filename for the operation
 * @assemble: true to assemble, false to link
 *
 * After fork(), this should be called in the child process
 *
 * Context: if it works,
 * 	the process is completely replaced due to the call to exec
 * 	if it fails, -1 may be returned if it didn't get to call exec
 *
 * Return: On success, nothing is returned.
 * 	On error, -1 is returned and errno is set
 *
 * Errors:
 * 	EEXIST: the generated output file already exists
 * 	other: idk check stat() and execl()
 */
int handle_child_process(const char *filename, const char *output_filename,
			 _Bool assemble)
{
	char *executable_path = NULL;
	if (assemble) {
		// ensure the output file does not already exist
		executable_path = "/bin/as";
	} else {
		executable_path = "/bin/ld";
	}

	// ensure the output file does not already exist
	struct stat s;
	int r = stat(output_filename, &s);
	if (r == -1 && errno != ENOENT) {
		int e = errno;
		warn("can not stat %s", output_filename);
		errno = e;
		return -1;
	}

	else if (r != -1) {
		errno = EEXIST;
		warnx("output file %s already exists", output_filename);
		return -1;
	}

	execl(executable_path, executable_path, filename, "-o", output_filename,
	      (char *)NULL);
	return 0;
}

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

	int bf_fd = open(argv[1], O_RDONLY);
	if (bf_fd == -1) {
		err(EXIT_FAILURE, "can not access %s", argv[1]);
	}

	char *assembly_output = malloc(ASSEMBLY_MAX_SIZE);
	if (assembly_output == NULL) {
		close(bf_fd);
		err(EXIT_FAILURE, "malloc");
	}

	compile_brainfuck(assembly_output, bf_fd);
	close(bf_fd);

	time_t seconds = time(NULL);

	char assembly_filename[PATH_MAX + 1];
	char object_filename[PATH_MAX + 1];
	char executable_filename[PATH_MAX + 1];

	assembly_filename[PATH_MAX] = 0;
	object_filename[PATH_MAX] = 0;
	executable_filename[PATH_MAX] = 0;

	snprintf(assembly_filename, PATH_MAX + 1, "/tmp/brainfuck_%lld.s",
		 (long long)seconds);

	snprintf(object_filename, PATH_MAX + 1, "/tmp/brainfuck_%lld.o",
		 (long long)seconds);

	// TODO: -o option
	snprintf(executable_filename, PATH_MAX + 1, "./a.out");

	int as_fd = open(assembly_filename, O_CREAT | O_EXCL | O_RDWR, 0600);
	if (as_fd == -1) {
		warn("can not create %s", assembly_filename);
		free(assembly_output);
		assembly_output = NULL;
		return EXIT_FAILURE;
	}

	if (write(as_fd, assembly_output, strlen(assembly_output)) == -1) {
		warn("can not write to %s", assembly_filename);
		free(assembly_output);
		assembly_output = NULL;
		close(as_fd);
		return EXIT_FAILURE;
	}
	free(assembly_output);
	assembly_output = NULL;

	close(as_fd);

	pid_t child_pid = fork();
	if (child_pid == -1) {
		err(EXIT_FAILURE, "can not create child process");
	}

	if (child_pid == 0) {
		handle_child_process(assembly_filename, object_filename, true);
		exit(EXIT_FAILURE);
	}

	if (waitpid(child_pid, NULL, 0) == -1) {
		err(EXIT_FAILURE, "waitpid");
	}

	unlink(assembly_filename);

	child_pid = fork();
	if (child_pid == -1) {
		err(EXIT_FAILURE, "can not create child process");
	}

	if (child_pid == 0) {
		handle_child_process(object_filename, executable_filename,
				     false);
		exit(EXIT_FAILURE);
	}

	if (waitpid(child_pid, NULL, 0) == -1) {
		err(EXIT_FAILURE, "waitpid");
	}

	unlink(object_filename);
	return 0;
}
