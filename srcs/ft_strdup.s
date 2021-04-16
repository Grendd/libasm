section .text
    extern _ft_strlen
    extern _ft_strcpy
    extern _malloc
    global _ft_strdup
    extern	___error

_ft_strdup:
    push rdi
    call _ft_strlen
    inc rax
    mov rdi, rax
    call _malloc
    pop rdi
    cmp rax, 0
    jz error

    mov rsi, rdi
    mov rdi, rax
    call _ft_strcpy
    ret

error:
	push	rax
	call    ___error
	mov		qword [rax], 12
	pop		rax
	ret

