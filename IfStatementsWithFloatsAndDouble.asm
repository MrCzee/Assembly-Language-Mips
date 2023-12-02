.data
message1: .asciiz" It was true.\n "
message2: .asciiz "It was false.\n"
number1: .float 10.4
number2: .float 4.6
.text
main:

lwc1 $f2, number1
lwc1 $f4, number2

c.eq.s $f2, $f4


bc1t exit   #flag 0 is true
li $v0, 4
la $a0, message1
syscall

#terminate 
li $v0, 10
syscall

exit:
li $v0, 4
la $a0, message1
syscall