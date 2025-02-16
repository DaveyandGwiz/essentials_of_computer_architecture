
.data # where to store vars
	num1: .word 3
	arr1: .word 1, 2, 3, 4, 5
	newline: .asciiz "\nHello, World!\n"

.text
  la $s0, arr1                              # Load address of list
  li $t0, 0                                 # Counter
  li $t1, 5                                 # Length of the list
  
  loop:
    bge $t0, $t1, end_loop		    # branch to end if counter > length

    li $a0, $s0			    # Load word att address $s0
    li $v0, 1
    syscall                                 # Print the number

    li $v0, 4
    la $a0, newline 			    # Load word att address $s0
    syscall                                 # Print the number

    addi $s0, $s0, 4                        # Size of a word is 4 bytes; increment $s0 so that that it points to adress of next element
    addi $t0, $t0, 1                        # Increment counter
    j loop				    # jump to beginning of loop
  end_loop:
