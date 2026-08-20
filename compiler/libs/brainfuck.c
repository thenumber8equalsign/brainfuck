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
 * struct brainfuck_instruction - a single, or repeated brainfuck instruction
 * @instr: the character for the instruction, for extra instructions see below
 * @repetitions: the number of times the instruction is performed in a row
 * 	only useful if it is +, -, <, or >
 * 	a value of 0 will effectively remove the instruction
 * 	for all instructions
 * @loop_index: the index of the loop (only useful if instruction is '[' or ']')
 * @corrosponding_open: if instruction is ']', then the pointer to the
 * 	corrosponding open loop instruction
 * @tmp0: see Extra Instructions
 * @tmp1: see Extra Instructions
 *
 * Extra Instructions (for compiler use only, not in the brainfuck code)
 * 	'z': zero current cell
 * 	's': square current cell, set current_ptr+tmp0 to 0, and
 *	 	set current_ptr+tmp1 to 0
 * 		note tmp0 and tmp1 are expressed as relative to the current cell
 */
struct brainfuck_instruction {
	char instruction;
	size_t repetitions;
	size_t loop_index;
	const struct brainfuck_instruction *corrosponding_open;
	ssize_t tmp0;
	ssize_t tmp1;
};

/**
 * instruction_to_assembly() - convert a brainfuck_instruction to assembly
 * @instruction: the struct brainfuck_instruction to convert
 * @str: the string to output to, should be around 100 in size
 * @options: compiler options, see definition for documentation
 *
 * if instruction->repetitions is 0, nothing happens
 *
 * Context: will not sleep
 *
 * Return: none
 */
void instruction_to_assembly(const struct brainfuck_instruction *instruction,
			     char *str, const struct compiler_options *options)
{
	if (instruction->repetitions == 0)
		return;

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

	uint64_t rep = (modulo == 0) ? instruction->repetitions :
				       instruction->repetitions % modulo;

	// rbx is containing the address of the array
	// r12 is containing the pointer

	if (instruction->instruction == '+') {
		// this works due to distributive property of modulo
		const char *format = "\tadd	%s ptr [rbx+r12%s], %zu\n";
		sprintf(str, format, word, multiplier, rep);
		return;
	}

	if (instruction->instruction == '-') {
		const char *format = "\tsub	%s ptr [rbx+r12%s], %zu\n";
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
static const struct brainfuck_instruction *
find_open_brace(const struct brainfuck_instruction *instrs, size_t index)
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

static void purge_instructions(size_t *len,
			       struct brainfuck_instruction *instrs)
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

// returns the new length
static size_t optimize_brainfuck(size_t len,
				 struct brainfuck_instruction *instrs)
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

		size_t *cur_rep = &instrs[i].repetitions;
		size_t *prev_rep = &instrs[i - 1].repetitions;

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
		struct brainfuck_instruction *cur = &instrs[i];
		struct brainfuck_instruction *next = &instrs[i + 1];
		struct brainfuck_instruction *next_next = &instrs[i + 2];

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

	// the square algorithm is a 34 instruction sequence
	// >[-]>[-]<<[>+<-]>[-[>+<<++>-]<+>>[<+>-]<]<
	// note: it is 34 as the [-] is 3, becomes 1 due to becoming zero
	// the << and ++ and >> collapse into a single instruction
	for (size_t i = 0; i < len - 33 && len > 33; ++i) {
		// the first > is x->tmp0
		// the second > is tmp0->tmp1
		// from these two, we can then determine all the other offsets
		// x->tmp1, etc.
		// and optimize it if and only if the temporaries, and x do not
		// occupy the same location
	}

	purge_instructions(&len, instrs);

	return len;
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
	struct brainfuck_instruction *instr_data;
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
			    sizeof(struct brainfuck_instruction) * 1000);
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
	for (size_t loop_counter = 0, i = 0;;) {
		char instruction;
		ssize_t r = read(fd, &instruction, 1);
		if (r == 0) {
			break;
		} else if (r == -1) {
			err(EXIT_FAILURE, "read");
		}

		if (instruction == '#' && options->comments)
			is_comment = true;
		else if (instruction == '\n' && options->comments)
			is_comment = false;


		if (!is_bf_instruction(instruction) || is_comment)
			continue;

		struct brainfuck_instruction instr;

		instr.repetitions = 1;
		instr.instruction = instruction;

		instr.corrosponding_open = NULL;
		instr.loop_index = -1;

		if (instruction == '[') {
			instr.loop_index = loop_counter;
			++loop_counter;
		}

		if (instruction == ']') {
			instr.corrosponding_open = find_open_brace(
				(const struct brainfuck_instruction *)
					instructions.data,
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
	instr_data = (struct brainfuck_instruction *)instructions.data;
	instr_len = instructions.length / sizeof(struct brainfuck_instruction);
	if (options->optimize) {
		size_t new_len = optimize_brainfuck(instr_len, instr_data);
		instructions.length =
			new_len * sizeof(struct brainfuck_instruction);
		instr_len = new_len;
	}

	// convert to assembly
	for (size_t i = 0; i < instr_len; ++i) {
		if (instr_data[i].repetitions == 0)
			continue;

		char buf[256];
		instruction_to_assembly(&instr_data[i], buf, options);

		ret = array_append_bulk(assembly_str, buf, strlen(buf));
		if (ret != 0) {
			warn("could not append");
			array_free(&instructions);
			return -1;
		}
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
