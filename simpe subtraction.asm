.data
n1: .word 10
n2: .word 22

.text

lw $s0, n1
lw $s1, n2

sub t0, $s0, $s1

li $v0, 1
move $a0, $t0
syscall
