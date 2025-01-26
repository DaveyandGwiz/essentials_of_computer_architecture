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

 4. What is the difference between a microcontroller and a system-on-a chip?

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
 
def (HDL). Hardware definition languages allow a designer to specify circuit behavior on an algorithmic level. Instead of thinking about the circuit in terms of gates and wires, a designer works with variables and control structures

 6. How does one program an FPGA?
     A third type of PLD, the field-programmable gate array (FPGA), provides programmable logic using lookup tables instead of changing the wiring of the chip.

     A field-programmable gate array (FPGA) is programmed using a combination of hardware description languages (HDLs) like Verilog or VHDL to define the logic. Modern workflows may use higher-level synthesis tools or graphical environments to abstract some of the complexity. Programming involves creating a design that specifies how the FPGA's lookup tables, flip-flops, and interconnects are configured. The design is synthesized, verified, and then uploaded to the FPGA using vendor-specific tools like Xilinx Vivado or Intel Quartus.


 
 7. Name the three aspects of digital synthesis as articulated by Gajski.
 
    Behavioral: Describes what the system does or its intended functionality.
    Structural: Focuses on how the components are connected to implement the behavior.
    Physical: Defines the physical placement and routing of components in hardware.


 8. Discuss the reasons that one might choose SystemC over Verilog.
 
    Higher Abstraction: SystemC operates at a higher level of abstraction, enabling easier modeling of complex systems.
    Software/Hardware Co-Design: SystemC supports concurrent development of hardware and software, making it suitable for embedded systems where both interact closely.
    C++ Integration: SystemC extends C++, making it familiar and flexible for software engineers transitioning to hardware design.
    Simulation Speed: High-level simulations in SystemC can be faster and more efficient for early design exploration.

 9. In what ways does SpecC differ from SystemC?
 
    Specialization: SpecC is specifically tailored for embedded system design, while SystemC is more general-purpose.
    Ease of Use: SpecC provides a simpler syntax and predefined constructs for embedded systems, reducing design complexity.
    Focus on Hardware/Software Partitioning: SpecC emphasizes partitioning and communication between hardware and software components.
    Formalism: SpecC adheres to strict design semantics, which can make it more predictable for embedded applications.

 10. Why is virtual memory not often used in embedded systems?
    Resource Constraints: Embedded systems typically have limited memory and processing power, making virtual memory impractical.
    Real-Time Requirements: Virtual memory can introduce unpredictable delays due to page faults, which are unacceptable in real-time applications.
    Simplicity: Embedded systems are often designed for specific tasks, reducing the need for features like virtual memory.

 
 11. Why is the prevention of memory leaks so important in embedded systems?
    Limited Resources: Embedded systems often have fixed and limited memory, so leaks can quickly deplete resources and cause system failure.
    Long Uptime: Many embedded systems are expected to run continuously for long periods, making memory leaks more likely to accumulate over time.
    Mission-Critical Applications: In systems like medical devices or aerospace, memory leaks can lead to catastrophic failures.
 
 12. How do real-time operating systems differ from non-real-time
 operating systems?
    Timing Guarantees: Real-time operating systems (RTOS) provide deterministic execution times for tasks, ensuring deadlines are met.
    Task Scheduling: RTOS typically uses priority-based or rate-monotonic scheduling, focusing on task deadlines rather than throughput or fairness.
    Minimal Latency: RTOS is optimized for low latency, unlike general-purpose OSes which prioritize maximizing resource utilization.

 
 13. What are the major considerations in selecting an operating system
 for an embedded system?
    Real-Time Requirements: Does the system need deterministic task execution?
    Footprint: Can the OS fit within the system’s memory and storage constraints?
    Power Consumption: Is the OS energy-efficient for the device’s power budget?
    Supported Hardware: Does the OS support the system’s hardware components?
    Development Tools: Are there sufficient tools for debugging and development?
    Cost and Licensing: Does the OS fit within the project’s budget and licensing needs?
 
 14. How is embedded systems software development different from
 general-purpose software development?

    Hardware Interaction: Embedded development often requires low-level programming and direct interaction with hardware components.
    Resource Constraints: Code must be highly optimized for limited memory, CPU power, and energy consumption.
    Real-Time Requirements: Embedded software may need to meet strict timing constraints.
    Custom Environments: Development often involves working with custom hardware, operating systems, or toolchains.
    Testing and Debugging: Testing embedded systems can be more complex, requiring hardware simulators or in-circuit debuggers.