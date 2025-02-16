
.data # where to store vars
	arr1: .word 2, 1 
	end: .asciiz "\nthat's all folks!\n"
	newline: .asciiz "\n"

.text
# I want to print each element in the array: I will need to print 4 times and I will need to store the address of the current indexed elements as I loop
# Through the array. Lacking a function like for, I will opt for taking the address of the lement at the top of array initially and then add for bytes to adress
# to point towards next memeber.
la $s0, arr1
lw $t0, ($s0)
lw $t1, 4($s0)
li $t3, 0                                 # Counter
li $t4, 2                                 # Length of the list

bge $t0, $t1, swap

swap:
	add $t2, $t0, $zero # store t0 into t2
	sw $t1, ($s0)          # store value in $t1 into register $t0
	sw $t2, 4($s0)          # store value in t2 into address 4(s0)
loop:
    bge $t3, $t4, end_loop		    # branch to end if counter > length
    lw $a0, ($s0)			    # Load word att address $s0
    li $v0, 1
    syscall                                 # Print the number
    li $v0, 4
    la $a0, newline 			    # Load word att address $s0
    syscall                                 # Print the number
    addi $s0, $s0, 4                        # Size of a word is 4 bytes; increment $s0 so that that it points to adress of next element
    addi $t3, $t3, 1                        # Increment counter
    j loop				    # jump to beginning of loop

end_loop:
    la $a0, end                     # Load address of string stored                                            # in memory
    li $v0, 4                               # Load the syscall value (number
    syscall                                 # Perform the specified syscall


               
                              
                                                            