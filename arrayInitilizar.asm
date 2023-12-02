.data 
myArray: .word 4:3
newLine: .asciiz "\t\n" 
.text main:



# index t 0

addi $t0, $zero, 0


# loading words from memory or accessing the values

while:

beq $t0, 12, exit

lw $t4, myArray($t0)

addi $t0, $t0, 4
# Prints current number.
li $v0, 1
move $a0, $t4
syscall
#Prints a new Line

li $v0, 4
la $a0, newLine
syscall
j while
exit:
li $v0, 10
syscall



