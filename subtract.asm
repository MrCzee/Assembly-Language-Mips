.data
n1: .asciiz "Enter nun1 :"
n2: .asciiz "Enter num2 :"
res: .asciiz "Result is :"

.text
li $v0, 4
la $a0, n1
syscall

li $v0, 5
syscall

move $t1, $v0

li $v0, 4
la $a0, n2
syscall

li $v0, 5
syscall

move $t2, $v0

sub $t3, $t1,$t2

li $v0, 4
la $a0, res
syscall

li $v0, 1
move $a0, $t3
syscall
