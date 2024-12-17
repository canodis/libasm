section .text
    global ft_strcpy

    ; rdi -> first arg
    ; rsi -> second arg
ft_strcpy:
    mov rdx, rdi
.loop:
    cmp byte [rsi], 0
    je .end

    mov al, [rsi]
    mov [rdx], al

    inc rsi
    inc rdx
    jmp .loop
.end:
    mov byte [rdx], 0
    ret