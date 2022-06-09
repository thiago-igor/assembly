.text 
	li $t0,15
	li $t1,4
	
	div $t0,$t1  #realiza a divisao de t0/t1
		     # A parte inteira vai para "lo"
		     # O resto vai para "hi"
		     
	mflo $s0  # move o conteudo de "lo" para s0
	mfhi $s1  # move o conteudo de "hi" para s1