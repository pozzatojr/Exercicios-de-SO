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
	
	rem $t1, $t0, 2 #rsto da div de t0 por 2
	
	beq $t1, 0, par 
	j impar
	
par:
	add $t2, $t0, 5
	li $v0, 1
	add $a0, $t2, 0
	syscall

	j fim
	
impar:
	add $t2, $t0, 8
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	j fim
		
fim:	
	
	
	 