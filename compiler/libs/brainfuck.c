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
#include <brainfuck_opt.h>

#define TWO_32 (1ULL << 32)

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

	// this works due to distributive property of modulo
	ssize_t rep = (modulo == 0) ? instruction->repetitions :
				      instruction->repetitions % modulo;

	ssize_t _rep = instruction->repetitions;

	// rbx is containing the address of the array
	// r12 is containing the pointer

	if (instruction->instruction == '+') {
		// if we somehow have more than 4 billion increments
		// make sure we generate assembly the ISA actually supports
		if (rep % TWO_32 != rep) {
			const char *format = "\tmov\trdi, %zd\n"
					     "\tadd\t%s ptr [rbx+r12%s], rdi\n";
			sprintf(str, format, rep, word, multiplier);
			return;
		}

		const char *format = "\tadd	%s ptr [rbx+r12%s], %zd\n";
		sprintf(str, format, word, multiplier, rep);
		return;
	}

	if (instruction->instruction == '-') {
		if (rep % TWO_32 != rep) {
			const char *format = "\tmov\trdi, %zd\n"
					     "\tsub\t%s ptr [rbx+r12%s], rdi\n";
			sprintf(str, format, rep, word, multiplier);
			return;
		}

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
		const char *format = "\tmov	rdi, %zd\n"
				     "\tsub	r12, rdi\n";

		if (_rep % TWO_32 == _rep) {
			// sub only supports 32 bit immidates (or less)
			format = "\tsub\tr12, %zd\n";
		}

		sprintf(str, format, _rep);
		return;
	}

	if (instruction->instruction == '>' && !undefined_overflow) {
		const char *format = "\tmov	rdi, r12\n"
				     "\tmov	rsi, %zd\n"
				     "\tcall	increment_pointer\n"
				     "\tmov	r12, rax\n";
		sprintf(str, format, instruction->repetitions);
		return;
	} else if (instruction->instruction == '>' && undefined_overflow) {
		const char *format = "\tmov	rdi, %zd\n"
				     "\tadd	r12, rdi\n";

		if (_rep % TWO_32 == _rep) {
			// add only supports 32 bit immidates (or less)
			format = "\tadd\tr12, %zd\n";
		}

		sprintf(str, format, _rep);
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

// returns the new length
// the new length will never be greater than the old length
static size_t optimize_brainfuck(size_t len, struct bf_instruction *instrs,
				 const struct compiler_options *opts)
{
	collapse_instructions(len, instrs, opts);
	len = purge_instructions(len, instrs);
	// sanity check
#ifdef DEBUG
	for (size_t i = 0; i < len; ++i) {
		assert(instrs[i].repetitions != 0);
	}
#endif

	remove_opposite_instructions(len, instrs, opts);
	len = purge_instructions(len, instrs);
#ifdef DEBUG
	for (size_t i = 0; i < len; ++i) {
		assert(instrs[i].repetitions != 0);
	}
#endif

	optimize_zero_cell(len, instrs, opts);
	len = purge_instructions(len, instrs);
#ifdef DEBUG
	for (size_t i = 0; i < len; ++i) {
		assert(instrs[i].repetitions != 0);
	}
#endif

	optimize_square_algorithm(len, instrs, opts);
	len = purge_instructions(len, instrs);
#ifdef DEBUG
	for (size_t i = 0; i < len; ++i) {
		assert(instrs[i].repetitions != 0);
	}
#endif

	// i have no idea why,
	// but is_64_bit.bf hangs for seemingly forever on my t480
	// (i don't have my desktop with me right now), i waited 3 minutes.
	// Whenever i comment this out and set cell size to 8

	// After fixing my broken brainfuck code, this is no longer needed
	collapse_instructions(len, instrs, opts);
	len = purge_instructions(len, instrs);
#ifdef DEBUG
	for (size_t i = 0; i < len; ++i) {
		assert(instrs[i].repetitions != 0);
	}
#endif
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
	const char *word = "";

	get_word_and_multiplier(&word, &multiplier, options);

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

	// if we only wish to strip the brainfuck, do that now and exit
	if (options->strip_brainfuck) {
		ret = output_brainfuck(assembly_str, &instructions, options);
		array_free(&instructions);
		return ret;
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
