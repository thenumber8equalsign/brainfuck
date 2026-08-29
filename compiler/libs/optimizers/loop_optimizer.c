#include "arrays.h"
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
		if (instrs[j].assembly.data != NULL) {
			return;
		}

		if (instrs[j].instruction == '[') {
			// return if we find that we have a nested loop
			return;
		} else if (instrs[j].instruction == ']') {
			found = true;
			end_index = j;
			break;
		}

		cond = instrs[j].instruction != '-' &&
		       instrs[j].instruction != '+' &&
		       !is_pointer_instruction(&instrs[j]);
		if (cond) {
			return;
		}
	}

	if (!found) {
		return;
	}

	ssize_t total_displacement = 0;
	size_t num_cells = 0;
	for (size_t j = i; j < end_index; ++j) {
		if (!is_pointer_instruction(&instrs[j])) {
			continue;
		}
		ssize_t rep = 0;
		int a = get_signed_repetitions(&instrs[j], &rep);
#ifdef DEBUG
		assert(a == 0);
#endif
		++num_cells;
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
	struct __array pieces;
	if (array_init(&pieces) == -1) {
		return;
	}

	int ret =
		array_reserve(&pieces, num_cells * sizeof(struct loop_piece)) +
		1;
	if (ret == -1) {
		array_free(&pieces);
		return;
	}

	for (size_t j = i + 1; j < end_index; ++j) {
		if (!is_pointer_instruction(&instrs[j])) {
			continue;
		}

#ifdef DEBUG
		assert(instrs[j + 1].instruction == '+' ||
		       instrs[j + 1].instruction == '-');
#endif

		ssize_t rep = 0;
		ssize_t incs = 0;
		ret = get_signed_repetitions(&instrs[j], &rep);
#ifdef DEBUG
		assert(ret == 0);
#endif

		ret = get_signed_repetitions(&instrs[j + 1], &incs);
#ifdef DEBUG
		assert(ret == 0);
#endif
		struct loop_piece piece;
		piece.increments = incs;
		piece.offset_from_control = rep;
		array_append_bulk(&pieces, (char *)&piece, sizeof(piece));
	}

	// now make the offsets from the base instead of from the
	// previous offset

	for (size_t j = 1; j < pieces.length / sizeof(struct loop_piece); ++j) {
		struct loop_piece *a = (void *)pieces.data;
		a[j].offset_from_control += a[j - 1].offset_from_control;
	}

#ifdef DEBUG
	{
		const struct loop_piece *a = (void *)pieces.data;
		const size_t l = pieces.length / sizeof(struct loop_piece);
		assert(l >= 1);
		assert(a[l - 1].increments == -1);
		assert(a[l - 1].offset_from_control == 0);
	}
#endif

	for (size_t j = i; j <= end_index; ++j) {
	//	instrs[j].repetitions = 0;
	}

	array_free(&pieces);
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
