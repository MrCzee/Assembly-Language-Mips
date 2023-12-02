.data

message: .asciiz "\t\t\tNumbers are not equeal"
message2: .asciiz "Nothing happened."
.text
main:
addi $t0, $zero,5
addi $t1, $zero, 15

bne  $t0, $t1, numbersDifferent

li $v0, 4
la $a0, message2
syscall
#syscall to end program
li $v0, 10
syscall
numbersDifferent:
 li $v0, 4
 la $a0, message
 syscall