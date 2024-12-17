section .text
    global ft_strlen

ft_strlen:
    mov rax, 0
.loop:
    cmp byte [rdi], 0
    je .end
    inc rdi
    inc rax
    jmp .loop 

.end:
    ret 
