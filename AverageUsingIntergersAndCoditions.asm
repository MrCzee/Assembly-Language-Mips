.data
    prompt1:    .asciiz "Enter the first number: "
    prompt2:    .asciiz "Enter the second number: "
    resultMsg:  .asciiz "The average is: "
    errorMsg:   .asciiz "Error: Division by zero\n"

.text
    main:
        # Prompt for the first number
        li $v0, 4
        la $a0, prompt1
        syscall
       
        # Read the first number
        li $v0, 5
        syscall
        move $t0, $v0   # $t0 = first number
       
        # Prompt for the second number
        li $v0, 4
        la $a0, prompt2
        syscall
       
        # Read the second number
        li $v0, 5
        syscall
        move $t1, $v0   # $t1 = second number
       
        # Branch to handle division by zero
        beqz $t1, divisionError
       
        # Calculate the sum
        add $t2, $t0, $t1
       
        # Divide the sum by 2 to calculate the average
        srl $t3, $t2, 2
       
        # Display the result message
        li $v0, 4
        la $a0, resultMsg
        syscall
       
        # Display the average
        li $v0, 1
        move $a0, $t3
        syscall
       
        # Exit program
        li $v0, 10
        syscall
       
    divisionError:
        # Display error message
        li $v0, 4
        la $a0, errorMsg
        syscall
       
        # Exit program
        li $v0, 10
        syscall
