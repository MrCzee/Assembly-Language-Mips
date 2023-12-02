
  #What is the sum of all the elements in the following array? [79, 98, 35, 97, 20, 12, 67, 82]

.data 
myArray: .space 50
Elements: .asciiz "How many elements do you want to add in array: "
Enter: .asciiz "\nEnter the Elements: "
Result: .asciiz "\nSum of array: "
newLine: .asciiz "\n"
curNum: .asciiz "\nCurrent Number: "

.text main:

#initilize array
addi $t1, $zero, 79
addi $t2, $zero, 98
addi $t3, $zero, 35
addi $t4, $zero, 97
addi $t5, $zero, 20                         
addi $t6, $zero, 12
addi $t7, $zero, 67
addi $t8, $zero, 82

# index initilize
addi $t0, $zero, 0

# storing value in ram

sw $a0, myArray($t0)
    addi $t0, $t0, 4
sw $a1, myArray($t0)
   addi $t0, $t0, 4
sw $a2, myArray($t0)
    addi $t0, $t0, 4
sw $a3, myArray($t0)
   addi $t0, $t0, 4    
sw $s0, myArray($t0)
    addi $t0, $t0, 4
sw $s1, myArray($t0)
   addi $t0, $t0, 4    
sw $s2, myArray($t0)
    addi $t0, $t0, 4
sw $s3, myArray($t0)
   addi $t0, $t0, 4   
   
   # clear index
   addi $t0, $zero, 0
   
# accessing values from ram  using loop

   while:
      
      beq $t0, 45, Exit
      
      lw $t4, myArray($t0)
      
      addi $t0, $t0, 4   
      
      # Prints current number.
      
      li $v0, 4
      la $a0, curNum
      syscall
      li $v0, 1
      move $a0, $t4
      syscall
      # NewLine 
      
       li $v0, 4
       la $a0, newLine
       syscall
      
      j while
      
       Exit:   
       li $v0, 10
       syscall
                                              

