.data
	msg1:.asciiz"Digite um numero: "
	msg2:.asciiz"Digite um outro numero: "
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
	
	bgt $t1, $t0, se
	j senao

se:
	sub $t2, $t1, $t0
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	j fim

senao:
	sub $t2, $t0, $t1
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	j fim
fim: