#include <config.h>
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
 * handle_child_process() - execute the assembler or linker depending on
 * 	@assemble
 * @pathname: the pathname for the assembly or the object file to assemble/link
 * @output_pathname: the output pathname for the operation
 * @assemble: true to assemble, false to link
 *
 * After fork(), this should be called in the child process
 * This will overwrite the file contents of output_pathname
 *
 * Context: if it works,
 * 	the process is replaced due to the call to exec
 * 	if it fails, -1 may be returned if it didn't get to call exec
 *
 * Return: On success, nothing is returned, as the process
 * 	was completely replaced
 * 	if the function returns, an error happened
 */
static int handle_child_process(const char *pathname,
				const char *output_pathname, bool assemble)
{
	const char *executable_path = NULL;
	if (assemble) {
		executable_path = "/bin/as";
	} else {
		executable_path = "/bin/ld";
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

	snprintf(assembly_pathname, PATH_MAX, "/tmp/brainfuckXXXXXX.s");
	snprintf(object_pathname, PATH_MAX, "/tmp/brainfuckXXXXXX.o");

	int as_fd = mkstemps(assembly_pathname, 2);
	if (as_fd == -1) {
		int e = errno;
		warn("mkstemps");
		errno = e;
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
	as_fd = -1;

	// create and get a unique pathname to the object file,
	// this is only here so that obj_pathname can then be used with
	// handle_child_process
	int obj_fd = mkstemps(object_pathname, 2);
	if (obj_fd == -1) {
		int e = errno;
		warn("mkstemps");
		errno = e;
		return -1;
	}
	close(obj_fd);
	obj_fd = -1;

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
		unlink(object_pathname);
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
