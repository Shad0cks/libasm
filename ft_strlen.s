BITS 64

global _ft_strlen

section .text

_ft_strlen:
            mov rsi, 0
            jmp .loop

.loop:
        cmp byte[rdi], 0
        je .done
        inc rsi
        inc rdi
        jmp .loop
      
.done:
      mov rax, rsi
      ret 
