.data
msgpos : .asciiz "Positive\n"
msgneg : .asciiz "Negative\n"
msgzero : .asciiz "Zero\n"
msg : .asciiz "enter a number: \n"
nline : .asciiz "\n"
.text 
main:
    li $v0, 4
    la $a0 , msg
    syscall
    li $v0 , 5
    syscall
    move $t0,$v0
    
ifzero: 
    bne $t0 , $0 ifpos
    la $a0 , msgzero
    j endif
ifpos: 
    blez $t0   else
    la $a0 , msgpos
    j endif

else: 
    la $a0 , msgneg

endif: 
    li $v0 , 4
    syscall
    li $v0 , 4
    la $a0 , nline
    syscall

exit: 
    li $v0 , 10
    syscall
    