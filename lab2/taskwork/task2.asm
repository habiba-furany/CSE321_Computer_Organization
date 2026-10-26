.data
msgn: .asciiz "Enter the n \n"
msgnums: .asciiz "Enter n numbers \n"
msgres: .asciiz "The avrage is: "
nline: .asciiz "\n"

.text
main:
## n entry prompt
    li $v0, 4
    la $a0, msgn
    syscall
## get the n 
    li $v0 , 5
    syscall
    move $t0 , $v0   # n 

## summation variable
    li $t1, 0
## entring the numbers using while loop
    # loop variable
    li $t2 , 0 
 while: 
    bge	$t2, $t0 ,endwhile

    li $v0, 4
    la $a0, msgnums
    syscall

    li $v0 , 5
    syscall
    move $t3 , $v0
    
    add $t1, $t1, $t3
    add $t2 , $t2 ,1  # increment the loop variable
    j while

endwhile:
    li $v0 , 4
    la $a0 , msgres
    syscall
## calculate the average 
    div $t1, $t0
    mflo $a0
    li $v0 , 1
    syscall
## new line
    li $v0 , 4
    la $a0 , nline
    syscall

exit: 
    li $v0 , 10
    syscall
    
