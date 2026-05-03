.data
	msg1:.asciiz"\n Digite um numero: "
	
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
	
	
	bge $t0, 0, dobro
	j triplo
dobro:
	add $t1, $t0, 2
	li $v0, 1
	add $a0, $t1, 0
	syscall

	j fim
	
triplo:
	mul $t2, $t0, 3
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	j fim
		
fim:	
	
	
	 