#include <config.h>
#include <brainfuck.h>
#include <arrays.h>
#include <err.h>
#include <stdio.h>
#include <brainfuck_opt.h>
#include <assert.h>

int output_brainfuck(struct __array *output, struct __array *instructions,
		     const struct compiler_options *opts)
{
	struct bf_instruction *instrs =
		(struct bf_instruction *)instructions->data;
	size_t len =
		instructions->length / sizeof(struct bf_instruction);
	const size_t wrap = opts->wrap_width;
	int ret = 0;

	collapse_instructions(len, instrs, opts);
	len = purge_instructions(len, instrs);

	remove_opposite_instructions(len, instrs, opts);
	len = purge_instructions(len, instrs);

	instructions->length = len * sizeof(struct bf_instruction);

	size_t ci = 0;
	for (size_t i = 0; i < len; ++i) {
#ifdef DEBUG
		assert(instrs[i].repetitions != 0);
#endif

		const char in = instrs[i].instruction;
		const ssize_t rep = instrs[i].repetitions;

		for (size_t j = 0; j < rep; ++j) {
			ret = array_append_single(output, in);
			if (ret != 0) {
				warn("can not append");
				return -1;
			}

			if ((ci + 1) % wrap == 0) {
				ret = array_append_single(output, '\n');
				if (ret != 0) {
					warn("can not append");
					return -1;
				}
			}

			++ci;
		}
	}

	// end our file with the newline character
	ret = array_append_single(output, '\n');
	if (ret != 0) {
		warn("can not append");
		return -1;
	}
	return 0;
}
