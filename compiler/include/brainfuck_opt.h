#ifndef BRAINFUCK_OPT_H
#define BRAINFUCK_OPT_H

#include <config.h>
#include <stddef.h>

#include <brainfuck.h>

#ifdef __cplusplus
extern "C" {
#endif

/**
 * get_signed_repetitions() - get the signed repetitions for a <>+- instruction
 * @instr: the bf_instruction to get signed repetitions from
 * @result: where to put the result, if the functions succeeds
 *
 * This function will attempt to get the signed repetitions from a
 * bf_instruction. That is, -repetitions if instr is deemed to be a "negative"
 * instruction, and repetitions if instr is deemed to be a "positive"
 * instruction.
 * + and > are classified as "positive" instructions
 * - and < are deemed as "negative" instructions
 *
 * Return: 0 indicates that instr->instruction was a valid instruction +-<>
 * 	-1 indicates that instr->instruction was not a valid instruction
 */
static inline int get_signed_repetitions(const struct bf_instruction *instr,
					 ssize_t *result)
{
	const char in = instr->instruction;

	if (in == '<' || in == '-') {
		*result = -instr->repetitions;
		return 0;
	} else if (in == '>' || in == '+') {
		*result = instr->repetitions;
		return 0;
	}

	return -1;
}

/**
 * is_pointer_instruction() - check if an instruction is moving the pointer
 * @instr: the instruction
 *
 * Return: true if instr->instruction is '<' or '>'
 * 	false otherwise
 */
static inline _Bool is_pointer_instruction(const struct bf_instruction *instr)
{
	return instr->instruction == '<' || instr->instruction == '>';
}

// The following instructions are used to optimize the brainfuck code
// Note: one must collapse instructions first, as other functions
// depend on this happening,
// and purge instructions after a call to any one of these functions
// Also, one should also call optimize_zero_cell before calling the other ones
// (with the exception of collapse, which should also go first)
// as square algorithm depends on it

/**
 * purge_instructions() - delete all instructions where repetitions is 0
 * @arr: the array of struct bf_instruction
 *
 * Return: None
 */
void purge_instructions(struct __array *arr);

/**
 * collapse_instructions() - collapse repeated -+<>
 * @arr: the array of struct bf_instruction
 *
 * Return: None
 */
void collapse_instructions(struct __array *arr);

/**
 * remove_opposite_instructions() - collapse repeated opposite instructions
 * @arr: the array of struct bf_instruction
 *
 * Note: collapse_instructions() may have to be called first
 *
 * Return: None
 */
void remove_opposite_instructions(struct __array *arr);

/**
 * collapse_remove_and_purge() - auxiliary helper to call the above 3 functions
 * @arr: the array of struct bf_instruction
 *
 * this function will call purge_instructions(),
 * collapse_instructions(), and remove_opposite_instructions()
 * on the array of bf_instruction
 *
 * Return: None
 */
void collapse_remove_and_purge(struct __array *arr);

/**
 * zero_cell() - optimize [-] and [+] to a zero instruction
 * @arr: the array of struct bf_instruction
 *
 * Return: None
 */
void optimize_zero_cell(struct __array *arr);

/**
 * square_algorithm() - optimize the squaring algorithm
 * @arr: the array of struct bf_instruction
 * @opts: compiler options
 *
 * a call to collapse_instructions and remove_opposite_instructions
 * may be necessary after this
 *
 * on error, this function will call warn()
 *
 * Return: -1 indicates library error, and errno will be set,
 * 	0 indicates success
 */
int optimize_square_algorithm(struct __array *arr,
			       const struct compiler_options *opts);

/**
 * loop_optimizer() - general loop optimizer
 * @arr: the bf_instruction array representing the program
 * @opts: compiler options
 *
 * This will optimize away loops in the form
 * [(move)(inc/dec)(repeat)(to_control)(dec)]
 * as those will add a multiple of the control to the cells.
 * at the start of the loop, the control should be the pointed-to value
 * in other words, the net displacement over the loop should be 0
 *
 * on error this function will call warn()
 *
 * Return: -1 indicates library error, and errno will be set,
 * 	0 indicates success
 */
int loop_optimizer(struct __array *arr, const struct compiler_options *opts);

#ifdef __cplusplus
}
#endif

#endif
