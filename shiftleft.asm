.text
	li $t0, 12           # t0 = 12 
	addi $t1, $zero, 10  # t1 = 10

	# Shift left de t1 n casas para a esquerda
	sll $s1, $t1, 10     # s1 = t1 * 2 ^ 10 (1024)