global _start
_start:
	call func
	mov eax, 1
	mov ebx, 0
	int 0x80
func:
	push ebp              ;known as prologue of function
	mov ebp, esp
	sub esp, 2
	mov [esp], byte 'h'
	mov [esp+1], byte 'i'
	mov eax, 4
	mov ebx, 1
	mov ecx, esp
	mov edx, 2
	int 0x80
	mov esp, ebp
	pop ebp               ;known as epilogue
	ret
