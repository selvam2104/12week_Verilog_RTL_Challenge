# Parameterized comparator implementation

## Design Summary:
Magnitude comparator is a type of Combinational circuit, It Basically compares two binary numbers and determines their relative magnitude. It gives output whether one number is greater than the other, or less than or equal.
The circuit works by comparing the bits of the two numbers starting from the most significant bit (MSB) and moving toward the least significant bit (LSB). At each bit position, the two corresponding bits of the numbers are compared. 
                For greater than, A>B = 1
                For less than, A<B = 1
                For equal, A=B = 1

## Files:
- 'comparator.v': RTL design
- 'comparator_tb.v': Self-checking testbench
- 'comparator_vcd.png': Simulation waveform

## Simulation:
Testbench applies all input combinations using self-testing testbench. Uses '$display' to report failed cases.

## Waveform:
[comparator_vcd.png]

## Result:
All test cases passed. Design behaves as expected.
