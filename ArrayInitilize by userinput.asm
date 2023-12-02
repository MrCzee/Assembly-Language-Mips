.data 
myArray: .space 30
newLine: .asciiz "\t\n" 
prompt: .asciiz "Enter a number: "
.text
main:

# Initialize
addi $t0, $zero, 0

# Store values by user input
la $a0, prompt

# Store $a0 by user input
addi  $v0, 4
syscall
addi $v0, 5
syscall
sw $v0, myArray($t0)
addi $t0, $t0, 4

# Store $a1 by user input
la $a0, prompt
addi $v0, 4
syscall
addi $v0, 5
syscall
sw $v0, myArray($t0)
addi $t0, $t0, 4

# Store $a2 by user input
la $a0, prompt
addi $v0, 4
syscall
addi $v0, 5
syscall
sw $v0, myArray($t0)
addi $t0, $t0, 4

# Store $a3 by user input
la $a0, prompt
addi $v0, 4
syscall
addi $v0, 5
syscall
sw $v0, myArray($t0)
addi $t0, $t0, 4

# Store $s0 by user input
la $a0, prompt
addi $v0, 4
syscall
addi $v0, 5
syscall
sw $v0, myArray($t0)
addi $t0, $t0, 4

# Store $s1 by user input
la $a0, prompt
addi $v0, 4
syscall
addi $v0, 5
syscall
sw $v0, myArray($t0)

# Clear $t0
addi $t0, $zero, 0

# Load words from memory or access the values
while:
    beq $t0, 24, exit

    lw $t4, myArray($t0)

    addi $t0, $t0, 4

    # Print current number.
    li $v0, 1
    move $a0, $t4
    syscall

    # Print a new line
    li $v0, 4
    la $a0, newLine
    syscall

    j while

exit:
    li $v0, 10
    syscall
