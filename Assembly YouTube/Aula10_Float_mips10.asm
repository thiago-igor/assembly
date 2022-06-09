.data 
	msg: .asciiz "digite um numero decimal: "
	zero: .float 0.0

.text
	#imprimir msg para o usuario
	li $v0,4
	la $a0,msg
	syscall
	
	#lendo o numero float:
	li $v0,6
	syscall # valor lido estara em "$f0"
	
	lwc1 $f1, zero #pega o valor zero la da memoria RAM
	add.s $f12, $f1,$f0 # f12 = valor lido + zero
	
	li $v0, 2
	syscall
	
	#OBS: sempre devemos colocar o valor do float em "$f12", se nao o valor correto nao e impresso.