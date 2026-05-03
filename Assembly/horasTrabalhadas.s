.data
	msg1:.asciiz"\n Digite o numero de horas trabalhadas: "
	msg2:.asciiz"\n Digite o numero de horas extras feitas: "
	msg3:.asciiz"\n Digite o desconto salarial: "
	saliquido:.asciiz"\n Seu salario líquido é: "
	salBruto:.asciiz"\n Seu salario bruto é: "
	linha:.asciiz"\n"
.text
main:

	li $t1, 10
	li $t2, 15
	
	li $v0, 4 #irá realizar a operação 4 - mostrar texto.
	la $a0, msg1
	syscall
	
	li $v0, 5 #ira realizar a op 5 - ler int.
	syscall
	add $t0, $v0, 0 
	
	li $v0, 4 #irá realizar a operação 4 - mostrar texto.
	la $a0, msg2
	syscall
	
	li $v0, 5 #ira realizar a op 5 - ler int.
	syscall
	add $t3, $v0, 0
	
	li $v0, 4 #irá realizar a operação 4 - mostrar texto.
	la $a0, msg3
	syscall
	
	li $v0, 5 #ira realizar a op 5 - ler int.
	syscall
	add $t4, $v0, 0
	
	mul $t5, $t1, $t0 #salario das horas trabalhadas
	
	li $t1, 100
	
	mul $t6, $t2, $t3 #salario das horas extras
	add $t7, $t6, $t5 #salario total
	sub $t8, $t1, $t4 #pegando o desconto salarial
	mul $t9, $t7, $t8 #salario liquido
	
	
	li $v0, 4
	la $a0, salBruto
	syscall
	
	li $v0, 1
	add $a0, $t7, 0
	syscall
	
	li $v0, 4
	la $a0, saliquido
	syscall
	
	li $v0, 1
	div $a0, $t9, $t1
	syscall
	
	
	
	
	
	
	