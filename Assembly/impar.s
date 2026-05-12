.data
	msg1:.asciiz"Digite um numero: "
	msg2:.asciiz"Digite outro numero: "
	space:.asciiz"\n"
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
		
	bgt $t0, $t1, se
	j senao
se:
	beq $t0, $t1, end
	add $t1, $t1, 1
	rem $t2, $t1, 2
	
	beq $t2, 0, se
	j impar

senao:
	beq $t0, $t1, end1
	add $t0, $t0, 1
	rem $t2, $t0, 2
	
	beq $t2, 0, senao
	j impar2
impar:
	add $t4, $t4, $t1
	ble $t1, $t0, se

impar2:
	add $t3, $t3, $t0
	ble $t0, $t1, senao	
end:
	li $v0, 1
	add $a0, $t4, 0
	syscall 
	j fim
end1:
	li $v0, 1
	add $a0, $t3, 0
	syscall	
	
fim: