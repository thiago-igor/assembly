.data 
	msg: .asciiz "Forneça um numero: "
	par: .asciiz "O numero e par!"
	impar: .asciiz "Onumero e impar!"
	
.text
	 #imprimir msg para o usuario
	li $v0,4
	la $a0,msg
	syscall
	
	#ler o numero:
	li $v0, 5
	syscall
	
	li $t0, 2
	div $v0,$t0
	
	mfhi $t1 #possui o resto da diivisao por 2 
	
	beq $t1, $zero, imprimirpar
	
	#else:
	li $v0,4
	la $a0,impar
	syscall
	
	#encerrar o programa:
	li $v0,10
	syscall
	
	
	#if:
	imprimirpar:
		li $v0,4
		la $a0,par
		syscall
		
	