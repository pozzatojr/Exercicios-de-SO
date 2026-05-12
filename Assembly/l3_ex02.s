.data
	msg1:.asciiz"Digite o raio: " 
	msg2:.asciiz"O comprimento é: "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	mul $t1, $t0, 2
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	mul $a0, $t1, 3
	syscall