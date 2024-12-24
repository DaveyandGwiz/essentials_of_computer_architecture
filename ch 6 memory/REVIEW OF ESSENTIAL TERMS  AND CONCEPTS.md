



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



 9. Cache is accessed by its _______, whereas main memory is accessed

 by its _______.

 10. What are the three fields in a direct-mapped cache address? How are

 they used to access a word located in cache?

 11. How does associative memory differ from regular memory? Which is

 more expensive and why?

 12. Explain how fully associative cache is different from direct-mapped

 cache.

 13. Explain how set-associative cache combines the ideas of direct and

 fully associative cache.

 14. Direct-mapped cache is a special case of set-associative cache where

 the set size is 1. So fully associative cache is a special case of set

associative cache where the set size is ______.

 15. What are the three fields in a set-associative cache address, and how

 are they used to access a location in cache?

16. Explain the four cache replacement policies presented in this chapter.

 17. Why is the optimal cache replacement policy important?

 18. What is the worst-case cache behavior that can develop using LRU

 and FIFO cache replacement policies?

 19. What, exactly, is effective access time (EAT)?

 20. Explain how to derive an effective access time formula.

 21. When does caching behave badly?

 22. What is a dirty block?

 23. Describe the advantages and disadvantages of the two cache write

 policies.

 24. Explain the difference between a unified cache and a Harvard cache.

 25. What are the advantages of a Harvard cache?
 26. Why would a system contain a victim cache? A trace cache?

 27. Explain the differences among L1, L2, and L3 cache.


 28. Explain the differences between inclusive and exclusive cache.
 29. What is the advantage of a nonblocking cache?


 30. What is the difference between a virtual memory address and a

 physical memory address? Which is larger? Why?

 31. What is the objective of paging?

 32. Discuss the pros and cons of paging.

 33. What is a page fault?

 34. What causes internal fragmentation?
 35. What are the components (fields) of a virtual address?


 36. What is a TLB, and how does it improve EAT?

 37. What are the advantages and disadvantages of virtual memory?

 38. When would a system ever need to page its page table?

 39. What causes external fragmentation, and how can it be fixed?






