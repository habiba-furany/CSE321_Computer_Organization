.data
    name: .asciiz "Name : Habia Alaaeldin\n"
    code: .asciiz "Code : 208023200521\n"
    course: .asciiz "Course : CSE321_Computer Organization\n"
.text 
main:
    li $v0 , 4
    la $a0 , name
    syscall

    li $v0 , 4
    la $a0 , code
    syscall
    
    li $v0,4
    la $a0, course
    syscall
  
exit:
    li $v0 , 10
    syscall