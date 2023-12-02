.data 
greeting: .asciiz"Hello... Imran how are you today?"
userInput: .space 200

.text main:

li $v0, 8
la $a0, userInput
la $a1, 200

syscall

# display greeting 
li $v0, 4
la $a0, greeting
syscall
# display userinput
li $v0, 4
la $a0, userInput
syscall
li $v0, 10
syscall
