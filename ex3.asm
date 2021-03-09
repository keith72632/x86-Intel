global _start

section .text
_start:
	mov ecx, 101    ;exit status 42
	mov eax, 1     ; sys_exitr
	cmp ecx, 100   ;compare ecx 100
	jl skip       ;jump to skip label
	mov ebx, 13    ; exit status 13
skip:
	int 0x80
