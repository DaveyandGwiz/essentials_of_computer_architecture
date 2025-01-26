       
1. What happens if an infinite loop includes a watchdog timer
 reset? Name one thing that can be done to guard against this.

    It would reset infinitely.
     Some microcontrollers come with watchdogs that have built-in counter or state-tracking capabilities. Use these features to detect repeated resets and escalate to a full system recovery process.
 
 2. In the sidebar concerning watchdog timer engineering
 decisions, we stated that rebooting an embedded system typically
 takes less time than rebooting a personal computer. Why do you think
 this is so?

 In general there is less data that needs to be loaded into memory tfor system to reach functional state.
 The hardware and software is also commonly optimaized for efficency and speed.
 
 
 3. a) Show how a two-input XOR gate can be implemented in the
 PAL shown below.
 
 1. b) Show how a two-input NAND gate can be implemented in the
 PLA shown below.