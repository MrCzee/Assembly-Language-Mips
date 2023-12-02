.data 
num1: .asciiz "Enter 1st number"
num2: .asciiz "Enter 2nd number"
res: .asciiz "Your result is" 

.text

 li $v0, 4
 la $a0, num1
 syscall
 
 li $v0, 5
 syscall
 
 move $t1, $v0
 
 
 li $v0, 4
 la $a0, num2
 syscall 
 
 li $v0, 5
 syscall 
 
 move $t2, $v0
 
 mul $t3, $t1,$t2
 
 li $v0, 4
 la $a0, res
 syscall
 
 li $v0, 1
 move $a0, $t3
 syscall
   