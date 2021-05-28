.text
	# =-=-=   while i < n, print i =-=-= #
	move $t0, $zero # t0 = i
	
	while:
		beq $t0, 10, saida
		addi $t0, $t0, 1
		j while
	
	 saida:
	 	li $v0, 1
	 	move $a0, $t0
	 	syscall 