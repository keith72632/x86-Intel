global _start
_start:
	sub esp, 4
	mov [esp], byte 'h'
	mov [esp+1], byte 'o'
	mov [esp+2], byte 'r'
	mov [esp+3], byte 0x0a
	mov eax, 4
	mov ebx, 1
	mov ecx, esp
	mov edx, 4
	int 0x80
	mov eax, 1
	mov ebx, 0
	int 0x80
