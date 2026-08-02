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
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_0
BEGIN_LOOP_0:
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1
BEGIN_LOOP_1:
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_2
BEGIN_LOOP_2:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_2
END_LOOP_2:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1
END_LOOP_1:
	inc	byte ptr [rbx+r12]
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
	mov	rdi, r12
	mov	rsi, rbx
	call	do_read
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_5
BEGIN_LOOP_5:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_5
END_LOOP_5:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_0
END_LOOP_0:
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_8
BEGIN_LOOP_8:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_8
END_LOOP_8:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	dec	byte ptr [rbx+r12]
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_10
BEGIN_LOOP_10:
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_11
BEGIN_LOOP_11:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_11
END_LOOP_11:
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_13
BEGIN_LOOP_13:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_13
END_LOOP_13:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_10
END_LOOP_10:
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_16
BEGIN_LOOP_16:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_17
BEGIN_LOOP_17:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_17
END_LOOP_17:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_16
END_LOOP_16:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_20
BEGIN_LOOP_20:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_20
END_LOOP_20:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_22
BEGIN_LOOP_22:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_22
END_LOOP_22:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_24
BEGIN_LOOP_24:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_25
BEGIN_LOOP_25:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_25
END_LOOP_25:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_24
END_LOOP_24:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_28
BEGIN_LOOP_28:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_28
END_LOOP_28:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_30
BEGIN_LOOP_30:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_30
END_LOOP_30:
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_32
BEGIN_LOOP_32:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_33
BEGIN_LOOP_33:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_34
BEGIN_LOOP_34:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_34
END_LOOP_34:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_33
END_LOOP_33:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_37
BEGIN_LOOP_37:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_37
END_LOOP_37:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_39
BEGIN_LOOP_39:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_39
END_LOOP_39:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_41
BEGIN_LOOP_41:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_42
BEGIN_LOOP_42:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_42
END_LOOP_42:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_41
END_LOOP_41:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_45
BEGIN_LOOP_45:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_46
BEGIN_LOOP_46:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_46
END_LOOP_46:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_45
END_LOOP_45:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_49
BEGIN_LOOP_49:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_49
END_LOOP_49:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_51
BEGIN_LOOP_51:
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_52
BEGIN_LOOP_52:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_52
END_LOOP_52:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_54
BEGIN_LOOP_54:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_55
BEGIN_LOOP_55:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_55
END_LOOP_55:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_57
BEGIN_LOOP_57:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_57
END_LOOP_57:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_54
END_LOOP_54:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_60
BEGIN_LOOP_60:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_60
END_LOOP_60:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_62
BEGIN_LOOP_62:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_63
BEGIN_LOOP_63:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_63
END_LOOP_63:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_65
BEGIN_LOOP_65:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_65
END_LOOP_65:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_62
END_LOOP_62:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_68
BEGIN_LOOP_68:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_68
END_LOOP_68:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_70
BEGIN_LOOP_70:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_70
END_LOOP_70:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_72
BEGIN_LOOP_72:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_72
END_LOOP_72:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_74
BEGIN_LOOP_74:
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_75
BEGIN_LOOP_75:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_75
END_LOOP_75:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_77
BEGIN_LOOP_77:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_77
END_LOOP_77:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_79
BEGIN_LOOP_79:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_79
END_LOOP_79:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_81
BEGIN_LOOP_81:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_81
END_LOOP_81:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_83
BEGIN_LOOP_83:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_83
END_LOOP_83:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_85
BEGIN_LOOP_85:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_85
END_LOOP_85:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_87
BEGIN_LOOP_87:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_87
END_LOOP_87:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_89
BEGIN_LOOP_89:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_89
END_LOOP_89:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_91
BEGIN_LOOP_91:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_91
END_LOOP_91:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_93
BEGIN_LOOP_93:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_93
END_LOOP_93:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_95
BEGIN_LOOP_95:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_95
END_LOOP_95:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_74
END_LOOP_74:
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_98
BEGIN_LOOP_98:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_98
END_LOOP_98:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_100
BEGIN_LOOP_100:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_100
END_LOOP_100:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_102
BEGIN_LOOP_102:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_103
BEGIN_LOOP_103:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_103
END_LOOP_103:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_105
BEGIN_LOOP_105:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_106
BEGIN_LOOP_106:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_107
BEGIN_LOOP_107:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_107
END_LOOP_107:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_109
BEGIN_LOOP_109:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_109
END_LOOP_109:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_106
END_LOOP_106:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_112
BEGIN_LOOP_112:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_112
END_LOOP_112:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_105
END_LOOP_105:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_115
BEGIN_LOOP_115:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_115
END_LOOP_115:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_117
BEGIN_LOOP_117:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_118
BEGIN_LOOP_118:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_118
END_LOOP_118:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_117
END_LOOP_117:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_121
BEGIN_LOOP_121:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_121
END_LOOP_121:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_102
END_LOOP_102:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_124
BEGIN_LOOP_124:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_125
BEGIN_LOOP_125:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_125
END_LOOP_125:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_127
BEGIN_LOOP_127:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_128
BEGIN_LOOP_128:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_128
END_LOOP_128:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_130
BEGIN_LOOP_130:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_130
END_LOOP_130:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_127
END_LOOP_127:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_133
BEGIN_LOOP_133:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_133
END_LOOP_133:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_124
END_LOOP_124:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_136
BEGIN_LOOP_136:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_136
END_LOOP_136:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_138
BEGIN_LOOP_138:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_138
END_LOOP_138:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_140
BEGIN_LOOP_140:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_141
BEGIN_LOOP_141:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_141
END_LOOP_141:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_143
BEGIN_LOOP_143:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_144
BEGIN_LOOP_144:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_145
BEGIN_LOOP_145:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_145
END_LOOP_145:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_147
BEGIN_LOOP_147:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_147
END_LOOP_147:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_144
END_LOOP_144:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_150
BEGIN_LOOP_150:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_150
END_LOOP_150:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_143
END_LOOP_143:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_153
BEGIN_LOOP_153:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_153
END_LOOP_153:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_155
BEGIN_LOOP_155:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_156
BEGIN_LOOP_156:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_156
END_LOOP_156:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_155
END_LOOP_155:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_159
BEGIN_LOOP_159:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_159
END_LOOP_159:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_140
END_LOOP_140:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_162
BEGIN_LOOP_162:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_163
BEGIN_LOOP_163:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_163
END_LOOP_163:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_165
BEGIN_LOOP_165:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_166
BEGIN_LOOP_166:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_166
END_LOOP_166:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_168
BEGIN_LOOP_168:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_168
END_LOOP_168:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_165
END_LOOP_165:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_171
BEGIN_LOOP_171:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_171
END_LOOP_171:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_162
END_LOOP_162:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_174
BEGIN_LOOP_174:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_175
BEGIN_LOOP_175:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_175
END_LOOP_175:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_174
END_LOOP_174:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_178
BEGIN_LOOP_178:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_178
END_LOOP_178:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_180
BEGIN_LOOP_180:
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_181
BEGIN_LOOP_181:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_181
END_LOOP_181:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_183
BEGIN_LOOP_183:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_183
END_LOOP_183:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_180
END_LOOP_180:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_186
BEGIN_LOOP_186:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_186
END_LOOP_186:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_188
BEGIN_LOOP_188:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_189
BEGIN_LOOP_189:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_189
END_LOOP_189:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_191
BEGIN_LOOP_191:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_192
BEGIN_LOOP_192:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_192
END_LOOP_192:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_194
BEGIN_LOOP_194:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_195
BEGIN_LOOP_195:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_195
END_LOOP_195:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_197
BEGIN_LOOP_197:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_197
END_LOOP_197:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_199
BEGIN_LOOP_199:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_199
END_LOOP_199:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_194
END_LOOP_194:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_191
END_LOOP_191:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_203
BEGIN_LOOP_203:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_203
END_LOOP_203:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_205
BEGIN_LOOP_205:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_206
BEGIN_LOOP_206:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_206
END_LOOP_206:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_208
BEGIN_LOOP_208:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_209
BEGIN_LOOP_209:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_209
END_LOOP_209:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_211
BEGIN_LOOP_211:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_211
END_LOOP_211:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_213
BEGIN_LOOP_213:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_213
END_LOOP_213:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_215
BEGIN_LOOP_215:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_215
END_LOOP_215:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_208
END_LOOP_208:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_205
END_LOOP_205:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_219
BEGIN_LOOP_219:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_220
BEGIN_LOOP_220:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_220
END_LOOP_220:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_219
END_LOOP_219:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_188
END_LOOP_188:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_224
BEGIN_LOOP_224:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_224
END_LOOP_224:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_226
BEGIN_LOOP_226:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_226
END_LOOP_226:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_228
BEGIN_LOOP_228:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_228
END_LOOP_228:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_230
BEGIN_LOOP_230:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_231
BEGIN_LOOP_231:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_231
END_LOOP_231:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_230
END_LOOP_230:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_234
BEGIN_LOOP_234:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_235
BEGIN_LOOP_235:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_236
BEGIN_LOOP_236:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_236
END_LOOP_236:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_235
END_LOOP_235:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_239
BEGIN_LOOP_239:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_240
BEGIN_LOOP_240:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_240
END_LOOP_240:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_239
END_LOOP_239:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_243
BEGIN_LOOP_243:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_244
BEGIN_LOOP_244:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_244
END_LOOP_244:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_246
BEGIN_LOOP_246:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_246
END_LOOP_246:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_248
BEGIN_LOOP_248:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_248
END_LOOP_248:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_243
END_LOOP_243:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_251
BEGIN_LOOP_251:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_251
END_LOOP_251:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_253
BEGIN_LOOP_253:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_253
END_LOOP_253:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_255
BEGIN_LOOP_255:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_256
BEGIN_LOOP_256:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_256
END_LOOP_256:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_258
BEGIN_LOOP_258:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_258
END_LOOP_258:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_255
END_LOOP_255:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_261
BEGIN_LOOP_261:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_261
END_LOOP_261:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_263
BEGIN_LOOP_263:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_264
BEGIN_LOOP_264:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_264
END_LOOP_264:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_263
END_LOOP_263:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_267
BEGIN_LOOP_267:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_267
END_LOOP_267:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_269
BEGIN_LOOP_269:
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_270
BEGIN_LOOP_270:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_270
END_LOOP_270:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_272
BEGIN_LOOP_272:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_272
END_LOOP_272:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_274
BEGIN_LOOP_274:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_274
END_LOOP_274:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_276
BEGIN_LOOP_276:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_276
END_LOOP_276:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_278
BEGIN_LOOP_278:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_278
END_LOOP_278:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_280
BEGIN_LOOP_280:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_280
END_LOOP_280:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_282
BEGIN_LOOP_282:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_282
END_LOOP_282:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_284
BEGIN_LOOP_284:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_284
END_LOOP_284:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_286
BEGIN_LOOP_286:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_286
END_LOOP_286:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_288
BEGIN_LOOP_288:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_288
END_LOOP_288:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_290
BEGIN_LOOP_290:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_290
END_LOOP_290:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_269
END_LOOP_269:
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_293
BEGIN_LOOP_293:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_293
END_LOOP_293:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_295
BEGIN_LOOP_295:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_295
END_LOOP_295:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_297
BEGIN_LOOP_297:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_298
BEGIN_LOOP_298:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_298
END_LOOP_298:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_300
BEGIN_LOOP_300:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_301
BEGIN_LOOP_301:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_302
BEGIN_LOOP_302:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_302
END_LOOP_302:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_304
BEGIN_LOOP_304:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_304
END_LOOP_304:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_301
END_LOOP_301:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_307
BEGIN_LOOP_307:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_307
END_LOOP_307:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_300
END_LOOP_300:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_310
BEGIN_LOOP_310:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_310
END_LOOP_310:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_312
BEGIN_LOOP_312:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_313
BEGIN_LOOP_313:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_313
END_LOOP_313:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_312
END_LOOP_312:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_316
BEGIN_LOOP_316:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_316
END_LOOP_316:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_297
END_LOOP_297:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_319
BEGIN_LOOP_319:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_320
BEGIN_LOOP_320:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_320
END_LOOP_320:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_322
BEGIN_LOOP_322:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_323
BEGIN_LOOP_323:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_323
END_LOOP_323:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_325
BEGIN_LOOP_325:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_325
END_LOOP_325:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_322
END_LOOP_322:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_328
BEGIN_LOOP_328:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_328
END_LOOP_328:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_319
END_LOOP_319:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_331
BEGIN_LOOP_331:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_332
BEGIN_LOOP_332:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_332
END_LOOP_332:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_334
BEGIN_LOOP_334:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_334
END_LOOP_334:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_331
END_LOOP_331:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_337
BEGIN_LOOP_337:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_337
END_LOOP_337:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_339
BEGIN_LOOP_339:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_339
END_LOOP_339:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_341
BEGIN_LOOP_341:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_341
END_LOOP_341:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_343
BEGIN_LOOP_343:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_344
BEGIN_LOOP_344:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_344
END_LOOP_344:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_346
BEGIN_LOOP_346:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_347
BEGIN_LOOP_347:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_348
BEGIN_LOOP_348:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_348
END_LOOP_348:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_350
BEGIN_LOOP_350:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_350
END_LOOP_350:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_347
END_LOOP_347:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_353
BEGIN_LOOP_353:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_353
END_LOOP_353:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_346
END_LOOP_346:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_356
BEGIN_LOOP_356:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_356
END_LOOP_356:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_358
BEGIN_LOOP_358:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_359
BEGIN_LOOP_359:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_359
END_LOOP_359:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_358
END_LOOP_358:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_362
BEGIN_LOOP_362:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_362
END_LOOP_362:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_343
END_LOOP_343:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_365
BEGIN_LOOP_365:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_366
BEGIN_LOOP_366:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_366
END_LOOP_366:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_368
BEGIN_LOOP_368:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_369
BEGIN_LOOP_369:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_369
END_LOOP_369:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_371
BEGIN_LOOP_371:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_371
END_LOOP_371:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_368
END_LOOP_368:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_374
BEGIN_LOOP_374:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_374
END_LOOP_374:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_365
END_LOOP_365:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_377
BEGIN_LOOP_377:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_378
BEGIN_LOOP_378:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_378
END_LOOP_378:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_377
END_LOOP_377:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_381
BEGIN_LOOP_381:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_381
END_LOOP_381:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_383
BEGIN_LOOP_383:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_384
BEGIN_LOOP_384:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_384
END_LOOP_384:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_383
END_LOOP_383:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_387
BEGIN_LOOP_387:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_387
END_LOOP_387:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_389
BEGIN_LOOP_389:
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_390
BEGIN_LOOP_390:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_390
END_LOOP_390:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_392
BEGIN_LOOP_392:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_392
END_LOOP_392:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_389
END_LOOP_389:
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_395
BEGIN_LOOP_395:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_396
BEGIN_LOOP_396:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_396
END_LOOP_396:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_398
BEGIN_LOOP_398:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_398
END_LOOP_398:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_395
END_LOOP_395:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_401
BEGIN_LOOP_401:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_401
END_LOOP_401:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_403
BEGIN_LOOP_403:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_404
BEGIN_LOOP_404:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_404
END_LOOP_404:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_403
END_LOOP_403:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_407
BEGIN_LOOP_407:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_407
END_LOOP_407:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_409
BEGIN_LOOP_409:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_409
END_LOOP_409:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_411
BEGIN_LOOP_411:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_412
BEGIN_LOOP_412:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_412
END_LOOP_412:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_414
BEGIN_LOOP_414:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_414
END_LOOP_414:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_411
END_LOOP_411:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_417
BEGIN_LOOP_417:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_417
END_LOOP_417:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_419
BEGIN_LOOP_419:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_419
END_LOOP_419:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_421
BEGIN_LOOP_421:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_421
END_LOOP_421:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_423
BEGIN_LOOP_423:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_423
END_LOOP_423:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_425
BEGIN_LOOP_425:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_426
BEGIN_LOOP_426:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_427
BEGIN_LOOP_427:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_427
END_LOOP_427:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_429
BEGIN_LOOP_429:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_430
BEGIN_LOOP_430:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_430
END_LOOP_430:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_432
BEGIN_LOOP_432:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_433
BEGIN_LOOP_433:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_433
END_LOOP_433:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_435
BEGIN_LOOP_435:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_435
END_LOOP_435:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_437
BEGIN_LOOP_437:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_437
END_LOOP_437:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_432
END_LOOP_432:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_429
END_LOOP_429:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_441
BEGIN_LOOP_441:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_441
END_LOOP_441:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_443
BEGIN_LOOP_443:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_444
BEGIN_LOOP_444:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_444
END_LOOP_444:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_446
BEGIN_LOOP_446:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_447
BEGIN_LOOP_447:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_447
END_LOOP_447:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_449
BEGIN_LOOP_449:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_449
END_LOOP_449:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_451
BEGIN_LOOP_451:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_451
END_LOOP_451:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_453
BEGIN_LOOP_453:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_453
END_LOOP_453:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_446
END_LOOP_446:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_443
END_LOOP_443:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_457
BEGIN_LOOP_457:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_458
BEGIN_LOOP_458:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_458
END_LOOP_458:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_457
END_LOOP_457:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_426
END_LOOP_426:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_462
BEGIN_LOOP_462:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_462
END_LOOP_462:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_464
BEGIN_LOOP_464:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_464
END_LOOP_464:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_466
BEGIN_LOOP_466:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_467
BEGIN_LOOP_467:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_468
BEGIN_LOOP_468:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_468
END_LOOP_468:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_470
BEGIN_LOOP_470:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_470
END_LOOP_470:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_467
END_LOOP_467:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_473
BEGIN_LOOP_473:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_474
BEGIN_LOOP_474:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_475
BEGIN_LOOP_475:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_476
BEGIN_LOOP_476:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_476
END_LOOP_476:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_475
END_LOOP_475:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_479
BEGIN_LOOP_479:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_479
END_LOOP_479:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_474
END_LOOP_474:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_482
BEGIN_LOOP_482:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_483
BEGIN_LOOP_483:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_483
END_LOOP_483:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_482
END_LOOP_482:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_486
BEGIN_LOOP_486:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_486
END_LOOP_486:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_473
END_LOOP_473:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_489
BEGIN_LOOP_489:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_489
END_LOOP_489:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_466
END_LOOP_466:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_492
BEGIN_LOOP_492:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_492
END_LOOP_492:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_494
BEGIN_LOOP_494:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_495
BEGIN_LOOP_495:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_496
BEGIN_LOOP_496:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_496
END_LOOP_496:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_498
BEGIN_LOOP_498:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_498
END_LOOP_498:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_495
END_LOOP_495:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_501
BEGIN_LOOP_501:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_502
BEGIN_LOOP_502:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_503
BEGIN_LOOP_503:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_504
BEGIN_LOOP_504:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_504
END_LOOP_504:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_503
END_LOOP_503:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_507
BEGIN_LOOP_507:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_507
END_LOOP_507:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_502
END_LOOP_502:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_510
BEGIN_LOOP_510:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_511
BEGIN_LOOP_511:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_511
END_LOOP_511:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_510
END_LOOP_510:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_514
BEGIN_LOOP_514:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_514
END_LOOP_514:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_501
END_LOOP_501:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_494
END_LOOP_494:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_425
END_LOOP_425:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_519
BEGIN_LOOP_519:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_519
END_LOOP_519:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_521
BEGIN_LOOP_521:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_522
BEGIN_LOOP_522:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_522
END_LOOP_522:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_524
BEGIN_LOOP_524:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_525
BEGIN_LOOP_525:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_526
BEGIN_LOOP_526:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_527
BEGIN_LOOP_527:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_527
END_LOOP_527:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_526
END_LOOP_526:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_530
BEGIN_LOOP_530:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_530
END_LOOP_530:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_525
END_LOOP_525:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_533
BEGIN_LOOP_533:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_534
BEGIN_LOOP_534:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_534
END_LOOP_534:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_533
END_LOOP_533:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_537
BEGIN_LOOP_537:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_537
END_LOOP_537:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_524
END_LOOP_524:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_521
END_LOOP_521:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_541
BEGIN_LOOP_541:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_541
END_LOOP_541:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_543
BEGIN_LOOP_543:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_543
END_LOOP_543:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_545
BEGIN_LOOP_545:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_545
END_LOOP_545:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_547
BEGIN_LOOP_547:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_548
BEGIN_LOOP_548:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_548
END_LOOP_548:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_550
BEGIN_LOOP_550:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_550
END_LOOP_550:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_547
END_LOOP_547:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_553
BEGIN_LOOP_553:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_553
END_LOOP_553:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_555
BEGIN_LOOP_555:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_556
BEGIN_LOOP_556:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_556
END_LOOP_556:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_558
BEGIN_LOOP_558:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_558
END_LOOP_558:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_555
END_LOOP_555:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_561
BEGIN_LOOP_561:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_561
END_LOOP_561:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_563
BEGIN_LOOP_563:
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_564
BEGIN_LOOP_564:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_564
END_LOOP_564:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_566
BEGIN_LOOP_566:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_566
END_LOOP_566:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_568
BEGIN_LOOP_568:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_568
END_LOOP_568:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_570
BEGIN_LOOP_570:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_570
END_LOOP_570:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_572
BEGIN_LOOP_572:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_572
END_LOOP_572:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_574
BEGIN_LOOP_574:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_574
END_LOOP_574:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_576
BEGIN_LOOP_576:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_576
END_LOOP_576:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_578
BEGIN_LOOP_578:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_578
END_LOOP_578:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_580
BEGIN_LOOP_580:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_580
END_LOOP_580:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_582
BEGIN_LOOP_582:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_582
END_LOOP_582:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_584
BEGIN_LOOP_584:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_584
END_LOOP_584:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_563
END_LOOP_563:
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_587
BEGIN_LOOP_587:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_587
END_LOOP_587:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_589
BEGIN_LOOP_589:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_589
END_LOOP_589:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_591
BEGIN_LOOP_591:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_592
BEGIN_LOOP_592:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_592
END_LOOP_592:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_594
BEGIN_LOOP_594:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_595
BEGIN_LOOP_595:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_596
BEGIN_LOOP_596:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_596
END_LOOP_596:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_598
BEGIN_LOOP_598:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_598
END_LOOP_598:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_595
END_LOOP_595:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_601
BEGIN_LOOP_601:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_601
END_LOOP_601:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_594
END_LOOP_594:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_604
BEGIN_LOOP_604:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_604
END_LOOP_604:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_606
BEGIN_LOOP_606:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_607
BEGIN_LOOP_607:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_607
END_LOOP_607:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_606
END_LOOP_606:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_610
BEGIN_LOOP_610:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_610
END_LOOP_610:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_591
END_LOOP_591:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_613
BEGIN_LOOP_613:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_614
BEGIN_LOOP_614:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_614
END_LOOP_614:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_616
BEGIN_LOOP_616:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_617
BEGIN_LOOP_617:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_617
END_LOOP_617:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_619
BEGIN_LOOP_619:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_619
END_LOOP_619:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_616
END_LOOP_616:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_622
BEGIN_LOOP_622:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_622
END_LOOP_622:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_613
END_LOOP_613:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_625
BEGIN_LOOP_625:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_626
BEGIN_LOOP_626:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_626
END_LOOP_626:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_625
END_LOOP_625:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_629
BEGIN_LOOP_629:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_629
END_LOOP_629:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_631
BEGIN_LOOP_631:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_631
END_LOOP_631:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_633
BEGIN_LOOP_633:
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_634
BEGIN_LOOP_634:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_634
END_LOOP_634:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_636
BEGIN_LOOP_636:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_636
END_LOOP_636:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_633
END_LOOP_633:
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_639
BEGIN_LOOP_639:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_640
BEGIN_LOOP_640:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_640
END_LOOP_640:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_642
BEGIN_LOOP_642:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_643
BEGIN_LOOP_643:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_643
END_LOOP_643:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_645
BEGIN_LOOP_645:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_646
BEGIN_LOOP_646:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_646
END_LOOP_646:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_648
BEGIN_LOOP_648:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_648
END_LOOP_648:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_650
BEGIN_LOOP_650:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_650
END_LOOP_650:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_645
END_LOOP_645:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_642
END_LOOP_642:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_654
BEGIN_LOOP_654:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_654
END_LOOP_654:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_656
BEGIN_LOOP_656:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_657
BEGIN_LOOP_657:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_657
END_LOOP_657:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_659
BEGIN_LOOP_659:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_660
BEGIN_LOOP_660:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_660
END_LOOP_660:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_662
BEGIN_LOOP_662:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_662
END_LOOP_662:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_664
BEGIN_LOOP_664:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_664
END_LOOP_664:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_666
BEGIN_LOOP_666:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_666
END_LOOP_666:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_659
END_LOOP_659:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_656
END_LOOP_656:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_670
BEGIN_LOOP_670:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_671
BEGIN_LOOP_671:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_671
END_LOOP_671:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_670
END_LOOP_670:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_639
END_LOOP_639:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_675
BEGIN_LOOP_675:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_675
END_LOOP_675:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_677
BEGIN_LOOP_677:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_677
END_LOOP_677:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_679
BEGIN_LOOP_679:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_680
BEGIN_LOOP_680:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_681
BEGIN_LOOP_681:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_681
END_LOOP_681:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_683
BEGIN_LOOP_683:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_683
END_LOOP_683:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_680
END_LOOP_680:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_686
BEGIN_LOOP_686:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_687
BEGIN_LOOP_687:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_688
BEGIN_LOOP_688:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_689
BEGIN_LOOP_689:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_689
END_LOOP_689:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_688
END_LOOP_688:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_692
BEGIN_LOOP_692:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_692
END_LOOP_692:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_687
END_LOOP_687:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_695
BEGIN_LOOP_695:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_696
BEGIN_LOOP_696:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_696
END_LOOP_696:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_695
END_LOOP_695:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_699
BEGIN_LOOP_699:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_699
END_LOOP_699:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_686
END_LOOP_686:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_679
END_LOOP_679:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_703
BEGIN_LOOP_703:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_703
END_LOOP_703:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_705
BEGIN_LOOP_705:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_706
BEGIN_LOOP_706:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_707
BEGIN_LOOP_707:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_707
END_LOOP_707:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_709
BEGIN_LOOP_709:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_709
END_LOOP_709:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_706
END_LOOP_706:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_712
BEGIN_LOOP_712:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_713
BEGIN_LOOP_713:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_714
BEGIN_LOOP_714:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_715
BEGIN_LOOP_715:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_715
END_LOOP_715:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_714
END_LOOP_714:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_718
BEGIN_LOOP_718:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_718
END_LOOP_718:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_713
END_LOOP_713:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_721
BEGIN_LOOP_721:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_722
BEGIN_LOOP_722:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_722
END_LOOP_722:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_721
END_LOOP_721:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_725
BEGIN_LOOP_725:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_725
END_LOOP_725:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_712
END_LOOP_712:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_705
END_LOOP_705:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_729
BEGIN_LOOP_729:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_730
BEGIN_LOOP_730:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_730
END_LOOP_730:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_732
BEGIN_LOOP_732:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_732
END_LOOP_732:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_734
BEGIN_LOOP_734:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_734
END_LOOP_734:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_729
END_LOOP_729:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_737
BEGIN_LOOP_737:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_737
END_LOOP_737:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_739
BEGIN_LOOP_739:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_739
END_LOOP_739:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_741
BEGIN_LOOP_741:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_741
END_LOOP_741:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_743
BEGIN_LOOP_743:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_744
BEGIN_LOOP_744:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_744
END_LOOP_744:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_746
BEGIN_LOOP_746:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_746
END_LOOP_746:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_743
END_LOOP_743:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_749
BEGIN_LOOP_749:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_749
END_LOOP_749:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_751
BEGIN_LOOP_751:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_751
END_LOOP_751:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_753
BEGIN_LOOP_753:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_754
BEGIN_LOOP_754:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_754
END_LOOP_754:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_756
BEGIN_LOOP_756:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_756
END_LOOP_756:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_753
END_LOOP_753:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_759
BEGIN_LOOP_759:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_759
END_LOOP_759:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_761
BEGIN_LOOP_761:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_761
END_LOOP_761:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_763
BEGIN_LOOP_763:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_763
END_LOOP_763:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_765
BEGIN_LOOP_765:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_766
BEGIN_LOOP_766:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_767
BEGIN_LOOP_767:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_767
END_LOOP_767:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_769
BEGIN_LOOP_769:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_770
BEGIN_LOOP_770:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_770
END_LOOP_770:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_772
BEGIN_LOOP_772:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_773
BEGIN_LOOP_773:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_773
END_LOOP_773:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_775
BEGIN_LOOP_775:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_775
END_LOOP_775:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_777
BEGIN_LOOP_777:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_777
END_LOOP_777:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_772
END_LOOP_772:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_769
END_LOOP_769:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_781
BEGIN_LOOP_781:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_781
END_LOOP_781:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_783
BEGIN_LOOP_783:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_784
BEGIN_LOOP_784:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_784
END_LOOP_784:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_786
BEGIN_LOOP_786:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_787
BEGIN_LOOP_787:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_787
END_LOOP_787:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_789
BEGIN_LOOP_789:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_789
END_LOOP_789:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_791
BEGIN_LOOP_791:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_791
END_LOOP_791:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_793
BEGIN_LOOP_793:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_793
END_LOOP_793:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_786
END_LOOP_786:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_783
END_LOOP_783:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_797
BEGIN_LOOP_797:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_798
BEGIN_LOOP_798:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_798
END_LOOP_798:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_797
END_LOOP_797:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_766
END_LOOP_766:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_802
BEGIN_LOOP_802:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_802
END_LOOP_802:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_804
BEGIN_LOOP_804:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_804
END_LOOP_804:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_806
BEGIN_LOOP_806:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_807
BEGIN_LOOP_807:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_808
BEGIN_LOOP_808:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_808
END_LOOP_808:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_810
BEGIN_LOOP_810:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_810
END_LOOP_810:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_807
END_LOOP_807:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_813
BEGIN_LOOP_813:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_814
BEGIN_LOOP_814:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_815
BEGIN_LOOP_815:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_816
BEGIN_LOOP_816:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_816
END_LOOP_816:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_815
END_LOOP_815:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_819
BEGIN_LOOP_819:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_819
END_LOOP_819:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_814
END_LOOP_814:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_822
BEGIN_LOOP_822:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_823
BEGIN_LOOP_823:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_823
END_LOOP_823:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_822
END_LOOP_822:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_826
BEGIN_LOOP_826:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_826
END_LOOP_826:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_813
END_LOOP_813:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_829
BEGIN_LOOP_829:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_829
END_LOOP_829:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_831
BEGIN_LOOP_831:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_831
END_LOOP_831:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_833
BEGIN_LOOP_833:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_833
END_LOOP_833:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_806
END_LOOP_806:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_836
BEGIN_LOOP_836:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_836
END_LOOP_836:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_838
BEGIN_LOOP_838:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_839
BEGIN_LOOP_839:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_840
BEGIN_LOOP_840:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_840
END_LOOP_840:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_842
BEGIN_LOOP_842:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_842
END_LOOP_842:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_839
END_LOOP_839:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_845
BEGIN_LOOP_845:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_846
BEGIN_LOOP_846:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_847
BEGIN_LOOP_847:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_848
BEGIN_LOOP_848:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_848
END_LOOP_848:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_847
END_LOOP_847:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_851
BEGIN_LOOP_851:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_851
END_LOOP_851:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_846
END_LOOP_846:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_854
BEGIN_LOOP_854:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_855
BEGIN_LOOP_855:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_855
END_LOOP_855:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_854
END_LOOP_854:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_858
BEGIN_LOOP_858:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_858
END_LOOP_858:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_845
END_LOOP_845:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_838
END_LOOP_838:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_862
BEGIN_LOOP_862:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_862
END_LOOP_862:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_765
END_LOOP_765:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_865
BEGIN_LOOP_865:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_865
END_LOOP_865:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_867
BEGIN_LOOP_867:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_868
BEGIN_LOOP_868:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_868
END_LOOP_868:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_870
BEGIN_LOOP_870:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_870
END_LOOP_870:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_872
BEGIN_LOOP_872:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_872
END_LOOP_872:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_874
BEGIN_LOOP_874:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_874
END_LOOP_874:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_876
BEGIN_LOOP_876:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_877
BEGIN_LOOP_877:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_878
BEGIN_LOOP_878:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_879
BEGIN_LOOP_879:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_879
END_LOOP_879:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_878
END_LOOP_878:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_882
BEGIN_LOOP_882:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_882
END_LOOP_882:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_877
END_LOOP_877:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_885
BEGIN_LOOP_885:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_886
BEGIN_LOOP_886:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_886
END_LOOP_886:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_885
END_LOOP_885:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_889
BEGIN_LOOP_889:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_889
END_LOOP_889:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_876
END_LOOP_876:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_867
END_LOOP_867:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_893
BEGIN_LOOP_893:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_894
BEGIN_LOOP_894:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_894
END_LOOP_894:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_896
BEGIN_LOOP_896:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_896
END_LOOP_896:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_893
END_LOOP_893:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_899
BEGIN_LOOP_899:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_899
END_LOOP_899:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_901
BEGIN_LOOP_901:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_901
END_LOOP_901:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_903
BEGIN_LOOP_903:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_903
END_LOOP_903:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_905
BEGIN_LOOP_905:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_906
BEGIN_LOOP_906:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_906
END_LOOP_906:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_908
BEGIN_LOOP_908:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_908
END_LOOP_908:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_905
END_LOOP_905:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_911
BEGIN_LOOP_911:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_911
END_LOOP_911:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_913
BEGIN_LOOP_913:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_914
BEGIN_LOOP_914:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_914
END_LOOP_914:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_916
BEGIN_LOOP_916:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_916
END_LOOP_916:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_913
END_LOOP_913:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_919
BEGIN_LOOP_919:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_919
END_LOOP_919:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_921
BEGIN_LOOP_921:
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_922
BEGIN_LOOP_922:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_922
END_LOOP_922:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_924
BEGIN_LOOP_924:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_924
END_LOOP_924:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_926
BEGIN_LOOP_926:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_926
END_LOOP_926:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_928
BEGIN_LOOP_928:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_928
END_LOOP_928:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_930
BEGIN_LOOP_930:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_930
END_LOOP_930:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_932
BEGIN_LOOP_932:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_932
END_LOOP_932:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_934
BEGIN_LOOP_934:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_934
END_LOOP_934:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_936
BEGIN_LOOP_936:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_936
END_LOOP_936:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_938
BEGIN_LOOP_938:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_938
END_LOOP_938:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_940
BEGIN_LOOP_940:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_940
END_LOOP_940:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_942
BEGIN_LOOP_942:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_942
END_LOOP_942:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_921
END_LOOP_921:
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_945
BEGIN_LOOP_945:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_945
END_LOOP_945:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_947
BEGIN_LOOP_947:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_947
END_LOOP_947:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_949
BEGIN_LOOP_949:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_950
BEGIN_LOOP_950:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_950
END_LOOP_950:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_952
BEGIN_LOOP_952:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_953
BEGIN_LOOP_953:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_954
BEGIN_LOOP_954:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_954
END_LOOP_954:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_956
BEGIN_LOOP_956:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_956
END_LOOP_956:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_953
END_LOOP_953:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_959
BEGIN_LOOP_959:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_959
END_LOOP_959:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_952
END_LOOP_952:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_962
BEGIN_LOOP_962:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_962
END_LOOP_962:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_964
BEGIN_LOOP_964:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_965
BEGIN_LOOP_965:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_965
END_LOOP_965:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_964
END_LOOP_964:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_968
BEGIN_LOOP_968:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_968
END_LOOP_968:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_949
END_LOOP_949:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_971
BEGIN_LOOP_971:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_972
BEGIN_LOOP_972:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_972
END_LOOP_972:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_974
BEGIN_LOOP_974:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_975
BEGIN_LOOP_975:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_975
END_LOOP_975:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_977
BEGIN_LOOP_977:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_977
END_LOOP_977:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_974
END_LOOP_974:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_980
BEGIN_LOOP_980:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_980
END_LOOP_980:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_971
END_LOOP_971:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_983
BEGIN_LOOP_983:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_983
END_LOOP_983:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_985
BEGIN_LOOP_985:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_985
END_LOOP_985:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_987
BEGIN_LOOP_987:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_988
BEGIN_LOOP_988:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_988
END_LOOP_988:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_990
BEGIN_LOOP_990:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_991
BEGIN_LOOP_991:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_992
BEGIN_LOOP_992:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_992
END_LOOP_992:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_994
BEGIN_LOOP_994:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_994
END_LOOP_994:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_991
END_LOOP_991:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_997
BEGIN_LOOP_997:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_997
END_LOOP_997:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_990
END_LOOP_990:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1000
BEGIN_LOOP_1000:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1000
END_LOOP_1000:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1002
BEGIN_LOOP_1002:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1003
BEGIN_LOOP_1003:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1003
END_LOOP_1003:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1002
END_LOOP_1002:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1006
BEGIN_LOOP_1006:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1006
END_LOOP_1006:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_987
END_LOOP_987:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1009
BEGIN_LOOP_1009:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1010
BEGIN_LOOP_1010:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1010
END_LOOP_1010:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1012
BEGIN_LOOP_1012:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1013
BEGIN_LOOP_1013:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1013
END_LOOP_1013:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1015
BEGIN_LOOP_1015:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1015
END_LOOP_1015:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1012
END_LOOP_1012:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1018
BEGIN_LOOP_1018:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1018
END_LOOP_1018:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1009
END_LOOP_1009:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1021
BEGIN_LOOP_1021:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1022
BEGIN_LOOP_1022:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1022
END_LOOP_1022:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1021
END_LOOP_1021:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1025
BEGIN_LOOP_1025:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1025
END_LOOP_1025:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1027
BEGIN_LOOP_1027:
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1028
BEGIN_LOOP_1028:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1028
END_LOOP_1028:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1030
BEGIN_LOOP_1030:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1030
END_LOOP_1030:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1027
END_LOOP_1027:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1033
BEGIN_LOOP_1033:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1033
END_LOOP_1033:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1035
BEGIN_LOOP_1035:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1036
BEGIN_LOOP_1036:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1036
END_LOOP_1036:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1038
BEGIN_LOOP_1038:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1039
BEGIN_LOOP_1039:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1039
END_LOOP_1039:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1041
BEGIN_LOOP_1041:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1042
BEGIN_LOOP_1042:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1042
END_LOOP_1042:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1044
BEGIN_LOOP_1044:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1044
END_LOOP_1044:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1046
BEGIN_LOOP_1046:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1046
END_LOOP_1046:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1041
END_LOOP_1041:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1038
END_LOOP_1038:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1050
BEGIN_LOOP_1050:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1050
END_LOOP_1050:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1052
BEGIN_LOOP_1052:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1053
BEGIN_LOOP_1053:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1053
END_LOOP_1053:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1055
BEGIN_LOOP_1055:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1056
BEGIN_LOOP_1056:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1056
END_LOOP_1056:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1058
BEGIN_LOOP_1058:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1058
END_LOOP_1058:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1060
BEGIN_LOOP_1060:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1060
END_LOOP_1060:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1062
BEGIN_LOOP_1062:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1062
END_LOOP_1062:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1055
END_LOOP_1055:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1052
END_LOOP_1052:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1066
BEGIN_LOOP_1066:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1067
BEGIN_LOOP_1067:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1067
END_LOOP_1067:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1066
END_LOOP_1066:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1035
END_LOOP_1035:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1071
BEGIN_LOOP_1071:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1071
END_LOOP_1071:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1073
BEGIN_LOOP_1073:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1073
END_LOOP_1073:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1075
BEGIN_LOOP_1075:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1076
BEGIN_LOOP_1076:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1076
END_LOOP_1076:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1075
END_LOOP_1075:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_234
END_LOOP_234:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1080
BEGIN_LOOP_1080:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1080
END_LOOP_1080:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1082
BEGIN_LOOP_1082:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	mov	rsi, rbx
	call	do_write
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1082
END_LOOP_1082:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1084
BEGIN_LOOP_1084:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	mov	rsi, rbx
	call	do_write
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1084
END_LOOP_1084:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1086
BEGIN_LOOP_1086:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1086
END_LOOP_1086:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1088
BEGIN_LOOP_1088:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1088
END_LOOP_1088:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1090
BEGIN_LOOP_1090:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1090
END_LOOP_1090:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1092
BEGIN_LOOP_1092:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1092
END_LOOP_1092:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1094
BEGIN_LOOP_1094:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1094
END_LOOP_1094:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1096
BEGIN_LOOP_1096:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1096
END_LOOP_1096:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1098
BEGIN_LOOP_1098:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1099
BEGIN_LOOP_1099:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1099
END_LOOP_1099:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1101
BEGIN_LOOP_1101:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1101
END_LOOP_1101:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1103
BEGIN_LOOP_1103:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1103
END_LOOP_1103:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1105
BEGIN_LOOP_1105:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1105
END_LOOP_1105:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1107
BEGIN_LOOP_1107:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1107
END_LOOP_1107:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1109
BEGIN_LOOP_1109:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1109
END_LOOP_1109:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1098
END_LOOP_1098:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1112
BEGIN_LOOP_1112:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1112
END_LOOP_1112:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1114
BEGIN_LOOP_1114:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1115
BEGIN_LOOP_1115:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1115
END_LOOP_1115:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1114
END_LOOP_1114:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1118
BEGIN_LOOP_1118:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1118
END_LOOP_1118:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1120
BEGIN_LOOP_1120:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1121
BEGIN_LOOP_1121:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1121
END_LOOP_1121:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1120
END_LOOP_1120:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1124
BEGIN_LOOP_1124:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1124
END_LOOP_1124:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1126
BEGIN_LOOP_1126:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1126
END_LOOP_1126:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1128
BEGIN_LOOP_1128:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1129
BEGIN_LOOP_1129:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1129
END_LOOP_1129:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1131
BEGIN_LOOP_1131:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1131
END_LOOP_1131:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1133
BEGIN_LOOP_1133:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1134
BEGIN_LOOP_1134:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1134
END_LOOP_1134:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1136
BEGIN_LOOP_1136:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1137
BEGIN_LOOP_1137:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1137
END_LOOP_1137:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1139
BEGIN_LOOP_1139:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1139
END_LOOP_1139:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1136
END_LOOP_1136:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1133
END_LOOP_1133:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1128
END_LOOP_1128:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1144
BEGIN_LOOP_1144:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1144
END_LOOP_1144:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1146
BEGIN_LOOP_1146:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1147
BEGIN_LOOP_1147:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1148
BEGIN_LOOP_1148:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1148
END_LOOP_1148:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1150
BEGIN_LOOP_1150:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1150
END_LOOP_1150:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1147
END_LOOP_1147:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1153
BEGIN_LOOP_1153:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1154
BEGIN_LOOP_1154:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1154
END_LOOP_1154:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1153
END_LOOP_1153:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1157
BEGIN_LOOP_1157:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1157
END_LOOP_1157:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1159
BEGIN_LOOP_1159:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1160
BEGIN_LOOP_1160:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1160
END_LOOP_1160:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1162
BEGIN_LOOP_1162:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1163
BEGIN_LOOP_1163:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1163
END_LOOP_1163:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1165
BEGIN_LOOP_1165:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1165
END_LOOP_1165:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1162
END_LOOP_1162:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1168
BEGIN_LOOP_1168:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1168
END_LOOP_1168:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1159
END_LOOP_1159:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1171
BEGIN_LOOP_1171:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1171
END_LOOP_1171:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1146
END_LOOP_1146:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1174
BEGIN_LOOP_1174:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1174
END_LOOP_1174:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1176
BEGIN_LOOP_1176:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1177
BEGIN_LOOP_1177:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1178
BEGIN_LOOP_1178:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1178
END_LOOP_1178:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1177
END_LOOP_1177:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1181
BEGIN_LOOP_1181:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1182
BEGIN_LOOP_1182:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1182
END_LOOP_1182:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1184
BEGIN_LOOP_1184:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1185
BEGIN_LOOP_1185:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1185
END_LOOP_1185:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1187
BEGIN_LOOP_1187:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1187
END_LOOP_1187:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1184
END_LOOP_1184:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1190
BEGIN_LOOP_1190:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1190
END_LOOP_1190:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1181
END_LOOP_1181:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1193
BEGIN_LOOP_1193:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1194
BEGIN_LOOP_1194:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1194
END_LOOP_1194:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1193
END_LOOP_1193:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1197
BEGIN_LOOP_1197:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1197
END_LOOP_1197:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1199
BEGIN_LOOP_1199:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1200
BEGIN_LOOP_1200:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1200
END_LOOP_1200:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1202
BEGIN_LOOP_1202:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1203
BEGIN_LOOP_1203:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1203
END_LOOP_1203:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1205
BEGIN_LOOP_1205:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1206
BEGIN_LOOP_1206:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1206
END_LOOP_1206:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1208
BEGIN_LOOP_1208:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1208
END_LOOP_1208:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1210
BEGIN_LOOP_1210:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1210
END_LOOP_1210:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1205
END_LOOP_1205:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1202
END_LOOP_1202:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1214
BEGIN_LOOP_1214:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1214
END_LOOP_1214:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1216
BEGIN_LOOP_1216:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1217
BEGIN_LOOP_1217:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1217
END_LOOP_1217:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1219
BEGIN_LOOP_1219:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1220
BEGIN_LOOP_1220:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1220
END_LOOP_1220:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1222
BEGIN_LOOP_1222:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1222
END_LOOP_1222:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1224
BEGIN_LOOP_1224:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1224
END_LOOP_1224:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1226
BEGIN_LOOP_1226:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1226
END_LOOP_1226:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1219
END_LOOP_1219:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1216
END_LOOP_1216:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1230
BEGIN_LOOP_1230:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1231
BEGIN_LOOP_1231:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1231
END_LOOP_1231:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1230
END_LOOP_1230:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1199
END_LOOP_1199:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1235
BEGIN_LOOP_1235:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1235
END_LOOP_1235:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1237
BEGIN_LOOP_1237:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1237
END_LOOP_1237:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1239
BEGIN_LOOP_1239:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1240
BEGIN_LOOP_1240:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1240
END_LOOP_1240:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1239
END_LOOP_1239:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1243
BEGIN_LOOP_1243:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1243
END_LOOP_1243:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1176
END_LOOP_1176:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_51
END_LOOP_51:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	mov	rsi, rbx
	call	do_write
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1247
BEGIN_LOOP_1247:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1248
BEGIN_LOOP_1248:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1248
END_LOOP_1248:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1247
END_LOOP_1247:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1251
BEGIN_LOOP_1251:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1251
END_LOOP_1251:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1253
BEGIN_LOOP_1253:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1254
BEGIN_LOOP_1254:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1254
END_LOOP_1254:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1253
END_LOOP_1253:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1257
BEGIN_LOOP_1257:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1257
END_LOOP_1257:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1259
BEGIN_LOOP_1259:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1259
END_LOOP_1259:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1261
BEGIN_LOOP_1261:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1262
BEGIN_LOOP_1262:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1262
END_LOOP_1262:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1264
BEGIN_LOOP_1264:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1264
END_LOOP_1264:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1266
BEGIN_LOOP_1266:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1267
BEGIN_LOOP_1267:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1267
END_LOOP_1267:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1269
BEGIN_LOOP_1269:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1270
BEGIN_LOOP_1270:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1270
END_LOOP_1270:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1272
BEGIN_LOOP_1272:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1272
END_LOOP_1272:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1269
END_LOOP_1269:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1266
END_LOOP_1266:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1261
END_LOOP_1261:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1277
BEGIN_LOOP_1277:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1277
END_LOOP_1277:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1279
BEGIN_LOOP_1279:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1280
BEGIN_LOOP_1280:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1281
BEGIN_LOOP_1281:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1281
END_LOOP_1281:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1283
BEGIN_LOOP_1283:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1283
END_LOOP_1283:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1280
END_LOOP_1280:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1286
BEGIN_LOOP_1286:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1287
BEGIN_LOOP_1287:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1287
END_LOOP_1287:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1286
END_LOOP_1286:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1290
BEGIN_LOOP_1290:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1290
END_LOOP_1290:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1292
BEGIN_LOOP_1292:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1293
BEGIN_LOOP_1293:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1293
END_LOOP_1293:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1295
BEGIN_LOOP_1295:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1296
BEGIN_LOOP_1296:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1296
END_LOOP_1296:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1298
BEGIN_LOOP_1298:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1298
END_LOOP_1298:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1295
END_LOOP_1295:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1301
BEGIN_LOOP_1301:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1301
END_LOOP_1301:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1292
END_LOOP_1292:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1304
BEGIN_LOOP_1304:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1304
END_LOOP_1304:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1279
END_LOOP_1279:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1307
BEGIN_LOOP_1307:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1307
END_LOOP_1307:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1309
BEGIN_LOOP_1309:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1310
BEGIN_LOOP_1310:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1311
BEGIN_LOOP_1311:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1311
END_LOOP_1311:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1310
END_LOOP_1310:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1314
BEGIN_LOOP_1314:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1315
BEGIN_LOOP_1315:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1315
END_LOOP_1315:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1317
BEGIN_LOOP_1317:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1318
BEGIN_LOOP_1318:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1318
END_LOOP_1318:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1320
BEGIN_LOOP_1320:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1320
END_LOOP_1320:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1317
END_LOOP_1317:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1323
BEGIN_LOOP_1323:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1323
END_LOOP_1323:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1314
END_LOOP_1314:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1326
BEGIN_LOOP_1326:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1327
BEGIN_LOOP_1327:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1327
END_LOOP_1327:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1326
END_LOOP_1326:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1330
BEGIN_LOOP_1330:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1330
END_LOOP_1330:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1332
BEGIN_LOOP_1332:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1333
BEGIN_LOOP_1333:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1333
END_LOOP_1333:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1335
BEGIN_LOOP_1335:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1336
BEGIN_LOOP_1336:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1336
END_LOOP_1336:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1338
BEGIN_LOOP_1338:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1339
BEGIN_LOOP_1339:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1339
END_LOOP_1339:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1341
BEGIN_LOOP_1341:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1341
END_LOOP_1341:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1343
BEGIN_LOOP_1343:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1343
END_LOOP_1343:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1338
END_LOOP_1338:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1335
END_LOOP_1335:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1347
BEGIN_LOOP_1347:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1347
END_LOOP_1347:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1349
BEGIN_LOOP_1349:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1350
BEGIN_LOOP_1350:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1350
END_LOOP_1350:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1352
BEGIN_LOOP_1352:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1353
BEGIN_LOOP_1353:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1353
END_LOOP_1353:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1355
BEGIN_LOOP_1355:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1355
END_LOOP_1355:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1357
BEGIN_LOOP_1357:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1357
END_LOOP_1357:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1359
BEGIN_LOOP_1359:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1359
END_LOOP_1359:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1352
END_LOOP_1352:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1349
END_LOOP_1349:
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1363
BEGIN_LOOP_1363:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1364
BEGIN_LOOP_1364:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1364
END_LOOP_1364:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1363
END_LOOP_1363:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1332
END_LOOP_1332:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1368
BEGIN_LOOP_1368:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1368
END_LOOP_1368:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1370
BEGIN_LOOP_1370:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1370
END_LOOP_1370:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	inc	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1372
BEGIN_LOOP_1372:
	dec	byte ptr [rbx+r12]
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1373
BEGIN_LOOP_1373:
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	inc	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1373
END_LOOP_1373:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1372
END_LOOP_1372:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	dec	byte ptr [rbx+r12]
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jz	END_LOOP_1376
BEGIN_LOOP_1376:
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	mov	rdi, r12
	call	decrement_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1376
END_LOOP_1376:
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_1309
END_LOOP_1309:
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	mov	rdi, r12
	call	increment_pointer
	mov	r12, rax
	cmp	byte ptr [rbx+r12], 0
	jnz	BEGIN_LOOP_32
END_LOOP_32:
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

