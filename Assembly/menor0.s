.data
	msg1:.asciiz"\n Digite um numero: "
	msg2:.asciiz"\n Digite o outro numero: "
	
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
	
start:
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0 #numero 2
	
	ble $t1, 0, start
	j senao
	
senao:

	bgt $t0, $t1, se
	j contrario
se:
	div $t2, $t0, $t1
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	j fim
	
contrario:
	div $t2, $t1, $t0
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	j fim
	
fim:	
	
	
	 