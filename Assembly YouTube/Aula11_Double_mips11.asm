.data 
	msg: .asciiz "digite um numero decimal: "
	zero: .double 0.0

.text
	#imprimir msg para o usuario
	li $v0,4
	la $a0,msg
	syscall
	
	#lendo o numero doubles:
	li $v0,7
	syscall # valor lido estara em "$f0"
	
	ldc1 $f2, zero #pega o valor zero la da memoria RAM
	add.d $f12, $f2,$f0 # f12 = valor lido + zero
	
	li $v0, 3
	syscall 
	
	#OBS: o DOUBLE so utiliza os "f" pares. f0, f2, f4...