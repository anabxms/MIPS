.data
	msg: .asciiz "Insira um número inteiro: "
	par: .asciiz "O número é par."
	impar: .asciiz "O número é impar."

.text
	
	# =-=-= Imprime a msg =-=-= #
	li $v0, 4      # Imprimir uma string
	la $a0, msg    # Load adress pra pegar o endereço da string msg
	syscall 
	
	# =-=-= Le um input inteiro =-=-= #
	li $v0, 5      # Leitura do input do usuário (inteiro)
	syscall

	# =-=-= Divide o número por 2 e checa se o resto é zero =-=-= #
	li $t0, 2
	div $v0, $t0   # O resto vai pra o registrador hi
	mfhi $t1       # Move from hi
	
	# =-=-= Compara se o valor é zero =-=-= #
	# if t1 == 0: imprimePar
	beq $t1, $zero, imprimePar 
	# =-=-= Se for diferente de zero, imprime impar =-=-= #
	li $v0, 4      # Imprimir uma string
	la $a0, impar    # Load adress pra pegar o endereço da string impar
	syscall 
	

	# =-=-= Rótulo imprimePar =-=-= #
	imprimePar: 
		# =-=-= Imprime par =-=-= #
		li $v0, 4      # Imprimir uma string
		la $a0, par    # Load adress pra pegar o endereço da string par
		syscall 

# if t1 == t2:
# beq $t1, $t2, label

# if t1 != t2:
# bne $t1, $t2, label

# if t1 < t2:
# blt $t1, $t2, label

# if t1 > t2:
# bgt $t1, $t2, label

# if t1 <= t2:
# ble $t1, $t2, label

# if t1 >= t2:
# bge $t1, $t2, label