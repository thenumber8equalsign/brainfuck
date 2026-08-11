#include <compiler.h>
#include <errno.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <unistd.h>
#include <err.h>
#include <time.h>
#include <linux/limits.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <sys/wait.h>

/**
 * output_to_file() - put str into the file
 * @str: the srting to put into the file
 * @pathname: the pathname for the file
 *
 * This function will attempt to write the contents of @str into the file
 * @pathname
 *
 * Context: will not sleep
 *
 * Return: 0 on success, -1 on error
 */
int output_to_file(const char *str, const char *pathname)
{
	int fd = open(pathname, O_CREAT | O_RDWR | O_TRUNC, 00644);
	if (fd == -1) {
		int e = errno;
		warn("can not open %s", pathname);
		errno = e;
		return -1;
	}

	if (write(fd, str, strlen(str)) == -1) {
		int e = errno;
		warn("write");
		errno = e;
		return -1;
	}

	close(fd);
	return 0;
}

/**
 * handle_child_process() - execute the assembler or linker depending on assemble
 * @pathname: the pathname for the assembly or the object file to assemble/link
 * @output_pathname: the output pathname for the operation
 * @assemble: true to assemble, false to link
 *
 * After fork(), this should be called in the child process
 *
 * Context: if it works,
 * 	the process is replaced due to the call to exec
 * 	if it fails, -1 may be returned if it didn't get to call exec
 *
 * Return: On success, nothing is returned.
 * 	On error, -1 is returned and errno is set
 *
 * Errors:
 * 	EEXIST: the output file already exists
 * 	other: idk check stat() and execl()
 */
int handle_child_process(const char *pathname, const char *output_pathname,
			 bool assemble)
{
	const char *executable_path = NULL;
	if (assemble) {
		executable_path = "/bin/as";
	} else {
		executable_path = "/bin/ld";
	}

	// ensure the output file does not already exist, only if assembling
	struct stat s;
	int r = stat(output_pathname, &s);
	if (r == -1 && errno != ENOENT) {
		int e = errno;
		warn("can not stat %s", output_pathname);
		errno = e;
		return -1;
	} else if (r != -1 && assemble) {
		warnx("output file %s already exists", output_pathname);
		errno = EEXIST;
		return -1;
	}

	execl(executable_path, executable_path, pathname, "-o", output_pathname,
	      (char *)NULL);
	return 0;
}

/**
 * assemble_and_link() - assemble an assembly string and link it
 * @assembly_str: the string containing the assembly code
 * @executable_pathname: the pathname for the final executable
 *
 * This function will create two files in /tmp/ which will be called
 * brainfuck_<time>.s and brainfuck_<time>.o, where time is the return value of
 * time(NULL) when the function is entered.
 * These files will then be removed, unless an error occurs somewhere,
 * then they might not be
 *
 * If these files already exists, the function will exit with -1, and errno
 * will be set to EEXIST
 *
 * Context: this will create a child process to assemble and link the files,
 * and wait for those processes to complete, these processes will run /bin/as
 * and /bin/ld
 *
 * Return: 0 on success, -1 for library/system call error with errno being set,
 * any other nonzero value for another kind of error
 */
int assemble_and_link(const char *assembly_str, const char *executable_pathname)
{
	time_t seconds = time(NULL);

	char assembly_pathname[PATH_MAX];
	char object_pathname[PATH_MAX];

	assembly_pathname[PATH_MAX - 1] = 0;
	object_pathname[PATH_MAX - 1] = 0;

	snprintf(assembly_pathname, PATH_MAX, "/tmp/brainfuck_%lld.s",
		 (long long)seconds);

	snprintf(object_pathname, PATH_MAX, "/tmp/brainfuck_%lld.o",
		 (long long)seconds);

	int as_fd = open(assembly_pathname, O_CREAT | O_EXCL | O_WRONLY, 00644);
	if (as_fd == -1 && errno != EEXIST) {
		int e = errno;
		warn("can not open %s", assembly_pathname);
		errno = e;
		return -1;
	} else if (as_fd == -1 && errno == EEXIST) {
		errno = EEXIST;
		return -1;
	}

	if (write(as_fd, assembly_str, strlen(assembly_str)) == -1) {
		int e = errno;
		warn("can not write to %s", assembly_pathname);
		close(as_fd);
		errno = e;
		return -1;
	}

	close(as_fd);

	pid_t child_pid = fork();
	if (child_pid == -1) {
		return -1;
	}

	if (child_pid == 0) {
		handle_child_process(assembly_pathname, object_pathname, true);
		exit(EXIT_FAILURE);
	}

	int status = 0;

	if (waitpid(child_pid, &status, 0) == -1) {
		warn("waitpid");
		return -1;
	}

	unlink(assembly_pathname);

	if (WEXITSTATUS(status) != 0) {
		fprintf(stderr, "could not assemble\n");
		return 1;
	}

	child_pid = fork();
	if (child_pid == -1) {
		return -1;
	}

	if (child_pid == 0) {
		handle_child_process(object_pathname, executable_pathname,
				     false);
		exit(EXIT_FAILURE);
	}

	if (waitpid(child_pid, &status, 0) == -1) {
		warn("waitpid");
		return -1;
	}

	unlink(object_pathname);

	if (WEXITSTATUS(status) != 0) {
		fprintf(stderr, "could not link\n");
		return 2;
	}

	return 0;
}
