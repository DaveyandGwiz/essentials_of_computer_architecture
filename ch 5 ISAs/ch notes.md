

- CH 5 A CLoser Look and ISAs


5.1 Instruction Formats

an inst. has an opcode and 0+ operands.
ISAs differ in:
    operand storage
    number of operands per instruction
    operand location
    operations
    type and size of operands

Short instructs are decoded quickly but limit the number of instructs.
Instructs of fixed length are decoded quickly but waste space.
fixed length doesnt mean fixed operands (expanding opcodes)
How should the bytes of a word be ordered?
How should operands be stored?
Number of registers?

Endians, expanding opcodes, and register organization are addressed further.

5.2.2 Endians

endian refers to byte order
Big endian - MS byte is stored first
Litte Endian - MS byte is stored last

Little end. allows odd address read/writes.
networks are big endian.

5.2.3 Internal storage in CPU: Stack vs Registers

How does the CPU store data?

three choices:
a) Stack
b) Accumulator
c) GP registers

accumulator - one operand in the accumulator register. Traffic is high because its temporary storage.

GPR - most common arch. But becaus eoperands must be named, using registers require long instructions, hence longer fetch and decode times. 

General purpose achitectures:
1) memory-memory
may have 2 or 3 operands in memory.
Instruction can be carried out without an operand in a register.
2) Register-memory
at least one operand is in register and one in memory
3) load-store
Data must be moved to registers before operations can be performed on those operands.

GPR Architectures diveded by the number of operands and how operands are addressed.

5.2.4 Number of operands and instruction Length

Tradiotional architectures specify max number of operands or addresses.

Instructions can be formatted in two ways:
a) Fixed length
b) Variable length

Instructions always need to be word aligned.

The following are some common instruction formats:

 OPCODE only (zero addresses)
 OPCODE + 1 address (usually a memory address)
 OPCODE + 2 addresses (usually registers, or one register and one
 memory address)
 OPCODE + 3 addresses (usually registers, or combinations of
 registers and memory)

Fix Notation:

 X + Y is in infix notation
 + X Y is in prefix notation
 X Y + is in postfix notation

example 5.2
Convert 12/(4+2) to postfix notation

PEMDAS

12/ 42+
=> 12 4 2 + /

example 5.3 
Prefix notatation

(2+3)-6/3
(+ 2 3 ) - / 3 6
=> - + 2 3 /3 6 

Postfix

(2 3 +) - 6 3 /
=> 2 3 + 6 3 / -


EXAMPLE 5.5
 Consider the following infix expression:
(X + Y) × (W − Z) + 2
 This expression, written in RPN (postfix) notation, is:


XY+  x  WZ- + 2
=>
XY+ WZ- x 2 + 

examples are given of pushing expressions onto the stack (pg 751).

 EXAMPLE 5.6
 Convert the RPN expression: 8 6 + 4 2 − / to infix notation

(8+6) / (4-2)

Example 5.7 

 Z = (X × Y) + (W × U)

 Normally, when three operands are allowed, at least one operand is a reg and
 the first operand is usually the destination.

 Here's how to evaluate the the expression for Z using three-address instructions (insts. that have three operands).

 mult R1, X, Y
 mult R2, W, U
 add Z, R1, R2

When using two-address instructions, normally one
 address specifies a register. The other operand could be either a register
 or a memory address. Using two-address instructions,
 our code becomes:

 Load R1, X
 Mult R1, Y
 Load R2, W
 Mult R2, U
 add  R1, R2
 store Z, R1
 // note: first operand also acts as the destination

One-address instructions (such as marie)
The accumulator is implied as the destination.

Load X   // X is loaded in accumulator
mult Y   // Y is multiplied by value in acc. and the result is stored in act
store Temp // value in acc. (x*y) is stored in TEMP
Load W
mult U     // acc. = W*U
add Temp   // (x*y) is added to acc. (w*u) and the result is stored in acc.
store Z    // (X × Y) + (W × U) is stored in variable Z

Stack based archs. have zero-address instructions.

ex. 5.5
(X + Y) × (W − Z) + 2 to RPN notatation
(xy+)x(wz-) + 2 
xy+ wz- x + 2
xy+ wz- x 2 +

ex. 5.6
Convert the RPN expression:
 8 6 + 4 2 − /
 to infix notation.

(8+6) / (4-2)

ex. 5.7
 Suppose we wish to evaluate the following expression:
 Z = (X × Y) + (W × U)

three-operands ISA:

mult r1, x, y
mult r2, w, u
add z, r1, r2

two-operands ISA:
// assume first address stores result of operation.
// When using two-address instructions, normally one
 address specifies a register. The other operand could be either a register
 or a memory address. 

load r1, x
mult r1, y
load r2, w
mult r2, u
add r1, r2
store z, r1

5.2.5 Expanding Opcodes

 Expanding opcodes represent a compromise between the
 need for a rich set of opcodes and the desire to have
 short opcodes, and thus short instructions. 

The way to have expanding opcodes is to have an escape opcode at wich additional bits are understood to contain more bit to name opcode.

In this way, we can use multiple formats when bits in a register can make up an address or an opcode for a given instruction.

EXAMPLE 5.8
 Suppose we wish to encode the following instructions:
 15 instructions with three addresses
 14 instructions with two addresses
 31 instructions with one address
 16 instructions with zero addresses
 Can we encode this instruction set in 16 bits? The answer
 is yes, as long as we use expanding opcodes. The
 encoding is as follows

0000 address address
...
1111 0000 address

ex. 5.9

refer to ex. 5.8

are there enough bit patterns for the above instructions?
15 * 2^12 = 61440
14 * 2^8 = 3584
14 * 2^4 = 496
and then there will be 16 no address instructions, 2^4

the total # of bit patterns is 65536
16 bit instructions => 2^16 = 65536
So we have enough bit patterns for the inst. requirements.


ex. 10 

Is the follwoing pssible?
12 bit inst.
operand uses 3 bits.

4 ints with 3 regs
255 ints with one reg
16 insts with zero regs.

Pitpatterns needed for three regs.
4 * 2^9
Bit patterns needed for one operand
255 * 2^3 
Bit patterns needed for zero operands
16

2^12 (total possible bit patterns) vs 4*2^9+255*2^3+16
4096 vs 4104
We dont have enough bit patterns for this ISA.

ex. 5.11
Given 8-bit insts is the following possible?

3 insts with 2 3-bits operand
2 insts with one 4 bit operand
4 insts with one 3-bit operand

Calculate the number of bit patterns needed:
3*2^3*2^3
2*2^4
4*2^3
= 256 bit patterns needed for instr. set.

How many bit patterns does an 8bit reg contain? 2^8 = 256
Exactly enough!


5.3 Instruction Types


data movement, arithmatic, boolean, bit manipulation, I/O, transfer of control, and special purpose.

5.3.1 Data movement

Move from mem to reg, from reg to reg , etc.

5.3.2 Artimetic

Diff data szies.
Floats and integers.

5.3.3 Boolean

Commonly control I/O devices.

5.3.1 Bot Manipulation

5.3.6

Like branch.
Can be conditional or not.

5.4 Addrssing

Two improtant addressing issues: addresing modes and data that can be addressed.

5.4.1 Data Types

Integers, strings, pointers.
5.4.2 Address Modes

bits code be the address of an operand or a pointer to a physical mem address.

Immediate addressing - the data to be operated on
 is part of the instruction

Direct Addressing: Operand field = actual memory address (1 memory access).
Register Addressing: Value in register.
Indirect Addressing: Operand field = pointer to memory address (2 memory accesses).
Indexed addressing is an addressing mode where the effective address of the operand is calculated by adding a base address (specified in the instruction) to an index value stored in a register (typically called an index register).
    Effective Address=Base Address+Index Register

Example of addressing Modes.

Say R1 contains ox800

Memory:

address - Value


Memory Address	Value at Address
0x800	0x900
0x900	0x1000
0x1000	0x500
0x1100	0x700

Using various addressing modes, we'll see the results.
Immdiate:  0x800
Direct:    0x900
Indirect:  0x800
Indexed:   0x500

 TABLE 5.2 A Summary of the Basic Addressing Modes
 Addressing ModeTo Find Operand
 
 Immediate 
    Operand value present in the instruction
 Direct 
    Effective address of operand in address field
 Register 
    Operand value located in register
 Indirect 
    Address field points to address of the actual operand
 Register indirect 
    Register contains address of actual operand
 Indexed or based
    Effective address of operand generated by adding value in address field to contents of a register
 Stack Operand located on stack.



5.5 Instruction Pipelining

Each pulse of internal clocj is used to control a step of the f-d-e cycle.
CPUs can control smaller detials in one step so some can be done in parallel.

Suppose the fetch−decode−execute cycle were broken
 into the following “mini-steps”:
   1. Fetch instruction
   2. Decode opcode
   3. Calculate effective address of operands
   4. Fetch operands
   5. Execute instruction
   6. Store result





