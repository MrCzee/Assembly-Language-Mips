.data 

    prompt1:    .asciiz "Enter the first number: "
    prompt2:    .asciiz "Enter the second number: "
    resultMsg:  .asciiz "The average is: "
    errorMsg:   .asciiz "\nError: Division by zero\n"

.text main:

#prompt 1 
li $v0, 4
la $a0, prompt1
syscall

li $v0, 6
syscall
move $t1, $v0


#prompt 2
li $v0, 4
la $a0, prompt2
syscall

li $v0, 6
syscall
move $t2, $v0


#beqz $1, GoToErrorDetect

add $t3, $t1, $t2

#div $4, $t3, 2

srl $t4, $t2, 2

li $v0, 4
la $a0, resultMsg
syscall

li $v0, 2
move $a0, $t4
syscall

#GoToErrorDetect:

#li $v0, 4

#la $a0, errorMsg
#syscall


