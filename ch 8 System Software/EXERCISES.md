

EXERCISES

1. What do you feel are the limitations of a computer that has no
 operating system? How would a user load and execute a program?
 2. Microkernels attempt to provide as small a kernel as possible,
 putting much of the operating system support into additional
 modules. What do you feel are the minimum services that the kernel
 must provide?
 3. If you were writing code for a real-time operating system, what
 restrictions might you want to impose on the system? Hint: Think
 about the types of things that cause unpredictable reaction times.
 (How might a memory access be delayed, for example?)
 4. What is the difference between multiprogramming and
 multiprocessing? Between multiprogramming and multithreading?
 5.   
◆
 5. Under what circumstances is it desirable to collect groups of
 processes and programs into subsystems running on a large
 computer? What advantages would there be to creating logical
 partitions on this system?
 6.      
6. What advantages would there be to using both subsystems and
 logical partitions on the same machine?
 7.   
◆
 7. When is it appropriate to use nonrelocatable binary program
 code? Why is relocatable code preferred?
 8.      
8. Suppose there were no such thing as relocatable program code.
 How would the process of memory paging be made more complex?
 9.   
◆
 9. Discuss the advantages and disadvantages of dynamic linking.
 10.    
10. What problems does an assembler have to overcome in order to
 produce complete binary code in one pass over the source file? How
 would code written for a one-pass assembler be different from code
 written for a two-pass assembler?
11.    
11. Why should assembly language be avoided for general
 application development? Under what circumstances is assembly
 language preferred or required?
 12.    
13.    
14.    
15.    
16.    
17.    
18.    
12. Under what circumstances would you argue in favor of using
 assembly language code for developing an application program?
 13. What are the advantages of using a compiled language over an
 interpreted one? Under what circumstances would you choose to use
 an interpreted language?
 14. Discuss the following questions relative to compilers:
 1. a) Which phase of a compiler would give you a syntax error?
 2. b) Which phase complains about undefined variables?
 3. c) If you try to add an integer to a character string, which
 compiler phase would emit the error message?
 15. Why is the execution environment of a Java class called a virtual
 machine? How does this virtual machine compare to a real machine
 running code written in C?
 16. Why do you suppose the method area of a JVM is global to all of
 the threads running in the virtual machine environment?
 17. We stated that only one method at a time can be active within
 each thread running in the JVM. Why do you think this is the case?
 18. The Java bytecode for access to the local variable array for a class
 is at most two bytes long. One byte is used for the opcode; the other
 indicates the offset into the array. How many variables can be held in
 the local variable array? What do you think happens when this
 number is exceeded?
 19. 
◆
 19. Java is called an interpreted language, yet Java is a compiled
 language that produces a binary output stream. Explain how this
 language can be both compiled and interpreted.
 20.    20. We stated that the performance of a Java program running in
 the JVM cannot possibly match that of a regular compiled language.
 Explain why this is so.
21. 
◆
 21. Answer the following with respect to database processing:
 1. a) What is a race condition? Give an example.
 2. b) How can race conditions be prevented?
 3. c) What are the risks in race condition prevention?
 22.    
23.    
24.    
22. In what ways are n-tiered transaction processing architectures
 superior to single-tiered architectures? Which usually costs more?
 23. To improve performance, your company has decided to replicate
 its product database across several servers so that not all transactions
 go through a single system. What sorts of issues will need to be
 considered?
 24. We said that the risk of deadlock is always present anytime a
 system resource is locked. Describe a way in which deadlock can
 occur.
 25.  *25. Research various command-line interfaces (such as UNIX, MS
DOS, and VMS) and different windows interfaces (such as any
 Microsoft Windows product, MacOS, and KDE).
 1. a) Consider some of the major commands, such as getting a
 directory listing, deleting a file, or changing directories. Explain
 how each of these commands is implemented on the various
 operating systems you studied.
 2. b) List and explain some of the commands that are easier using
 a command-line interface versus using a GUI. List and explain
 some of the commands that are easier using a GUI versus using
 a command-line interface.
 3. c) Which type of interface do you prefer? Why?