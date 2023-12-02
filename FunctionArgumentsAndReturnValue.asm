.data
.text main:

addi $a1, $zero, 100
addi $a2, $zero, 300

jal DisplayResults


li $v0, 1
addi $a0, $v1, 0
syscall

li $v0, 10
syscall


DisplayResults:   # a professional programmer firtly defines the method and then he will call the system and other activites.

add $v1, $a1, $a2

jr $ra