.data
	msg1:.asciiz"Digite o numero de camisetas pequenas que deseja comprar:"
	msg2:.asciiz"Digite o numero de camisetas médias que deseja comprar:"
	msg3:.asciiz"Digite o numero de camisetas gandes que deseja comprar:"
	breakline:.asciiz"\n"
.text

main:
	li $t0, 10
	li $t1, 12
	li $t2, 15
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t3, $v0, 0 #adicionei a quantidade de camisetas pequenas no registrador t3
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t5, $v0, 0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t7, $v0, 0
	
	mul $t8, $t7, $t2
	mul $t6, $t5, $t1
	mul $t4, $t3, $t0
	
	
	li, $v0, 1
	add $a0, $t4, 0
	syscall
	
	li, $v0, 4
	la $a0, breakline
	syscall
	
	li, $v0, 1
	add $a0, $t6, 0
	syscall
	
	li, $v0, 4
	la $a0, breakline
	syscall
	
	li, $v0, 1
	add $a0, $t8, 0
	syscall
	