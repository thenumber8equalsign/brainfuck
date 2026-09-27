#define _POSIX_C_SOURCE 200809L
#include <assert.h>
#include <fcntl.h>
#include <stdbool.h>
#include <err.h>
#include <string.h>
#include <limits.h>
#include <sys/stat.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>

#define MAX_LOOPS 1000000
#define ARR_SIZE 30000

/* the OS is my garbage collector */
int main(int argc, char **argv)
{
	char bf_path[PATH_MAX];
	uint8_t bf_arr[ARR_SIZE];
	size_t loop_stack[MAX_LOOPS];
	size_t *sp;
	char *bf_file;
	int bf_fd;
	ssize_t ret;
	off_t bf_file_size;
	size_t cur_offset;
	char instr;
	size_t ptr;

	struct stat bf_file_info;

	memset(&bf_file_info, 0, sizeof(bf_file_info));
	memset(loop_stack, 0, sizeof(loop_stack));
	memset(bf_arr, 0, sizeof(bf_arr));
	memset(bf_path, 0, sizeof(bf_path));

	cur_offset = 0;
	sp = loop_stack;
	ptr = 0;

	if (argc != 2) {
		fprintf(stderr, "Usage: %s file\n", argv[0]);
		return 1;
	}

	if (strlen(argv[1]) >= PATH_MAX) {
		fprintf(stderr, "too long\n");
		return 1;
	}

	strncpy(bf_path, argv[1], PATH_MAX);
	if ((ret = stat(bf_path, &bf_file_info)) == -1)
		err(EXIT_FAILURE, "stat");

	bf_file_size = bf_file_info.st_size;

	if ((bf_file = malloc(bf_file_size + 1)) == NULL)
		err(EXIT_FAILURE, "malloc");

	if ((bf_fd = open(bf_path, O_RDONLY)) == -1)
		err(EXIT_FAILURE, "open");

	if ((ret = read(bf_fd, bf_file, bf_file_size)) == -1) {
		err(EXIT_FAILURE, "read");
	} else if (ret < bf_file_size) {
		fprintf(stderr, "Could not read entire file idk why\n");
		return 1;
	}

	close(bf_fd);

	for (;;) {
		size_t num_loop;
		num_loop = 0;

		if (cur_offset >= bf_file_size)
			break;

		instr = bf_file[cur_offset];

		switch (instr) {
		case '+':
			++bf_arr[ptr];
			break;
		case '-':
			--bf_arr[ptr];
			break;
		case '<':
			--ptr;
			ptr += ARR_SIZE;
			ptr %= ARR_SIZE;
			break;
		case '>':
			++ptr;
			ptr %= ARR_SIZE;
			break;
		case ',':
			uint8_t val;
			do {
				if ((ret = read(STDIN_FILENO, &val, 1)) == -1)
					err(EXIT_FAILURE, "read");
				else if (ret == 0)
					return 0;
			} while (val == '\n');
			bf_arr[ptr] = val;
			break;
		case '.':
			write(STDOUT_FILENO, bf_arr + ptr, 1);
			break;
		case '[':
			if (bf_arr[ptr] == 0)
				goto skip_loop;
			assert(sp - loop_stack < MAX_LOOPS);
			*sp++ = cur_offset;
			break;
		case ']':
			--sp;
			assert(sp - loop_stack >= 0);
			if (bf_arr[ptr] != 0) {
				cur_offset = *sp;
				--cur_offset;
			}
			break;
		default:
			break;
		}

		++cur_offset;
		continue;
skip_loop:
		for (;;) {
			++cur_offset;
			instr = bf_file[cur_offset];
			if (instr == ']' && num_loop == 0)
				break;
			else if (instr == '[')
				++num_loop;
			else if (instr == ']')
				--num_loop;
		}

		++cur_offset;
	}
	return 0;
}
