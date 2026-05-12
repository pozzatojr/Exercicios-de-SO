.data
    msg_nota: .asciiz "Digite a nota (0 a 10): "
    msg_ap:   .asciiz "\nAPROVADO"
    msg_ex:   .asciiz "\nEXAME"
    msg_re:   .asciiz "\nRETIDO"
    msg_med:  .asciiz "\nMedia final: "

.text
main:
    li $v0, 4
    la $a0, msg_nota
    syscall
    
    li $v0, 5
    syscall
    add $t0, $v0, 0

    li $v0, 4
    la $a0, msg_nota
    syscall
    
    li $v0, 5
    syscall
    add $t1, $v0, 0

    li $v0, 4
    la $a0, msg_nota
    syscall
    
    li $v0, 5
    syscall
    add $t2, $v0, 0

    li $v0, 4
    la $a0, msg_nota
    syscall
    
    li $v0, 5
    syscall
    add $t3, $v0, 0

    add $t4, $t0, $t1
    add $t4, $t4, $t2
    add $t4, $t4, $t3

    div $t4, $t4, 4
    add $t5, $t4, 0

    li $v0, 4
    la $a0, msg_med
    syscall
    
    li $v0, 1
    add $a0, $t5, 0
    syscall

    li $t6, 6
    bge $t5, $t6, aprovado

    li $t6, 3
    bge $t5, $t6, exame

    j retido

aprovado:
    li $v0, 4
    la $a0, msg_ap
    syscall
    j fim

exame:
    li $v0, 4
    la $a0, msg_ex
    syscall
    j fim

retido:
    li $v0, 4
    la $a0, msg_re
    syscall
    j fim

fim:
    li $v0, 10
    syscall