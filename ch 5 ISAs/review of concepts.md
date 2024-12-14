
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

32
54
76
98
Endian ness matters as certain operations can be optimized depending on whether the isa is msb first or not.


 5. We can design stack architectures, accumulator architectures, or
 general-purpose register architectures. Explain the differences
 between these choices and give some situations where one might be
 better than another.

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



 7. What are the pros and cons of fixed-length and variable-length
 instructions? Which is currently more popular?

 Variable length instructs allow for more operations.
 Fixed length are faster to decode and execute.

 8. How does an architecture based on zero operands ever get any data
 values from memory?

 yes using PUSH commands.

 9. Which is likely to be longer (have more instructions): a program
 written for a zero-address architecture, a program written for a one
address architecture, or a program written for a two-address
 architecture? Why?

 two address as it allows more operands to be performed on per instructions thus reducing steps in execution.

 10. Why might stack architectures represent arithmetic expressions in
 reverse Polish notation?

 as the expressions have an order of operations that correspond to the push/pop ooperations which can be performed on a stack.

 11. Name the seven types of data instructions and explain each.

Data Transfer	    Move data between registers, memory, I/O	LOAD, STORE, MOVE, PUSH
Arithmetic	        Perform arithmetic operations	            ADD, SUB, MUL, DIV
Logical	            Perform bitwise operations	                AND, OR, XOR, NOT
Shift and Rotate	Shift/rotate bits in operands	            SHL, SHR, ROL, ROR
Comparison	Compare values and set flags	                    CMP, TEST
Control Transfer	Change program flow	                        JMP, BRANCH, CALL, RET
Input/Output (I/O)	Transfer data to/from peripheral devices	IN, OUT


12. What is the difference between an arithmetic shift and a logical shift?

The difference between an arithmetic shift and a logical shift lies in how they handle the sign bit (most significant bit) for signed numbers and how bits are shifted into the empty positions.


 13. Explain what it means for an instruction set to be orthogonal.

In computer engineering, an orthogonal instruction set is an instruction set architecture where all instruction types can use all addressing modes.

 14. What is an address mode?

An addressing mode defines how operands are located and accessed for an instruction. 

 15. Give examples of immediate, direct, register, indirect, register
 indirect, and indexed addressing.

Addressing Mode	        Example	            Explanation
Immediate Addressing	LOAD R1, #10	    Operand value is directly specified in the instruction.
Direct Addressing	    LOAD R1, 1000	    Memory address of the operand is specified.
Register Addressing	    ADD R1, R2	        Operand is stored in a CPU register.
Indirect Addressing	    LOAD R1, [1000]	    Memory address contains the address of the operand.
Register Indirect	    LOAD R1, [R2]	    Register contains the memory address of the operand.
Indexed Addressing	    LOAD R1, 1000(R2)	Effective address = Base address + Index (offset).

 16. How does indexed addressing differ from based addressing?

In base addressing, the base is dynamic (from a register) and the offset is fixed (in the instruction).
In indexed addressing, the base is fixed (in the instruction), and the index is dynamic (from a register).

 17. Why do we need so many different addressing modes?

We need multiple addressing modes because they provide the flexibility, efficiency, and compactness required to support:

Different types of data (constants, variables, arrays, pointers).
Various operations (arithmetic, loops, dynamic structures).
Optimized program execution and instruction encoding.

 18. Explain the concept behind instruction pipelining.

Instruction pipelining works like an assembly line. It increases throughput by allowing multiple instructions to be a various stages of execution at a given point in time. For example, and instruction can be decoded while another is being fetched or executed.

 19. What is the theoretical speedup for a four-stage pipeline with a 20ns
 clock cycle if it is processing 100 tasks?

speedup = (time w/o pipelining)/(time w/ pipeling)

Time without pipelining = Number of Tasks × Number of Stages  × Clock Cycle Time
=> 100 * 4 * 20ns

Time with pipelining = (Number of Stages + Number of Tasks−1) × Clock Cycle Time
=> (4+100−1) × 20ns

Speedup= 2060ns /8000ns ≈ 3.88

 20. What are the pipeline conflicts that can cause a slowdown in the
 pipeline?

Dependecies, for example when the output of some instructions are the operands of others.

 21. What are the two types of ILP, and how do they differ?
 ILP involves the use of techniques to allow the execution of overlapping instructions. Essentially, we want to allow
 more than one instruction within a single program to execute concurrently. There are two kinds of ILP. The
 
 first type decomposes an instruction into stages and overlaps these stages. This is exactly what pipelining
 does. 
 
 The second kind of ILP allows individual instructions to overlap (that is, instructions can be executed at the same time by the processor itself)


 22. Explain superscalar, superpipelining, and VLIW architectures.
 Superscalar architectures perform multiple operations at the same time by employing parallel pipelines. 
 Superpipelining architectures combine superscalar concepts with pipelining by dividing the pipeline stages into smaller pieces.

 VLIW architecture allows each instruction can specify multiple scalar operations (the compiler puts multiple operations into a single instruction).


 23. List several ways in which the Intel and MIPS ISAs differ. Name
 several ways in which they are the same.

Differences Between Intel and MIPS ISAs
Feature	Intel ISA (CISC)	                                            MIPS ISA (RISC)
Instruction Set	Complex Instruction Set Computer (CISC).	            Reduced Instruction Set Computer (RISC).
Instruction Length	Variable-length instructions (1–15 bytes).	        Fixed-length instructions (32 bits).
Instruction Complexity	Supports complex, multi-step instructions.	    Simple instructions performing one task.
Number of Registers	Few general-purpose registers (e.g., 16 in x86-64).	Large number of general-purpose registers (32 in MIPS).
Memory Access
	Allows memory-to-memory operations.	                                Load-store architecture: operands must be in registers.
Addressing Modes	
    Many addressing modes (e.g., direct, indirect, base-index).	        Fewer addressing modes (e.g., immediate, direct, indexed).
Endianness
	Little-endian (default).	                                        Supports both big-endian and little-endian.

 24. Explain Java bytecodes.

Java bytecode is an intermediate, low-level representation of Java source code generated by the Java compiler (javac) from .java files. It is a platform-independent code that can be executed on any system with the Java Virtual Machine (JVM).

 25. Give an example of a current stack-based architecture and a current
 GPR-based architecture. How do they differ?

Stack-Based Architecture: Operands are implicitly handled using a stack (e.g., JVM).
GPR-Based Architecture: Operands are explicitly stored in registers for fast access (e.g., ARM, x86-64).
Stack-based systems are simpler but slower, whereas GPR-based architectures dominate modern computing due to their efficiency and performance advantages.






