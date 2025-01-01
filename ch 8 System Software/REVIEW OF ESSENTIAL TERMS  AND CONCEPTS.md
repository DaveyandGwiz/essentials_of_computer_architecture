
REVIEW OF ESSENTIAL TERMS AND CONCEPTS

 1. What was the main objective of early operating systems as compared
 to the goals of today’s systems?

Early OSs were seen as a way for apps to to interact with hardware. While oss still serve this purpose they are now also expected to provide enhanced and simple user interface and a desirable set of tools for users to manage a system and its resources.


2. What improvements to computer operations were brought about by
 resident monitors?

Resident monitors were early operating systems that significantly improved the efficiency of computer operations by automating and managing key aspects of job execution. Here are the key improvements they brought:

    Automated Job Sequencing:
    Reduced Human Intervention:
    Error Handling and Logging:
    Resource Management:
    Faster Turnaround Time:
    Standardized Interfaces:
    Batch Processing:


 3. With regard to printer output, how was the word spool derived?

The word spool comes from the acronym SPOOL, which stands for Simultaneous Peripheral Operations On-Line.
Spooling involves temporarily storing data intended for an output device (e.g., a printer) 
on a secondary storage medium (like a disk).

 4. Describe how multiprogramming systems differ from time-sharing
 systems.

Multiprogramming focuses on efficient CPU usage by running multiple jobs concurrently.
Time-sharing focuses on user interactivity, ensuring each user gets a share of the CPU in small time slices.

 5. What is the most critical factor in the operation of hard real-time
 systems?

The most critical factor in hard real-time systems is meeting strict deadlines.

 6. Multiprocessor systems can be classified by the way in which they
 communicate. How are they classified in this chapter?

Tightly Coupled Systems:
    Processors share a common memory and communicate through this shared memory.
    Typically found in symmetric multiprocessing (SMP) systems.

Loosely Coupled Systems:
    Each processor has its own local memory.
    Processors communicate through interconnection networks or message passing.
    Commonly used in distributed systems.

 7. How is a distributed operating system different from a networked
 operating system?

Distributed Operating System:
    Manages multiple computers in a tightly integrated system.
    Provides the illusion of a single, unified system to users.
    Resources are shared seamlessly across the system, and tasks can be distributed.

Networked Operating System:
    Manages computers in a loosely connected system.
    Each computer has its own OS, and communication is achieved via networking protocols.
    Users explicitly connect to other systems to access resources.

 8. What is meant by transparency?

Transparency in operating systems refers to the ability of the system to hide the complexity of resource management and distribution from the user.

 9. Describe the two divergent philosophies concerning operating system
 kernel design.

Monolithic Kernel:

    All essential operating system services (e.g., memory management, device drivers, file system) are integrated into a single, large kernel.
    Advantages:
        High performance due to direct interactions.
    Efficient communication within the kernel.
    Disadvantages:
        Complexity and difficulty in debugging or modifying the kernel.
        A bug in one service can crash the entire system.

Microkernel:
    Only core functions (e.g., inter-process communication, scheduling, and basic hardware management) are included in the kernel.
    Other services (e.g., file systems, device drivers) run in user space as separate processes.
    Advantages:
    Enhanced reliability and security, as bugs in user-space services don’t crash the kernel.
    Easier to extend or modify the system.
    Disadvantages:
        Overhead from frequent user-to-kernel communication.
        Potential performance hit due to additional context switches.

 10. What are the benefits and drawbacks to a GUI operating system
 interface?
User-Friendly: Intuitive and easier for non-technical users.
Visual Representation: Allows users to interact with icons, menus, and windows, improving accessibility.
Productivity: Simplifies multitasking with visual cues like taskbars and window management.
Standardization: Common GUI elements make it easier to transition between systems.

Drawbacks:
Resource-Intensive: Requires more memory, processing power, and storage compared to text-based interfaces.


 11. How is long-term process scheduling different from short-term
 process scheduling?

 Long-Term Scheduling:
    Determines which processes are admitted to the system for processing.
    Decides the mix of I/O-bound and CPU-bound processes to optimize resource utilization.
    Infrequently executed; focuses on maintaining a balanced workload.
    Example: Admitting jobs into the job queue in a batch system.

Short-Term Scheduling:
    Determines which process gets access to the CPU next.
    Executed frequently to maximize CPU efficiency and responsiveness.
    Handles process switching and preemption in multitasking systems.
    Example: Selecting a process from the ready queue to execute.

 12. What is meant by preemptive scheduling?

 A scheduling technique where the operating system interrupts an actively running process to allocate the CPU to another process with higher priority or urgency.
Ensures fair resource allocation and responsiveness, especially in multitasking or real-time systems.

 13. Which method of process scheduling is most useful in a time-sharing
 environment?

Round-Robin (RR) Scheduling

 14. Which process scheduling method is provably optimal?

Shortest Job Next (SJN) (or Shortest Remaining Time First in preemptive contexts)

 15. Describe the steps involved in performing a context switch.

A context switch occurs when the operating system transitions the CPU from executing one process to another. Steps include:

Save the Current Process State:

    Store the contents of the CPU registers, program counter (PC), and other process-specific information in the process control block (PCB) of the currently running process.
    Update the PCB:

    Mark the current process as “ready” or another appropriate state.
    Store its status in the process table.
    Select the Next Process:

    Use the scheduler to determine the next process to execute, based on the scheduling algorithm.
    Load the New Process State:

    Retrieve the PCB of the selected process.
    Restore the contents of the CPU registers and PC for the new process.
    Update the CPU:

    Update the memory management unit (e.g., page table) if necessary.
    Begin executing the new process.
    Resume Execution:

    The CPU starts executing the next process at the point where it was paused.



16. Besides process management, what are the other two important
 functions of an operating system?

Memory Management
I/O Management

 17. What is an overlay? Why are overlays no longer needed in large
 computer systems?

Overlay:
    A method used in early systems where a program was divided into segments (overlays) that could not all fit into memory simultaneously.
    Only the active segment (e.g., a function or routine) was loaded into memory, while inactive parts remained on disk.

Why Overlays Are No Longer Needed:
Increased Main Memory
Virtual Memory

 18. The operating system and a user program hold two different
 perceptions of a virtual machine. Explain how they differ.

Operating System's Perception:
    The OS views the virtual machine as a controlled, abstract environment that isolates processes, ensuring security and stability. It manages resources (CPU, memory, I/O) and oversees multitasking.
User Program's Perception:
    A user program perceives the virtual machine as the actual hardware environment. It assumes it has exclusive access to memory, CPU, and I/O without awareness of other processes or resource management by the OS.


 19. What is the difference between a subsystem and a logical partition?

Subsystem:
    A subsystem is a software-defined module or component within a system, such as a file system or a database management system. It operates within the overarching OS environment and provides specific functionalities.

Logical Partition (LPAR):
    A logical partition is a division of physical hardware resources (CPU, memory, I/O) into multiple independent virtual machines. Each LPAR runs its own operating system and functions as a separate computer.



 20. Name some advantages of server consolidation. Is server
 consolidation a good idea for every enterprise?

Advantages:
    Resource Optimization: Consolidating servers reduces underutilization by pooling resources.
    Cost Savings: Reduces hardware, energy, and maintenance costs.
    Simplified Management: Centralized control over fewer physical servers.
    Improved Scalability: Virtualization allows dynamic resource allocation.

Is It a Good Idea for Every Enterprise?
    Not always. Small enterprises with minimal workloads might not benefit from the cost and complexity of virtualization. Additionally, businesses with high-performance or specialized hardware needs may prefer dedicated servers.

 21. Describe the programming language hierarchy. Why is a triangle a
 suitable symbol for representing this hierarchy?

Low-Level Languages (Bottom):
    Binary machine code (1GL) 

Mid-Level Languages (Middle): 
    assembly language (2GL).

Third-generation languages (3GL)    
    like C, which balance abstraction with performance.

High-Level Languages (Top):

Fourth-generation (4GL) languages focus on ease of use and problem-solving, such as SQL and Prolog.

Fifth-generation (5GL): NAtural language 

Why a Triangle?
    Base: The triangle’s wide base represents low-level languages, which provide foundational control but are complex.

    Apex: The narrowing toward the top reflects higher abstraction and ease of use, with fewer instructions but greater computational overhead.

 22. How does absolute code differ from relocatable code?

Absolute Code:
    Code with fixed memory addresses specified for all instructions and data. It can only run in the memory region it was originally compiled for, limiting its flexibility.

Relocatable Code:
    Code that uses symbolic references instead of fixed addresses, allowing it to be loaded and executed in different memory regions. Address resolution is performed during linking or loading.

 23. What is the purpose of a link editor? How is it different from a
 dynamic link library?

Link Editor (Linker):
    Combines multiple object files into a single executable file by resolving symbolic references and adjusting memory addresses.
    It performs the linking process at compile-time or load-time.

Dynamic Link Library (DLL):
    A collection of reusable functions and resources loaded dynamically at runtime.
    Unlike a linker, which creates a self-contained executable, a DLL allows shared code to remain external and be used by multiple programs simultaneously.

 24. Describe the purpose of each phase of a compiler.

Lexical Analysis:
    Converts source code into tokens (basic language elements like keywords, identifiers, and operators).

Syntax Analysis (Parsing):
    Builds a syntax tree or parse tree based on the structure of the token stream, ensuring code follows language grammar.

Semantic Analysis:
    Checks the syntax tree for logical errors, such as type mismatches or undeclared variables.

Intermediate Code Generation:
    Produces an abstract, platform-independent representation of the program (e.g., three-address code).

Optimization:
    Improves intermediate code by eliminating redundancies, optimizing resource usage, or improving performance.

Code Generation:
    Converts optimized intermediate code into target machine code or assembly.

Code Optimization (Optional):
    Further refines machine code for efficiency, targeting the specific architecture.


 25. How does an interpreter differ from a compiler?

As opposed to converting high level instructions into machine code for an entire file before execution, an interpreter converts code into machie instructions a line at a time during execution of the program.

 26. What is the salient feature of the Java programming language that
 provides for its portability across disparate hardware environments?

Java classes are converted into an assembly like reprsentation called byte code. This bytecode is ran by the JVM, which runs as a program on the host machine. In this way, Java code can be run on any platform.

 27. Assemblers produce machine code that is executable after it has been
 link edited. Java compilers produce __________ that is interpreted
 during its execution.

bytecode.

 28. What is a magic number that identifies a Java class file?
    The magic number that identifies a Java class file is 0xCAFEBABE.

    This sequence of bytes appears at the beginning of every valid Java class file and is used to verify that the file is indeed a Java class file and not some other type of file.

 29. How is a logical database schema different from a physical database
 schema?

Logical Database Schema:
    Describes the structure of the database at a conceptual level.
    Focuses on how data is logically organized and how the relationships between data are defined.
    Includes entities, attributes, and relationships but is independent of the physical implementation.
    Used by developers and database administrators to understand and design the data model.

Physical Database Schema:
    Describes how the database is actually implemented on storage hardware.
    Specifies the physical storage details, such as tables, indexes, partitions, and file locations.
    Takes into account optimization for performance, storage, and retrieval of data.
    Used by database administrators for configuring and managing the database.

In summary, the logical schema deals with "what" data is stored and its relationships, while the physical schema deals with "how" the data is stored and managed.

 30. Which data structure is most commonly used to index databases?
The B-tree (and its variant, the B+ tree) is the data structure most commonly used to index databases.

 31. Why are database reorganizations necessary?

Database reorganizations are necessary to maintain optimal performance, manage storage, and ensure data integrity. Over time, as data is added, updated, or deleted, a database can become fragmented, leading to slower query performance and inefficient use of storage. Reorganizing the database helps by:
    Defragmenting storage: Consolidating scattered data and reclaiming unused space.
    Optimizing indexing: Rebuilding or restructuring indexes to ensure faster searches and updates.
    Improving performance: Reducing access times by ensuring data is stored in a way that aligns with usage patterns.
    Preventing corruption: Addressing structural issues in the database to avoid potential data integrity problems.

 32. Explain the ACID properties of a database system.
The ACID properties are a set of principles that ensure reliable processing in a database system. They stand for:

Atomicity:
    A transaction is an all-or-nothing operation.
    If any part of the transaction fails, the entire transaction is rolled back, leaving the database unchanged.

Consistency:
    A transaction transforms the database from one valid state to another.
    Database rules (e.g., constraints, triggers) are upheld, ensuring no corruption occurs.

Isolation:
    Transactions are executed as if they are the only ones running at a given time.
    Intermediate states of a transaction are not visible to other transactions, preventing interference.

Durability:
    Once a transaction is committed, its changes are permanent, even in the event of a system crash or failure.
 
 33. What is a race condition?
A race condition occurs when the behavior or output of a system depends on the relative timing or sequence of execution of two or more concurrent processes or threads. This can lead to unpredictable results.

 34. Database logs serve two purposes. What are they?

Data base logs both ensure proper function of a database system, and they provide a way to audit the history of operations made on a database.


