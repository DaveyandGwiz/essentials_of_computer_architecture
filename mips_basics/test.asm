
.data # where to store vars
	three: .word 3
	two: .word 2
	arr1: .word 1, 2, 3, 4, 
	end: .asciiz "\nthat's all folks!\n"
	newline: .asciiz "\n"

.text
# I want to print each element in the array: I will need to print 4 times and I will need to store the address of the current indexed elements as I loop
# Through the array. Lacking a function like for, I will opt for taking the address of the lement at the top of array initially and then add for bytes to adress
# to point towards next memeber.
la $s0, arr1
li $t0, 0 # this is the counter 
li $t1, 4 # this is the size of the array

loop: 
	bge $t0, $t1, end_loop
	lw $a0,($s0)			    # Load word att address $s0
	li $v0, 1
	syscall                             # Print the number
	li $v0, 4
	la $a0, newline 			    # Load word att address $s0
        syscall                                 # Print the number
	addi $t0, $t0, 1 # increment the counter for looping
	addi $s0, $s0, 4 # increment the address to point to the next element
	j loop

end_loop:
    la $a0, end                     # Load address of string stored                                            # in memory
    li $v0, 4                               # Load the syscall value (number
    syscall                                 # Perform the specified syscall
                 