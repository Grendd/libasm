section .text
    global _ft_strcpy

_ft_strcpy:
    xor rbx, rbx
    xor rcx, rcx
    cmp rsi, 0
    jz return
    jmp copy

incr:
    inc rbx
copy:
    mov cl , BYTE [rsi + rbx]
    mov BYTE [rdi + rbx], cl
    cmp cl, 0
    jnz incr

return:
    mov rax, rdi
    ret
