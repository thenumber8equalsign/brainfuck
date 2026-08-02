.intel_syntax noprefix
.global _start
.section .rodata
error_message: .asciz "an error occurred"
error_message_len = (. - error_message)
.section .text
_start:
	mov	rax, 9
	xor	edi, edi
	mov	rsi, 30000
	mov	rdx, 0x3
	mov	r10, 0x22
	mov	r8, -1
	xor	r9d, r9d
	syscall
	cmp	rax, 0
	jg	do_code
error:
	mov	rax, 1
	mov	rdi, 1
	lea	rsi, error_message
	mov	rdx, error_message_len
	syscall
	mov	rax, 60
	mov	rdi, 1
	syscall
do_code:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 69
	mov	qword ptr [rbp-8], rax
	mov	rbx, rax
	xor	r12d, r12d
// GENERATED_CODE:
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_0
BEGIN_LOOP_0:
	dec	byte ptr [rbx+r12]
	dec	byte ptr [rbx+r12]
	dec	byte ptr [rbx+r12]
	dec	byte ptr [rbx+r12]
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_0
END_LOOP_0:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	mov	rsi, rbx
	call	do_write
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	mov	rsi, rbx
	call	do_write
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1
BEGIN_LOOP_1:
	dec	byte ptr [rbx+r12]
	dec	byte ptr [rbx+r12]
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1
END_LOOP_1:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	dec	byte ptr [rbx+r12]
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	mov	rsi, rbx
	call	do_write
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_2
BEGIN_LOOP_2:
	dec	byte ptr [rbx+r12]
	dec	byte ptr [rbx+r12]
	dec	byte ptr [rbx+r12]
	dec	byte ptr [rbx+r12]
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_2
END_LOOP_2:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	mov	rsi, rbx
	call	do_write
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	mov	rsi, rbx
	call	do_write
	dec	byte ptr [rbx+r12]
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	mov	rsi, rbx
	call	do_write
// ASSEMBLY_END:
	mov	rax, 11
	mov	rdi, qword [rbp-8]
	mov	rsi, 30000
	syscall
	mov	rsp, rbp
	pop	rbp
	mov	rax, 60
	xor	edi, edi
	syscall
increment_pointer:
	inc	rdi
	mov	rsi, 30000
	cmp	rdi, rsi
	jae	increment_zero
	mov	rax, rdi
	ret
increment_zero:
	xor	eax, eax
	ret
decrement_pointer:
	test	rdi, rdi
	jz	decrement_zero
	dec	rdi
	mov	rax, rdi
	ret
decrement_zero:
	mov	rax, 30000
	dec	rax
	ret
do_write:
	add	rsi, rdi
	mov	rax, 1
	mov	rdi, 1
	mov	rdx, 1
	syscall
	ret
do_read:
	add	rsi, rdi
	mov	rax, 0
	mov	rdi, 0
	mov	rdx, 1
	syscall
	ret

