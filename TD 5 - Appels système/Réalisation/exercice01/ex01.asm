; Exercice 01.asm
; from 01_open_exercice.asm
	
global _start

section .rodata
	nomFichier DB `brol`, 0      ; ne pas oublier le 0
	
section .text
_start:

	nop
	
	; ouverture de brol en écriture seule avec placement
	; de la tête d ' écriture en fin de fichier
	mov rax, 2                   ; open
	mov rdi, nomFichier          ; adresse du 1er caractère du nom
	mov rsi, 1q | 2000q          ; WRONLY + O_APPEND
    	;mov rsi, 1q | 100q | 2000q  ; WRONLY + O_CREAT + O_APPEND 
    	;mov rdx, 755q               ; droits du fichier crée
	syscall
	
	mov rax, 60
	mov rdi, 0
	syscall
