.data
n1: .word 5
n2: .word 10

.text

li $v0, 1
la $a0, n1


lw $t1, n1($zero)
lw $t2, n2($zero)


add $t3, $t2,$t1

li $v0, 1

add $a0,$zero, $t3  #value of $zero always remains 0 AND unchanged used here to concise the program.
syscall
