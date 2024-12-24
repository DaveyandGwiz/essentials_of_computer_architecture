


EXERCISES
---------


 1. Suppose a computer using direct-mapped cache has 2 bytes of
 byte-addressable main memory and a cache of 32 blocks, where each
 cache block contains 16 bytes.
  a) How many blocks of main memory are there?
  b) What is the format of a memory address as seen by the cache;
 that is, what are the sizes of the tag, block, and offset fields?
  c) To which cache block will the memory address 0x0DB63
 map?


 2.  Suppose a computer using direct-mapped cache has 2 bytes of
 byte-addressable main memory and a cache of 1024 blocks, where
 each cache block contains 32 bytes.
  a) How many blocks of main memory are there?
  b) What is the format of a memory address as seen by the cache;
 that is, what are the sizes of the tag, block, and offset fields?
  c) To which cache block will the memory address 0x000063FA
 map?
 32
 
 
 3. Suppose a computer using direct-mapped cache has 2 bytes of
 byte-addressable main memory and a cache size of 512 bytes, and
 each cache block contains 64 bytes.
  a) How many blocks of main memory are there?
  b) What is the format of a memory address as seen by cache;
 that is, what are the sizes of the tag, block, and offset fields?
  c) To which cache block will the memory address 0x13A4498A
 map?
 6
16
   
 4. Suppose a computer using fully associative cache has 2 bytes
 of byte-addressable main memory and a cache of 64 blocks, where
 each cache block contains 32 bytes.
  a) How many blocks of main memory are there?
  b) What is the format of a memory address as seen by the cache;
 that is, what are the sizes of the tag and offset fields?
  c) To which cache block will the memory address 0xF8C9 map?
 
 
  5. Suppose a computer using fully associative cache has 2 bytes of
 byte-addressable main memory and a cache of 128 blocks, where each
 cache block contains 64 bytes.
  a) How many blocks of main memory are there?
  b) What is the format of a memory address as seen by the cache;
 that is, what are the sizes of the tag and offset fields?
  c) To which cache block will the memory address 0x01D872
 map?


 6. Suppose a computer using fully associative cache has 2 bytes of
 byte-addressable main memory and a cache of 128 blocks, where each
 block contains 64 bytes.
  a) How many blocks of main memory are there?
  b) What is the format of a memory address as seen by cache;
 that is, what are the sizes of the tag and offset fields?
  c) To which cache block will the memory address 0x01D872
 map?
 
 
 7. Assume that a system’s memory has 128M bytes. Blocks are 64
 bytes in length, and the cache consists of 32K blocks. Show the format
 for a main memory address assuming a 2-way set-associative cache
 mapping scheme and byte addressing. Be sure to include the fields as
 well as their sizes.


8. A 2-way set-associative cache consists of four sets. Main memory
 contains 2K blocks of 8 bytes each and byte addressing is used.
  a) Show the main memory address format that allows us to map
 addresses from main memory to cache. Be sure to include the
 fields as well as their sizes.
  b) Compute the hit ratio for a program that loops three times
 from addresses 0x8 to 0x33 in main memory. You may leave the
 hit ratio in terms of a fraction.


 9. Suppose a byte-addressable computer using set-associative
 cache has 2 bytes of main memory and a cache of 32 blocks, and
 each cache block contains 8 bytes.
  a) If this cache is 2-way set associative, what is the format of a
 memory address as seen by the cache; that is, what are the sizes
 of the tag, set, and offset fields?
  b) If this cache is 4-way set associative, what is the format of a
 memory address as seen by the cache?
 
 
  10. Suppose a byte-addressable computer using set-associative
 cache has 2 bytes of main memory and a cache of 64 blocks, where
 each cache block contains 4 bytes.
  a) If this cache is 2-way set associative, what is the format of a
 memory address as seen by the cache; that is, what are the sizes
 of the tag, set, and offset fields?
  b) If this cache is 4-way set associative, what is the format of a
 memory address as seen by the cache?
 
 
 11.  *11. Suppose we have a computer that uses a memory address word
 size of 8 bits. This computer has a 16-byte cache with 4 bytes per
 block. The computer accesses a number of memory locations
 throughout the course of running a program.
 Suppose this computer uses direct-mapped cache. The format of a
 memory address as seen by the cache is shown here:
The system accesses memory addresses in this exact order: 0x6E,
 0xB9, 0x17, 0xE0, 0x4E, 0x4F, 0x50, 0x91, 0xA8, 0xA9, 0xAB, 0xAD,
 0x93, and 0x94. The memory addresses of the first four accesses have
 been loaded into the cache blocks as shown below. (The contents of
 the tag are shown in binary, and the cache “contents” are simply the
 address stored at that cache location.)
  a) What is the hit ratio for the entire memory reference
 sequence given above, assuming that we count the first four
 accesses as misses?
  b) What memory blocks will be in the cache after the last
 address has been accessed?



12. Given a byte-addressable memory with 256 bytes, suppose a
 memory dump yields the results shown below. The address of each
 memory cell is determined by its row and column. For example,
 memory address 0x97 is in the 9th row, 7th column, and contains the
 hexadecimal value 43. Memory location 0xA3 contains the
 hexadecimal value 58.
 0123456789ABCDEF
 
 The system from which this memory dump was produced contains 4
 blocks of cache, where each block consists of 8 bytes. Assume that the
 following sequence of memory addresses takes place: 0x2C, 0x6D,
 0x86, 0x29, 0xA5, 0x82, 0xA7, 0x68, 0x80, and 0x2B.
  a) How many blocks of main memory are there?
  b) Assuming a direct-mapped cache:
 
 
 1. Show the format for a main memory address, assuming
 that the system uses direct-mapped cache. Specify field
 names and sizes.
 2. What does cache look like after the 10 memory accesses
 have taken place? Draw the cache and show contents and
 tags.
 3. What is the hit rate for this cache on the given sequence of
 memory accesses?



3. c) Assuming a fully associative cache:
 1. Show the format for a main memory address. Specify field
 names and sizes.
 2. Assuming that all cache blocks are initially empty, blocks
 are loaded into the first available empty cache location,
 and cache uses a first-in, first-out replacement policy,
 what does cache look like after the 10 memory accesses
 have taken place?
 3. What is the hit rate for this cache on the given sequences
 of memory accesses?
 4. d) Assuming a 2-way set-associative cache:


 1. Show the format for a main memory address. Specify field
 names and sizes.
 2. What does cache look like after the 10 memory accesses
 have taken place?
 3. What is the hit ratio for this cache on the given sequence
 of memory accesses?
 4. If a cache hit retrieves a value in 5ns, and retrieving a
 value from main memory requires 25ns, what is the
 average effective access time for this cache, assuming that
 all memory accesses exhibit the same hit rate as the
 sequence of 10 given, and assuming that the system uses a
 nonoverlapped (sequential) access strategy?



13. A direct-mapped cache consists of 8 blocks. Byte-addressable
 main memory contains 4K blocks of 8 bytes each. Access time for the
 cache is 22ns, and the time required to fill a cache slot from main
 memory is 300ns. (This time allows us to determine that the block is
 missing and bring it into cache.) Assume that a request is always
 started in parallel to both cache and to main memory (so if it is not
 found in cache, we do not have to add this cache search time to the
 memory access). If a block is missing from cache, the entire block is
brought into the cache and the access is restarted. Initially, the cache
 is empty.
  a) Show the main memory address format, which allows us to
 map addresses from main memory to cache. Be sure to include
 the fields as well as their sizes.
  b) Compute the hit ratio for a program that loops four times
 from addresses 0x0 to 0x43 in memory.
  c) Compute the effective access time for this program.
 
 
 
14. Consider a byte-addressable computer with 24-bit addresses, a
 cache capable of storing a total of 64KB of data, and blocks of 32
 bytes. Show the format of a 24-bit memory address for:
  a) direct mapped
  b) associative
  c) 4-way set associative
 
 
 
 15.  Suppose a byte-addressable computer using 4-way set
associative cache has 2 words of main memory (where each word is
 32 bits) and a cache of 32 blocks, where each block is four words.
 Show the main memory address format for this machine. (Hint:
 Because this architecture is byte addressable, and the number of
 addresses is critical in determining the address format, you must
 convert everything to bytes.)



16. Assume a direct-mapped cache that holds 4096 bytes, in which
 each block is 16 bytes. Assuming that an address is 32 bits and that
 cache is initially empty, complete the table that follows. (You should
 use hexadecimal numbers for all answers.) Which, if any, of the
 addresses will cause a collision (forcing the block that was just
 brought in to be overwritten) if they are accessed one right after the
 other?
 AddressTAGCache Location (block)Offset Within Block
0x0FF0FABA   
0x00000011   
0x0FFFFFFE   
0x23456719   
0xCAFEBABE   


17. Redo exercise 16, assuming now that cache is 16-way set
 associative.
 AddressTAGCache Location (set)Offset Within Block
 0x0FF0FABA   
0x00000011   
0x0FFFFFFE   
0x23456719   
0xCAFEBABE   



18. Suppose a process page table contains the entries shown below.
 Using the format shown in 
Figure 6.17a, indicate where the process
 pages are located in memory.
 FrameValid Bit
 1
 1
– 0
 0 1
 3 1– 0– 0
 2 1– 0


 19. Suppose a process page table contains the entries shown below.
 Using the format shown in 
Figure 6.22a, indicate where the process
 pages are located in memory.
 FrameValid Bit– 0
 3 1– 0– 0
 2 1
 0 1– 0
 1
 1



20. Suppose you have a byte-addressable virtual address memory
 system with eight virtual pages of 64 bytes each and four page frames.
 Assuming the following page table, answer the questions below:
 Page #Frame #Valid Bit
 0 1 1
 1
 3 0
 2– 0
 3 0 1
 4 2 1
 5– 0
 6– 0
 7– 0
  a) How many bits are in a virtual address?
  b) How many bits are in a physical address?
  c) What physical address corresponds to the following virtual
 addresses? (If the address causes a page fault, simply indicate
 this is the case.)
 
 1. 0x0
 2. 0x44
 3. 0xC2
 4. 0x80
 8
10
 
 
 21. Suppose we have 2 bytes of virtual memory and 2 bytes of
 physical main memory. Suppose the page size is 2 bytes.
 4
  a) How many pages are there in virtual memory?
  b) How many page frames are there in main memory?
  c) How many entries are in the page table for a process that uses
 all of virtual memory?
 
 
 
 22. You have a byte-addressable virtual memory system with a two
entry TLB, a 2-way set-associative cache, and a page table for a
 process P. Assume cache blocks of 8 bytes and page size of 16 bytes. In
 the system below, main memory is divided into blocks, where each
 block is represented by a letter. Two blocks equal one frame.
Given the system state as depicted above, answer the following
 questions:
  a) How many bits are in a virtual address for process P?
 Explain.
  b) How many bits are in a physical address? Explain.
  c) Show the address format for virtual address 0x12 (specify
 field name and size) that would be used by the system to
 translate to a physical address and then translate this virtual
 address into the corresponding physical address. (Hint: Convert
 the address to its binary equivalent and divide it into the
 appropriate fields.) Explain how these fields are used to
 translate to the corresponding physical address.
  d) Given virtual address 0x06 converts to physical address
 0x36. Show the format for a physical address (specify the field
 names and sizes) that is used to determine the cache location
 for this address. Explain how to use this format to determine
 where physical address 0x36 would be located in cache. (Hint:
 Convert 0x36 to binary and divide it into the appropriate fields.)
  e) Given virtual address 0x19 is located on virtual page 1, offset




 9. Indicate exactly how this address would be translated to its
 corresponding physical address and how the data would be
 accessed. Include in your explanation how the TLB, the page
 table, cache, and memory are used.

23. Given a virtual memory system with a TLB, a cache, and a page
 table, assume the following:
 1. A TLB hit requires 5ns.
 2. A cache hit requires 12ns.
 3. A memory reference requires 25ns.
 4. A disk reference requires 200ms (this includes updating the
 page table, cache, and TLB).
 5. The TLB hit ratio is 90%.
 6. The cache hit rate is 98%.
 7. The page fault rate is .001%.
 8. On a TLB or cache miss, the time required for access includes a
 TLB and/or cache update, but the access is not restarted.


9. On a page fault, the page is fetched from disk, and all updates
 are performed, but the access is restarted.
 10. All references are sequential (no overlap, nothing done in
 parallel).
 For each of the following, indicate whether or not it is possible. If it is
 possible, specify the time required for accessing the requested data.
  a) TLB hit, cache hit
  b) TLB miss, page table hit, cache hit
  c) TLB miss, page table hit, cache miss
  d) TLB miss, page table miss, cache hit
  e) TLB miss, page table miss
  Write down the equation to calculate the effective access time.
 
 
 24. Does a TLB miss always indicate that a page is missing from
 memory? Explain.




25. A system implements a paged virtual address space for each
 process using a one-level page table. The maximum size of virtual
 address space is 16MB. The page table for the running process
 includes the following valid entries (the → notation indicates that a
 virtual page maps to the given page frame; that is, it is located in that
 frame):
 virtual page 2 → page frame 4
 virtual page 1 → page frame 2
 virtual page 0 → page frame 1
 virtual page 4 → page frame 9
 virtual page 3 → page frame 16
 The page size is 1024 bytes and the maximum physical memory size of
 the machine is 2MB.
1. a) How many bits are required for each virtual address?
 2. b) How many bits are required for each physical address?
 3. c) What is the maximum number of entries in a page table?
 4. d) To which physical address will the virtual address 0x5F4
 translate?
 5. e) Which virtual address will translate to physical address
 0x400?



 26. 
 a) If you are a computer builder trying to make your system as
 price-competitive as possible, what features and organization would
 you select for its memory hierarchy?
 
b) If you are a computer buyer trying to get the best
 performance from a system, what features would you look for in
 its memory hierarchy?
 
 27. Consider a system that has multiple processors where each
 processor has its own cache, but main memory is shared among all
 processors.
  a) Which cache write policy would you use?
  b) The cache coherency problem. With regard to the system just
 described, what problems are caused if a processor has a copy of
 memory block A in its cache and a second processor, also
 having a copy of A in its cache, then updates main memory
 block A? Can you think of a way (perhaps more than one) of
 preventing this situation, or lessening its effects?
 
 
 28. Pick a specific architecture (other than the one covered in this
 chapter). Do research to find out how your chosen architecture
 approaches the concepts introduced in this chapter, as was done for
 Intel’s Pentium.
 
29. Name two ways that, as a programmer, you can improve cache
 performance.



30.  Look up a specific vendor’s specifications for memory, and
 report the memory access time, cache access time, and cache hit rate
 (and any other data the vendor provides)