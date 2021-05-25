.data # Área para dados da memória principal
	msg: .asciiz "Olá, mundo"  # Mensagem a ser exibida para o usuário
	
.text # Área para instruções do programa
	li $v0, 4  # Instrução para impressão de string
	
	# O syscall imprime o que está dentro do registrador $a0, então ele não acessa diretamente o que está na variavel msg
	# Então usamos o la (load adress) 
	la $a0, msg  # Indica o endereço em que está a mensagem
	syscall      # Faça: Imprima
	li $v0, 10   # Encerra o programa