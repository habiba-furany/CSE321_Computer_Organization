.data
msg1 : .asciiz "enter num 1\n"
msg2 : .asciiz "enter num 2\n"
msgres : .asciiz "result is : \n"
nline : .asciiz "\n"
.text 
main: 
    #print msg1
    li $v0,4
    la $a0, msg1
    syscall
    # read the user input
    li $v0,5
    syscall
    #user input in t0
    move $t0 , $v0
    #print msg2
    li $v0,4
    la $a0, msg2
    syscall
    li $v0,5
    syscall
    #user input in t1
    move $t1 , $v0
    # print res msg
    li $v0 , 4
    la $a0 , msgres
    syscall
    add $t2,$t0,$t1
    move $a0 , $t2
    # or add $a0 , $t0,$t1 directly
    li $v0 ,1
    syscall
    li $v0,4
    la $a0, nline
    syscall
exit:
    li $v0, 10
    syscall

