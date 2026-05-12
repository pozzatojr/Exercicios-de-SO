.data
	msg1:.asciiz"Digite um numero: "
	greater:.asciiz"O maior numero digitado foi: "
	less:.asciiz"O menor numero digitado foi: "
	space:.asciiz"\n"
	
.text
main:
	li $t4, 0
start:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	blt $t0, 0, start
	
	add $t1, $t0, 0
	
	add $t3, $t1, 0
	add $t2, $t1, 0
	
		
loop:
	add $t4, $t4, 1
start2:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	blt $t0, 0, start2
	
	bge $t0, $t2, maior
	ble $t0, $t3, menor
	j loop
	
maior:
	add $t2, $t0, 0
	
	beq $t4, 9, fim
	j loop
menor:
	add $t3, $t0, 0
	
	beq $t4, 9, fim
	j loop
fim:
	li $v0, 4
	la $a0, greater
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	li $v0, 4
	la $a0, space
	syscall
	
	li $v0, 4
	la $a0, less
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall
	
	
	