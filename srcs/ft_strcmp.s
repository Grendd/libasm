section .text
    global _ft_strcmp

_ft_strcmp:
    xor rcx, rcx
    jmp compare

incr:
    inc rcx

compare:
    mov bl, BYTE [rdi + rcx]
    cmp bl, 0
    jz return
    cmp bl, BYTE [rsi + rcx]
    je incr

return:
    movzx	rax, bl
	movzx	rdx, byte [rsi + rcx]
	sub 	rax, rdx
	ret