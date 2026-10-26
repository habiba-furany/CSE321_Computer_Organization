.data
msg: .asciiz " Enter number: "
msgcase1: .asciiz " Case 1\n"
msgcase2: .asciiz " Case 2\n"
msgcase3: .asciiz " Case 3\n"
msgcasedef: .asciiz " Defult\n"
nline: .asciiz "\n"

.text
main: 
## entry message
    li $v0, 4
    la $a0, msg
    syscall
## user input
    li $v0 , 5
    syscall
    move $t0 , $v0
case1: 
    bne	$t0, 1 case2
    li $v0 , 4
    la $a0, msgcase1
    syscall
    j exit
case2: 
    bne	$t0, 2 case3
    li $v0 , 4
    la $a0, msgcase2
    syscall
    j exit
case3: 
    bne	$t0, 3 defult
    li $v0 , 4
    la $a0, msgcase3
    syscall
    j exit
defult: 
    li $v0 , 4
    la $a0, msgcasedef
    syscall
exit: 
    li $v0,10
    syscall