#include <assert.h>
#include <stdio.h>
#include <string.h>
#include <err.h>

#include <brainfuck.h>
#include <brainfuck_opt.h>
#include <arrays.h>

size_t purge_instructions(size_t len, struct bf_instruction instrs[static len])
{
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
	return len;
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

void collapse_instructions(size_t len, struct bf_instruction instrs[static len],
			   const struct compiler_options *opts)
{
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

void optimize_zero_cell(size_t len, struct bf_instruction instrs[static len],
			const struct compiler_options *opts)
{
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

// > and + is positive
// < and - is negative
// returns 0 if the instruction type was valid
// otherwise returns -1
static int get_signed_repetitions(const struct bf_instruction *instr,
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

static _Bool is_pointer_instruction(const struct bf_instruction *instr)
{
	return instr->instruction == '<' || instr->instruction == '>';
}

static void generate_square_algorithm(struct bf_instruction alg[static 32],
				      ssize_t tmp0, ssize_t tmp1)
{
	// all pointer moves were traded for '>'
	const char *algs = "z>z>[>+>-]>[-[>+>+>-]>+>[>+>-]>]";
	// note the + at index 17 is a double plus
	// move order, index:
	//  1: tmp0->tmp1
	//  3: tmp1->x
	//  5: x->tmp0
	//  7: tmp0->x
	// 10: x->tmp0
	// 14: tmp0->tmp1
	// 16: tmp1->x
	// 18: x->tmp0
	// 21: tmp0->x
	// 23: x->tmp1
	// 25: tmp1->tmp0
	// 27: tmp0->tmp1
	// 30: tmp1->tmp0

	for (size_t i = 0; i < 32; ++i) {
		alg[i].instruction = algs[i];
		alg[i].repetitions = 1;
	}
	alg[17].repetitions = 2;
	assert(algs[6] == '+');
	assert(alg[6].instruction == '+');
	assert(algs[17] == '+');

	alg[1].repetitions = tmp1 - tmp0;
	alg[3].repetitions = -tmp1;
	alg[5].repetitions = tmp0;
	alg[7].repetitions = -tmp0;
	alg[10].repetitions = tmp0;
	alg[14].repetitions = tmp1 - tmp0;
	alg[16].repetitions = -tmp1;
	alg[18].repetitions = tmp0;
	alg[21].repetitions = -tmp0;
	alg[23].repetitions = tmp1;
	alg[25].repetitions = tmp0 - tmp1;
	alg[27].repetitions = tmp1 - tmp0;
	alg[30].repetitions = tmp0 - tmp1;

	for (size_t i = 0; i < 32; ++i) {
		if (alg[i].instruction == '>' && alg[i].repetitions < 0) {
			alg[i].instruction = '<';
			alg[i].repetitions = -alg[i].repetitions;
			continue;
		}
		if (alg[i].instruction == '<' && alg[i].repetitions < 0) {
			alg[i].instruction = '>';
			alg[i].repetitions = -alg[i].repetitions;
			continue;
		}
	}
}

// return true if it was optimized, false otherwise
// we can assume instrs[i+31] is valid
static void opt_square_alg_helper(size_t i, struct bf_instruction *instrs,
				  const struct compiler_options *opts)
{
	// ensure we are not messing with already generated assembly
	for (size_t j = i; j < i + 32; ++j) {
		if (instrs[j].assembly.data != NULL ||
		    instrs[j].repetitions == 0) {
			return;
		}
	}

	// the square algorithm is a 32 instruction sequence
	// [-]>[-]<<[>+<-]>[-[>+<<++>-]<+>>[<+>-]<]
	// note: it is 32 as the [-] is 3, becomes 1 due to becoming zero
	// the << and ++ and >> collapse into a single instruction
	// square current cell, set tmp0 to 0, set tmp1 to 0
	// and move the pointer to tmp0
	// this sets the current (tmp0) cell to 0, squares the previous (x)
	// cell, and sets the next (tmp1) cell to 0, assuming the above moves

	// Note: the removal of the leading/trailing < and >
	// as those are akin to AUF when doing a PLL algorithm on a rubik's cube
	// when the leading > is included, it fails to recognize it
	// when there exists a previous < or > that cancels it

	// the first > is x->tmp0
	// the second > is tmp0->tmp1
	// from these two, we can then determine all the other offsets
	// x->tmp1, etc.
	// and optimize it if and only if the temporaries, and x do not
	// occupy the same location

	ssize_t tmp0 = 0; // x to tmp0 offset
	ssize_t tmp1 = 0; // x to tmp1 offset

	// get the tmp0 and tmp1 offsets,
	// and ensure first 4 instructions match

	if (instrs[i].instruction != 'z') {
		return;
	}

	if (!is_pointer_instruction(&instrs[i + 1])) {
		return;
	}

	if (instrs[i + 2].instruction != 'z') {
		return;
	}

	if (!is_pointer_instruction(&instrs[i + 3])) {
		return;
	}

	get_signed_repetitions(&instrs[i + 1], &tmp0);
	get_signed_repetitions(&instrs[i + 3], &tmp1);
	// tmp0 is currently tmp0 to tmp1
	// tmp1 is currently tmp1 to x
	tmp1 = -tmp1;
	tmp0 = tmp1 - tmp0;

	struct bf_instruction alg[32];
	memset(alg, 0, sizeof(alg));
	generate_square_algorithm(alg, tmp0, tmp1);

	// now, alg should be exactly what the square algorithm should be
	// so compare it to the next instructions

	_Bool is_square_algorithm = true;
	for (size_t j = i; j < i + 32; ++j) {
		const size_t alg_i = j - i;

		// only bother checking if the instructions are not equal
		// (please exuse the names, i didn't want to hit 80 characters)
		// the fact i have to do this means i need to write better code
		const _Bool k = instrs[j].instruction == alg[alg_i].instruction;
		const _Bool r = alg[alg_i].repetitions == instrs[j].repetitions;
		if (k && r) {
			// if they are the same, continue
			continue;
		}

		_Bool point = is_pointer_instruction(&instrs[j]);
		point = point && is_pointer_instruction(&alg[alg_i]);
		if (!point) {
			is_square_algorithm = false;
			break;
		}

		// alg is already containing signed repetitions
		ssize_t rep_a = alg[alg_i].repetitions, rep_i = 0;
		int b = get_signed_repetitions(&instrs[j], &rep_i);

		assert(b == 0); // sanity check

		if (rep_a != rep_i) {
			is_square_algorithm = false;
			break;
		}
	}

	// if it passes
	// generate assembly for instrs[i], and set all the other's repetitions
	// to zero
	if (!is_square_algorithm) {
		return;
	}

	const char *word;
	const char *multiplier;
	get_word_and_multiplier(&word, &multiplier, opts);

	return;

	instrs[i].instruction = 'z';
	instrs[i].repetitions = 1;
	instrs[i + 1].instruction = '>';
	instrs[i + 1].repetitions = tmp1 - tmp0;
	instrs[i + 2].instruction = '>';
	instrs[i + 2].repetitions = -tmp1;


	instrs[i + 3].repetitions = 1;
	// square assembly (TODO) and put it in instrs[i + 3].assembly

	instrs[i + 4].instruction = '>';
	instrs[i + 5].repetitions = tmp0;

	for (size_t j = i; j < i + 32; ++j) {
		if (instrs[j].instruction == '>' && instrs[j].repetitions < 0) {
			instrs[j].instruction = '<';
			instrs[j].repetitions = -instrs[j].repetitions;
			continue;
		}
		if (instrs[j].instruction == '<' && instrs[j].repetitions < 0) {
			instrs[j].instruction = '>';
			instrs[j].repetitions = -instrs[j].repetitions;
			continue;
		}
	}

	for (size_t j = i + 6; j < i + 32; ++j) {
		instrs[j].repetitions = 0;
	}
}

void optimize_square_algorithm(size_t len,
			       struct bf_instruction instrs[static len],
			       const struct compiler_options *opts)
{
	for (size_t i = 0; i < len - 31 && len > 31; ++i) {
		opt_square_alg_helper(i, instrs, opts);
	}
}
