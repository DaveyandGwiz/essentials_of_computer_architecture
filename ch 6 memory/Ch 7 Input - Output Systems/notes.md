

- Ch 7 Input/Output Systems




7.3 Amdhal's Law

Amdahl’s Law states that the overall 
speedup of a computer system depends on both the speedup in a
 particular component and how much that component is
 used by the system. 
 
 In symbols:

 S = 1 / [(1-f)+(f/k)]

where   
    S = overall system speedup
    f = fraction of work performed by he faster compnent
    k = speedup of the new componet

Let's say most process spend 70% of time running the cpu and 30% of time waiting for a process from disk.

Between a processor that is 50% faste and disks that are 150% percent faster, which will prvide a great speedup to the system?

50% faster processor:
    f = 0.7, k = 1.5 // k 1+increase in performance

    Speed up = S = 1 / ((1-0.7)+(0.7/1.5)) = 1.30434783
    A 30% speedup

150% faster disks:
    f = 0.3, k = 2.5

    Speed up = S = 1 / ((1-0.3)+(0.3/2.5)) = 1.2195122

The processor costs 10k while the disks cost 7 k.

increase per dollar:
    1.30434783/10,000 = 0.000130434783
    1.2195122/7,000 = 0.000174216029
    so the new disks provide a bigger bang for your buck.

    - What do we mean by "Speedup"?

        A is N% faster than B if (time B / time A) = 1 + N/100


ex - 
a segment of code that is used 10% of the time can be made 100 times faster what is the speed up?
a hundred time speedup up. 
If it is 2 times faster the it is 100% faster.
If it is 100 times faster it is 1000% speed up.

        A is N% faster than B if (time B / time A) = 1 + N/100




A is N% faster than B if (time B / time A) = 1 + N/100
So a 100% speed up is some numer



















