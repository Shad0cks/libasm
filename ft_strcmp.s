BITS 64

global _ft_strcmp

section .text

_ft_strcmp:
        jmp .loop
        
.loop:
        cmpsb
        je .cond
        jmp .notEqual

.cond:
        cmp byte[rdi-1], 0
        je .equal
        jmp .loop

.notEqual:
        movzx rax, byte[rdi-1]
        movzx rcx, byte[rsi-1]
        sub rax, rcx
        ret


.equal:
        cmp byte[rsi-1], 0
        jne .notEqual
        mov rax, 0
        ret
        
