.data
msg: .asciiz "It's working fine"
space: .asciiz "\n"
.text main:

addi $t1, $zero, 1

while:
bgt $t1, 10, exit
jal IncreamentNum
addi $t1, $t1, 1  # i = i+1 
j while
exit:
#it's working fine
li $v0, 4
la $a1, msg
syscall

li $v0, 10
syscall

IncreamentNum:
 li $v0, 1
 add $a0, $t1, $zero
 syscall
 
 li $v0, 4
 la $a0, space
 syscall
