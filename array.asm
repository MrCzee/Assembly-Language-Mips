
.data

 myArray: .space 12
.text

# Index = $t0
addi $t0, $zero, 0

addi $a0, $zero, 5  #   a0 = 0 + 4 
addi $a1, $zero, 10
addi $a2, $zero, 12

sw $a0, myArray($t0)  #save woed in ram
 addi $t0, $t0, 4   # t =  t+4  
sw $a1, myArray($t0)
 addi $t0, $t0, 4
sw $a2, myArray($t0)
  
lw $t6, myArray($zero)  # load word ka mtlb h ram sy memory lena
li $v0, 1
addi $a0, $t6, 0
syscall

lw $a2, myArray($zero)
li $v0, 1
addi $a0, $t6, 0
syscall
