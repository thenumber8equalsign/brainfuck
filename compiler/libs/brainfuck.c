// Brainfuck compiler for linux AMD64
#include <arrays.h>
#include <assert.h>
#include <limits.h>
#include <stdlib.h>
#include <stdio.h>
#include <err.h>
#include <fcntl.h>
#include <string.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/mman.h>
#include <stdbool.h>

#include <brainfuck.h>

/**
 * struct bf_instrucion - a single, or repeated brainfuck instruction
 * @instr: the character for the instruction, for extra instructions see below
 * @repetitions: the number of times the instruction is performed in a row
 * 	only useful if it is +, -, <, or >
 * 	a value of 0 will effectively remove the instruction
 * 	for all instructions
 * @loop_index: the index of the loop (only useful if instruction is '[' or ']')
 * @corrosponding_open: if instruction is ']', then the pointer to the
 * 	corrosponding open loop instruction
 * @assembly: the optimizer may generate assembly, if it does it will generate
 * 	it and put it in this array, otherwise this __array is memseted to 0
 * 	if it is set, instruction_to_assembly will use this
 * 	unless repetitions is 0
 * 	this is defined as "being set" if the data attribute of __array
 * 	is not NULL
 * 	This is a string
 *
 * Extra Instructions (for compiler use only, not in the brainfuck code)
 * 	'z': zero current cell
 */
struct bf_instruction {
	char instruction;
	ssize_t repetitions;
	size_t loop_index;
	const struct bf_instruction *corrosponding_open;
	struct __array assembly;
};

/**
 * instruction_to_assembly() - convert a brainfuck_instruction to assembly
 * @instruction: the struct brainfuck_instruction to convert
 * @str: the string to output to, should be around 1000 in size
 * @options: compiler options, see definition for documentation
 *
 * if instruction->repetitions is 0, nothing happens
 *
 * Context: will not sleep
 *
 * Return: none
 */
static void instruction_to_assembly(const struct bf_instruction *instruction,
				    char *str,
				    const struct compiler_options *options)
{
	if (instruction->repetitions == 0)
		return;

	if (instruction->assembly.data != NULL) {
		strcpy(str, instruction->assembly.data);
		return;
	}

	const char *word = "byte";
	const char *multiplier = "";
	// extra stuff for ensuring that write/read actually prints/read
	// the proper pointed to value
	const char *extra_write = "";
	// Note: the entire pointed to value will be set to 0 prior to reading
	// to ensure that we zero extend the data read
	const char *extra_read = "";
	uint64_t modulo = 1;

	switch (options->cell_width) {
	case 1:
		word = "byte";
		multiplier = "";
		extra_write = "";
		extra_read = "";
		modulo = 1ULL << 8;
		break;
	case 2:
		word = "word";
		multiplier = "*2";
		modulo = 1ULL << 16;
		extra_write = "\tlea\trdi, qword ptr [rdi*2]\n";
		extra_read = "\tmov\tword ptr [rbx+r12*2], 0\n"
			     "\tlea\trdi, qword ptr [rdi*2]\n";
		break;
	case 4:
		word = "dword";
		multiplier = "*4";
		modulo = 1ULL << 32;
		extra_write = "\tlea\trdi, qword ptr [rdi*4]\n";
		extra_read = "\tmov\tdword ptr [rbx+r12*4], 0\n"
			     "\tlea\trdi, qword ptr [rdi*4]\n";
		break;
	case 8:
		word = "qword";
		multiplier = "*8";
		modulo = 0; // qwords will always be modulo 2^64
		extra_write = "\tlea\trdi, qword ptr [rdi*8]\n";
		extra_read = "\tmov\tqword ptr [rbx+r12*8], 0\n"
			     "\tlea\trdi, qword ptr [rdi*8]\n";
		break;
	default:
		break;
	}

	const _Bool undefined_overflow = options->overflow == POINTER_UNDEFINED;

	ssize_t rep = (modulo == 0) ? instruction->repetitions :
				      instruction->repetitions % modulo;

	// rbx is containing the address of the array
	// r12 is containing the pointer

	if (instruction->instruction == '+') {
		// this works due to distributive property of modulo
		const char *format = "\tadd	%s ptr [rbx+r12%s], %zd\n";
		sprintf(str, format, word, multiplier, rep);
		return;
	}

	if (instruction->instruction == '-') {
		const char *format = "\tsub	%s ptr [rbx+r12%s], %zd\n";
		sprintf(str, format, word, multiplier, rep);
		return;
	}

	if (instruction->instruction == '<' && !undefined_overflow) {
		const char *format = "\tmov	rdi, r12\n"
				     "\tmov	rsi, %lu\n"
				     "\tcall	decrement_pointer\n"
				     "\tmov	r12, rax\n";
		sprintf(str, format, instruction->repetitions);
		return;
	} else if (instruction->instruction == '<' && undefined_overflow) {
		const char *format = "\tmov	rdi, %lu\n"
				     "\tsub	r12, rdi\n";
		sprintf(str, format, instruction->repetitions);
		return;
	}

	if (instruction->instruction == '>' && !undefined_overflow) {
		const char *format = "\tmov	rdi, r12\n"
				     "\tmov	rsi, %lu\n"
				     "\tcall	increment_pointer\n"
				     "\tmov	r12, rax\n";
		sprintf(str, format, instruction->repetitions);
		return;
	} else if (instruction->instruction == '>' && undefined_overflow) {
		const char *format = "\tmov	rdi, %lu\n"
				     "\tadd	r12, rdi\n";
		sprintf(str, format, instruction->repetitions);
		return;
	}

	if (instruction->instruction == '[') {
		const char *format = "\tcmp	%s ptr [rbx+r12%s], 0\n"
				     "\tjz	END_LOOP_%zu\n"
				     "BEGIN_LOOP_%zu:\n";
		sprintf(str, format, word, multiplier, instruction->loop_index,
			instruction->loop_index);

		return;
	}

	if (instruction->instruction == ']') {
		const char *format = "\tcmp	%s ptr [rbx+r12%s], 0\n"
				     "\tjnz	BEGIN_LOOP_%zu\n"
				     "END_LOOP_%zu:\n";
		sprintf(str, format, word, multiplier, instruction->loop_index,
			instruction->loop_index);
		return;
	}

	if (instruction->instruction == ',') {
		const char *format = "\tmov	rdi, r12\n"
				     "\tmov	rsi, rbx\n"
				     "%s"
				     "\tcall	do_read\n";
		sprintf(str, format, extra_read);
		return;
	}

	if (instruction->instruction == '.') {
		const char *format = "\tmov	rdi, r12\n"
				     "\tmov	rsi, rbx\n"
				     "%s"
				     "\tcall	do_write\n";
		sprintf(str, format, extra_write);
		return;
	}

	if (instruction->instruction == 'z') {
		const char *format = "\tmov	%s ptr [rbx+r12%s], 0\n";
		sprintf(str, format, word, multiplier);
		return;
	}

	sprintf(str, "");
}

/**
 * find_open_brace() - find the corrosponding open brace for the brainfuck loop
 * @braces: the array of braces
 * @index: the index of the close brace you just inserted into the array
 *
 * braces[index] should be the one we just created
 *
 * Context: no sleep
 *
 * Return: the pointer to the corrosponding open brace, or NULL
 */
static const struct bf_instruction *
find_open_brace(const struct bf_instruction *instrs, size_t index)
{
	--index;
	size_t num_loops = 0;
	while (index != __SIZE_MAX__) {
		if (instrs[index].instruction == '[' && num_loops == 0)
			break;
		else if (instrs[index].instruction == ']')
			++num_loops;
		else if (instrs[index].instruction == '[' && num_loops != 0)
			--num_loops;

		--index;
	}

	if (index == __SIZE_MAX__)
		return NULL;

	return &(instrs[index]);
}

/**
 * is_bf_instruction() - check if a character is a valid brainfuck instruction
 * @instruction: the character to test
 *
 * Context: no sleep
 *
 * Return: true if instruction is a brainfuck instruction, false otherwise
 */
static _Bool is_bf_instruction(char instruction)
{
	const char *instrs = "-+<>[],.";
	for (size_t i = 0; i < strlen(instrs); ++i) {
		if (instruction == instrs[i])
			return true;
	}
	return false;
}

static _Bool is_loop_instruction(char instruction)
{
	return instruction == '[' || instruction == ']';
}

static _Bool is_optimizable_instruction(char instruction)
{
	return instruction == '+' || instruction == '-' || instruction == '<' ||
	       instruction == '>';
}

static _Bool is_opposite_instruction(char a, char b)
{
	return (a == '+' && b == '-') || (a == '<' && b == '>') ||
	       (a == '-' && b == '+') || (a == '>' && b == '<');
}

static void purge_instructions(size_t *len, struct bf_instruction *instrs)
{
	for (size_t i = 0; i < *len; ++i) {
		const _Bool val = instrs[i].repetitions == 0;

		for (size_t j = i; j < *len - 1 && val; ++j) {
			instrs[j] = instrs[j + 1];
		}

		if (val)
			--(*len);
	}
}

// > and + is positive
// < and - is negative
// returns 0 if it instruction type was valid
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

static void create_square_algorithm(struct bf_instruction alg[33], ssize_t tmp0,
				    ssize_t tmp1)
{
	// all pointer moves were traded for '>'
	const char *algs = ">z>z>[>+>-]>[-[>+>+>-]>+>[>+>-]>]";
	// als[8] repetition is 2
	// move order, index:
	// x->tmp0 0
	// tmp0->tmp1 2
	// tmp1->x 4
	// x->tmp0 6
	// tmp0->x 8
	// x->tmp0 11
	// tmp0->tmp1 15
	// tmp1->x 17
	// x->tmp0 19
	// tmp0->x 22
	// x->tmp1 24
	// tmp1->tmp0 26
	// tmp0->tmp1 28
	// tmp1->tmp0 31

	for (size_t i = 0; i < 33; ++i) {
		alg[i].instruction = algs[i];
	}
	alg[8].repetitions = 2;
	assert(alg[8].instruction == '+' && algs[8] == '+');

	alg[0].repetitions = tmp0;
	alg[2].repetitions = tmp1 - tmp0;
	alg[4].repetitions = -tmp1;
	alg[6].repetitions = tmp0;
	alg[8].repetitions = -tmp0;
	alg[11].repetitions = tmp0;
	alg[15].repetitions = tmp1 - tmp0;
	alg[17].repetitions = -tmp1;
	alg[19].repetitions = tmp0;
	alg[22].repetitions = -tmp0;
	alg[24].repetitions = tmp1;
	alg[26].repetitions = tmp0 - tmp1;
	alg[28].repetitions = tmp1 - tmp0;
	alg[31].repetitions = tmp0 - tmp1;

	for (size_t i = 0; i < 33; ++i) {
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
// we can assume instrs[i+32] is valid
static _Bool optimize_square_alg(size_t i, struct bf_instruction *instrs,
				 _Bool undef_overflow)
{
	// ensure we are not messing with already generated assembly
	for (size_t j = i; j < i + 33; ++j) {
		if (instrs[j].assembly.data != NULL) {
			return false;
		}
	}

	// the square algorithm is a 33 instruction sequence
	// >[-]>[-]<<[>+<-]>[-[>+<<++>-]<+>>[<+>-]<]
	// note: it is 33 as the [-] is 3, becomes 1 due to becoming zero
	// the << and ++ and >> collapse into a single instruction
	// square current cell, set tmp0 to 0, set tmp1 to 0
	// and move the pointer to tmp0

	// the first > is x->tmp0
	// the second > is tmp0->tmp1
	// from these two, we can then determine all the other offsets
	// x->tmp1, etc.
	// and optimize it if and only if the temporaries, and x do not
	// occupy the same location

	ssize_t tmp0 = 0; // x to tmp0 offset
	ssize_t tmp1 = 0; // x to tmp1 offset

	// GET tmp0 AND tmp1 OFFSETS here
	// and ensure that the first 4 instructions >z>z match,
	// otherwise we literally can't get tmp0 or tmp1, because there is no
	// > or <

	if (tmp0 == 0 || tmp1 == 0 || tmp0 == tmp1) {
		return false;
	}

	// used to compare the current instruction (+32 more) with the square
	// algorithm
	struct bf_instruction alg[33];
	memset(alg, 0, sizeof(alg));
	create_square_algorithm(alg, tmp0, tmp1);

	// now, alg should be exactly what the square algorithm should be
	// so compare it to the next instructions

	// if it passes
	// generate assembly for instrs[i], and

	return true;
}

// returns the new length
// the new length will never be greater than the old length
static size_t optimize_brainfuck(size_t len, struct bf_instruction *instrs,
				 const struct compiler_options *opts)
{
	// optimize repeated +, -, <, and >
	for (size_t i = 1; i < len; ++i) {
		const char prev = instrs[i - 1].instruction;
		const char cur = instrs[i].instruction;

		if (!is_optimizable_instruction(cur) ||
		    !is_optimizable_instruction(prev))
			continue;

		if (prev == cur && is_optimizable_instruction(cur)) {
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

	purge_instructions(&len, instrs);

	// optimize anything in the form [+], or [-] as they always
	// set the current cell to 0
	for (size_t i = 0; i < len - 2 && len > 2; ++i) {
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

	purge_instructions(&len, instrs);

	for (size_t i = 0; i < len - 32 && len > 32; ++i) {
		optimize_square_alg(i, instrs,
				    opts->overflow == POINTER_UNDEFINED);
	}

	purge_instructions(&len, instrs);

	return len;
}

static void check_comments(char instr, char next_instr, _Bool *is_comm,
			   _Bool *is_multi, enum comment_behavior behav)
{
	if (behav == NO_COMMENTS) {
		*is_comm = false;
		*is_multi = false;
		return;
	}

	if (behav == COMMENT_DOUBLE_HASH && instr == '#' && next_instr == '#') {
		*is_multi = !(*is_multi);
	}

	if (behav == COMMENT_DOUBLE_HASH && instr == '#' && next_instr != '#') {
		*is_comm = true;
	}

	if (instr == '\n') {
		*is_comm = false;
	}

	if (behav == COMMENT_LF && instr == '#') {
		*is_comm = true;
	}

}

/**
 * compile_brainfuck() - given a file descriptor, convert bf into assembly
 * @assembly_str: the string for the assembly to go to
 * 	it is assumed that this is empty with length = 0
 * @fd: the file descriptor to the brainfuck code
 * @options: brainfuck options, see definition for documentation
 *
 * Context: might take a long time, but it shouldn't sleep, it also might
 * 	exit the program because of err()
 *
 * Return: 0 on success, -1 on error
 */
int compile_brainfuck(struct __array *assembly_str, const int fd,
		      const struct compiler_options *options)
{
	if (lseek(fd, 0, SEEK_SET) == -1) {
		err(EXIT_FAILURE, "lseek");
	}

	int ret;
	struct __array instructions;
	struct bf_instruction *instr_data;
	size_t instr_len;
	char *tmp = NULL;
	size_t tmp_len = strlen(assembly_begin) + 50;
	const char *multiplier = "";

	switch (options->cell_width) {
	case 1:
		multiplier = "";
		break;
	case 2:
		multiplier = "*2";
		break;
	case 4:
		multiplier = "*4";
		break;
	case 8:
		multiplier = "*8";
		break;
	}

	ret = array_init(&instructions);
	if (ret != 0) {
		warn("could not init");
		return -1;
	}

	ret = array_reserve(&instructions,
			    sizeof(struct bf_instruction) * 1000);
	if (ret != 0) {
		warn("could not reserve");
		array_free(&instructions);
		return -1;
	}

	ret = array_reserve(assembly_str, 500000);
	if (ret != 0) {
		warn("could not reserve");
		array_free(&instructions);
		return -1;
	}

	// add on the multiplyer to assembly_begin, because mmap is in bytes
	tmp = calloc(tmp_len, sizeof(char));
	if (tmp == NULL) {
		warn("calloc");
		array_free(&instructions);
		return -1;
	}

	snprintf(tmp, tmp_len, assembly_begin, multiplier);
	ret = array_append_bulk(assembly_str, tmp, strlen(tmp));
	free(tmp);
	tmp = NULL;
	if (ret != 0) {
		warn("could not append");
		array_free(&instructions);
		return -1;
	}

	// parse brainfuck
	_Bool is_comment = false;
	_Bool is_multi_comment = false;
	for (size_t loop_counter = 0, i = 0;;) {
		char instruction;
		char next_instruction = 0;
		ssize_t r = read(fd, &instruction, 1);
		if (r == 0) {
			break;
		} else if (r == -1) {
			warn("read");
			array_free(&instructions);
			return -1;
		}

		off_t off = lseek(fd, 0, SEEK_CUR);
		if (off == -1) {
			warn("lseek");
			array_free(&instructions);
			return -1;
		}

		r = pread(fd, &next_instruction, 1, off);
		if (r == 0) {
			next_instruction = 0;
		} else if (r == -1) {
			warn("pread");
			array_free(&instructions);
			return -1;
		}

		check_comments(instruction, next_instruction, &is_comment,
			       &is_multi_comment, options->comments);

		const _Bool eighty = !is_bf_instruction(instruction) ||
				     is_comment || is_multi_comment;
		if (eighty) {
			continue;
		}

		struct bf_instruction instr;
		memset(&instr, 0, sizeof(instr));

		instr.repetitions = 1;
		instr.instruction = instruction;

		instr.corrosponding_open = NULL;
		instr.loop_index = -1;
		instr.assembly.data = NULL;

		if (instruction == '[') {
			instr.loop_index = loop_counter;
			++loop_counter;
		}

		if (instruction == ']') {
			instr.corrosponding_open = find_open_brace(
				(const struct bf_instruction *)instructions.data,
				i);

			if (instr.corrosponding_open == NULL) {
				fprintf(stderr, "invalid brainfuck\n");
				exit(EXIT_FAILURE);
			}

			instr.loop_index = instr.corrosponding_open->loop_index;
		}

		const char *_instr_data = (const char *)(&instr);

		ret = array_append_bulk(&instructions, _instr_data,
					sizeof(instr));

		if (ret != 0) {
			warn("could not append");
			array_free(&instructions);
			return -1;
		}
		++i;
	}

	// apply optimizations
	instr_data = (struct bf_instruction *)instructions.data;
	instr_len = instructions.length / sizeof(struct bf_instruction);
	if (options->optimize) {
		size_t new_len =
			optimize_brainfuck(instr_len, instr_data, options);
		instructions.length = new_len * sizeof(struct bf_instruction);
		instr_len = new_len;
	}

	// convert to assembly
	for (size_t i = 0; i < instr_len; ++i) {
		if (instr_data[i].repetitions == 0)
			continue;

		char buf[1024];
		instruction_to_assembly(&instr_data[i], buf, options);

		ret = array_append_bulk(assembly_str, buf, strlen(buf));
		if (ret != 0) {
			warn("could not append");
			array_free(&instructions);
			return -1;
		}
	}

	for (size_t i = 0; i < instr_len; ++i) {
		array_free(&instr_data[i].assembly);
	}

	array_free(&instructions);
	instr_data = NULL;
	instr_len = 0;

	tmp_len = strlen(assembly_end) + 50;
	tmp = calloc(tmp_len, sizeof(char));
	if (tmp == NULL) {
		warn("calloc");
		return -1;
	}

	snprintf(tmp, tmp_len, assembly_end, multiplier);

	ret = array_append_bulk(assembly_str, tmp, strlen(tmp));
	free(tmp);
	tmp = NULL;
	if (ret != 0) {
		warn("could not append");
		return -1;
	}

	const char *pointer_functions = NULL;

	if (options->overflow == POINTER_WRAP) {
		pointer_functions = pointer_functions_wrap;
	} else if (options->overflow == POINTER_ABORT) {
		pointer_functions = pointer_functions_abort;
	} else if (options->overflow != POINTER_UNDEFINED) {
		fprintf(stderr, "invalid option for overflow behavior\n");
		return -1;
	}

	if (pointer_functions != NULL) {
		ret = array_append_bulk(assembly_str, pointer_functions,
					strlen(pointer_functions));
		if (ret != 0) {
			warn("could not append");
			return -1;
		}
	}

	ret = array_append_bulk(assembly_str, read_write_functions,
				strlen(read_write_functions));
	if (ret != 0) {
		warn("could not append");
		return -1;
	}

	return 0;
}
