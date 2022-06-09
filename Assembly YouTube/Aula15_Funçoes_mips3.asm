 .data
 	msgUsr: .asciiz "Forne�a um numero positivo: "
 	par: .asciiz "O numero eh par"
 	impar: .asciiz "O numero e impar"
 	
 .text
 la $a0,msgUsr
 jal imprimeString #estou chamando a fun�ao
 jal lerInteiro 
 
 move $a0, $v0 # movendo o numero lido de v0 para a0
 jal ehImpar 
 
 beq $v0,$zero, imprimePar
 
 la $a0, impar
 jal imprimeString
 
 #encerrando programa
 li $v0, 10
 syscall
 
 imprimePar:
 	la $a0 , par
 	jal imprimeString
 	
 #encerrando programa
 li $v0, 10
 syscall
 
 
 #fun�ao que verifica se $a0 e impar
 # retorna 1 se for impar 
 # retorna 0 se for par
 ehImpar:
 	li $t0,2
 	div  $a0,$t0
 	
 	mfhi $v0
 	jr $ra #retorna para quem chamou a fun�ao
 	
 #fun�ao que recebe uma string em $a0 e imprime
 imprimeString:
 	li $v0,4
 	syscall
 	jr $ra  #retorna para quem chamou a fun�ao 
 		
 #fun�ao que ler um inteiro e retorna em $v0
 lerInteiro:
 	li $v0,5
 	syscall
 	jr $ra 