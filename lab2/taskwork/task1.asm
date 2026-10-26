.data
msg1 : .asciiz "enter num 1\n"
msg2 : .asciiz "enter num 2\n"
msg3 : .asciiz "enter num 3 : \n"
msg4 : .asciiz "enter num 4: \n"
msgres : .asciiz "the average is \n"
nline : .asciiz "\n"
.text 
main:
    li $v0 , 4
    la $a0, msg1
    syscall
    li $v0,5
    syscall #num 1 is in $t0
    move $t0 , $v0
    
    li $v0 , 4
    la $a0, msg2
    syscall
    li $v0,5
    syscall #num 2 is in $t1
    move $t1 , $v0
    
    li $v0 , 4
    la $a0, msg3
    syscall
    li $v0,5
    syscall #num 3 is in $t2
    move $t2 , $v0

    li $v0 , 4
    la $a0, msg4
    syscall
    li $v0,5
    syscall #num 4 is in $t3
    move $t3 , $v0
    
    ## add the four numbers
    add $t4 , $t0,$t1
    add $t5 ,$t2,$t3
    add $t6 , $t4 , $t5
   
    li $v0 , 4
    la $a0 , msgres
    syscall

     ## average
    li $t7 ,4
    div $t6,$t7
    mflo $a0

    li $v0 , 1
    syscall
    
    li $v0,4
    la $a0 , nline
    syscall
exit:
    li $v0 ,10
    syscall


