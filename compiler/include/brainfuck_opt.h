#ifndef BRAINFUCK_OPT_H
#define BRAINFUCK_OPT_H

#include <stddef.h>

#include <brainfuck.h>

#ifdef __cplusplus
extern "C" {
#endif

// The following instructions are used to optimize the brainfuck code
// Note: one must collapse instructions first, as other functions
// depend on this happening,
// and purge instructions after a call to any one of these functions
// Also, one should also call optimize_zero_cell before calling the other ones
// (with the exception of collapse, which should also go first)
// as square algorithm depends on it

/**
 * purge_instructions() - delete all instructions where repetitions is 0
 * @len: the current length of the array
 * @instrs: the array of instructions representing the program
 *
 * Return: the new length of the array
 */
size_t purge_instructions(size_t len, struct bf_instruction instrs[static len]);

/**
 * collapse_instructions() - collapse repeated -+<>
 * @len: current length of the instrs array
 * @instrs: the bf_instruction array representing the program
 * @opts: compiler options
 *
 * Return: None
 */
void collapse_instructions(size_t len, struct bf_instruction instrs[static len],
			   const struct compiler_options *opts);

/**
 * collapse_instructions() - collapse repeated opposite instructions
 * @len: current length of the instrs array
 * @instrs: the bf_instruction array representing the program
 * @opts: compiler options
 *
 * Note: collapse_instructions() may have to be called first
 *
 * Return: None
 */
void remove_opposite_instructions(size_t len,
				  struct bf_instruction instrs[static len],
				  const struct compiler_options *opts);

/**
 * zero_cell() - optimize [-] and [+] to a zero instruction
 * @len: current length of the instrs array
 * @instrs: the bf_instruction array representing the program
 * @opts: compiler options
 *
 * Return: None
 */
void optimize_zero_cell(size_t len, struct bf_instruction instrs[static len],
			const struct compiler_options *opts);

/**
 * square_algorithm() - optimize the squaring algorithm
 * @len: current length of the instrs array
 * @instrs: the bf_instruction array representing the program
 * @opts: compiler options
 *
 * Note: a call to collapse_instructions may be necessary after calling this
 *
 * Return: None
 */
void optimize_square_algorithm(size_t len,
			       struct bf_instruction instrs[static len],
			       const struct compiler_options *opts);

#ifdef __cplusplus
}
#endif

#endif
