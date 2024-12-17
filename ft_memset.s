section .text
	global ft_memset


ft_memset:
	; rdi -> first argument
	; rsi -> second argument
	; rdx -> third argument
	push rsi
	mov rcx, rdx
.loop:
	cmp rcx, 0
	je .end
	mov [rdi], sil
	inc rdi
	dec rcx
	jmp .loop
.end:
	pop rsi
	ret
