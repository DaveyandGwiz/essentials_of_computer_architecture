

REVIEW OF ESSENTIAL TERMS AND CONCEPTS

 1. Why was the RISC architecture concept proposed?

Reduced istructions sets seek to limit the ISAM to the minimal amount of instructions needed.
This reduces the need for process times of decode which can increase the time of instruction execution.

2. Why is a RISC processor easier to pipeline than a CISC processor?

RISC processors are easier to pipeline than CISC processors because RISC instructions are simpler, fixed in size, and typically execute in a single clock cycle. This uniformity allows each pipeline stage (fetch, decode, execute, etc.) to process one instruction at a time without delays caused by varying instruction lengths or complexities. In contrast, CISC processors often have more complex and variable-length instructions, making it harder to maintain a steady flow through the pipeline. These features of RISC processors enable efficient parallelism and sequencing of operations, enhancing overall performance.

 3. Describe how register windowing makes procedure calls more efficient.

Register windowing makes procedure calls more efficient by providing a set of overlapping register windows
for different functions or procedures. When a procedure is called, the processor switches to a new register 
window instead of saving and restoring values to and from memory. 
This eliminates the overhead of pushing and popping registers onto the stack during procedure calls. 
Additionally, overlapping windows allow input parameters to be seamlessly shared between caller and callee 
without additional memory access. 
By reducing the reliance on memory and minimizing the complexity of stack operations, 
register windowing improves the performance and speed of procedure calls.


 4. Flynn’s taxonomy classifies computer architectures based on two properties. What are they?


Flynn's taxonomy is a framework used to classify computer architectures based on two key properties:

    Instruction Streams:
        Represents the sequence of instructions that a computer processes.
        Describes how many independent instruction streams are executed simultaneously.
    Data Streams:
        Represents the sequence of data processed by the instructions.
        Describes how many independent data streams are handled in parallel.

Four Categories in Flynn's Taxonomy:
    Flynn's taxonomy divides architectures into four categories based on combinations of instruction streams and data streams:

    Single Instruction, Single Data (SISD):
        Description: A single processor executes one instruction at a time, operating on a single data stream.
        Example: Traditional single-core processors.
        Use Case: Sequential processing tasks.
    Single Instruction, Multiple Data (SIMD):
        Description: One instruction operates on multiple data streams simultaneously.
        Example: Vector processors, GPUs (Graphics Processing Units).
        Use Case: Parallel processing of large datasets, such as in image processing and scientific simulations.
    Multiple Instruction, Single Data (MISD):
        Description: Multiple processors execute different instructions on the same data stream.
        Example: Rare in practice; theoretical examples include certain fault-tolerant systems.
        Use Case: Specialized applications where redundancy is required, like real-time control systems.
    Multiple Instruction, Multiple Data (MIMD):
        Description: Multiple processors execute different instructions on different data streams.
        Example: Modern multi-core processors, distributed computing systems.
        Use Case: General-purpose parallel computing, including cloud computing and high-performance computing.

 5. What is the difference between MPP and SMP processors?

Differences Between MPP (Massively Parallel Processing) and SMP (Symmetric Multiprocessing) Processors

Aspect	            MPP (Massively Parallel Processing)	                                            SMP (Symmetric Multiprocessing)
Architecture	    Uses multiple independent processors, each with its own memory and OS.	        Processors share a single memory pool and a single OS instance.
Communication	    Processors communicate via a high-speed interconnect or message passing.	    Processors communicate directly through shared memory.
Task Distribution	Suitable for tasks that can be divided into smaller independent subtasks.	    Best for tightly coupled tasks that require frequent data sharing.
Scalability	        Scales well to thousands of processors.	                                        Limited scalability due to contention for shared memory.
Performance	        High performance for parallel, distributed workloads.	                        High performance for shared-memory workloads.
Use Cases	        Data mining, large-scale simulations, distributed databases.	                Servers, real-time systems, general-purpose computing.
Cost	            Typically higher due to the complexity of interconnects and separate memory.	More cost-effective for smaller systems with fewer processors.

MPP: Focuses on massive parallelism with processors working independently, ideal for large-scale distributed computing.
SMP: Focuses on shared resources and efficient communication for smaller, tightly integrated systems.


 6. We propose adding a level to Flynn’s taxonomy. What is the
 distinguishing characteristic of computers at this higher level?

Characteristics of the data that determine the sequence of processor events.

 7. Do all programming problems lend themselves to parallel execution?
 What is the limiting factor?

Do All Programming Problems Lend Themselves to Parallel Execution?
No, not all programming problems lend themselves to parallel execution. The ability to parallelize a program depends on the nature of the problem, particularly how its tasks are structured and whether they can be executed independently.

Limiting Factors:
Inherent Sequential Dependencies (Amdahl’s Law):

Some tasks require the output of previous tasks before they can proceed, making them inherently sequential.


 8. Define superpipelining.

Superpipelining is a technique used in modern processors to increase the execution speed of instructions by further dividing the stages of a traditional pipeline into smaller sub-stages. This results in a higher clock frequency and allows multiple instructions to overlap in the pipeline, even more than in a conventional pipelined architecture.


 9. How is a superscalar design different from a superpipelined design?

A superscalar processor can execute multiple instructions simultaneously by using multiple execution units. It achieves instruction-level parallelism (ILP) by fetching, decoding, and dispatching multiple instructions per clock cycle.

A superpipelined processor increases performance by dividing traditional pipeline stages into smaller sub-stages. This allows the processor to achieve a higher clock frequency and execute instructions faster by having more stages.


 10. In what way does a VLIW design differ from a superpipelined design?

A VLIW processor executes multiple operations in parallel by bundling several instructions into a single long instruction word. The compiler is responsible for scheduling and organizing instructions to exploit parallelism, minimizing the complexity of the processor's control unit.

Characteristics of VLIW:
Each "instruction word" contains multiple instructions for different functional units, and all units operate in parallel on the given instruction.


Superpipelined Design
A superpipelined processor increases performance by dividing each pipeline stage into smaller sub-stages, allowing the processor to operate at higher clock speeds. It focuses on improving the throughput of a single instruction stream.

Feature	                            VLIW Design	                Superpipelined Design
Parallelism	        Executes multiple instructions in parallel	Executes one instruction at a time
Execution Units	    Multiple functional units for parallelism	Single functional unit, deeper pipeline

 11. What are the similarities and differences between EPIC and VLIW?
Both EPIC (Explicitly Parallel Instruction Computing) and VLIW (Very Long Instruction Word) architectures are designed to exploit instruction-level parallelism (ILP) by allowing multiple instructions to be executed simultaneously. 
Here are their key similarities:

    Instruction Bundling:
    Both architectures group multiple operations into a single instruction bundle or word.
    These bundles are dispatched to multiple execution units for parallel execution.

    Compiler Dependency:
        Both rely heavily on the compiler to identify parallelism in the code.
        The compiler is responsible for scheduling instructions and resolving dependencies at compile time.

 12. Explain the limitation inherent in a register-register vector processing architecture.

In a register-register vector processing architecture, all operations are performed on operands stored in registers, and no direct memory access occurs during computation. 
This design has the following limitations:

    Limited Register Space:
        The number of registers is finite, which can constrain the size of vectors that can be processed in a single operation. Large data sets may need to be split into smaller chunks, requiring additional memory transfers and degrading performance.
    Data Movement Overhead:
        Before computation, data must be explicitly loaded into vector registers from memory, and results must be stored back after computation. 

 13. Give two reasons for the efficiency of vector processors.

Efficient Memory Access:
    Vector processors leverage stride-based memory access to fetch and store data efficiently. By fetching multiple contiguous or evenly spaced elements in a single operation, they minimize memory latency and improve throughput compared to scalar processors that process one element at a time.
Pipelined Execution:
    Vector processors use pipelined execution units designed specifically for vector operations. Once the pipeline is filled, multiple elements can be processed in parallel, leading to high throughput and better utilization of hardware resources.

 14. Draw pictures of the six principal interconnection network topologies.
Here is a description of the six principal interconnection network topologies used in parallel computing systems:

Bus Topology:
    A single shared communication line connects all nodes.
    Simple and cost-effective but suffers from contention as more nodes are added.
Ring Topology:
    Nodes are connected in a closed loop.
    Data travels in one or both directions around the ring.
    Limited scalability and latency increase with the number of nodes.
Star Topology:
    A central node connects directly to all other nodes.
    Efficient for small systems but introduces a single point of failure at the central node.
Mesh Topology:
    Nodes are arranged in a grid, with each node connected to its immediate neighbors.
    Scalable and offers multiple paths for data, improving fault tolerance.
Hypercube Topology:
    Nodes are represented as vertices of an n-dimensional cube.
    Highly scalable with low latency for inter-node communication as the number of dimensions increases.
Crossbar Topology:
    A fully connected network where each input is connected to each output via a switch.
    Provides high performance but is expensive and complex to implement for large systems.

 15. There are three types of shared memory organizations. What are they?

Uniform Memory Access (UMA):
    In this architecture, all processors share a single physical memory, and all memory locations are accessed with uniform latency.
    Commonly used in Symmetric Multiprocessing (SMP) systems.

Non-Uniform Memory Access (NUMA):
    Memory is physically divided into regions, each associated with a specific processor. Accessing memory local to the processor is faster than accessing memory associated with other processors.
    Common in high-performance computing systems.
    Example: Large-scale servers and parallel computing systems.

Distributed Shared Memory (DSM):
    Memory is distributed across multiple nodes, but the system provides a global shared memory abstraction to the processors.
    Implemented using software, hardware, or a combination of both.
    Example: Large clusters or grids.

 16. Describe one of the cache consistency protocols discussed in this chapter.
The MESI (Modified, Exclusive, Shared, Invalid) protocol is a widely used cache coherence protocol. 
It ensures consistency across caches in a shared-memory multiprocessor system. 

Here's how it works:

Modified (M):
    The cache line is updated locally and is different from the main memory.
    The cache holding the modified line has exclusive ownership, and the line is not shared with other caches.
    When another processor requests the data, it must be written back to memory.
Exclusive (E):
    The cache line matches the main memory and is only present in one cache.
    The cache can modify the line without notifying others, transitioning it to the "Modified" state.
Shared (S):
    The cache line matches the main memory and may be present in multiple caches.
    Writes require notifying all caches to invalidate the line.
Invalid (I):
    The cache line is invalid, and its data is no longer valid or relevant.

 17. Describe grid computing and some applications for which it is suitable.
Grid computing involves pooling and sharing resources (such as processing power, memory, and storage) across multiple distributed computers to solve large-scale computational problems.
The grid provides a unified, virtualized computing infrastructure.


def: Pooling in grid computing refers to the aggregation and sharing of distributed resources from multiple systems to create a unified, virtualized resource pool.

18. What is SETI, and how does it use the distributed computing model?

SETI: The Search for Extraterrestrial Intelligence (SETI) is a scientific initiative aimed at detecting signs of intelligent life beyond Earth. SETI primarily analyzes radio signals and optical data collected from telescopes to identify non-random patterns or signals that might indicate extraterrestrial communication.

Use of Distributed Computing Model:

SETI@home: A project launched by SETI in 1999 utilized the distributed computing model to process the massive amounts of data generated by radio telescopes.

 19. What is ubiquitous computing?
Definition: Ubiquitous computing (also known as pervasive computing) is a concept where computing is seamlessly integrated into everyday objects and activities, making technology nearly invisible to the user.

Example is embedded computing.

 20. What differentiates dataflow architectures from “traditional” computational architectures?

Instructions are executed based on the availability of data rather than a sequential order.
The flow of data between operations determines execution, making it inherently parallel.
No central program counter; instead, execution is distributed and occurs asynchronously.
Efficient for applications with significant parallelism, such as scientific computing and signal processing.

 21. What is reentrant code?

Definition: Reentrant code is a type of code that can be safely executed by multiple threads or processes simultaneously without requiring additional synchronization. 
It does not modify shared resources or rely on any static or global data, making it suitable for concurrent execution.

 22. What is the fundamental computing element of a neural network?

The fundamental computing element of a neural network is the neuron (also called a node or unit). 
It is inspired by the biological neurons in the brain and serves as the building block of neural network architectures.

 23. Describe how neural networks “learn.”

Neural networks learn through a process of adjusting the weights and biases of their neurons to minimize the difference between predicted and actual outcomes.

 24. Through what metaphor do systolic arrays get their name? Why is the metaphor fairly accurate?

Metaphor: The term "systolic" is derived from the pumping action of the human heart, where blood is rhythmically pushed through the circulatory system.

Accuracy of the Metaphor:
    Rhythmic Data Flow:
        Like the heart pumps blood in rhythmic pulses, systolic arrays push data through interconnected processing elements in a synchronized manner.
    Parallel Processing:
        Each processing element performs operations concurrently, resembling how the heart chambers work together.
    Local Communication:
        Data flows between neighboring elements, similar to blood flowing between adjacent parts of the circulatory system.

 25. What kinds of problems are suitable for solution by systolic arrays?
Systolic arrays are ideal for problems involving repetitive, structured computations with high data locality. Examples include:

    Matrix Operations:
        Matrix multiplication, inversion, and decomposition.
    Signal Processing:
        Filtering, convolution, and Fourier transforms.
    Computer Vision:
        Image processing tasks like edge detection and feature extraction.
    Scientific Computing:
        Simulations requiring heavy linear algebra computations.
    Deep Learning:
        Accelerating operations like tensor computations in neural networks.

 26. How does a quantum computer differ from a classical computer?
 What are the obstacles that must be overcome in quantum computing?

Differences:

Basic Unit:

    Classical computers use bits (0 or 1).
    Quantum computers use qubits, which can exist in superposition (0, 1, or both simultaneously).

Computation:
    Classical computers process data sequentially or in parallel.
    Quantum computers exploit quantum phenomena like superposition, entanglement, and interference to perform computations.
Problem-Solving:
    Quantum computers excel at solving certain problems exponentially faster, such as factoring large numbers, simulating quantum systems, and optimization.
Obstacles in Quantum Computing:
    Qubit Stability:
        Qubits are prone to decoherence, where quantum states degrade due to environmental interference.
    Error Correction:
        Quantum systems require robust error correction to maintain accuracy, which is complex and resource-intensive.
    Scalability:
        Building and maintaining a large number of stable, entangled qubits is a significant challenge.
    Hardware:
        Quantum hardware is still in its infancy, requiring extreme conditions (e.g., near-absolute-zero temperatures).
    Algorithm Development:
        Quantum algorithms are not yet mature, limiting the range of practical applications.
    Cost:
        Quantum computers are expensive to build and maintain, making them inaccessible to most users.

