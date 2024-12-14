
REVIEW OF ESSENTIAL TERMS AND CONCEPTS

 1. Explain the difference between register-to-register, register-to
memory, and memory-to-memory instructions.

    a) register-regiter
        operands for instructions are all stored in memory before intruct can be executed.
    b) register-memory
        At least one operand must be in register and another operand can be in memory.
    c) memory-to-memory
        Instructs may have 2 or 3 operands in memory.


 2. Several design decisions exist with regard to instruction sets. Name
 four and explain.

a) Byte order
    bytes of instructs can be stored with the most significant bits first (big endian) or least significant first (little endian).
b) CPU storage
    CPUs can store data for insturcts in a stack, accumulator, or registers.
    An accumulator, like mariea, is a register which implictly stores the result of operations.
c) Instruct Format
    Insructs can have a fixed length or variable length. Variable length requires expanding opcodes, where opcodes have diff sizes.
d) RISC or CISC
    The ISA can support a restricted or complex set of instructions.
    RISC reduces the number of operations and optimizes perfomance while CISC allows more instructs for programmers.
    


 3. What is an expanding opcode?

 Expanding opcodes represent a compromise between the
 need for a rich set of opcodes and the desire to have
 short opcodes, and thus short instructions. 

The way to have expanding opcodes is to have an escape opcode at wich additional bits are understood to contain more bit to name opcode.

In this way, we can use multiple formats when bits in a register can make up an address or an opcode for a given instruction.


 4. If a byte-addressable machine with 32-bit words stores the hex value
 98765432, indicate how this value would be stored on a little endian
 machine and on a big endian machine. Why does “endian-ness”
 matter?

98 76 54 32
In little endian, the least sig bit are stored first.
a 32 bit word contains 4 bytes.

Address - value
---------------
0x00 -   32
0x01 -   54
0x10 -   76
0x11 -   98


 5. We can design stack architectures, accumulator architectures, or
 general-purpose register architectures. Explain the differences
 between these choices and give some situations where one might be
 better than another.

See above discussion.

Stack:  
    No need to specify operand locations explicitly, as operations always occur on the top of the stack.
    Instructions are compact and require fewer bits since there are no explicit addresses.
    Advantages:
    Simple to design and implement.
    Reduces instruction size (compact encoding).
    Disadvantages:
    Limited performance: Accessing non-top elements requires additional stack operations.
Accumulator Architecture:
    Description:
        Uses a single register, called the accumulator, to store one operand and implicitly hold the result of operations.
        Instructions assume the accumulator as one of the operands.
    Features:
        Compact instructions: Only one operand needs to be specified (the other is the accumulator).
        Simplest architecture to implement.
    Advantages:
        Requires minimal hardware (single register).
    Disadvantages:
        Slower for complex computations, as intermediate results must be stored back to memory frequently.
        High memory traffic due to constant loading/storing of operands.
    
General-Purpose Register (GPR) Architecture:
    Description:
        Uses multiple general-purpose registers to store operands and results explicitly.
        Instructions specify registers for source and destination operands.
    Features:
        Registers allow faster access than memory or stack.
        Instructions explicitly reference registers, which provides flexibility.
    Advantages:
        Efficient: Reduces memory accesses by keeping operands in registers.
    Flexibility: Allows complex logic and parallelism by using multiple registers.
        Faster execution due to reduced load/store overhead.
    Disadvantages:
        Instructions can be larger because they need to specify register addresses.

 6. How do memory-memory, register-memory, and load-store
 architectures differ? How are they the same?

All these architectures involve data movement between registers and memory as part of the instruction execution.
Ultimately, computations require the CPU to operate on registers, as registers are much faster than memory.
NOTE: All architectures use registers for computation, but they differ in how operands are accessed and where results are stored.

Memory-Memory: Allows operations directly on memory; simple for programmers but slow and inefficient.
Register-Memory: Balances memory and register usage; efficient but still involves some memory traffic.
Load-Store: Operates solely on registers after loading operands; most efficient and commonly used in modern RISC architectures.


 7. What are the pros and cons of fixed-length and variable-length
 instructions? Which is currently more popular?

Fixed length are executed faster while variable length allow a more complex instruction set.
Expanding are more common.

 8. How does an architecture based on zero operands ever get any data
 values from memory?


 9. Which is likely to be longer (have more instructions): a program
 written for a zero-address architecture, a program written for a one
address architecture, or a program written for a two-address
 architecture? Why?


 10. Why might stack architectures represent arithmetic expressions in
 reverse Polish notation?


 11. Name the seven types of data instructions and explain each

12. What is the difference between an arithmetic shift and a logical shift?


 13. Explain what it means for an instruction set to be orthogonal.


 14. What is an address mode?


 15. Give examples of immediate, direct, register, indirect, register
 indirect, and indexed addressing.


 16. How does indexed addressing differ from based addressing?


 17. Why do we need so many different addressing modes?


 18. Explain the concept behind instruction pipelining.


 19. What is the theoretical speedup for a four-stage pipeline with a 20ns
 clock cycle if it is processing 100 tasks?


 20. What are the pipeline conflicts that can cause a slowdown in the
 pipeline?


 21. What are the two types of ILP, and how do they differ?


 22. Explain superscalar, superpipelining, and VLIW architectures.


 23. List several ways in which the Intel and MIPS ISAs differ. Name
 several ways in which they are the same.


 24. Explain Java bytecodes.


 25. Give an example of a current stack-based architecture and a current
 GPR-based architecture. How do they differ?














