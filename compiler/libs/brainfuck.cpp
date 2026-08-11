// Brainfuck compiler for linux AMD64
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

#include <vector>

#include <brainfuck.hpp>

extern "C" {

/**
 * struct brainfuck_instruction - a single, or repeated brainfuck instruction
 * @instr: the character for the instruction
 * @repetitions: the number of times the instruction is performed in a row
 * 	only useful if it is +, -, <, or >
 * 	a value of 0 will effectively remove the instruction, for all instructions
 * @loop_index: the index of the loop (only useful if instruction is '[' or ']')
 * @corrosponding_open: if instruction is ']', then the pointer to the corrosponding
 * 	open loop instruction
 */
struct brainfuck_instruction {
	char instruction;
	size_t repetitions;
	size_t loop_index;
	const struct brainfuck_instruction *corrosponding_open;
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

	const bool undefined_overflow = options->overflow == POINTER_UNDEFINED;

	// rbx is containing the address of the array
	// r12 is containing the pointer

	if (instruction->instruction == '+') {
		// this works due to distributive property of modulo
		const char *format = "\tadd	byte ptr [rbx+r12], %zu\n";
		sprintf(str, format, instruction->repetitions % 256);
		return;
	}

	if (instruction->instruction == '-') {
		const char *format = "\tsub	byte ptr [rbx+r12], %zu\n";
		sprintf(str, format, instruction->repetitions % 256);
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
		const char *format = "\tcmp	byte ptr [rbx+r12], 0\n"
				     "\tjz	END_LOOP_%zu\n"
				     "BEGIN_LOOP_%zu:\n";
		sprintf(str, format, instruction->loop_index,
			instruction->loop_index);

		return;
	}

	if (instruction->instruction == ']') {
		const char *format = "\tcmp	byte ptr [rbx+r12], 0\n"
				     "\tjnz	BEGIN_LOOP_%zu\n"
				     "END_LOOP_%zu:\n";
		sprintf(str, format, instruction->loop_index,
			instruction->loop_index);
		return;
	}

	if (instruction->instruction == ',') {
		const char *format = "\tmov	rdi, r12\n"
				     "\tmov	rsi, rbx\n"
				     "\tcall	do_read\n";
		sprintf(str, format);
		return;
	}

	if (instruction->instruction == '.') {
		const char *format = "\tmov	rdi, r12\n"
				     "\tmov	rsi, rbx\n"
				     "\tcall	do_write\n";
		sprintf(str, format);
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
find_open_brace(const std::vector<struct brainfuck_instruction> *instrs,
		size_t index)
{
	--index;
	size_t num_loops = 0;
	while (index != __SIZE_MAX__) {
		if ((*instrs)[index].instruction == '[' && num_loops == 0)
			break;
		else if ((*instrs)[index].instruction == ']')
			++num_loops;
		else if ((*instrs)[index].instruction == '[' && num_loops != 0)
			--num_loops;

		--index;
	}

	if (index == __SIZE_MAX__)
		return NULL;

	return &(instrs->at(index));
}

/**
 * is_bf_instruction() - check if a character is a valid brainfuck instruction
 * @instruction: the character to test
 *
 * Context: no sleep
 *
 * Return: true if instruction is a brainfuck instruction, false otherwise
 */
static bool is_bf_instruction(char instruction)
{
	const char *instrs = "-+<>[],.";
	for (size_t i = 0; i < strlen(instrs); ++i) {
		if (instruction == instrs[i])
			return true;
	}
	return false;
}

static bool is_loop_instruction(char instruction)
{
	return instruction == '[' || instruction == ']';
}

static bool is_optimizable_instruction(char instruction)
{
	return instruction == '+' || instruction == '-' || instruction == '<' ||
	       instruction == '>';
}

static bool can_optimize(const std::vector<struct brainfuck_instruction> &in,
			 size_t i)
{
	return in[i - 1].instruction == in[i].instruction &&
	       is_optimizable_instruction(in[i].instruction);
}

static bool is_opposite_instruction(char a, char b)
{
	return (a == '+' && b == '-') || (a == '<' && b == '>') ||
	       (a == '-' && b == '+') || (a == '>' && b == '<');
}

/**
 * compile_brainfuck() - given a file descriptor, convert bf into assembly
 * @assembly_str: the string for the assembly to go to, everything in it will be
 *	overwritten
 * @fd: the file descriptor to the brainfuck code
 * @options: brainfuck options, see definition for documentation
 *
 * Context: might take a long time, but it shouldn't sleep, it also might
 * 	exit the program because of err()
 *
 * Return: none
 */
void compile_brainfuck(std::string *assembly_str, const int fd,
		       const struct compiler_options *options)
{
	if (lseek(fd, 0, SEEK_SET) == -1) {
		err(EXIT_FAILURE, "lseek");
	}

	std::vector<struct brainfuck_instruction> instructions;

	instructions.reserve(1000);

	*assembly_str = "";
	assembly_str->append(assembly_begin);
	assembly_str->reserve(500000);

	// parse brainfuck
	for (size_t loop_counter = 0, i = 0;;) {
		char instruction;
		ssize_t r = read(fd, &instruction, 1);
		if (r == 0) {
			break;
		} else if (r == -1) {
			err(EXIT_FAILURE, "read");
		}

		if (!is_bf_instruction(instruction))
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
			instr.corrosponding_open =
				find_open_brace(&instructions, i);

			if (instr.corrosponding_open == NULL) {
				fprintf(stderr, "invalid brainfuck\n");
				exit(EXIT_FAILURE);
			}

			instr.loop_index = instr.corrosponding_open->loop_index;
		}

		instructions.push_back(instr);
		++i;
	}

	// apply optimizations
	for (size_t i = 1; i < instructions.size() && options->optimize; ++i) {
		const char prev = instructions[i - 1].instruction;
		const char cur = instructions[i].instruction;

		if (!is_optimizable_instruction(cur) ||
		    !is_optimizable_instruction(prev))
			continue;

		if (prev == cur && is_optimizable_instruction(cur)) {
			instructions[i].repetitions +=
				instructions[i - 1].repetitions;

			instructions[i - 1].repetitions = 0;
			continue;
		}

		if (!is_opposite_instruction(prev, cur))
			continue;

		size_t *cur_rep = &instructions[i].repetitions;
		size_t *prev_rep = &instructions[i - 1].repetitions;

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

	// convert to assembly
	for (size_t i = 0; i < instructions.size(); ++i) {
		if (instructions[i].repetitions == 0)
			continue;

		char buf[256];
		instruction_to_assembly(&instructions[i], buf, options);

		assembly_str->append(buf);
	}

	assembly_str->append(assembly_end);
	if (options->overflow == POINTER_WRAP) {
		assembly_str->append(pointer_functions_wrap);
	} else if (options->overflow == POINTER_ABORT) {
		assembly_str->append(pointer_functions_abort);
	}

	assembly_str->append(read_write_functions);
}
}
