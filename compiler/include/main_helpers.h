#ifndef MAIN_HELPERS_H
#define MAIN_HELPERS_H

#include <config.h>
#include <stdbool.h>
#include <stdint.h>
#include <brainfuck.h>
#include <linux/limits.h>

#define FL_OUTPUT_ASSEMBLY ((uint32_t)0x1)

/**
 * print_help() - print a help message to stderr or stdout
 * @use_stderr: if true, output to stderr, otherwise output to stdout
 * @argv0: argv[0]
 *
 * Context: will not sleep
 *
 * Return: none
 */
void print_help(bool use_stderr, const char *argv0);

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
		  struct compiler_options *options, char brainfuck_pathname[PATH_MAX],
		  char output_pathname[PATH_MAX]);

#endif
