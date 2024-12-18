
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
    


