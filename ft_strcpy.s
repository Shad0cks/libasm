BITS 64

global _ft_strcpy

section .text

_ft_strcpy:
        push rdi
        mov rdx, 0
        jmp .loop 
.loop:
        mov rcx, [rsi]
        mov [rdi], rcx
        cmp byte[rsi], 0
        je .finish
        inc rdx
        inc rdi
        inc rsi
        jmp .loop

.finish:
        pop rax 
        ret 
