// Brainfuck compiler for linux AMD64
#ifndef __BRAINFUCK_H__
#define __BRAINFUCK_H__

#define _STR(x) #x
#define STR(x) _STR(x)

#define BUFFER_SIZE 30000
#define ASSEMBLY_MAX_SIZE 1000000000
#define MAX_NUMBER_OF_LOOPS 10000000

#include <unistd.h>
#include <sys/types.h>
#include <stdbool.h>

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
	// mmap(NULL, BUFFER_SIZE,
	// PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANON, -1, 0)
	// also, according to man 2 mmap, with MAP_ANON, the mapping's contents
	// are initialized to zero, so no initialization is needed
	"	mov	rax, 9\n"
	"	xor	edi, edi\n"
	"	mov	rsi, " STR(BUFFER_SIZE) "\n"
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
	// rbx is containing the address of the buffer
	// r12 is containing the movable pointer

// this is to follow the generated code
static const char *assembly_end =
	"// ASSEMBLY_END:\n"
	"	mov	rax, 11\n"
	"	mov	rdi, qword [rbp-8]\n"
	"	mov	rsi, " STR(BUFFER_SIZE) "\n"
	"	syscall\n"
	"	mov	rsp, rbp\n"
	"	pop	rbp\n"
	"	mov	rax, 60\n"
	"	xor	edi, edi\n"
	"	syscall\n"
	// safely increment the pointer
	// u64 increment_pointer(u64 ptr)
	"increment_pointer:\n"
	"	inc	rdi\n"
	// cmp can not be used with 64 bit immidates, but mov can,
	// just in case one may want more than 4 billion length
	"	mov	rsi, " STR(BUFFER_SIZE) "\n"
	"	cmp	rdi, rsi\n"
	"	jae	increment_zero\n"
	"	mov	rax, rdi\n"
	"	ret\n"
	"increment_zero:\n"
	"	xor	eax, eax\n"
	"	ret\n"

	// decrement the pointer safely
	// u64 decrement_pointer(u64 ptr)
	"decrement_pointer:\n"
	"	test	rdi, rdi\n"
	"	jz	decrement_zero\n"
	"	dec	rdi\n"
	"	mov	rax, rdi\n"
	"	ret\n"
	"decrement_zero:\n"
	"	mov	rax, " STR(BUFFER_SIZE) "\n"
	"	dec	rax\n"
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

/**
 * struct loop_brace - brainfuck loop
 * @bf_file_offset: the offset into the brainfuck source file
 *                  where the character (either '[' or ']') is
 * @loop_index: the loop's identifier (0-indexed, used for
 *              assembly label creation)
 * @corrosponding_open: if the struct loop is a close_loop,
 *                      the pointer to the corrosponding
 *                      '[' struct, NULL otherwise
 * @open: true if the loop_brace represents a '[',
 *        false otherwise
 *
 * an array of this structure shall be used to represent all the loops
 * in a brainfuck program
 */
struct loop_brace {
	off_t bf_file_offset;
	size_t loop_index;
	struct loop_brace *corrosponding_open;
	_Bool open;
};

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
void compile_brainfuck(char *assembly_str, int fd);

#endif
