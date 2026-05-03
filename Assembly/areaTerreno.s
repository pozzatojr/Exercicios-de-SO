.data
	msg1:.asciiz"\n Digite o lado do terreno: "
	msg2:.asciiz"\n Digite o outro lado do terreno: "
	msg3:.asciiz"A area é:"
.text

main:
	li $v0, 4 #irá realizar a operação 4 - mostrar texto.
	la $a0, msg1
	syscall
	
	li $v0, 5 #ira realizar a op 5 - ler int.
	syscall
	add $t0, $v0, 0 #add no rregistrador t0 o valor que acabei de colocar em v0, agr v0 esta vazio para poder ser usado.
	
	li $v0, 4 #irá realizar a operação 4 - mostrar texto.
	la $a0, msg2
	syscall
	
	li $v0, 5 #ira realizar a op 5 - ler int.
	syscall
	add $t1, $v0, 0
	
	mul $t2, $t1, $t0
	
	li $v0,4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	 
	 
	