#include "brainfuck.h"
#include <config.h>
#include <brainfuck_opt.h>
#include <stdbool.h>
#include <stddef.h>
#include <assert.h>

#include <stdio.h>

struct loop_piece {
	ssize_t offset_from_control;
	ssize_t increments;
};

static void loop_helper(size_t i, struct __array *arr,
			const struct compiler_options *opts)
{
	// this optimizer can only handle simple loops,
	// so ensure this loop is not nested
	_Bool found = false;
	size_t end_index = 0;
	_Bool cond = false; // this helps me avoid the 80 character bar in ifs
	size_t len = arr->length / sizeof(struct bf_instruction);
	struct bf_instruction *instrs = (void *)arr->data;
	for (size_t j = i + 1; j < len; ++j) {
		if (instrs[j].instruction == '[') {
			// return if we find that we have a nested loop
			// for future debugging (will be removed later)
			fprintf(stderr, "Nested loop detected\n");
			return;
		} else if (instrs[j].instruction == ']') {
			found = true;
			end_index = j;
			break;
		}
	}

	if (!found) {
		return;
	}

	ssize_t total_displacement = 0;
	for (size_t j = i; j < end_index; ++j) {
		if (!is_pointer_instruction(&instrs[j])) {
			continue;
		}
		ssize_t rep = 0;
		int a = get_signed_repetitions(&instrs[j], &rep);
#ifdef DEBUG
		assert(a == 0);
#endif
		total_displacement += rep;
	}

	// ensure we have only a single decrement, as i am too lazy for multiple
	const char last_inst = instrs[end_index - 1].instruction;
	const ssize_t last_rep = instrs[end_index - 1].repetitions;
	cond = total_displacement != 0 || last_inst != '-' ||
	       (last_inst == '-' && last_rep != 1);
	if (cond) {
		return;
	}

	if (total_displacement == 0) {
		fprintf(stderr, "Found loop with 0 displacement "
				"and ending in a single decrement\n");
	}

	// get an array of type struct loop_piece
	// which will represent how many increments each offset gets
	// we move to each and every cell
	// we then add (# increments * control_value)
	// or subtract (# decrements * control_value)
	// and zero the control cell
}

void loop_optimizer(struct __array *arr, const struct compiler_options *opts)
{
	for (size_t i = 0; i < arr->length / sizeof(struct bf_instruction);) {
		struct bf_instruction *instrs = (void *)arr->data;
		if (instrs[i].instruction != '[') {
			++i;
			continue;
		}
		loop_helper(i, arr, opts);

		++i;
	}
}
