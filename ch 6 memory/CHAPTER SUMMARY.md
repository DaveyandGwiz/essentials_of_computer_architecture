CHAPTER SUMMARY

 Memory is organized as a hierarchy, with larger memories being cheaper but slower, and smaller memories being faster but more expensive. 
 
 In a typical memory hierarchy, we find a cache, main memory, and secondary memory (usually a disk drive). The principle  of locality helps bridge the gap between successive layers of this hierarchy, and the programmer gets the impression of a very fast and very large memory without being concerned about the details of transfers among the various levels of this hierarchy.
 
 Cache acts as a buffer to hold the most frequently used blocks of main memory and is close to the CPU. One goal of the memory hierarchy is for the processor to see an effective access time very close to the access time of the cache. Achieving this goal depends on the behavioral properties of the programs being executed, the size and organization of the cache, and the cache replacement policy. Processor references that are found in cache are  called cache hits; if not found, they are cache misses. On a miss, the missing data is fetched from main memory,  and the entire block containing the data is loaded into cache. 
 
 A unified cache holds both data and instructions, whereas a Harvard cache uses a separate cache for data and a separate cache for instructions. A multilevel cache  hierarchy is used to increase cache performance.
 The organization of cache determines the method the CPU uses to search cache for different memory  addresses. 
 
 Cache can be organized in different ways:
     direct mapped, fully associative, or set-associative.
        Direct-mapped cache needs no replacement algorithm; however, fully associative and set-associative must use FIFO, LRU, or some other placement policy to determine the block to remove from cache to make room for a new  block, if cache is full. LRU gives very good performance but is difficult to implement.

 Another goal of the memory hierarchy is to extend main  memory by using the hard disk itself, also called virtual  memory. 
 
 Virtual memory allows us to run programs whose virtual address space is larger than physical
 memory. It also allows more processes to run concurrently. The disadvantages of virtual memory
 implemented with paging include extra resource consumption (storing the page table) and extra memory
 accesses (to access the page table), unless a TLB is used to cache the most recently used virtual/physical address pairs. Virtual memory also incurs a translation penalty to convert the virtual address to a physical one, as well as a  penalty for processing a page fault should the requested page currently reside on disk instead of main memory.

 The relationship between virtual memory and main memory is similar to the relationship between main memory and cache. Because of this similarity, the concepts of cache memory and the TLB are often confused. In reality, the TLB is a cache. It is important to realize that virtual addresses must be translated to physical ones first, before anything else can be done, and this is what the TLB does. Although cache and paged  memory appear to be similar, the objectives are different: Cache improves the effective access time to main memory, whereas paging extends the size of main memory.

 