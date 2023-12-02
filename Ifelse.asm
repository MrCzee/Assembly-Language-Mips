.data
msg1: .asciiz "\t\tNumbers Are Equal"
msg2: .asciiz "Not Equal numbers"

.text main:

addi $t1, $zero, 5
addi $t2, $zero, 5

beq $t1, $t2, Equal

# terminate or exir 
li $v0, 10
syscall


Equal:

li $v0, 4
la $a0, msg1
syscall