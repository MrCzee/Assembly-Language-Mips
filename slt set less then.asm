.data
msg1: .asciiz "first number is less then other"
msg2: .asciiz "Numger is greater then the other" 
greater: .asciiz "first number is greater then 100"
.text main:

addi $t1, $zero, 100
addi $t2, $zero, 200



        
slt $s0, $t1, $t2  #100 #200  $t1 is less then $2 condition true so it store value 1 in $so
bne $s0, $zero, NotEqualLabel

# Exit or terminate
li $v0, 10
syscall


NotEqualLabel:
li $v0, 4
la $a0, msg1
syscall


