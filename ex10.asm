global main
extern printf

section .data
	msg db "Testing %i...", 0x0a, 0x00 ; \n and null terminator
section .text
main:
	push ebp
	mov ebp, esp
	push 123                     ;these are two arguments for printf
	push msg
	call printf
	mov eax, 0
	mov esp, ebp
	pop ebp
	ret
