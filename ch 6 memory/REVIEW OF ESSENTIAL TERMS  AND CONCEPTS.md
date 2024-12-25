



 1. Which is faster, SRAM or DRAM?

SRAM is faster but more expensive and used for smaller, high-speed memory (cache), while DRAM is slower but more cost-effective and used for larger memory (RAM).

Explanation:
SRAM:
    Uses flip-flops to store data.
    Retains data as long as power is supplied (doesn't need refreshing).
    Has lower access latency and higher speed.
    Typically used in cache memory.
DRAM:
    Uses capacitors to store data.
    Data needs to be refreshed periodically because capacitors leak charge.
    Refreshing introduces delays, making DRAM slower than SRAM.
    Typically used in main memory (RAM) due to its lower cost per bit.


Flip-Flop (SRAM): Stable, fast, no refresh needed, but expensive and power-hungry.
Capacitor (DRAM): Simple, cost-effective, but slower due to refresh cycles.


 2. What are the advantages of using DRAM for main memory?
    Cheaper, less power usage, higher density, widespread availability.


 3. Name three different applications where ROMs are often used.
    Firmware (like BIOS), embedded systems, and game catridges.
    firmaware is software embedded in hardware components.

 4. Explain the concept of a memory hierarchy. Why did your authors choose to represent it as a pyramid?

A pyramid is a great representation, as it dmonstrates size, distanse, and order.
Formas of memory at the top are faster, smaller, and more expensive.

The Cache for example is accessed before RAM typically (top level access) and is both smaller and nearer to the CPU than main memory ir any form of secondary storage. As you move down the pyramid, we see forms of memory that are generally slower to access, allow for greater overall size of storage, and are cheaper to maintain and produce more of.



 5. Explain the concept of locality of reference, and state its importance to memory systems.


Locality of Reference refers to the tendency of a program to access data and instructions that are either:

Spatial Locality:
    Nearby in memory (e.g., sequential array elements).
    Example: Accessing consecutive indices in an array.

Temporal Locality:
    Recently accessed and likely to be accessed again soon.
    Example: Loop variables frequently reused within iterations.

Importance:
Locality is critical for memory performance because:

Caching relies on accessing frequently used data or instructions quickly.
Paging and segmentation perform better when a program accesses logically and physically grouped data.

Examples:
Arrays exhibit spatial locality because their elements are stored sequentially in memory.
Hash tables may have poorer spatial locality because their values are often stored in scattered locations.


 6. What are the three forms of locality?

Temporal Locality:
    Definition: The tendency for a program to access the same memory location repeatedly within a short period.
    Example: Variables in a loop or recently used data.

Spatial Locality:
    Definition: The tendency to access memory locations that are physically close to each other.
    Example: Accessing consecutive elements in an array.

Sequential Locality:
    Definition: A subset of spatial locality where memory locations are accessed sequentially.
    Example: Reading through a text file or executing program instructions sequentially.


 7. Give two noncomputer examples of the concept of cache.

A tool box taken out of the garage. A stack of books rented from a library.


 8. Which of L1 or L2 cache is faster? Which is smaller? Why is it smaller?

Which is faster?

L1 cache is faster than L2 cache because it is located directly on the CPU cores and has the lowest latency.
Which is smaller?

L1 cache is smaller than L2 cache.
Why is L1 cache smaller?
    Proximity to the CPU: L1 cache is integrated directly into the processor cores, where space is limited.

    Cost and Power Efficiency: 
        L1 cache uses fast SRAM, which is more expensive and consumes more power, so it is kept small for efficiency.
    Latency Optimization: 
        Smaller caches result in shorter lookup times, which is crucial for maintaining the speed advantage of L1 cache.


 9. Cache is accessed by its _______, whereas main memory is accessed

 by its _______.


Index (and validated with a tage).
Address.


 10. What are the three fields in a direct-mapped cache address? How are they used to access a word located in cache?

Tag:
    Identifies the block of main memory that is currently stored in the cache.

Index:
    Specifies the cache block where the data might be located.

Offset:
    Identifies the specific word or byte within the cache block.


 11. How does associative memory differ from regular memory? Which is more expensive and why?

- How Associative Memory Differs from Regular Memory

Associative Memory (Content-Addressable Memory, CAM):
    Data is accessed based on content rather than a specific memory address.
    Searches through all stored data simultaneously to find a match.
    Commonly used in caches (e.g., for tag matching) and translation lookaside buffers (TLBs).

Regular Memory:
    Data is accessed based on a specific address.
    Requires the exact location to retrieve data.

Which is More Expensive and Why?
    Associative Memory is more expensive than regular memory because:
        It requires specialized hardware to perform simultaneous comparisons of all stored entries.



 12. Explain how fully associative cache is different from direct-mapped cache.

Direct-Mapped Cache:
    Each block of RAM is mapped to a specific block in the cache.
    Mapping is determined using a simple formula (e.g., Memory Block mod Number of Cache Blocks).
    Advantage: Simpler and faster lookup.

Fully Associative Cache:
    Any block of RAM can be stored in any cache block.
    The cache uses tags to identify which block of RAM is stored in each cache block.
    Advantage: Eliminates conflict misses.


 13. Explain how set-associative cache combines the ideas of direct and
 fully associative cache.

Set asscosiative cache is a middle ground between direct mapped and fully associative.
In the scheme, a block of RAM maps to a set of blocks in the cache.
Algorithms are used to determine this mapping.

Set-Associative Cache combines features of direct-mapped and fully associative cache:

    Mapping:
    RAM blocks are mapped to a set of cache blocks instead of a single block (direct-mapped) or any block (fully associative).
    A set is a small group of cache blocks (e.g., 2-way, 4-way associative).
    The index field of the memory address identifies the set, and the tag field identifies the block within the set.

How It Works:
    A memory block is first mapped to a set using modular arithmetic (e.g., Memory Block mod Number of Sets).
    Within the set, the tag field is compared to identify if the data is in the cache (cache hit).
    If the set is full, a replacement policy (e.g., LRU or FIFO) determines which block to evict.


 14. Direct-mapped cache is a special case of set-associative cache where the set size is 1. 
 So fully associative cache is a special case of set associative cache where the set size is ______.

 n, that is the number of cache blocks.



 15. What are the three fields in a set-associative cache address, and how
 are they used to access a location in cache?


The three fields in a set-associative cache address are:

Tag:
    Identifies the memory block stored in the cache.
    Used to compare with tags stored in the blocks of the mapped set to determine if the requested data is in the cache (cache hit).

Set Index:
    Identifies the set to which the memory block maps.
    The set index determines which group of cache blocks to search within.

Block Offset:
    Specifies the specific word or byte within a cache block.
    Used to locate the exact data within the block.


16. Explain the four cache replacement policies presented in this chapter.

Least Recently Used (LRU):
    Description: Replaces the cache block that has not been used for the longest time.

First-In, First-Out (FIFO):
    Description: Replaces the cache block that has been in the cache the longest, regardless of how often it has been used.

Random:
    Description: Randomly selects a block to replace in the cache.

Least Frequently Used (LFU):
    Description: Replaces the block that has been used the fewest number of times.


 17. Why is the optimal cache replacement policy important?

Maximizing Cache Performance:
It reduces the number of cache misses, improving the speed and efficiency of memory access.



 18. What is the worst-case cache behavior that can develop using LRU and FIFO cache replacement policies?

LRU:
    Worst-Case Scenario:
    Occurs with cyclic access patterns where the set size is smaller than the working set (the number of blocks being actively used).

FIFO:
    Worst-Case Scenario:
    Occurs when frequently accessed blocks are evicted simply because they were loaded earlier, regardless of their current use.



 19. What, exactly, is effective access time (EAT)?
    Effective address time is a formula that provide use with the average time to locate a chunk of data from ram and either identify it in the cache or copy it to the cache.
    It is represented as an average time.

Effective Access Time (EAT) is the average time it takes to access data in a memory hierarchy, factoring in both cache hits and cache misses.

It is calculated as:

EAT = (Hit Ratio × Cache Access Time) + ( Miss Ratio × Memory Access Time )


 20. Explain how to derive an effective access time formula.

Multiply the pertangage of cache hits by the time it takes to access a block corectly 
store in cache and add that to the product of the percentage cache misses times the time it 
takes to transfer a block of main memory and store it in the cache.

Define the Components:

    Hit Ratio (𝐻): The fraction of memory accesses found in the cache.

    Miss Ratio (1−H): The fraction of memory accesses not found in the cache.

    Cache Access Time ( 𝑇𝑐 ): Time to access data from the cache.

    Memory Access Time ( 𝑇𝑚): Time to access data from the main memory.

EAT = (H * Tc) + ( (1-H) * (Tc + Tm) )


 21. When does caching behave badly?
    Conflict Misses in Direct-Mapped Cache
    Low Locality of Reference
    Cache Thrashing
        Explanation: Occurs when the working set of a program (the data it frequently accesses) exceeds the cache size. This leads to frequent evictions and reloads, causing many cache misses.
    Data Sharing in Multiprocessor Systems:
        Explanation: When multiple processors share a cache, frequent updates by one processor can invalidate data used by another, leading to inefficiencies.
    Cold Start or Compulsory Misses:
        Explanation: When a program starts, the cache is empty, and all initial accesses result in cache misses.


 22. What is a dirty block?
    A dirty block is a block in the cache that has been modified (written to) but the corresponding data in main memory has not yet been updated.


 23. Describe the advantages and disadvantages of the two cache write policies.

Write-Through:

    Definition: Updates both the cache and the main memory simultaneously whenever data is written to the cache.
    Advantages:
        Data Consistency: Cache and main memory are always synchronized, simplifying memory consistency in multiprocessor systems.
    Disadvantages: 
        Slower Writes: Every write operation requires both cache and main memory to be updated, increasing memory traffic and slowing performance.

Write-Back (or Copyback):
    Definition: 
        Updates only the cache during a write operation. Main memory is updated only when the cache block is evicted.
    Advantages:
        Faster Writes: Writes occur only in the cache, reducing memory traffic and speeding up performance.
    Disadvantages:
        Data Consistency Issues: Cache and main memory may have different values, requiring additional mechanisms to ensure consistency in multiprocessor systems.


 24. Explain the difference between a unified cache and a Harvard cache.

Unified Cache:
    Definition: A single cache is used to store both instructions and data.
Harvard Cache:
    Definition: Separate caches are used for instructions and data.
 
 
 25. What are the advantages of a Harvard cache?

Advantages of a Harvard Cache

Parallel Access:
    Separate instruction and data caches allow simultaneous fetching of instructions and accessing data, improving throughput and reducing latency.

Reduced Contention:
    Since instructions and data are stored in different caches, there is no competition between them, avoiding delays caused by resource contention.

Specialization:
    Each cache can be optimized for its specific purpose


 26. Why would a system contain a victim cache? A trace cache?

Victim Cache:
    Definition: 
        A small, fully associative cache placed between the main cache (usually L1) and main memory. It stores recently evicted cache blocks to prevent repeated misses.
    Purpose: 
        To address conflict misses in direct-mapped or set-associative caches.
    Advantages:
        Reduces cache thrashing: Cache blocks evicted due to conflicts can be quickly reused if accessed again.

Trace Cache:
    Definition: 
        A specialized instruction cache that stores decoded instruction traces (sequences of executed instructions) instead of raw instructions.
    Purpose: 
        To speed up the execution of frequently used instruction sequences by avoiding the need to repeatedly fetch and decode them.
    Advantages:
        Improves pipeline efficiency by reducing fetch and decode bottlenecks.
 
 
 27. Explain the differences among L1, L2, and L3 cache.

1 Cache (Level 1):
    Location: Closest to the CPU cores; integrated directly on the processor chip.
    Speed: Fastest cache due to proximity to the CPU and smaller size.
2 Cache (Level 2):
    Location: On the processor chip but further from the CPU cores than L1.
    Speed: Slower than L1 but faster than L3.
L3 Cache (Level 3):
    Location: Shared among all CPU cores; resides on the processor die or chip.
    Speed: Slowest of the three caches, but still faster than main memory.

Each successive level is larger than the last.

 28. Explain the differences between inclusive and exclusive cache.


 29. What is the advantage of a nonblocking cache?

Exclusive Cache:
    Definition: Data in higher-level caches (e.g., L1) is not duplicated in lower-level caches (e.g., L2 or L3)
Inclusive Cache:
    Definition: Lower-level caches (e.g., L2 or L3) contain all the data stored in higher-level caches (e.g., L1).


 30. What is the difference between a virtual memory address and a physical memory address? Which is larger? Why?

Virtual Memory Address:
    Definition:     
        The address generated by the CPU for a process. It is part of the virtual address space created by the operating system.
    Purpose: 
        Provides an abstraction that allows each process to believe it has access to a large, contiguous block of memory, independent of physical memory limitations.
    Key Features:
        Larger address space than physical memory.
        Mapped to physical memory by the Memory Management Unit (MMU) using page tables.
        Allows for memory protection and process isolation.

Physical Memory Address:
    Definition: 
        The actual address in the main memory (RAM).
    Purpose: 
        Represents the real location where data is stored.
    Key Features:
        Smaller than the virtual memory address space.
        Directly accessed by the hardware (RAM).


 31. What is the objective of paging?
    The primary objective of paging is to enable efficient and flexible use of memory by dividing virtual memory into fixed-size blocks called pages and mapping them to physical memory frames.

 32. Discuss the pros and cons of paging.
paging - Divides memory into fixed-size pages mapped to physical memory frames.

Pros:
    Helps to Eliminate External Fragmentation:
        Memory is divided into fixed-size pages and frames, ensuring efficient use of physical memory without gaps.
    Process Isolation:
        Each process has its own virtual address space, enhancing security and stability by preventing one process from interfering with another.
Cons:
    Internal Fragmentation:
        Memory within a frame may remain unused if the page size exceeds the actual memory required by the process.

 33. What is a page fault?
    A page fault occurs when a frame of vitual memory's corresponding pge is not in main memory and needs to be pulled in from disk storage.

 34. What causes internal fragmentation?

    Internal fragmentation occurs when the allocated portion of memory (e.g., a page or frame) is larger than the actual data stored in that portion. The unused space within the allocated block is wasted, leading to inefficiency.


 35. What are the components (fields) of a virtual address?

Page Number (or Segment Number):
    Purpose: Identifies the page (in paging) or segment (in segmentation) in the virtual address space.
    Size: Determined by the total number of pages or segments. For example, with 

Offset (Displacement):
    Purpose: Specifies the exact location of the desired byte or word within the page (or segment).

 36. What is a TLB, and how does it improve EAT?

What is a TLB?
    The Translation Lookaside Buffer (TLB) is a small, high-speed cache located inside the CPU.
    It stores recently used page table entries (PTEs) to speed up the process of translating virtual addresses to physical addresses.

When the CPU generates a virtual address, the TLB is checked first to see if it contains the page table entry for the virtual page.

The TLB improves EAT by reducing the average time required to translate virtual addresses to physical addresses.

 37. What are the advantages and disadvantages of virtual memory?

Vitual memory increases overhead and requires additional computations for memory accesses.
However, it allows for improved performance on larger systems with multiple proceeses which reuire the ability to use more data then can be stored in main memory.

--GPT--
Virtual memory provides the ability to use more memory than is physically available in RAM by utilizing disk storage. 
This enables improved performance on systems running multiple processes or large applications. It also allows for efficient multitasking and process isolation.

However, virtual memory increases overhead due to additional computations for address translation (e.g., page table lookups and TLB access). Page faults, where data must be fetched from disk, can significantly slow down performance, especially when excessive paging (thrashing) occurs.

 38. When would a system ever need to page its page table?

A system needs to page its page table when the table itself becomes too large to fit in RAM. 

When the page table would have to be exceedingly large or complex, for example,
multiple threads or proceccess storing many frames of data.

 39. What causes external fragmentation, and how can it be fixed?

External fragmentation occurs when variable-sized memory allocations leave unusable gaps between blocks. It is common in segmentation. Solutions include compaction, efficient allocation algorithms (e.g., best-fit), or switching to paging, which avoids it entirely.



