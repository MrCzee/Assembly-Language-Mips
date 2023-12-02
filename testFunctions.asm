.data
msg: .asciiz"Hi, Mr Imran khan"
.text main:

jal DataLink

addi $s0, $zero, 5
li $v0, 1
add $a0, $zero, $s0

syscall

li $v0, 10

syscall

DataLink:
li $v0, 4
la $a0, msg
syscall
jr $ra

