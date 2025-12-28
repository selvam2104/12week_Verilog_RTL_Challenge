# BCD Adder implementation

## Design Summary:
A BCD adder is a circuit for the addition of two binary-coded decimal numbers. BCD is another format used in representing numbers where each digit will be represented using a 4-bit binary code. In BCD, it is obvious that the most significant bit (leftmost) is always 0, and therefore each digit will be confined to the range 0-9.

## Files:
- 'bcd_adder.v': RTL design
- 'bcd_adder_tb.v': Self-checking testbench
- 'bcd_adder_vcd.png': Simulation waveform

## Simulation:
Testbench applies all input combinations. Uses '$display' to report failed cases.

## Waveform:
[bcd_adder_vcd.png]

## Result:
All test cases passed. Design behaves as expected.
