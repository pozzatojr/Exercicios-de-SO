.data
	msg1:.asciiz"\n Digite a altura da pessoa: "
	menorMsg: .asciiz "\nMenor altura: "
	maiorMsg: .asciiz "\nMaior altura: "
	
	linha:.asciiz"\n"
	
.text
main:	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5 #numero 1
	syscall
	add $t1, $v0, 0
	
	move $t2, $t1 #menor
	move $t3, $t1 #maior
	
	add $t0, $t0, 1
	
leituras:
	beq $t0, 5, fim
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5 #numero 1
	syscall
	add $t1, $v0, 0
	
	blt $t1, $t2, menor

continua1:
	bgt $t1, $t3, maior
	j leituras
	
continua2:
	add $t0, $t0, 1
	j leituras

menor:
	move $t2, $t1
	j continua1

maior:
	move $t3, $t1
	j continua2					
fim:	
	
	li $v0, 4
	la $a0, menorMsg
	syscall

	li $v0, 1
	move $a0, $t2
	syscall
	
	li $v0, 4
	la $a0, linha
	syscall

	li $v0, 4
	la $a0, maiorMsg
	syscall

	li $v0, 1
	move $a0, $t3
	syscall
	
	 