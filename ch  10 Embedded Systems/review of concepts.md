REVIEW OF ESSENTIAL TERMS
 AND CONCEPTS
 
 1. In which ways do embedded systems differ from general-purpose
 computers?

embedded systems differ from general-purpose computers because they
 carry out a limited set of tasks within the domain of a
 larger system. Most often, the larger system is something
 other than a computer. 
 
def microcontroller:
    Microcontrollers have a great deal in common with
    general-purpose processors. Like a general-purpose
    processor, a microcontroller is programmable and can
    access a variety of peripherals. Unlike a general-purpose
    processor, a microcontroller runs at a much slower clock
    speed and has much smaller memory address space, and
    its software cannot be changed by the consumer.

 2. How is embedded systems programming different from general
 applications development?

 When an embedded system is designed more focus is given to hardware and the ability for the decvice to interact and respond to systems elements that lie outside of the computer, such as real world events.
 
 3. Why are watchdog timers necessary in many embedded systems?
 
 Because humans do not directly interact with software in embedded systems,
 watchdog timers provide a monitoring and failsafe mechanism in the the system.
 Such as restart a process due to hanging or infinite loop.
  If the system fails to reset the timer periodically—indicating it is functioning correctly—the watchdog automatically triggers a system reset or initiates corrective actions to recover from the failure.

 4. What is the difference between a microcontroller and a system-on-a
chip?
    We have observed that microcontrollers are computer
    systems in miniature. They consist of a CPU, memory,
    and I/O ports. They are not, however, called systems on
    a chip. That designation is usually reserved for devices
    that are much more complex.

SOC:
    More than one processor (often).
    More than one clock or memory space.
    specialized individual processors.
    Larger memory.
    Support for an OS.

 
 5. What is the difference between a PLA and a PAL?
    programmable logic device (PLD)
    PLDs come in three general varieties: 
        programmable array logic,
        programmable logic arrays, 
        and field-programmable gate arrays. 

    PALs consist of a set of inputs and a set of outputs that are connected by an array of programmable AND gates and a fixed array of OR gates.
    Outputs are aloways a product of AND gates.

    PLAs are more flexible but slower and more costly.

     To maximize functionality and flexibility, PLA and PAL chips usually include several arrays on one silicon die. Both types are referred to as complex programmable logic devices (CPLDs).
 
 6. How does one program an FPGA?
     A third type of PLD, the field-programmable gate array (FPGA), provides programmable logic using lookup tables instead of changing the wiring of the chip.

     
 
 7. Name the three aspects of digital synthesis as articulated by Gajski.
 
 
 8. Discuss the reasons that one might choose SystemC over Verilog.
 
 
 9. In what ways does SpecC differ from SystemC?
 
 
 10. Why is virtual memory not often used in embedded systems?
 
 
 11. Why is the prevention of memory leaks so important in embedded
 systems?
 
 
 12. How do real-time operating systems differ from non-real-time
 operating systems?
 
 
 13. What are the major considerations in selecting an operating system
 for an embedded system?
 
 
 14. How is embedded systems software development different from
 general-purpose software development?
