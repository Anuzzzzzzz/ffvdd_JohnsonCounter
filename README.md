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

