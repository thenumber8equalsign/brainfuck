#include <assert.h>
#include <limits.h>
#include <stdlib.h>
#include <stdio.h>
#include <err.h>
#include <fcntl.h>
#include <sys/types.h>
#include <unistd.h>

#define BUFFER_SIZE 30000

void do_brainfuck(unsigned char *buffer, int brainfuck_fd);

int main(int argc, char **argv)
{
	assert(CHAR_BIT == 8);
	unsigned char *buf;
	int brainfuck_file;

	if (argc != 2) {
		fprintf(stderr, "Usage: %s <file>\n", argv[0]);
		return EXIT_FAILURE;
	}

	brainfuck_file = open(argv[1], O_RDONLY);
	if (brainfuck_file == -1) {
		err(EXIT_FAILURE, "open");
	}

	buf = malloc(BUFFER_SIZE);
	if (buf == NULL) {
		err(EXIT_FAILURE, "malloc");
	}

	for (size_t i = 0; i < BUFFER_SIZE; ++i) {
		buf[i] = 0;
	}

	do_brainfuck(buf, brainfuck_file);

	const char newline = '\n';
	write(STDOUT_FILENO, &newline, 1);

	free(buf);
	close(brainfuck_file);
	return EXIT_SUCCESS;
}

void bf_enter_loop(unsigned char *buffer, int brainfuck_fd, size_t pointer)
{
	if (buffer[pointer] != 0)
		return;

	// find the corrosponding exit loop, and move the fd to it
	size_t num_loops = 0;
	for (;;) {
		unsigned char instruction = 0;
		ssize_t num_read = read(brainfuck_fd, &instruction, 1);
		if (num_read == -1) {
			err(EXIT_FAILURE, "read");
		}

		if (num_read == 0) {
			fprintf(stderr, "Error: invalid brainfuck\n");
			exit(EXIT_FAILURE);
		}

		if (instruction == '[') {
			++num_loops;
		} else if (instruction == ']' && num_loops != 0) {
			--num_loops;
		} else if (instruction == ']' && num_loops == 0) {
			break;
		}
	}
}

void bf_exit_loop(unsigned char *buffer, int brainfuck_fd, size_t pointer)
{
	if (buffer[pointer] == 0)
		return;

	size_t num_loops = 0;
	off_t offset = lseek(brainfuck_fd, 0, SEEK_CUR);
	if (offset == -1) {
		err(EXIT_FAILURE, "lseek");
	}
	// upon calling bf_exit_loop, the file descriptor's offset is to the
	// character right after the ']', therefore decrement it before the loop
	// starts, now it points to ']', and once more inside the loop
	// will make it point to the character before the ']'
	--offset;

	for (;;) {
		--offset;
		unsigned char instruction = 0;
		ssize_t num_read = pread(brainfuck_fd, &instruction, 1, offset);
		if (num_read == -1) {
			err(EXIT_FAILURE, "pread");
		}

		if (num_read == 0) {
			fprintf(stderr, "Error: invalid brainfuck\n");
			exit(EXIT_FAILURE);
		}

		if (instruction == '[' && num_loops != 0) {
			--num_loops;
		} else if (instruction == ']') {
			++num_loops;
		} else if (instruction == '[' && num_loops == 0) {
			break;
		}
	}

	// set the offset to the character immidiately following the '['
	// that way we skip doing the enter_loop added complexity
	// and save like 1 or 2 cpu cycles
	if (lseek(brainfuck_fd, offset + 1, SEEK_SET) == -1) {
		err(EXIT_FAILURE, "lseek");
	}
}

void do_brainfuck(unsigned char *buffer, int brainfuck_fd)
{
	size_t pointer = 0;
	for (;;) {
		char instruction = 0;
		ssize_t num_read = read(brainfuck_fd, &instruction, 1);
		if (num_read == -1) {
			err(EXIT_FAILURE, "read");
		}

		if (num_read == 0) {
			break;
		}

		if (instruction == '+') {
			++buffer[pointer];
		} else if (instruction == '-') {
			--buffer[pointer];
		} else if (instruction == '>') {
			++pointer;
			pointer %= BUFFER_SIZE;
		} else if (instruction == '<') {
			--pointer;
			if (pointer >= BUFFER_SIZE) {
				pointer = BUFFER_SIZE - 1;
			}
		} else if (instruction == ',') {
			unsigned char ch = 0;
			if (read(STDIN_FILENO, &ch, 1) == -1) {
				err(EXIT_FAILURE, "read");
			}

			buffer[pointer] = ch;
		} else if (instruction == '.') {
			write(STDOUT_FILENO, &buffer[pointer], 1);
		} else if (instruction == '[') {
			bf_enter_loop(buffer, brainfuck_fd, pointer);
		} else if (instruction == ']') {
			bf_exit_loop(buffer, brainfuck_fd, pointer);
		}
	}
}
