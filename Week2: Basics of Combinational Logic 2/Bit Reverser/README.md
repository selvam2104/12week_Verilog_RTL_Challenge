# Parameterized Bit Reverser implementation

## Design Summary:
A bit reverser reverses the bit order of a vector.
This module implements a parameterized bit reverser that reverses the bit order of an N-bit input vector using explicit bit indexing. The design is fully combinational and avoids built-in reversal operators to reflect hardware-accurate behavior.

## Files:
- 'bit_reverser.v': RTL design
- 'bit_reverser_tb.v': Self-checking testbench
- 'bit_reverser_vcd.png': Simulation waveform

## Simulation:
Testbench applies all input combinations using self-testing testbench. Uses '$display' to report failed cases.

## Waveform:
[bit_reverser_vcd.png]

## Result:
All test cases passed. Design behaves as expected.
