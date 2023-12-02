.data
	prompt1:.asciiz "Enter the first float number: "
	prompt2: .asciiz "\nEnter the second float number: "
	dvdprompt: .asciiz "\nEnter divde num: "
	sum: .asciiz "\nSum: "
	avg: .asciiz "\nAvg: "
	
.text 
	li $v0, 4		# printing input text
	la $a0, prompt1
	syscall
	
	li $v0, 6 	#Getting input 1							
	syscall
	mov.s $f1, $f0
	
	li $v0, 4 	# printing input text
	la $a0, prompt2
	syscall

	li $v0, 6	 	#Getting input 2
	syscall
	mov.s $f2, $f0
	
	add.s $f3, $f1, $f2   # Addition 
	
	li $v0, 4 	 # printing text for output
	la $a0, sum
	syscall
	
	li $v0 ,2 	 # printing sum 
	mov.s $f12, $f3
	syscall
	
	li $v0, 4		# printing input text || Enter the number to print the values 
	la $a0, dvdprompt
	syscall
	
	li $v0, 6		#getting divid by num
	syscall
	mov.s $f4, $f0
	
	li $v0, 4 	# # printing text for output
	la $a0, avg 
	syscall
	
	div.s $f5, $f3, $f4 # dividing
	
	li $v0, 2
	mov.s $f12, $f5
	syscall