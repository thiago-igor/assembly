.data
	espaco: .byte ' '
.text
	#ler numero:
	li $v0,5
	syscall
	
	move $t0,$v0 # movendo valor lido para t0
	
	move $t1,$zero # movendo valor lido para t1
	
	laco:
		bgt $t1,$t0,caiaFora
		
		#imprimir $t1
		li $v0, 1
		move $a0,$t1
		syscall
		
		#imprimir espaço em branco:
		li $v0,4
		la $a0, espaco
		syscall
		
		addi $t1,$t1,1
		
		j laco
		
	caiaFora:
		li $v0,10
		syscall
		