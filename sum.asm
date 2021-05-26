.text

	# Atribui 75 ao t0
	li $t0, 75
	# Atribui 25 ao t1
	li $t1, 25

	# 2 Registradores
	add $s0, $t0, $t1  # s0 = t0 + t1 
	
	# 1 Registrador e 1 inteiro
	addi $s1, $s0, 20 # s1 = s0 + 20