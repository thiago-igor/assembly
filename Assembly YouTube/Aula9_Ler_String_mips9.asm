.data

	pergunta: .asciiz  "qual e seu nome?"
	saudacao: .asciiz "ola "
	nome: .space 25 # espa�o para escrever o nome 
	
.text
	#impressao da pergunta:
	li,$v0,4
	la $a0, pergunta
	syscall
	
	#leitura do nome:
	li $v0, 8
	la $a0,nome
	la $a1,25
	syscall
	move $t0,$a0 # salvando a0 em t0 para nao perde-lo na prox intera�ao
	
	#mostrar sauda�ao
	li $v0,4
	la $a0, saudacao
	syscall
	
	#mostrar nome
	li $v0,4
	move $a0,$t0 # realocando t0 em a0 para imprimir nome 
	la $a0, nome
	syscall 
	
	

		