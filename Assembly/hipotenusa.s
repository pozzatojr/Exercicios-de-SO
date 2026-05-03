.data
	msg1:.asciiz"\n Digite o cateto do triangulo: "
	msg2:.asciiz"\n Digite o outro cateto do triangulo: "
	msg3:.asciiz"\n Digite a altura do trapézio: "	
	hipotenusa:.asciiz"\n A hipotenusa ao quadrado é: "
	
	salBruto:.asciiz"\n Seu salario bruto é: "
	linha:.asciiz"\n"
	
.text
main:
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5 #cateto= t0
	syscall
	add $t0, $v0, 0 
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0 #cateto = t1 
	
	
	mul $t2, $t0, $t0 #1 cateto ao quadrado
	mul $t3, $t1, $t1 #2 cateto ao quadrado
	add $t4, $t3, $t2 #soma dos catetos = hipotenusa ao quadrado
	
	
	
	li $v0, 4
	la $a0, hipotenusa
	syscall
	
	li $v0, 1
	add $a0, $t4, 0
	syscall
	
	
	 