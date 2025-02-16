.data               # Section for initialized data
newline: .asciiz "\n"
printthree: .asciiz "printing three!\n"  # Null-terminated string
division: .asciiz "5 / 2!\n"
multiply: .asciiz "Multiply 5 * 5! = "
upper: .asciiz "Upper 32 bits of 5*5... "
lower: .asciiz "Lower 32 bits of 5*5... "
quotient:  .asciiz "quotient is "
remainder:  .asciiz "remainder is "
.text               # Section for code
.globl main         # Define main as a global symbol

main:
	la   $a0, printthree # Set $v0 to 4, which is the syscall for print_string
	li   $v0, 4            
	syscall                
	li $t1, 1
	li $t2, 2
	add $t0, $t1, $t2
	move $a0,$t0
	li $v0, 1
	syscall # Print the number t0
	la   $a0, newline # Set $v0 to 4, which is the syscall for print_string
	li   $v0, 4            
	syscall                
    # Print the remainder and quootient from division
	la   $a0, division # Set $v0 to 4, which is the syscall for print_string
	li   $v0, 4            
	syscall
	la   $a0, newline # Set $v0 to 4, which is the syscall for print_string
	li   $v0, 4            
	syscall
	li $t0, 5
	li $t1, 2                
	div $t0, $t1	
	# now print the quotient and the remainder
	la   $a0, quotient # print quotient
	li   $v0, 4            
	syscall	
	mflo $a0	
	li $v0, 1
	syscall
	la   $a0, newline 
	li   $v0, 4            
	syscall                
	la   $a0, remainder # print remainder
	li   $v0, 4            
	syscall		
	mfhi $a0
	li $v0, 1
	syscall # Print the number t0
	la   $a0, newline # Set $v0 to 4, which is the syscall for print_string
	li   $v0, 4            
	syscall
    # Print the product for multiplication
	la   $a0, multiply # Set $v0 to 4, which is the syscall for print_string
	li   $v0, 4            
	syscall
	li $t0, 5                
	mult $t0, $t0	
	# use a sum of hi and lo to print the product
	mfhi $t1
	mflo $t2
	add $t0, $t1, $t2 
	move $a0, $t0
	li $v0, 1
	syscall # Print the number t0

	
                    
                                                    

    # Exit the program
    # Set $v0 to 10, which is the syscall for exit
    li   $v0, 10           
    syscall
