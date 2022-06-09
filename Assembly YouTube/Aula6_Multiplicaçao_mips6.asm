.text 

	li $t0,12
	li $t1,10
	
	mul $s0,$t0,$t1 # multiplicando  s0 = t0 * t1
	
	# imprimir multiplicaçao:
	li $v0,1
	move $a0,$s0 # esta movendo o valor de $so para $a0, para asim imprimir o inteiro
	syscall 