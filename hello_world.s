section .data
    message db 'Selam ben can!', 0xA
    msg_len equ $ - message

section .text
    global hello_world

hello_world:
    mov rax, 1
    mov rdi, 1
    mov rsi, message
    mov rdx, msg_len
    syscall
    ret

