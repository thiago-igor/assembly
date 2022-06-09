.data 

	caractere: .byte "A"   #Caractere a ser impresso 
	
.text

	li,$v0,4  # imprimir char ou string
	la $a0,caractere  # pegando caractere da memoria ram
	syscall # imprimindo caractere
	
	li $v0,10 # encerrando o programa
	syscall 
	