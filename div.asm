.data
num: .asciiz"Enter your first num"
num1: .asciiz"Enter your secound num"
res: .asciiz"REsult is: = "

.text

li $v0, 4
la $a0, num
syscall 

li $v0, 5
syscall

move $t1, $v0


li $v0, 4
la $a0, num1
syscall 

li $v0, 5
syscall

move $t2, $v0

div $t3, $t1,$t2

li $v0, 4
la $a0, res
syscall


li $v0, 1
move $a0, $t3
syscall
