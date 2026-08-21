// Brainfuck compiler for linux AMD64
#ifndef __BRAINFUCK_H__
#define __BRAINFUCK_H__

#define _STR(x) #x
#define STR(x) _STR(x)

#define ARRAY_SIZE 30000

#include <unistd.h>
#include <sys/types.h>
#include <stdbool.h>
#include <arrays.h>

#ifdef __cplusplus
extern "C" {
#endif

/**
 * enum pointer_behivor - what to do when the pointer goes out of scope
 * @POINTER_UNDEFINED: anything goes
 * @POINTER_WRAP: wrap, by reducing the index modulo ARRAY_SIZE, and some other
 * 	logic for decreasing it
 * @POINTER_ABORT: call SYS_exit(43). Why 43? because it is
 * 	Sheldon Cooper's record for how many times he could kick the ball
 * 	(S6E8 The 43 Peculiarity)
 */
enum pointer_behavior {
	POINTER_UNDEFINED,
	POINTER_WRAP,
	POINTER_ABORT,
};

/**
 * enum comment_behavior - how to handle comments
 * @END_ON_HASH: comments begin with # and and with #, allowing for multi-line
 * 	comments, but no single line comment
 * @END_ON_LF: comments begin with # and the rest of the line is ignored
 * @MULTI_LINE_DOUBLE_HASH: same as END_ON_LF, however ## can be used for
 * 	multi-line comments, ## is used to start and end a multi-line comment
 * @NO_COMMENTS: disable comments
 */
enum comment_behavior {
	COMMENT_LF,
	COMMENT_DOUBLE_HASH,
	NO_COMMENTS,
};

/**
 * struct compiler_options - options for the brainfuck compiler
 * @optimize: apply simple optimizations, like compressing -+, and ><
 * @overflow: behavior on what to do when the pointer overflows
 * @cell_width: cell width, in bytes, should be one of 1, 2, 4, or 8
 * 	bad stuff may happen if this is not one of those
 * @comments: see above
 */
struct compiler_options {
	_Bool optimize;
	size_t cell_width;
	enum pointer_behavior overflow;
	enum comment_behavior comments;
};

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
		       const struct compiler_options *options);

// clang-format off
// This is the assembly "boilerplate", generated code from
// Brainfuck will be placed after this string
static const char *assembly_begin =
	".intel_syntax noprefix\n"
	".global _start\n"

	".section .rodata\n"
	"error_message: .asciz \"an error occurred\\n\"\n"
	"error_message_len = (. - error_message)\n"
	"array_size: .8byte " STR(ARRAY_SIZE) "\n"

	".section .text\n"
	"_start:\n"
	// mmap(NULL, ARRAY_SIZE,
	// PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANON, -1, 0)
	// also, according to man 2 mmap, with MAP_ANON, the mapping's contents
	// are initialized to zero, so no initialization is needed
	"	mov	rax, 9\n"
	"	xor	edi, edi\n"
	"	mov	rsi, qword ptr [rip + array_size]\n"
	// we need to multiply based on if we are using 1 byte cells,
	// or 2 byte cells, or etc
	"	lea	rsi, qword ptr [rsi%s]\n"
	"	mov	rdx, 0x3\n"
	"	mov	r10, 0x22\n"
	"	mov	r8, -1\n"
	"	xor	r9d, r9d\n"
	"	syscall\n"
	"	cmp	rax, 0\n"
	"	jg	do_code\n"
	"error:\n"
	"	mov	rax, 1\n"
	"	mov	rdi, 1\n"
	"	lea	rsi, [rip + error_message]\n"
	"	mov	rdx, error_message_len\n"
	"	syscall\n"
	"	mov	rax, 60\n"
	"	mov	rdi, 1\n"
	"	syscall\n"
	"do_code:\n"
	"	push	rbp\n"
	"	mov	rbp, rsp\n"
	"	sub	rsp, 64\n"
	"	mov	qword ptr [rbp-8], rax\n"
	"	mov	rbx, rax\n"
	"	xor	r12d, r12d\n"
	;
	// generated code goes here
	// rbx is containing the address of the array
	// r12 is containing the movable pointer

// this is to follow the generated code
static const char *assembly_end =
	"	mov	rax, 11\n"
	"	mov	rdi, qword [rbp-8]\n"
	"	mov	rsi, qword ptr [rip + array_size]\n"
	"	lea	rsi, qword ptr [rsi%s]\n"
	"	syscall\n"
	"	mov	rsp, rbp\n"
	"	pop	rbp\n"
	"	mov	rax, 60\n"
	"	xor	edi, edi\n"
	"	syscall\n"
	;
static const char *pointer_functions_wrap =
	// safely increment the pointer
	// u64 increment_pointer(u64 ptr, u64 amount)
	"increment_pointer:\n"
	"	add	rdi, rsi\n"
	"	mov	rax, rdi\n"
	"	xor	edx, edx\n"
	"	mov	rcx, qword ptr [rip + array_size]\n"
	"	div	rcx\n" // rax = rdx:rax / arg, rdx = rdx:rax % arg
	"	mov	rax, rdx\n"
	"	ret\n"

	// decrement the pointer safely
	// u64 decrement_pointer(u64 ptr, u64 amount)
	"decrement_pointer:\n"
	// reduce amount modulo array size
	"	xor	edx, edx\n"
	"	mov	rax, rsi\n"
	"	div	qword ptr [rip + array_size]\n"
	"	cmp	rdi, rdx\n"
	"	jb	decrement_pointer_underflow\n"

	"	sub	rdi, rdx\n"
	"	mov	rax, rdi\n"
	"	ret\n"
	"decrement_pointer_underflow:\n"
	"	sub	rdx, rdi\n"
	"	mov	rdi, qword ptr [rip + array_size]\n"
	"	sub	rdi, rdx\n"
	"	mov	rax, rdi\n"
	"	ret\n"
	;
static const char *pointer_functions_abort =
	"pointer_abort:\n"
	"	mov	rax, 60\n"
	"	mov	rdi, 43\n"
	"	syscall\n"
	// u64 increment_pointer(u64 ptr, u64 amount)
	"increment_pointer:\n"
	"	add	rdi, rsi\n"
	"	cmp	rdi, qword ptr [rip + array_size]\n"
	"	jae	pointer_abort\n"
	"	mov	rax, rdi\n"
	"	ret\n"

	// u64 decrement_pointer(u64 ptr, u64 amount)
	"decrement_pointer:\n"
	"	sub	rdi, rsi\n"
	"	cmp	rdi, qword ptr [rip + array_size]\n"
	"	jae	pointer_abort\n"
	"	mov	rax, rdi\n"
	"	ret\n"
	;
static const char *read_write_functions =
	// void do_write(u64 ptr, u64 buf_addr)
	"do_write:\n"
	"	add	rsi, rdi\n"
	"	mov	rax, 1\n"
	"	mov	rdi, 1\n"
	"	mov	rdx, 1\n"
	"	syscall\n"
	"	ret\n"
	// void do_read(u64 ptr, u64 buf_addr)
	"do_read:\n"
	"	push	rbp\n"
	"	mov	rbp, rsp\n"
	"	sub	rsp, 64\n"
	"	mov	qword ptr [rbp-8], rsi\n"
	"	add	qword ptr [rbp-8], rdi\n"
	"	mov	qword ptr [rbp-16], 0\n" // this will be char ch;
	// rbp-8: address of the array
	// byte @ rbp-16: the temporary character
	"do_read_loop:\n"
	"	mov	rax, 0\n"
	"	mov	rdi, 0\n"
	"	lea	rsi, qword ptr [rbp-16]\n"
	"	mov	rdx, 1\n"
	"	syscall\n"

	"	cmp	byte ptr [rbp-16], 0xa\n"
	"	je	do_read_loop\n"

	"do_read_loop_done:\n"
	"	mov	rax, qword ptr [rbp-8]\n"
	"	mov	dl, byte ptr [rbp-16]\n"
	"	mov	byte ptr [rax], dl\n"
	"	leave\n"
	"	ret\n"
	;
// clang-format on

#ifdef __cplusplus
}
#endif

#endif
