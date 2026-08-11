// Brainfuck compiler for linux AMD64
#ifndef __BRAINFUCK_H__
#define __BRAINFUCK_H__

#define _STR(x) #x
#define STR(x) _STR(x)

#define ARRAY_SIZE 30000

#include <unistd.h>
#include <sys/types.h>
#include <stdbool.h>

#include <string>

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
 * struct compiler_options - options for the brainfuck compiler
 * @optimize: apply simple optimizations, like compressing -+, and ><
 * @overflow: behavior on what to do when the pointer overflows
 */
struct compiler_options {
	_Bool optimize;
	enum pointer_behavior overflow;
};

/**
 * compile_brainfuck() - given a file descriptor, convert bf into assembly
 * @assembly_str: the string for the assembly to go to, everything in it will be
 *	overwritten
 * @fd: the file descriptor to the brainfuck code
 * @options: compiler options, see declaration for documentation
 *
 * Context: might take a long time, but it shouldn't sleep, it also might
 * 	exit the program because of err()
 *
 * Return: none
 */
void compile_brainfuck(std::string *assembly_str, const int fd,
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

	".section .text\n"
	"_start:\n"
	// mmap(NULL, ARRAY_SIZE,
	// PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANON, -1, 0)
	// also, according to man 2 mmap, with MAP_ANON, the mapping's contents
	// are initialized to zero, so no initialization is needed
	"	mov	rax, 9\n"
	"	xor	edi, edi\n"
	"	mov	rsi, " STR(ARRAY_SIZE) "\n"
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
	"// GENERATED_CODE:\n";
	// generated code goes here
	// rbx is containing the address of the array
	// r12 is containing the movable pointer

// this is to follow the generated code
static const char *assembly_end =
	"// ASSEMBLY_END:\n"
	"	mov	rax, 11\n"
	"	mov	rdi, qword [rbp-8]\n"
	"	mov	rsi, " STR(ARRAY_SIZE) "\n"
	"	syscall\n"
	"	mov	rsp, rbp\n"
	"	pop	rbp\n"
	"	mov	rax, 60\n"
	"	xor	edi, edi\n"
	"	syscall\n"
	// safely increment the pointer
	// u64 increment_pointer(u64 ptr, u64 amount)
	"increment_pointer:\n"
	"	add	rdi, rsi\n"
	"	mov	rax, rdi\n"
	"	xor	edx, edx\n"
	"	mov	rcx, " STR(ARRAY_SIZE) "\n"
	"	div	rcx\n" // rax = rdx:rax / arg, rdx = rdx:rax % arg
	"	mov	rax, rdx\n"
	"	ret\n"

	// decrement the pointer safely
	// u64 decrement_pointer(u64 ptr, u64 amount)
	"decrement_pointer:\n"
	// reduce amount modulo array size
	"	mov	rcx, " STR(ARRAY_SIZE) "\n"
	"	xor	edx, edx\n"
	"	mov	rax, rsi\n"
	"	div	rcx\n"
	"	mov	rsi, rdx\n"

	"	cmp	rdi, rsi\n"
	"	jb	decrement_pointer_underflow\n"
	"	sub	rdi, rsi\n"
	"	mov	rax, rdi\n"
	"	ret\n"
	"decrement_pointer_underflow:\n"
	"	sub	rsi, rdi\n"
	"	mov	rdi, " STR(ARRAY_SIZE) "\n"
	"	sub	rdi, rsi\n"
	"	mov	rax, rdi\n"
	"	ret\n"

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
