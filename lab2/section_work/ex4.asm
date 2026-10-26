.data
msg: .asciiz "enter number\n"
res: .asciiz "summation is \n"
nline: .asciiz "\n"
.text

main:
    li $t0 , 0  #sum variable


do: 
## display message
    li $v0,4
    la $a0 , msg
    syscall
## get the number
    li $v0 , 5 
    syscall 
    move $t1 , $v0 
## add the numbers
    add $t0 , $t0 , $t1

while: 
    bnez $t1 do
## print summation
    #msg
    li $v0 , 4
    la $a0, res
    syscall
    #number
    move $a0 , $t0
    li $v0, 1
    syscall
    #new line
    li $v0 , 4
    la $a0, nline
    syscall
exit: 
    li $v0 , 10
    syscall


