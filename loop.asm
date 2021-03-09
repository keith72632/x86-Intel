global _start
_start:
	mov ebx, 1
	mov ecx, 4
	mov edx, 0
loop:
	mov eax, 4
	add ebx, ebx
	dec ecx
	mov [esp+edx], ebx
	cmp ecx, 0
	jg loop
	mov ecx, esp
	int 0x80
	mov eax, 1
	int 0x80
	
	
