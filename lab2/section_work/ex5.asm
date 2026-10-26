.data
msg: .asciiz "Enter the number : "
msgres: .asciiz " The summation is : "
nline: .asciiz "\n"

.text 
main: 
## prompt the user
    li $v0 , 4
    la $a0, msg
    syscall
## get the n 
    li $v0 , 5
    syscall
    move $t0 , $v0  # n is in t0
## summation variable
    li $t1 ,0
## loop variable
    li $t2,0
## for loop 
for: 
        bgt	$t2 , $t0 , endfor
        add $t1 , $t1 , $t2  ##sum
        add $t2,$t2 , 1      ## increment
        j for

endfor: 
    li $v0 , 4
    la $a0 , msgres
    syscall
    li $v0 , 1
    move $a0 , $t1
    syscall
    li $v0 , 4
    la $a0 , nline
    syscall 

exit: 
    li $v0, 10
    syscall
        
    