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

static int loop_helper(size_t i, struct __array *arr,
		       const struct compiler_options *opts)
{
	return 0;
}

int loop_optimizer(struct __array *arr, const struct compiler_options *opts)
{
	for (size_t i = 0; i < arr->length / sizeof(struct bf_instruction);) {
		struct bf_instruction *instrs = (void *)arr->data;
		if (instrs[i].instruction != '[') {
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
