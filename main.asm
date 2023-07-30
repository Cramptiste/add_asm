%include ''asm_io.inc''
segment .data
prompt1 db "entrez un nombre :", 0
prompt2 db "entrez un deuxieme nombre :", 0
prompt3 db "le resultat est : ", 0
segment .bss
nbr resb 1
segment .text 
		global _asm_main
_asm_main:
		enter 0,0
		pusha
		mov EAX,prompt1
		call print_string
		call read_int
		mov[nbr],EAX
		mov EAX,prompt2
		call print_string
		call read_int
		add EAX,[nbr]
		mov EBX;EAX
		mov EAX,prompt3
			call print_string
		mov EAX,EBX
		call print_int
	popa
	mov eax,0
	leave
	ret
