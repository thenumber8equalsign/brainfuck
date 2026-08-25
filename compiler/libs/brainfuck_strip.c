#include <brainfuck.h>
#include <arrays.h>
#include <err.h>
#include <stdio.h>

int output_brainfuck(struct __array *output, const struct __array *instructions,
		     const struct compiler_options *opts)
{
	const struct bf_instruction *instrs =
		(const struct bf_instruction *)instructions->data;
	const size_t instrs_len =
		instructions->length / sizeof(struct bf_instruction);
	const size_t wrap = opts->wrap_width;
	int ret = 0;

	for (size_t i = 0; i < instrs_len; ++i) {
		const char in = instrs[i].instruction;
		ret = array_append_single(output, in);
		if (ret != 0) {
			warn("can not append");
			return -1;
		}

		if ((i + 1) % wrap == 0) {
			ret = array_append_single(output, '\n');
			if (ret != 0) {
				warn("can not append");
				return -1;
			}
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
