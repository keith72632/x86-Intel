global _start

section .text
_start:
	mov ebx, 1   ; start ebx at 1
	mov ecx, 4   ; number of iterations
label:
	add ebx, ebx ;doubling ebx
	dec ecx      ; decremnt ecx
	cmp ecx, 0
	jg label
	mov eax, 1
	int 0x80
