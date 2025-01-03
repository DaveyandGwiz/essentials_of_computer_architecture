
CHAPTER 9 Alternative Architectures

 We then look
 at alteratives to RISC and CISC by revisting VLIW (which
 uses instruction-level parallelism) and introducing
 vector processors. Finally, we provide a brief
 introduction to multiprocessor systems and some
alternative approaches to parallelism, including systolic
 arrays, dataflow computing, neural networks, and
 quantum computing

    VLIW architecture is designed to exploit instruction-level parallelism (ILP) by packing multiple operations into a single, long instruction word.Each "word" contains several operations that the hardware executes simultaneously.
    
    EPIC is an evolution of VLIW, emphasizing explicit parallelism.

9.2   RISC MACHINES
 The original idea was to provide a set of minimal instructions that could carry out all essential operations: data movement, ALU operations, and branching. 
 Only explicit load and store instructions were
 permitted access to memory

 Complex instruction set designs were motivated by the high cost of memory. Having more complexity packed
 into each instruction meant that programs could be smaller, thus occupying less storage.

Shortening the clock cycle, when possible, results in improved  performance for RISC as well as CISC. Otherwise, CISC  machines increase performance by reducing the number of instructions per program. RISC computers minimize  the number of cycles per instruction. Yet both architectures can produce identical results in  approximately the same amount of time. At the gate level, both systems perform an equivalent quantity of work. 
So what’s going on between the program level and the gate level?

CISC uses microcode which tells cpu how to perform instruction. 
Microcode increases the time of decoding process.

Most RISC instructs. take one clock cycle.
To accomplish this speedup, microprogrammed control is replaced by hardwired control, which is faster at executing instructions.











