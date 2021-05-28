.text

	li $t0, 32
	li $t1, 5
	
	# A parte inteira vai para o lo e o resto para o hi
	# Não conseguimos fazer instruções como o move pra o lo ou hi
	div $t0, $t1  # 32 / 5 = 6 (resto = 2)
	
	# Move from lo para s0
	mflo $s0
	
	# Move from hi para s1
	mfhi $s1
	
	# Shift right (move uma casa pra direita) -> divide por 2
	# Shift right logical
	srl $s2, $t0, 2  # s2 = t0 / 4