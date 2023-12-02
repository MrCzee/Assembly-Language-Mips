.data 
prompt1: .asciiz "\nEnter Element"
Myarray: .space 30
newLine: .asciiz "\n"

.text main:

#initlize 

addi $a0, $zero, 44
addi $a1, $zero, 55
addi, $a2, $zero, 66

# INITILISE ARRAY

addi $t0,$zero, 0

# STORING VALUE IN RAM

sw $a0, Myarray($t0)
   addi $t0, $t0, 4
 sw $a1, Myarray($t0)
   addi $t0, $t0, 4
sw $a2 , Myarray($t0)
   addi $t0, $t0, 4  
  
# clear index 
 addi $t0, $zero, 0
 
# loop to ACCESSING VALUES 

       while:
        
          beq   $t0, 26, Exit
          
          lw $t4, Myarray($t0)
          
          addi $t0, $t0, 4
          
          #print
          li $v0, 1
          move $a0, $t4
          syscall
          #newLine
          li $v0, 4
          la $a0, newLine
          syscall
           
             j while
       Exit:   
       li $v0, 10
       syscall          
     
