.data        
        prompt1:.asciiz "Enter the first float number: "
	prompt2: .asciiz "\nEnter the second float number: "
	dvdprompt: .asciiz "\nEnter divde num: "
	sum: .asciiz "\nSum: "
	avg: .asciiz "\nAvg: "
	
.text main:

	li $v0, 4 
	la $a0, prompt1
	syscall
	li $v0, 6 # getting float values from user
	syscall
	mov.s $f1, $f0
	# prompt the secount floating values 
	li $v0, 4
	la $a0, prompt1
	syscall
	li $v0, 6
	syscall
	mov.s $f2, $f0
	
	#performing the addition 
	  add.s $f3, $f1, $f2
	  li $v0, 4
	  la $a0, sum
	  syscall
	  li $v0, 2
	  mov.s $f12, $f0
	  syscall

     
      