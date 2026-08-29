// brainfuck_opt.c: simple optimizers
// other more complex optimizers can be found in compiler/libs/optimizers
#include <config.h>
#include <stdio.h>
#include <string.h>
#include <err.h>

#include <brainfuck.h>
#include <brainfuck_opt.h>
#include <arrays.h>

#ifdef DEBUG
#include <assert.h>
#endif

void purge_instructions(struct __array *arr)
{
	size_t len = arr->length / sizeof(struct bf_instruction);
	struct bf_instruction *instrs = (void *)arr->data;
	for (size_t i = 0; i < len;) {
		const _Bool val = instrs[i].repetitions == 0;

		for (size_t j = i; j < len - 1 && val; ++j) {
			memcpy(&instrs[j], &instrs[j + 1], sizeof(instrs[j]));
		}

		if (val) {
			--len;
		} else {
			++i;
		}
	}
	arr->length = len * sizeof(struct bf_instruction);
}

static _Bool is_collapsable_instruction(char instruction)
{
	return instruction == '+' || instruction == '-' || instruction == '<' ||
	       instruction == '>';
}

static _Bool is_opposite_instruction(char a, char b)
{
	return (a == '+' && b == '-') || (a == '<' && b == '>') ||
	       (a == '-' && b == '+') || (a == '>' && b == '<');
}

void collapse_instructions(struct __array *arr)
{
	size_t len = arr->length / sizeof(struct bf_instruction);
	struct bf_instruction *instrs = (void *)arr->data;
	for (size_t i = 1; i < len; ++i) {
		const char prev = instrs[i - 1].instruction;
		const char cur = instrs[i].instruction;

		if (!is_collapsable_instruction(cur) ||
		    !is_collapsable_instruction(prev))
			continue;

		if (prev == cur) {
			instrs[i].repetitions += instrs[i - 1].repetitions;

			instrs[i - 1].repetitions = 0;
			continue;
		}
	}
}

void remove_opposite_instructions(struct __array *arr)
{
	size_t len = arr->length / sizeof(struct bf_instruction);
	struct bf_instruction *instrs = (void *)arr->data;
	for (size_t i = 1; i < len; ++i) {
		const char prev = instrs[i - 1].instruction;
		const char cur = instrs[i].instruction;
		if (!is_opposite_instruction(prev, cur))
			continue;

		ssize_t *cur_rep = &instrs[i].repetitions;
		ssize_t *prev_rep = &instrs[i - 1].repetitions;

		if (*prev_rep > *cur_rep) {
			*prev_rep -= *cur_rep;

			*cur_rep = 0;
		} else if (*prev_rep < *cur_rep) {
			*cur_rep -= *prev_rep;

			*prev_rep = 0;
		} else if (*prev_rep == *cur_rep) {
			*prev_rep = 0;
			*cur_rep = 0;
		}
	}
}

void optimize_zero_cell(struct __array *arr)
{
	size_t len = arr->length / sizeof(struct bf_instruction);
	struct bf_instruction *instrs = (void *)arr->data;
	for (size_t i = 0; i < len - 2 && len > 2; ++i) {
		if (instrs[i].repetitions == 0) {
			continue;
		}

		struct bf_instruction *cur = &instrs[i];
		struct bf_instruction *next = &instrs[i + 1];
		struct bf_instruction *next_next = &instrs[i + 2];

		// I really don't want to hit that 80 character bar in the if
		_Bool replace = false;
		replace = cur->instruction == '[';
		replace = replace && (next_next->instruction == ']');
		replace = replace && (next->instruction == '-' ||
				      next->instruction == '+');

		if (replace) {
			cur->repetitions = 1;
			next->repetitions = 0;
			cur->instruction = 'z';
			next_next->repetitions = 0;
			i += 2;
		}
	}
}

void collapse_remove_and_purge(struct __array *arr)
{
	purge_instructions(arr);

	collapse_instructions(arr);
	purge_instructions(arr);

	remove_opposite_instructions(arr);
	purge_instructions(arr);
}
