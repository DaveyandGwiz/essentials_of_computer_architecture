# Program to add two numbers in MIPS
# Author: Example

.data               # Section for data storage
num1: .word 5       # First number (5)
num2: .word 7       # Second number (7)
result: .word 0     # Memory location to store the result

.text               # Section for code
.globl main         # Entry point for the program

main:
    # Load the first number into register $t0
    lw $t0, num1    # $t0 = num1
    
    # Load the second number into register $t1
    lw $t1, num2    # $t1 = num2

    # Add the two numbers and store the result in $t2
    add $t2, $t0, $t1 # $t2 = $t0 + $t1

    # Store the result back into memory
    sw $t2, result  # result = $t2

    # Exit the program (for SPIM or QtSPIM)
    li $v0, 10      # System call code for exit
    syscall
