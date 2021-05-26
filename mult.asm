.text
	li $t0, 20
	li $t1, 2
	mul $s0, $t0, $t1  # s0 = t0 * t1
	
	li $v0, 1
	move $a0, $s0
	syscall 