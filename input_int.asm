.data
	msg: .asciiz "Digite o input: "
	saida: .asciiz "O input é: "
	
.text
	
	li $v0, 4      # Imprimir uma string
	la $a0, msg    # Load adress pra pegar o endereço da string msg
	syscall 
	
	li $v0, 5      # Leitura do input do usuário (inteiro)
	syscall
	
	move $t0, $v0  # Armazena o valor inserido em outro registrador
	
	li $v0, 4      # Imprimir uma string
	la $a0, saida  # Load adress pra pegar o endereço da string
	syscall  
	
	li $v0, 1      # Imprimir inteiro
	move $a0, $t0  # Armazena o valor do int em $a0
	syscall 