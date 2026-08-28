#ifndef COMPILER_H
#define COMPILER_H

#include <config.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

/**
 * output_to_file() - put str into the file
 * @str: the srting to put into the file
 * @pathname: the pathname for the file
 *
 * This function will attempt to write the contents of @str into the file
 * @pathname
 *
 * Return: 0 on success, -1 if error
 */
int output_to_file(const char *str, const char *pathname);

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
int assemble_and_link(const char *assembly_str,
		      const char *executable_pathname);

#ifdef __cplusplus
}
#endif

#endif
