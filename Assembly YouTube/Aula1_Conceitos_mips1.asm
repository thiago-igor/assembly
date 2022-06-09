.data  # area para dados na memoria principal 

	msg: .asciiz "ola mundo"  #menssagem a ser recebida pela o usuario

.text  # area para instruçoes do meu programa.

	li $v0,4 #instruçao para imprimir string ou char
	
	la $a0,msg #indica o endereço que esta a msg
	syscall # imprima!