.data
msg1: .asciiz"Enter first value: "
msg2: .asciiz"Enter secound value: "
sum: .asciiz"Your Sum is: "
divisible: .asciiz"\nEnter divisible number: "
divisibleNum: .asciiz"\nDivisible number: "
average: .asciiz"\nAverage is: "


.text main:

li $v0, 4          # getting  prompt 1
la $a0, msg1
syscall

li $v0, 6         # getting user inpur
syscall
mov.s $f1, $f0


li $v0, 4       # getting  prompt 2
la $a0, msg2
syscall

li $v0, 6      # getting user inpur
syscall
mov.s $f2, $f0

#ADDITION

add.s $f3, $f1,$f2

# PROMPT YOUR SUM IS
 li $v0, 4
 la $a0, sum
 syscall
 
 # DISPLAY SUM TO USER
 
 li $v0, 2
 mov.s $f12, $f3
 syscall


# prompt sum
 li $v0, 4
 la $a0, divisible
 syscall
 
 
 # USER INPUT FOR DIGITR DIVISIBLE
   li $v0, 6
   syscall
   mov.s $f4, $f0
   
   # DISPLAYING NUMDIVISIBLE
   li $v0, 4
   la $a0, divisibleNum
   syscall
   #DISPLAY TO USER 
   li $v0, 2
   mov.s $f12,  $f4
   syscall

                              #working fine 13567
                              
    div.s $f6, $f3, $f4
   
    # DISPLAYING  AVG PROMPT 
   li $v0, 4
   la $a0, average
   syscall
   #DISPLAY TO USER 
   li $v0, 2
   mov.s $f12,  $f6
   syscall

   
                              

