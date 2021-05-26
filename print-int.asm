.data

	int: .word 56 # Word = uma palavra de dados

.text

	li $v0, 1  # Imprimir um inteiro
	lw $a0, int # Busca o valor do endereço idade e salva no registrador a0
	syscall 
	li $v0,10 # Encerra o programa
