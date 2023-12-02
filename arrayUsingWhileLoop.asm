.data 
myArray: .space 30
newLine: .asciiz "\t\n" 
.text main:

# initilize

addi $a0, $zero, 4
addi $a1, $zero, 8
addi $a2, $zero, 12

addi $a3, $zero, 16
addi $s0, $zero, 20
addi $s1, $zero, 24
# index t 0

addi $t0, $zero, 0

# storing value in ram

sw $a0, myArray($t0)
   addi $t0, $t0, 4
 sw $a1, myArray($t0)
   addi $t0, $t0, 4
sw $a2 , myArray($t0)
   addi $t0, $t0, 4
 sw $a3, myArray($t0)
   addi $t0, $t0, 4
sw $s0 , myArray($t0)
   addi $t0, $t0, 4
sw $s1 , myArray($t0)

#clear t0
addi $t0, $zero , 0

# loading words from memory or accessing the values

while:

beq $t0, 24, exit

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



