#ifndef __COMPILER_H__
#define __COMPILER_H__

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
 * Context: will not sleep
 *
 * Return: 0 on success, -1 if error
 */
int output_to_file(const char *str, const char *pathname);

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
 * Return: 0 on success, -1 on error and errno will be set
 */
int assemble_and_link(const char *assembly_str,
		      const char *executable_pathname);

#ifdef __cplusplus
}
#endif

#endif
