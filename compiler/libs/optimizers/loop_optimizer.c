#include <config.h>
#include <stdbool.h>
#include <stddef.h>
#include <assert.h>
#include <string.h>
#include <stdio.h>
#include <err.h>

#include <arrays.h>
#include <brainfuck_opt.h>
#include <brainfuck.h>

struct loop_piece {
	ssize_t offset;
	ssize_t increments;
};

// another helper to check if we actually have a simple loop that the optimizer
// can handle
// end_index is where the ']' is
static _Bool is_simple_loop(size_t i, struct __array *arr, size_t *end_index)
{
	*end_index = SIZE_MAX;
	_Bool valid = true;
	_Bool cond;
	struct bf_instruction *instrs = (void *)arr->data;
	size_t len = arr->length / sizeof(struct bf_instruction);
	for (size_t j = i; j < len; ++j) {
		const char in = instrs[j].instruction;
		cond = instrs[j].repetitions == 0 ||
		       instrs[j].assembly.data != NULL;
		if (cond) {
			valid = false;
			return valid;
		}

		// only check against open loop if we are not at the first
		// instruction, which will be an open loop
		if (j > i && in == '[') {
			valid = false;
			return valid;
		}

		if (in == ']') {
			*end_index = j;
			break;
		}

		if (in != '<' && in != '>' && in != '-' && in != '+' && j > i) {
			valid = false;
			return valid;
		}
	}

#ifdef DEBUG
	assert(*end_index != SIZE_MAX);
#endif

	if (*end_index < 2) {
		valid = false;
		return valid;
	}

	// Now that we have verified it contains only the simple instructions
	// and does not contain a nested loop, now ensure the net displacement
	// is 0, and the control decrement is 0

	ssize_t net_offset = 0;
	for (size_t j = i; j < *end_index; ++j) {
		const char in = instrs[j].instruction;
		ssize_t reps = instrs[j].repetitions;

		if (in == '<') {
			reps *= -1;
		} else if (in != '<' && in != '>') {
			continue;
		}

		// a pointer instruction can not be last before the close loop
		if (j >= *end_index - 1) {
			valid = false;
			return valid;
		}

		net_offset += reps;
		// if at any moment, we are NOT at the end,
		// and the net offset has returned to 0, it is not simple
		// (it actually might still be, but I'm too lazy for that)
		if (net_offset == 0 && j != *end_index - 2) {
			valid = false;
			return valid;
		}
	}

	if (net_offset != 0) {
		valid = false;
		return valid;
	}

#ifdef DEBUG
	assert(*end_index >= 1);
#endif

	const size_t r = instrs[*end_index - 1].repetitions;
	const char in = instrs[*end_index - 1].instruction;
	if (in != '-' || r != 1) {
		valid = false;
		return valid;
	}

	return valid;
}

static int loop_helper(size_t i, struct __array *arr,
		       const struct compiler_options *opts)
{
	// the optimized loop, of type bf_instruction
	// the first bf_instruction will just be assembly,
	// moving the cell value into r13(d/w/b), and zeroing it
	// the rest will be pairs of moving, and adding a multiple of the
	// control (r13(d/w/b))
	struct bf_instruction *instrs = (void *)arr->data;
	struct __array loop;
	struct bf_instruction *loop_in;
	struct bf_instruction in;

	const char *multiplier;
	const char *word;
	const char *rax;
	const char *r13;
	const char *r14;

	char buf[4096];
	int ret_val = 0;
	size_t len;
	size_t end_index = 0;

	get_word_and_multiplier(&word, &multiplier, &rax, &r13, &r14, opts);
	memset(&loop, 0, sizeof(loop));
	memset(&in, 0, sizeof(in));

	if (array_init(&loop) == -1) {
		ret_val = -1;
		goto cleanup;
	}

	if (!is_simple_loop(i, arr, &end_index)) {
		ret_val = 0;
		goto cleanup;
	}

	const char *fmt = "\tmov	%1$s, %2$s PTR [rbx+r12%3$s]\n"
			  "\tmov	%2$s PTR [rbx+r12%3$s], 0\n";
	snprintf(buf, sizeof(buf), fmt, r13, word, multiplier);

	if (array_init(&in.assembly) == -1) {
		ret_val = -1;
		goto cleanup;
	}

	if (array_append_bulk(&in.assembly, buf, strlen(buf)) == -1) {
		array_free(&in.assembly);
		ret_val = -1;
		goto cleanup;
	}

	in.instruction = 0;
	in.repetitions = 1;

	if (array_append_bulk(&loop, (char *)&in, sizeof(in)) == -1) {
		array_free(&in.assembly);
		ret_val = -1;
		goto cleanup;
	}

	for (size_t j = i; j < end_index - 1; ++j) {
		if (!is_pointer_instruction(&instrs[j])) {
			continue;
		}
		struct bf_instruction move;
		struct bf_instruction add;
		ssize_t s_rep = 0;

		memset(&move, 0, sizeof(move));
		memset(&add, 0, sizeof(add));
		ret_val = get_signed_repetitions(&instrs[j + 1], &s_rep);
#ifdef DEBUG
		assert(j < arr->length / sizeof(struct bf_instruction) - 1);
		assert(instrs[j + 1].instruction == '+' ||
		       instrs[j + 1].instruction == '-');
		assert(ret_val == 0);
#endif
		ret_val = 0;
		move.instruction = instrs[j].instruction;
		move.repetitions = instrs[j].repetitions;

		add.repetitions = 1;
		add.instruction = 0;

		if (array_init(&add.assembly) == -1) {
			ret_val = -1;
			goto cleanup;
		}

		fmt = "\tmov	%1$s, %2$s\n" // mov rax, r13
		      "\tmov	%3$s, %4$zd\n" // mov r14, reps
		      "\tmul	%3$s\n" // mul r14 (reps)
		      // add rax to cell
		      "\tadd	%5$s PTR [rbx+r12%6$s], %1$s\n";
		snprintf(buf, sizeof(buf), fmt, rax, r13, r14, s_rep, word,
			 multiplier);
		if (array_append_bulk(&add.assembly, buf, strlen(buf)) == -1) {
			array_free(&add.assembly);
			ret_val = -1;
			goto cleanup;
		}

		if (j == end_index - 2) {
			array_free(&add.assembly);
			memset(&add, 0, sizeof(add));
		}

		ret_val = array_append_bulk(&loop, (void *)&move, sizeof(move));
		if (ret_val == -1) {
			array_free(&add.assembly);
			ret_val = -1;
			goto cleanup;
		}

		if (array_append_bulk(&loop, (void *)&add, sizeof(add)) == -1) {
			array_free(&add.assembly);
			ret_val = -1;
			goto cleanup;
		}
	}

	for (size_t j = i; j <= end_index; ++j) {
		instrs[j].repetitions = 0;
	}

	ret_val = array_insert(arr, i * sizeof(struct bf_instruction),
			       loop.data, loop.length);
	if (ret_val == -1) {
		ret_val = -1;
		goto cleanup;
	}

	ret_val = 0;
cleanup:
	len = loop.length / sizeof(struct bf_instruction);
	loop_in = (void *)loop.data;

	for (size_t j = 0; j < len && ret_val != 0; ++j) {
		array_free(&loop_in[j].assembly);
	}

	array_free(&loop);
	len = 0;
	loop_in = NULL;

	return ret_val;
}

int loop_optimizer(struct __array *arr, const struct compiler_options *opts)
{
	for (size_t i = 0; i < arr->length / sizeof(struct bf_instruction);) {
		struct bf_instruction *instrs = (void *)arr->data;
		if (instrs[i].instruction != '[') {
			++i;
			continue;
		}
		if (instrs[i].repetitions == 0) {
			++i;
			continue;
		}

		if (loop_helper(i, arr, opts) == -1) {
			warn("error when optimizing");
			return -1;
		}

		++i;
	}
	return 0;
}
