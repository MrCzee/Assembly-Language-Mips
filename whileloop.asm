.data 
msg: .asciiz "After while loop done"
space: .asciiz "\n"

.text main:
addi $t0, $zero, 0
while:
bgt $t0, 10 , exit
jal printNumber
addi $t0, $1, 1
j while
exit:
li $v0, 4
la $a0, msg  # after while loop done
syscall
li $v0, 10
syscall

printNumber:
li $v0, 1
addi $a0, $t0, $zero 
syscall

li $v0, 4
la $a1, space
syscall

jr $ra











# i  = 5
# while ( i<=5 )
#  {
    
    # i++

#  }

