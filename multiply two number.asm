.data
.text

addi $s0, $zero, 10
addi $s1, $zero, 4
mul $t1, $s0, $s1

li $v0, 1

add $a0, $zero, $t1
syscall