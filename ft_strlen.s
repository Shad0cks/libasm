BITS 64

global _ft_strlen

section .text

_ft_strlen:
            mov rsi, 0
            jmp .loop

.loop:
        inc rsi
        inc rdi
        cmp byte[rdi], 0
        jnz .loop
        jmp .done
      
.done:
      mov rax, rsi
      ret 
