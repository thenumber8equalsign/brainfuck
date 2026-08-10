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

#include <brainfuck.h>

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
static struct loop_brace *find_open_brace(struct loop_brace *braces, size_t index)
{
	--index;
	size_t num_loops = 0;
	while (index != __SIZE_MAX__) {
		if (braces[index].open && num_loops == 0)
			break;
		else if (!braces[index].open)
			++num_loops;
		else if (braces[index].open && num_loops != 0)
			--num_loops;

		--index;
	}
	return &braces[index];
}

/**
 * compile_brainfuck() - given a file descriptor, convert bf into assembly
 * @assembly_str: the string for the assembly to go to, everything in it will be
 *	overwritten
 * @fd: the file descriptor to the brainfuck code
 *
 * Context: might take a long time, but it shouldn't sleep
 *
 * Return: none
 */
void compile_brainfuck(char *assembly_str, int fd)
{
	if (lseek(fd, 0, SEEK_SET) == -1) {
		err(EXIT_FAILURE, "lseek");
	}

	char *at = assembly_str;
	at += snprintf(at, ASSEMBLY_MAX_SIZE, "%s", assembly_begin);

	struct loop_brace *braces =
		malloc(MAX_NUMBER_OF_LOOPS * sizeof(struct loop_brace));
	if (braces == NULL) {
		err(EXIT_FAILURE, "malloc");
	}

	memset(braces, 0, MAX_NUMBER_OF_LOOPS * sizeof(struct loop_brace));

	size_t i_brace = 0;

	// rbx is containing the address of the buffer
	// r12 is containing the movable pointer
	for (;;) {
		char instruction = 0;
		off_t offset = lseek(fd, 0, SEEK_CUR);
		if (offset == -1) {
			err(EXIT_FAILURE, "lseek");
		}

		ssize_t num_read = read(fd, &instruction, 1);
		if (num_read == 0) {
			break;
		} else if (num_read == -1) {
			err(EXIT_FAILURE, "read");
		}

		if (instruction == '+') {
			at += snprintf(at, ASSEMBLY_MAX_SIZE,
				       "\tinc	byte ptr [rbx+r12]\n");
		} else if (instruction == '-') {
			at += snprintf(at, ASSEMBLY_MAX_SIZE,
				       "\tdec	byte ptr [rbx+r12]\n");
		} else if (instruction == ',') {
			at += snprintf(at, ASSEMBLY_MAX_SIZE,
				       "\tmov	rdi, r12\n"
				       "\tmov	rsi, rbx\n"
				       "\tcall	do_read\n");
		} else if (instruction == '.') {
			at += snprintf(at, ASSEMBLY_MAX_SIZE,
				       "\tmov	rdi, r12\n"
				       "\tmov	rsi, rbx\n"
				       "\tcall	do_write\n");
		} else if (instruction == '<') {
			at += snprintf(at, ASSEMBLY_MAX_SIZE,
				       "\tmov	rdi, r12\n"
				       "\tcall	decrement_pointer\n"
				       "\tmov	r12, rax\n");
		} else if (instruction == '>') {
			at += snprintf(at, ASSEMBLY_MAX_SIZE,
				       "\tmov	rdi, r12\n"
				       "\tcall	increment_pointer\n"
				       "\tmov	r12, rax\n");
		} else if (instruction == '[') {
			const char *format = "\tcmp	byte ptr [rbx+r12], 0\n"
					     "\tjz	END_LOOP_%lu\n"
					     "BEGIN_LOOP_%lu:\n";

			braces[i_brace].loop_index = i_brace;
			braces[i_brace].bf_file_offset = offset;
			braces[i_brace].corrosponding_open = NULL;
			braces[i_brace].open = true;

			at += snprintf(at, ASSEMBLY_MAX_SIZE, format, i_brace,
				       i_brace);
			++i_brace;
		} else if (instruction == ']') {
			braces[i_brace].bf_file_offset = offset;

			braces[i_brace].corrosponding_open =
				find_open_brace(braces, i_brace);

			if (braces[i_brace].corrosponding_open == NULL) {
				fprintf(stderr, "invalid brainfuck\n");
				exit(EXIT_FAILURE);
			}

			braces[i_brace].open = false;

			braces[i_brace].loop_index =
				braces[i_brace].corrosponding_open->loop_index;

			const char *format = "\tcmp	byte ptr [rbx+r12], 0\n"
					     "\tjnz	BEGIN_LOOP_%lu\n"
					     "END_LOOP_%lu:\n";
			at += snprintf(at, ASSEMBLY_MAX_SIZE, format,
				       braces[i_brace].loop_index,
				       braces[i_brace].loop_index);
			++i_brace;
		}
	}
	at += snprintf(at, ASSEMBLY_MAX_SIZE, "%s", assembly_end);
	free(braces);
	braces = NULL;
}
