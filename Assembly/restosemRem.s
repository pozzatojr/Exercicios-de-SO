.data
	msg1:.asciiz"\n Digite um numero: "
	msg2:.asciiz"\n Digite outro numero: "
	
	salBruto:.asciiz"\n Seu salario bruto é: "
	linha:.asciiz"\n"
	
.text
main:
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5 #numero 1
	syscall
	add $t0, $v0, 0
	 
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5 #numero 2
	syscall
	add $t1, $v0, 0
	
	bgt $t1, $t0, main
	
	div $t2, $t0, $t1
	mul $t3, $t2, $t1
	
	beq $t3, $t0 resto0
	j restoDif
	
resto0:
	li $v0, 1
	sub $a0, $t3, $t0
	syscall
	j fim

	
restoDif:
	sub $t4, $t0, $t3
	
	li $v0, 1
	add $a0, $t4, 0
	syscall
	
	j fim
	
fim:	

	
	 