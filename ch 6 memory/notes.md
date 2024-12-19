
ch 6 Memory

6.2 Types

cache: small, high speed memory.

Basic Types: ram and rom

Static ram is faster.
But DRAM is denser and uses less power.

often, sram is cache and dram is main memory.

ROM stores critical info, like for booting the OS.

6.3 Memory Hierarchy

1) Register
2) Cache
3) Main Memory
4) Secondary memory, like hard disk drives

Secondary memory contents must move to RAM befire they can be moved to cpu.

Hard drives can be:
1) Magnetic (rotationg disks)
2) Solid state

Tertiary memory cant be accessed by computer directly, like a cd-rom.

"Distance" => cycles required for access.


Memory Hierarchy Terminology:
    Hit - data requested is found in a given level of memory.
    Miss - Requested data is not found.
    Hit rate - percentage of successful memory acccesses at a given level of memory.
    miss rate - the percentage of acccesses where memory was not found.
    Hit time - Time required to access memory
    Miss penelty - time required to process a miss.


Memory pyramid is given. Register access usually takes only one cycle.

virtual memory (nonsystem memory that acts as an extension to main memory). 
Virtual memory is typically implemented using a hard drive
It gives the impression that a program may have a large, contiguous working main memory, when in fact the program may exist, in fragments, in main memory, and on disk.

Locality of reference: if memory location X is accessed at time t, there is a high probability that memory location X + 1 will also be accessed in the near future.

There are three basic forms of locality:
    1) Temporal locality—Recently accessed items tend to be accessed again in the near future.
    2) Spatial locality—Accesses tend to be clustered in the address space (for example, as in arrays or loops).
    3) Sequential locality—Instructions tend to be accessed sequentially.

6.4   Cache Memory
 
 Smaller memory with fast access.

One field of a RAM address points us to a location in cache.
That location points us to a location in cache if it is present (cache hit) or where it it is to be placed if it is
not resident (cache miss).
The cache block is then referenced tp see if it is valid.

Validity of cache block is accomplished by checking a valid bit for each cache block.
0 => invalid
1 => valid

If it's valid we must then compare athe taf of th cache block to the tag field our address.

Cache Lookup Key Steps (Simplified):
    CPU generates a memory address.
    Memory address contains an offset, index, and a tag.
        tag - identifies memory block
        offset - locates byte/word in cache block
        index - identifies cache block
    Use index to locate the cache block.
    Check the valid bit of the block.
    If valid, compare the tag in the cache block with the address tag of the adress stored in CPU. // ram not used for tag validation
    If the tags match → Cache Hit.
    If the tags don’t match or valid bit = 0 → Cache Miss.

- Direct-Mapped Cache

    RAM > cache, so cache blocks are mapped using a modular approach.
    RAM blocks are mapped to cache blocks with the following formula: RAM_block mod number_of_cache_blocks


Discussion:
    How does memory adress contain tag (identification of mem block) and index (identification of cache block)? 
    Take address: 0000 0001 which points to a location in main memory.
    the high order bits are used to identify memory block.
    The following bits are used to identify cache block 
    And the low order (right most) bits identify the offset.

    0x001 = 0000 0001 (8 bits).
    Split the binary address into Tag, Index, and Offset:

    Tag (5 bits)	Index (1 bit)	Offset (2 bits)
    00000	        0	            01

    - How many bits are used for each portion?
    
    Cache Block Size (bytes per block) → Determines the offset.
    Number of Cache Blocks → Determines the index.
    Total Memory Size → Determines the overall address size and remaining bits for the tag.

    in our example, we have 4 memory blocks, 2 cache blocks, and each cache block has 4 bytes.
    We need 2 bits (rightmost) for offset.
    1 bit for cache block (the index).
    And the 5 high-order (leftmost) bits to determine the memory block.

        Note: 5 bits are not necessary to identify 4 blocks of main memory, but in the example these high-order bits, serve the purpose as they are most significant in identifying the memory location.
        Cache Block= Memory Block mod 2^N 

    Note: The Tag doesn’t need to uniquely identify all memory blocks—just the blocks that map to the same cache block.

