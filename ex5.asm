global _start
section .data
	addr db "yellow"
section .text
_start:
	mov [addr], byte 'H' ; H will be added to begining of string
	mov [addr+5], byte '!'; add ! at fifth point
	mov eax, 4    ;system write
	mov ebx, 1	  ;stdout file descriptor
	mov ecx, addr ; bytes to write
	mov edx, 6    ;number of bytes to write
	int 0x80      ;perform system call
	;end
	mov eax, 1    ;system exit
	mov ebx, 0	  ;exit status
	int 0x80      ;exit status is 0
