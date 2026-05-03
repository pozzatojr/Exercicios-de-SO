.data
	msg1:.asciiz"\n Digite um numero: "
	
	less25:.asciiz"\n Quantidade de numeros entre 0 - 25: "
	less50:.asciiz"\n Quantidade de numeros entre 26 - 50: "
	less75:.asciiz"\n Quantidade de numeros entre 51 - 75: "
	less100:.asciiz"\n Quantidade de numeros entre 76 - 100: "
	linha:.asciiz"\n"
	
.text
main:
	
	li $t1, 0
	li $t3, 0
	li $t5, 0
	li $t8, 0
	
start:	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5 #numero 1
	syscall
	add $t0, $v0, 0 
	
	ble $t0, 0, fim
	bgt $t0, 100, fim
	ble $t0, 25, menor25
	ble $t0, 50, menor50
	ble $t0, 75, menor75
	ble $t0, 100, menor100
	
	
menor25:
	
	add $t2, $t1, 1 #contador 25 = t2
	j start
		
menor50:
	ble $t0, 25, menor25
	add $t4, $t3, 1 #contador 50 = t4
	j start

menor75:
	ble $t0, 25, menor25
	ble $t0, 50, menor50
	add $t6, $t5, 1 #contador 75 = t6
	j start
	
menor100:
	ble $t0, 25, menor25
	ble $t0, 50, menor50
	ble $t0, 75, menor75
	add $t9, $t8, 1 #contador 75 = t9
	j start

fim:	

	li $v0, 4
	la $a0, less25
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall	
	
	li $v0, 4
	la $a0, linha
	syscall
	
	li $v0, 4
	la $a0, less50
	syscall
	
	li $v0, 1
	add $a0, $t4, 0
	syscall	
	
	li $v0, 4
	la $a0, linha
	syscall
	
	li $v0, 4
	la $a0, less75
	syscall
	
	li $v0, 1
	add $a0, $t6, 0
	syscall
	
	li $v0, 4
	la $a0, linha
	syscall
	
	li $v0, 4
	la $a0, less100
	syscall
	
	li $v0, 1
	add $a0, $t9, 0
	syscall