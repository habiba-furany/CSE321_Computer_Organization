.data
nline: .asciiz "\n"
.text

main:
    li $t0 , 0
    li $t1 , 10

while: 
    bgt $t0 , $t1 exit
    li $v0 , 1
    move $a0 , $t0
    syscall
    li $v0, 4
    la $a0, nline
    syscall
     
    add $t0 , $t0 , 1
    
    j while
exit:
    li $v0 , 10
    syscall

