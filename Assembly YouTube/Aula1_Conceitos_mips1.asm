.data  # area para dados na memoria principal 

	msg: .asciiz "ola mundo"  #menssagem a ser recebida pela o usuario

.text  # area para instru�oes do meu programa.

	li $v0,4 #instru�ao para imprimir string ou char
	
	la $a0,msg #indica o endere�o que esta a msg
	syscall # imprima!