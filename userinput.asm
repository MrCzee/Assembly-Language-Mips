.data
msg1: .asciiz"Enter your age"
msg2: .asciiz"Your age is"

.text main:


# prompt to enter your age
li $v0, 4
la $a0, msg1
syscall

# user input for age
li $v0, 5
syscall

#Store age in $t1 register
move $t1, $v0

# promot dispaly your age is
li $v0, 4
la $a0, msg1
syscall

# print integer values

li $v0, 1
move $a0, $t1
syscall

