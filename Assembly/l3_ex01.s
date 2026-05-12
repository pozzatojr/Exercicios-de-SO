.data
	msg1:.asciiz"Digite a largura: "
	msg2:.asciiz"Digite o comprimento: "
	msg3:.asciiz"Digite a altura: "

.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	mul $t3, $t2, $t1
	
	li $v0, 1
	mul $a0, $t3, $t0 
	syscall