.data
	char: .byte 'A'

.text
	li $v0, 4  # Imprimir um char
	la $a0, char
	syscall
	li $v0, 10