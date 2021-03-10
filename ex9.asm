global _start
_start:
	push 21          ;stack pointer moved down and value 21 added
	call times2		 ;
	mov ebx, eax
	mov eax, 1
	int 0x80

times2:
	push ebp		 ;preserves base pointer 
	mov ebp, esp	 ;preserved current base of this function
	mov eax, [esp+8] ;move value at stack pointer(21) into eax	
	add eax, eax
	mov	esp, ebp
	pop ebp
	ret 
