pg 715
https://www.chegg.com/homework-help/essentials-of-computer-organization-and-architecture-4th-edition-chapter-4-problem-1e-solution-9781284074482?auth_provider=oa&nruuid=d3d3453b

EXERCISES
1. What are the main functions of the CPU?
Fetch, decode, and execute instructions.

2. How is the ALU related to the CPU? What are its main
 functions?
The CPU is divided into two components: the datapath and control unit.

The datapath consists of the ALU and the storage units (registers) which are connected by busses.

The control unit overseas order of operations and ensures data is where it needs to be during execution.

The Arithmetic Logic Unit (ALU) is a core component of the Central Processing Unit (CPU), responsible for performing arithmetic (e.g., addition, subtraction) and logic operations (e.g., AND, OR, NOT). 

 3. Explain what the CPU should do when an interrupt occurs.
 Include in your answer the method the CPU uses to detect an
 interrupt, how it is handled, and what happens when the interrupt has
 been serviced.
 
When an interrupt occurs, the CPU:

Detects the interrupt via a signal or polling.
Saves its current state.
Jumps to an  Interrupt Service Routine (ISR) to handle the event.
Restores its state and resumes normal execution after the ISR is complete.

 4. How many bits would you need to address a 2M × 32 memory if:
 1. a) The memory is byte addressable?
 2M = 2*2^20 => 2^21 lines of memory
 32 => a word size of 32 bits.

 21 bits are needed to adress each row, but each row contains 4 bytes.
 So, multiply the number of rows by 4.
 2^2 * 2^21 = 2^23
 Hence, 23 bits are needed to make the memory byte addressable.
 
 2. b) The memory is word addressable?

If the memory is word addressable, we only need an address for each row.
To find n (where n is the number of bits needed to address the units of memory) we will use the following formula.
log2( (2M * 32) / 32 ) = log2( 2^26/2^5 ) = log2(2^21) = 21



5. How many bits are required to address a 4M × 16 main memory
 if:
 1. a) Main memory is byte addressable?
4M => 2^2 * 2^20 = 2^22

each line of memory is two bytes long but each byte needs an address.
log2(lines_of_memory/size_of_addressable_units)
log2((2^22*2^4)/2^3) = log2(2^23) = 23

 2. b) Main memory is word addressable?
 A word is 16 bytes, assuming the size of a register is the word size.
log2((2^22*2^4)/2^4) = log2(2^22) = 22



 6. How many bits are required to address a 1M × 8 main memory
1M = 2^20
  a) Main memory is byte addressable?
log2((2^23)/2^3)=log2(2^20) = 20

  b) Main memory is word addressable?
  word (16bits) addressable, then W=16, correspondingly - Chegg
log2((2^23)/2^4)=log2(2^19) = 19

  
Redo Example 4.1 using high-order interleaving instead of low
order interleaving.
 8. Suppose we have four memory modules instead of eight in
 Figures 4.6 and 
4.7. Draw the memory modules with the addresses
they contain using:
a) High-order interleaving utilizes the high-order bits of the address, distributing consecutive addresses across each module. In this scenario, the module selection is determined by the leftmost bits, while the offset within the module is chosen by the rightmost bits.

 1. a) high-order interleaving

 2. b) low-order interleaving

b) Low-ordered interleaving employs the low-order bits of the address to choose the memory bank. It arranges consecutive memory addresses across different modules. The module selection is determined by the rightmost bits, while the offset within the module is selected by the leftmost bits. For instance, in a byte-addressable memory of 
 bytes with 
 modules, each module should be 
 bytes and their arrangement would be as follows:

 Low-ordered interleaving is a way of spreading consecutive memory addresses across different memory modules by using the lower parts of the address.


9. How many 256 × 8 RAM chips are needed to provide a memory
 capacity of 4096 bytes?
 16 of such chips are needed.
  a) How many bits will each address contain?
  assuming that the memory is byte addressable, log2(4096)=12 bits are needed to address each byte.
  b) How many lines must go to each chip?
  The "lines to each chip" represent the physical address lines 
  needed to uniquely access any memory location within the chip. 

256 lines in a single chip implies log2(256)= 8 lines are required to identify a line in a single chip.

  c) How many lines must be decoded for the chip select inputs?
 Specify the size of the decoder.

Key Concept: Address Lines
The number of address lines determines how many unique addresses (or memory locations) a system can handle. 
Each line corresponds to one bit in the binary address.
If a memory has N addressable units, you need log2(𝑁)
lines to represent all possible addresses.
This is because log2(𝑁) gives the number of bits needed to represent 
N unique addresses in binary.

Since we are using 16 chips, we need log2(16) = 4 lines (and bits) to select the chip.

Decoder size:
Number of chips needed: 16.
Address bits required: 12.
Lines to each chip: 8.
Chip select lines: 4, requiring a 4-to-16 decoder.
A decoder converts the binary chip select signal (e.g., 4 bits) into a one-hot signal, 
where exactly one output line is active at a time.


 10. Suppose that a 2M × 16 main memory is built using 256K × 8
 RAM chips and that memory is word addressable.
  a) How many RAM chips are necessary?
  16
  b) If we were accessing one full word, how many chips would be
 involved?
 n = 16/8=2
  c) How many address bits are needed for each RAM chip?
  log2(256K) = 18, bits needed to identify a line in a chip

  d) How many banks will this memory have?
  16 chips, but 2 chips form one bank, so 16/2=8

  e) How many address bits are needed for all memory?
2^3 (3 bits to identify bank) and 2^18 bits to identify line in a bank, so 21 bits are needed.

  f) If high-order interleaving is used, where would address 14
 (which is E in hex) be located?

Address 14 (E in hex) in binary (5 bits for clarity): 01110

Choosing a bank: Address 14 is in the first bank in high-order interleaving since it is a low address, 
which equates to bank 0.

Since address 14 is the initial set of addresses, the offset within bank 
Since 14 is in the inital set of addresses, the offset within bank 0 is 14.


  g) Repeat exercise 9f for low-order interleaving.
Low-order interleaving distributes successive addresses in a round-robin manner among many banks. 
The bank is determined by the least significant bits, while the offset inside the bank is determined by the remaining bits.    

Bank selection:
address 14 modulo the number of banks (8) yields, 6
Offset:
The offset is calculated by dividing the address's remaining portion by the total number of banks. 
14/8 = 1
one is the offset. So, address 14 is at bank 6 offste 1 in low-order interleaving.



11. Redo exercise 10 assuming a 16M × 16 memory built using 512K × 8 RAM chips.
 RAM chips and that memory is word addressable.
  a) How many RAM chips are necessary?
64

  b) If we were accessing one full word, how many chips would be
 involved?
 2
  c) How many address bits are needed for each RAM chip?
log2(512K) = 19
  d) How many banks will this memory have?
64/2 = 32 = 2^5
  e) How many address bits are needed for all memory?
5 bits for bank and log2(512k) imply 24 bits to address 16M words.
  f) If high-order interleaving is used, where would address 14
Use leftmost bits to identify module.

Choosing a bank: Address 14 is in the first bank in high-order interleaving since it is a low address, 
which equates to bank 0.

Since address 14 is the initial set of addresses, the offset within bank 
Since 14 is in the inital set of addresses, the offset within bank 0 is 14.


  g) Repeat exercise 9f for low-order interleaving.
  https://www.chegg.com/homework-help/essentials-of-computer-organization-and-architecture-5th-edition-chapter-4-problem-11e-solution-9781284123036
Low-order interleaving distributes successive addresses in a round-robin manner among many banks. 
The bank is determined by the least significant bits (rightmost), while the offset inside the bank is determined by the remaining bits.    

Low-order interleaving distributes successive addresses in a round-robin manner among many banks. 
The bank is determined by the least significant bits, while the offset inside the bank is determined by the remaining bits.    

Bank selection:
address 14 modulo the number of banks (32) yields, 14
Offset:
The offset is calculated by dividing the address's remaining portion by the total number of banks. 
14/32 = 0
one is the offset. So, address 14 is at bank 14 offste 0 in low-order interleaving.



 12. Suppose we have 1G × 16 RAM chips that make up a 32G × 64
 memory that uses high interleaving. 
 (Note: This means that each word is 64 bits in size and there are 32G of these words.)
1. a) How many RAM chips are necessary?

1 gb = 2^30 bytes

number of bits desired / number of bits per chip
2^5*2^30*2^6/(2^30*2^4) = 2^7 = 128 
so 128 chips.

 2. b) Assuming four chips per bank, how many banks are
 required?
  X * 64 = 32 * 64
32?
128/4 = 32

 3. c) How many lines must go to each chip?

Each chip has 2^30 addresses.
30.
Each line represents a single bit in the binary address.
A 30-bit binary address is required to uniquely identify each of the 2^30 memory locations (rows) within the chip.

 4. d) How many bits are needed for a memory address, assuming
 it is word addressable?
 word is 64 bits.
there are 128 chips.
32 banks.
in each bank, we have 2^30 addresses.
number of addresses = 2^5*2^30 = 2^35
so 35 bits are needed to address main memory.

 5. e) For the bits in part d, draw a diagram indicating how many
 and which bits are used for chip select, and how many and
 which bits are used for the address on the chip.
In high order interleaving, the leftmost bits (most significant bits) denote the bank.
There are 32 banks. 
so the first 5 bits denote the bank and the 30 bits after that denote the address on each RAM chip.
// in reality, this address spans multiple lines on a 1G x 16 RAM chip.
https://www.geeksforgeeks.org/types-of-memory-interleaving/

 6. f) Redo this problem assuming that low-order interleaving is
 being used instead.
the final five bits denote the bank and the remaining address bits (30) left to that denote the offset in the chip.



13. A digital computer has a memory unit with 24 bits per word. The
 instruction set consists of 150 different operations. All instructions
 have an operation code part (opcode) and an address part (allowing
 for only one address). Each instruction is stored in one word of
 memory.
    
a) How many bits are needed for the opcode?
log2(150) => 8

b) How many bits are left for the address part of the
 instruction?
16

c) What is the maximum allowable size for memory?
16 bits resevered for memory address implies that 2^16 memory addresses are possible.

d) What is the largest unsigned binary number that can be accommodated in one word of memory?
The subtraction of 1 is necessary because the range of numbers represented by n-bit unsigned binary numbers starts from 0, not 1.
2^24-1



 14. A digital computer has a memory unit with 32 bits per word. The
 instruction set consists of 110 different operations. All instructions
 have an operation code part (opcode) and two address fields: one for a
 memory address and one for a register address. This particular system
 includes eight general-purpose, user-addressable registers. Registers
 may be loaded directly from memory, and memory may be updated
 directly from the registers. Direct memory-to-memory data
 movement operations are not supported. Each instruction is stored in
 one word of memory.

1. a) How many bits are needed for the opcode?
 log2(110)=>7
 
 2. b) How many bits are needed to specify the register?
 2^3=8 => 3
 3. c) How many bits are left for the memory address part of the
 instruction?
 22
 4. d) What is the maximum allowable size for memory?
 2^22 => 4M x 32 memory = L x W

 5. e) What is the largest unsigned binary number that can be
 accommodated in one word of memory?
 2^32-1


 15. Assume a 2^20 byte memory.
 a) What are the lowest and highest addresses if memory is
 byte addressable?
0 and 2^20 - 1
 b) What are the lowest and highest addresses if memory is
 word addressable, assuming a 16-bit word?
 2^20/2 => 2^19
 0 and 2^19-1

 c) What are the lowest and highest addresses if memory is
 word addressable, assuming a 32-bit word?
 32 bits = 4 bytes
 2^20 bytes / 4 bytes = 2^18
 0 and 2^18-1
 
 16. Suppose the RAM for a certain computer has 256M words, where
 each word is 16 bits long.

 1. a) What is the capacity of this memory expressed in bytes?
 convert to bits of memory then to bytes

 256M x 16 bits = 2^8 * 2^20 * 2^4 bits = 2^32 bits
 2^32 bits * 1byte/2^3 bits = 2^29 bytes 
 
 b) If this RAM is byte addressable, how many bits must an
 address contain?
 
 29
 
 c) If this RAM is word addressable, how many bits must an
 address contain?
 
We need the number of bits required to address each word.
256M x 16 / 16
256 * 2^20 = 2^28 => 28 bits
 
 17. You and a colleague are designing a brand-new microprocessor
 architecture. Your colleague wants the processor to support 509
 different instructions. You do not agree; you would like to have many
 fewer instructions. Outline the argument for a position paper to
 present to the management team that will make the final decision. Try
 to anticipate the argument that could be made to support the
 opposing viewpoint.

 Fewer instructions would be consistent with a Reduced Instruction Set Computer (RISC) philosophy.
 This would simplify instructions, allow them to be executed faster, and reduce the memory size required to 
 store opcodes. Note: in pure RISC architectures, each operation performs just one operation and each instruction has uniform size.

 However, Complex Instruction Set Computers (CISC) allow for greater ease of programming and provide a richer language 
 or ISA for development purposes. Note : in CISC insructions may perform multiple operations, theraby slowing down the system.

From the above, it's clear than it is best to adapt a RISC architecture when it's possible to do so.

18. Given a memory of 2048 bytes consisting of several 64 × 8 RAM
 chips, and assuming byte-addressable memory, which of the following
 seven diagrams indicates the correct way to use the address bits?
 Explain your answer.
 
 we need 2048/64 chips. 32 = 2^5
5 bits needed to address chip.
64 = 2^6 => 6 bits needed for offset in chip.
So, we need 11 bits for each memory address.

e is the answer.
  
 

19. Explain the steps in the fetch–decode–execute cycle. Your
 explanation should include what is happening in the various registers.



The f-d-e cycle explains what happens when a computer executes the instruction of a program.
It does so by transfering an instruction from main memory to the IR register.
The CPU then decodes the instructions by determining its opcode.
The CPU then obtains any needed operands if needed and executes the instruction by perfoming operations indicated by instruction.


In detail:
Fetch:
1) The address of the PC (instruction to be executed) is copied to to memory address register.
2) The address stored in mar and the instruction is moved to the instruction register (IR).
3) The PC is incremented to point to address of next instruction.
Decoded:
5) The opcode is decoded by the control unit to determine the function of the instruction.
4) If the instruction has an operand, the address portion of the IR is then copied to MAR.
Execute:
5) Any needed operand data is moved to the MBR and finally the instruction is executed
6) if logic-math opertions are involed, alu is used or, for memory operations, data is transferred to/from memory or registers.





 
 In the fetch cycle, an instruction is moved from memory into the memory buffer register inside the cpu.
 The instruction is then decode, which allows the control unit to give proper signals to the alu.
 The ALu finaly is the part of the CPU which executes the insruction. After which the PC register is incremented.
 
 
 20. Combine the flowcharts that appear in 
Figures 4.11 and 
that the interrupt checking appears at a suitable place.
 21.    
4.12 so
 21. Explain why, in MARIE, the MAR is only 12 bits wide and the AC
 is 16 bits wide. (Hint: Consider the difference between data and
 addresses.)
 22.    
22. List the hexadecimal code for the following program (hand
assemble it).
23. 
◆
 23. What are the contents of the symbol table for the preceding
 program?
 24.    
24. Consider the MARIE program below.
 1. a) List the hexadecimal code for each instruction.
 2. b) Draw the symbol table.
 3. c) What is the value stored in the AC when the program
 terminates?
 25.    25. Consider the MARIE program below.
1. a) List the hexadecimal code for each instruction.
 2. b) Draw the symbol table.
 3. c) What is the value stored in the AC when the program
 terminates?
 26.    26. Given the instruction set for MARIE in this chapter, do the
 following.
 Decipher the following MARIE machine language instructions (write
 the assembly language equivalent):
 1. 
◆
 a) 0010000000000111
 2.   b) 1001000000001011
 3.   c) 0011000000001001
 27.    27. Write the assembly language equivalent of the following MARIE
 machine language instructions:
 1. a) 0111000000000000
 2. b) 1011001100110000
 3. c) 0100111101001111
28.    28. Write the assembly language equivalent of the following MARIE
 machine language instructions:
 1. a) 0000010111000000
 2. b) 0001101110010010
 3. c) 1100100101101011
 29.    
29. Write the following code segment in MARIE’s assembly
 language:
 30.    30. Write the following code segment in MARIE’s assembly
 language:
 31.    
31. What are the potential problems (perhaps more than one) with
 the following assembly language code fragment (implementing a
 subroutine) written to run on MARIE? The subroutine assumes that
 the parameter to be passed is in the AC and should double this value.
 The Main part of the program includes a sample call to the
 subroutine. You can assume this fragment is part of a larger program.
 32. 
◆
 32. Write a MARIE program to evaluate the expression A × B + C ×
 D.
 33.    
33. Write the following code segment in MARIE assembly language:
34.    
34. Write the following code segment in MARIE assembly language.
 (Hint: Turn the for loop into a while loop.)
 35.    35. Write a MARIE program using a loop that multiplies two
 positive numbers by using repeated addition. For example, to multiply
 3 × 6, the program would add 3 six times, or 3 + 3 + 3 + 3 + 3 + 3.
 36.    
37.    
36. Write a MARIE subroutine to subtract two numbers.
 37. A linked list is a linear data structure consisting of a set of nodes,
 where each one except the last points to the next node in the list.
 (Appendix A provides more information about linked lists.) Suppose
 we have the set of five nodes shown in the illustration below. These
 nodes have been scrambled up and placed in a MARIE program as
 shown below. Write a MARIE program to traverse the list and print
 the data in the order it is stored in each node.
 MARIE program fragment:
38.    38. More registers appear to be a good thing, in terms of reducing
 the total number of memory accesses a program might require. Give
 an arithmetic example to support this statement. First, determine the
 number of memory accesses necessary using MARIE and the two
 registers for holding memory data values (AC and MBR). Then
 perform the same arithmetic computation for a processor that has
 more than three registers to hold memory data values.
 39.    
39. MARIE saves the return address for a subroutine in memory, at
 a location designated by the JnS instruction. In some architectures,
 this address is stored in a register, and in many it is stored on a stack.
 Which of these methods would best handle recursion? Explain your
 answer. (Hint: Recursion implies many subroutine calls.)
 40.    40. Write a MARIE program that performs the three basic stack
 operations: push, peek, and pop (in that order). In the peek operation,
 output the value that’s on the top of the stack. (If you are unfamiliar
 with stacks, see Appendix A for more information.)
 41.    
42.    
43.    
41. Provide a trace (similar to the one in 
4.3.
 42. Provide a trace (similar to the one in 
4.4.
 Figure 4.14) for 
Figure 4.14) for 
Example
 Example
 43. Suppose we add the following instruction to MARIE’s ISA:
This instruction increments the value with effective address
 “Operand,” and if this newly incremented value is equal to 0, the
 program counter is incremented by 1. Basically, we are incrementing
 the operand, and if this new value is equal to 0, we skip the next
 instruction. Show how this instruction would be executed using RTN.
 44.    
44. Suppose we add the following instruction to MARIE’s ISA:
 This instruction will jump to the address calculated by adding the
 given address, X, to the contents of the accumulator. Show how this
 instruction would be executed using RTN.
 45.    45. Suppose we add the following instruction to MARIE’s ISA:
 This instruction will jump to the address calculated by going to
 address X, then adding the value found there to the value in the AC.
 Show how this instruction would be executed using RTN.
 46.    
46. Draw the connection of MARIE’s PC to the datapath using the
 format shown in 
Figure 4.15.
 47.    47. The table below provides a summary of MARIE’s datapath
 control signals. Using this information, 
Table 4.9, and 
Figure 4.20 as
 guides, draw the control logic for MARIE’s Load instruction.
 Register
 Signals
 P2P1P0 
(Read)
 Mem
 ory
 000
 MA
 R
 P
 C
 MB
 R
 A
 C
 I
 N
 OU
 T
 I
 R
 001 01
 0 011 10
 0 
10
 1 110 11
 1
 P5P4P3 
(Write)
48.    48. The table in Exercise 47 provides a summary of MARIE’s
 datapath control signals. Using this information, 
Table 4.9, and
 Figure 4.20 as guides, draw the control logic for MARIE’s JumpI
 instruction.
 49.    
49. The table in Exercise 47 provides a summary of MARIE’s
 datapath control signals. Using this information, 
Table 4.9, and
 Figure 4.20 as guides, draw the control logic for MARIE’s StoreI
 instruction.
 50.    50. Suppose some hypothetical system’s control unit has a ring
 (cycle) counter consisting of some number of D flip-flops. This system
 runs at 1GHz and has a maximum of 10 microoperations/instruction.
 1. a) What is the maximum frequency of the output (number of
 signal pulses) output by each flip-flop?
 2. b) How long does it take to execute an instruction that requires
 only four microoperations?
 51.    
51. Suppose you are designing a hardwired control unit for a very
 small computerized device. This system is so revolutionary that the
 system designers have devised an entirely new ISA for it. Because
 everything is so new, you are contemplating including one or two
 extra flip-flops and signal outputs in the cycle counter. Why would
 you want to do this? Why would you not want to do this? Discuss the
 trade-offs.
 52.    52. Building on the idea presented in Exercise 51, suppose that
 MARIE has a hardwired control unit and we decide to add a new
 instruction that requires eight clock cycles to execute. (This is one
 cycle longer than the longest instruction, JnS.) Briefly discuss the
 changes that we would need to make to accommodate this new
 instruction.
 53.    53. Draw the timing diagram for MARIE’s Load instruction using
 the format of 
Figure 4.16.
 54.    54. Draw the timing diagram for MARIE’s Subt instruction using the
 format of 
Figure 4.16.
55.    
55. Draw the timing diagram for MARIE’s AddI instruction using
 the format of 
Figure 4.16.
 56.    56. Using the coding given in 
Table 4.9, translate into binary the
 mnemonic microcode instructions given in 
Figure 4.23 for the fetch
decode cycle (the first nine lines of the table).
 57.    
58.    
57. Continuing from Exercise 56, write the microcode for the jump
 table for the MARIE instructions for Jump X, Clear, and AddI X. (Use
 all ones for the Destination value.)
 58. Using 
Figure 4.23 as a guide, write the binary microcode for
 MARIE’s Load instruction. Assume that the microcode begins at
 instruction line number 0110000 .
 2
 59.    59. Using 
Figure 4.23 as a guide, write the binary microcode for
 MARIE’s Add instruction. Assume that the microcode begins at
 instruction line number 0110100 .
 2
 60.    60. Would you recommend a synchronous bus or an asynchronous
 bus for use between the CPU and the memory? Explain your answer.
 61. * 61. Pick an architecture other than those covered in this chapter. Do
 research to find out how your architecture deals with the concepts
 introduced in this chapter, as was done for Intel and MIPS.
 62.    
62. Which control signals should contain a one for each step in
 executing the JumpI instruction?
 StepRTNTimeP P P P P P CIncrPCM M L
 5 4 3 2 1 0 r
 Fetch
 Decode 
IR[15 - 12]
 Get 
MAR ← PC T
 0
 IR ← 
M[MAR]
 PC ← PC + 
1
 MAR ← 
T
 1
 T
 2
 T
 r
 w ALT
operand
 IR[11 – 0]
 3
 Execute
 63.    
MBR ← 
M[MAR]
 T
 4
 PC ← MBR T
 5
 63. Which control signals should contain a one for each step in
 executing the StoreI instruction?
 StepRTNTimeP P P P P P CIncrPCM M L
 5 4 3 2 1 0 r
 Fetch
 Decode 
IR[15-12]
 Get 
operand
 Execute
 MAR ← PC T
 0
 IR ← 
M[MAR]
 PC ← PC + 
1
 MAR ← 
IR[11 – 0]
 MBR ← 
M[MAR]
 MAR ← 
MBR
 T
 1
 T
 2
 T
 3
 T
 4
 T
 5
 MBR ← AC T
 6
 M[MAR] ← 
MBR
 T
 7
 r
 w ALT
T
 8
 64.    
64. The PC ← PC + 1 microoperation is executed at the end of every
 fetch cycle (to prepare for the next instruction to be fetched).
 However, if we execute a Jump or a JumpI instruction, the PC
 overwrites the value in the PC with a new one, thus voiding out the
 microoperation that incremented the PC. Explain how the
 microprogram for MARIE might be modified to be more efficient in
 this regard.
 65.    65. Write a MARIE program to allow the user to input eight integers
 (positive, negative, or zero) and then find the smallest and the largest
 and print each of these out.
 66.    
66. Write a MARIE program to sum the numbers 1 + 2 + 3 + 4 + … +
 N, where the user inputs N, and print the result.
 67.    67. Write a MARIE subroutine that will multiply two numbers by
 using repeated addition. For example, to multiply 2 × 8, the program
 would add 8 to itself twice. (If the larger of the two numbers is chosen
 to be added to itself, the subroutine will run more quickly.)
 68.    68. Write a MARIE program to raise an integer to a given power,
 using the subroutine written in problem 67