.data 
	maior: .asciiz "o numero e maior que zero"
	menor: .asciiz "o numero e menor que zero"
	igual: .asciiz "o numero e igual a zero"
	
.text
	#ler numero inteiro:
	li,$v0, 5
	syscall
	
	move $t0,$v0
	
	beq $t0,$zero,imprimirIgual # se t0 = zero faça imprimirIgual
	bgt $t0,$zero,imprimirMaior #se to > zero
	blt $t0,$zero,imprimirMenor #se to < zero
	
	imprimirIgual: # imprime que o numero e zero
		li $v0, 4
		la $a0,igual
		syscall
		
		#encerrando o programa
		li $v0,10
		syscall
		
	imprimirMaior:
		li $v0,4
		la $a0,maior
		syscall 
		
		#encerrando o programa
		li $v0,10
		syscall
		
	imprimirMenor:
		li $v0, 4
		la $a0,menor
		syscall