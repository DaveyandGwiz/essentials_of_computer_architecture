REVIEW OF ESSENTIAL TERMS AND CONCEPTS

 1. Explain what is meant when we say that a program or system is memory bound. What other types of bindings have we discussed?

A program or system is memory bound when its performance is primarily limited by the speed of accessing memory rather than the speed of the CPU.
Other bindings include CPU-bound, I/O-bound, and network-bound, where performance is limited by those specific resources.

 2. What does Amdahl’s Law tell us about performance optimization?

Amdahl’s Law states that the potential speedup of a program using multiple processors is limited by the portion of the program that cannot be parallelized. It highlights diminishing returns as more processors are added

 3. Which of the means is useful for comparing rates?

 The geometric mean is often useful for comparing rates, especially when dealing with relative performance improvements.

 4. For what kinds of data is the arithmetic mean inappropriate?

 The arithmetic mean is inappropriate for data that represents rates or ratios, such as execution times or throughput. For such data, the harmonic mean or geometric mean is more suitable.

 5. Give a definition for optimum performance.

 Optimum performance refers to achieving the maximum possible efficiency or throughput for a system, given its design and workload constraints.

 6. What is a price-performance ratio? What makes it hard to apply?

This is the ratio of a system’s cost to its performance. It is hard to apply because performance metrics vary across workloads, making comparisons inconsistent.

 7. What is the shortcoming of using MIPS or FLOPS as a measure of system throughput?

MIPS (Millions of Instructions Per Second) and FLOPS (Floating Point Operations Per Second) do not account for the complexity or efficiency of instructions, leading to misleading conclusions about performance.

 8. How is the Dhrystone benchmark different from Whetstone and Linpack?
Dhrystone focuses on integer performance and general-purpose programming.
Whetstone emphasizes floating-point operations.
Linpack measures linear algebra computation performance.


 9. What are the deficiencies in the Whetstone, Dhrystone, and Linpack benchmarks that are addressed by the SPEC CPU benchmarks?

SPEC CPU benchmarks address deficiencies by using a broader set of real-world applications, including integer and floating-point tasks, to provide a more accurate representation of system performance.

 10. Explain the term benchmarketing.

This term refers to the practice of selectively showcasing benchmark results to exaggerate the performance of a product.

 11. How is the focus of the TPC different from SPEC?

TPC (Transaction Processing Performance Council) focuses on database and transaction-processing workloads, while SPEC emphasizes general-purpose CPU and application performance.

 12. Explain delayed branching.

Delayed branching is a technique where instructions following a branch are executed before the branch decision is made, reducing pipeline stalls.

 13. What is branch prediction? What is it used for?

Branch prediction is a technique used to guess the outcome of a branch (e.g., if-else) before it is executed, improving pipeline efficiency.

 14. Give three examples of pipeline hazards.

Examples include:

Data hazards (e.g., read-after-write conflicts).
Control hazards (e.g., branch misprediction).
Structural hazards (e.g., resource contention).

 15. Define the terms loop fusion, loop fission, loop peeling, and loop interchange.

Loop Optimizations:
    Loop Fusion: Combines two loops into one to reduce overhead.
    Loop Fission: Splits one loop into multiple loops for better parallelism.
    Loop Peeling: Moves iterations with special conditions outside the loop.
    Loop Interchange: Switches the order of nested loops for better cache performance.

 16. According to queuing theory, what is the critical disk utilization percentage?

Queuing theory suggests keeping disk utilization below 70% to avoid excessive delays due to queuing.

17. What is the risk involved in using the SSTF disk scheduling algorithm?

Shortest Seek Time First (SSTF) disk scheduling can lead to starvation of requests that are far from the current head position. 

18. How is LOOK different from SCAN?

LOOK is a variant of SCAN where the disk arm only goes as far as the last request in each direction, reducing unnecessary movement.

19. What is disk prefetching? What are its advantages and disadvantages?

Disk Prefetching:
    Disk prefetching involves reading additional blocks of data into memory before they are requested.

20. What are the advantages and disadvantages of caching disk writes?

Advantages: Reduces latency for sequential reads.
Disadvantages: Wastes bandwidth and memory if prefetched data is not used.

Caching Disk Writes:
    Advantages: Improves write performance by buffering writes in memory.
    Disadvantages: Risks data loss if the system crashes before the cached writes are committed to disk.