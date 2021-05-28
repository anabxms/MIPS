.data
	msg: .asciiz "Insira a string "
	msg_saida: .asciiz "String: "
	# O .space define o número máximo de bytes que serão lidos
	str: .space 25

.text

	# =-=-= Impressão da mensagem =-=-= #
	li $v0, 4      # Imprimir uma string
	la $a0, msg    # Load adress pra pegar o endereço da string msg
	syscall

	# =-=-= Leitura da string =-=-= #
	li $v0, 8      # Código pra leitura de string
	la $a0, str    # Variavel salva na RAM em str
	li $a1, 25     # Número de bytes que serão lidos
	syscall
	
	# =-=-= Impressão da mensagem da saída =-=-= #
	li $v0, 4          # Imprimir uma string
	la $a0, msg_saida  # Load adress pra pegar o endereço da string msg_saida
	syscall
	
	# =-=-= Impressão da variável nome =-=-= #
	li $v0, 4      # Imprimir uma string
	la $a0, str    # Load adress pra pegar o endereço da string str
	syscall