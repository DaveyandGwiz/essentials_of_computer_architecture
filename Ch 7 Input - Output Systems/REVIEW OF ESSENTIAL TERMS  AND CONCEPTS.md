



 1. State Amdahl’s Law in words.

 Amdahl’s Law states that the overall speedup of a computer system depends on both the speedup in a
 particular component and how much that component is used by the system. 
 
 In symbols:

 S = 1 / [(1-f)+(f/k)]

where   
    S = overall system speedup
    f = fraction of work performed by he faster compnent
    k = speedup of the new componet

 2. What is speedup?

An increase in the speed of a given component to perform its regular process.

It is calculated by: speedup = execution time (before)/execution time (after)

 3. What is a protocol, and why is it important in I/O bus technology?
 
The exact form and meaning of the signals exchanged between a sender and a receiver is called a protocol.

Protocols allow a standardized way for the CPU to communicate with I/O devices. 

 4. Name three types of durable storage.

 Disks, tapes, flash drives.
 
 5. Explain how programmed I/O is different from interrupt-driven I/O.

In programmed I/O the cpu continually polls (monitors) the i/o devices, while in interuppet driven i/o the i/o devices send an interrupt signal which the cpu responds to by halting normal execution process.

 6. What is polling?

 The monitoring of io compontent processes by the cpu. That is, the cpu checks continually to see 
 if a given io device has a process which needs to be executed. 
 
 7. How are address vectors used in interrupt-driven I/O?

    In interrupt-driven I/O, address vectors are used to identify the specific Interrupt Service Routine (ISR) that should be executed when an interrupt occurs

 
 8. How does direct memory access (DMA) work?

 IN DMA, the cpu offloads io instructions to a dedicated chip to perfrom tedious io instructions.
CPU  provides DMA with address and number of bytes to transfer.
 
 9. What is a bus master?
    A bus master is the component in a computer system that has control over the bus at a given time. It determines which device can send or receive data on the bus. 
 
 
 10. Why does DMA require cycle stealing?
    Direct Memory Access (DMA) requires cycle stealing because the DMA controller and the CPU share the same memory bus. 
    When the DMA controller transfers data directly between an I/O device and main memory, it must temporarily "steal" control of the memory bus from the CPU to perform its operation.
 
 11. What does it mean when someone refers to I/O as bursty?
 
    When someone refers to I/O as bursty, they mean that I/O operations do not occur at a consistent or steady rate but instead happen in irregular bursts of activity, followed by periods of inactivity.

 12. How is channel I/O different from interrupt-driven I/O?
 
    Channel I/O offloads I/O processing to a dedicated channel, improving efficiency, especially for large or complex I/O operations.
    In contrast, Interrupt-Driven I/O relies on the CPU to handle I/O operations, which can cause delays and inefficiency for high data loads.

 13. How is channel I/O similar to DMA?

    Channel Io and DMA both involve io intstructions being processesed by a seprate controller other than the central cpu.
    Key Differences:
        Complexity: Channel I/O is more sophisticated, supporting advanced features like multitasking I/O and chaining multiple operations.
        Usage: DMA is common in simpler systems, while Channel I/O is typically used in high-performance mainframes or enterprise systems.

 14. What is multiplexing?

    Multiplexing is a technique used to combine multiple signals or data streams into a single transmission medium or channel, allowing efficient utilization of resources.



 15. What distinguishes an asynchronous bus from a synchronous bus?

    Synchronous Bus:
        Definition: 
            A synchronous bus operates with a common clock signal shared by both the sender and receiver.

    Asynchronous Bus:
        Definition: 
            An asynchronous bus does not use a common clock signal; instead, it relies on handshaking protocols to coordinate data transfers between devices.
            Data transfer occurs when both sender and receiver are ready, independent of a shared clock.


 16. What is settle time, and what can be done about it?
    Settle time refers to the delay required for signals on a bus to stabilize before they can be read or written accurately

 17. Why are magnetic disks called direct access devices?
 
 
 18. Explain the relationship among disk platters, tracks, sectors, and
 clusters.
 
 19. What are the major physical components of a rigid disk drive?
 
 20. What is zoned-bit recording?

21. What is seek time?

 22. What is the sum of rotational delay and seek time called?

 23. Explain the differences between an SSD and a magnetic disk.

 24. By how much is an SSD faster than a magnetic disk?

 25. What is short stroking, and how does it affect the relative cost per
 gigabyte of SSDs?

 26. How do enterprise SSDs differ from SSDs intended for laptop
 computers?

 27. What is wear leveling, and why is it needed for SSDs?

 28. What is the name for robotic optical disk library devices?

 29. What is the acronym for computer output that is written directly to
 optical media rather than paper or microfiche?

 30. Magnetic disks store bytes by changing the polarity of a magnetic
 medium. How do optical disks store bytes?

    through use of a laser.

 31. How is the format of a CD that stores music different from the format
 of a CD that stores data? How are the formats alike?

 32. Why are CDs especially useful for long-term data storage?

 33. Do CDs that store data use recording sessions?

 34. How do DVDs store so much more data than regular CDs?

 35. Explain why Blu-ray discs hold so much more data than regular
 DVDs.

 36. Name the three methods for recording WORM disks.

 37. Why is magnetic tape a popular storage medium?

 38. Explain how serpentine recording differs from helical scan recording.

 39. What are two popular tape formats that use serpentine recording?

 40. Which RAID levels offer the best performance?

 41. Which RAID levels offer the best economy while providing adequate
 redundancy?

42. Which RAID level uses a mirror (shadow) set?

 43. What are hybrid RAID systems?

 44. What is the significance of the superparamagnetic limit?

 45. What does the superparamagnetic limit mean for disk drives?

 46. Explain how holographic storage works.

 47. What is the general idea behind MEMS storage?

 48. How does CNT storage work?

 49. What is a memristor, and how does it store data?





