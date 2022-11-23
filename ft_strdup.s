BITS 64

global _ft_strdup

extern _ft_strcpy
extern _malloc 
extern _ft_strlen

section .text

_ft_strdup:
        push rdi
        call _ft_strlen
        mov rdi, rax
        call _malloc
        jc .alloc

.alloc:
        pop rsi
        mov rdi, rax
        call _ft_strcpy
        ret
        
