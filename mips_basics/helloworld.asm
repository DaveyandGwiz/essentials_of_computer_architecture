#----------------------------
# File: hello_world.s
#----------------------------
# This program prints "Hello, World!" to the console and then exits.

.data               # Section for initialized data
message: .asciiz "Hello, World!\n"  # Null-terminated string

.text               # Section for code
.globl main         # Define main as a global symbol

main:
    # Load the address of our message into register $a0
    la   $a0, message       

    # Set $v0 to 4, which is the syscall for print_string
    li   $v0, 4            
    syscall                

    # Exit the program
    # Set $v0 to 10, which is the syscall for exit
    li   $v0, 10           
    syscall
