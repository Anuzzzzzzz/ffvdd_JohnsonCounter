# Johnson Counter

![image](https://github.com/Anuzzzzzzz/ffvdd_JohnsonCounter/assets/148976244/22f149d4-655d-41c6-909e-e48f43f348a0)


A Johnson counter, also known as a "twisted ring counter" or "shift register counter," is a digital counter circuit commonly used in electronics and digital logic design. It operates as a circular shift register with bidirectional counting capabilities. These counters have 2^n states, with 'n' being the number of flip-flops used, making them suitable for counting modulo 2^n. They exhibit self-correcting behavior, automatically resolving errors caused by noise or disturbances. The counting sequence can be either the straight binary sequence or its complement, depending on the feedback connections

Functionality:
- If reset is low (0), the output q is set to 0, regardless of the clock signal.
- If reset is high (1), the counter increments its value on each rising edge of the clock signal. The counter is implemented in a way that it circulates through a sequence of values, making it a Johnson counter.

The line q <= {{q[6:0]},{~q[7]}}; shifts the bits of q one position to the left and inserts the negation of the MSB at the rightmost position. This effectively creates a circular shift in the 8-bit data, and the negation of the MSB ensures that the counter sequence is Johnson-encoded.

Examples where Johnson counters are used:
1. Frequency Division: Johnson counters are commonly employed in frequency dividers. By using a Johnson counter, you can divide an input frequency by a factor of 2^n. This is particularly useful in applications like clock signal generation and frequency synthesis

2. LED Chasers and Light Effects: Johnson counters can be used in lighting and display applications to create various patterns and light effects. For example, LED chaser circuits use Johnson counters to sequentially activate LEDs in a circular pattern, creating an eye-catching moving light display



# Waveform

![image](https://github.com/Anuzzzzzzz/ffvdd_JohnsonCounter/assets/148976244/55b308e7-17a9-4e03-b1e4-f3cd09d87a09)



# Code Coverage 

![image](https://github.com/Anuzzzzzzz/ffvdd_JohnsonCounter/assets/148976244/227efa0a-f16c-402e-ac14-52dc9969a927)

Overall Code Coverage is 95%



# LAYERED TESTBENCH 
jc Module:
The jc module is a Johnson counter that counts in a cyclic sequence. It has an 8-bit output q and supports synchronous reset (reset) and clock (clk) inputs.
The counter logic is implemented using a conditional assignment in the always block, which shifts the bits of q to the left and includes the inverted value of q[7] when the reset is not active.

jc_bfm Class:
This class represents the Bus Functional Model (BFM) for the Johnson counter. It interacts with the interface (jc_intf) and generates transactions to stimulate the jc module.
It includes tasks for resetting the interface and a main task for generating transactions and displaying transaction details.

jc_cov Class:
This class defines a coverage model for the Johnson counter. It utilizes a covergroup to track the coverage of each bit of the counter's output (q).

environment Class:
The environment class orchestrates the testbench components, including the generator (gen), BFM (bfm), and coverage model (cov).
It includes tasks for pre-test setup, the main test process, and post-test verification.

generator Class:
This class is responsible for generating random transactions for the Johnson counter. It uses a mailbox (gen2bfm) to communicate with the BFM.

Interface:
This interface defines the communication protocol between the jc module and the testbench components, including clocking information and data signals.

program test :
The program initiates the testbench by creating an instance of the environment class and running the test.
transaction Class:

This class represents a transaction for the Johnson counter, storing the output values (q). It includes a display function for visualizing transaction details.
jc_tb Module:

This is the top-level module for the testbench, instantiating the jc module and connecting it to the testbench components.


**CODE COVERAGE**

![image](https://github.com/Anuzzzzzzz/ffvdd_JohnsonCounter/assets/148976244/5c29a038-2548-4952-ba7f-506f1975e2c6)

