# Barrel shifter (left/right) implementation

## Design Summary:
A barrel shifter is a fast digital circuit that shifts or rotates a data word by any number of bits in a single clock cycle, implemented using multiplexers (MUXes) to select different bit positions for parallel output, making it crucial for CPUs and DSPs for efficient data manipulation, logical/arithmetic shifts, and data alignment. Unlike slower shift registers, it avoids sequential bit-by-bit shifting by routing all bits simultaneously through combinational logic. 
                Stage 1 → shift by 1
                Stage 2 → shift by 2
                Stage 3 → shift by 4
A barrel shifter shifts data by any number of bits in ONE cycle.
It is built from log₂(N) stages of multiplexers.

## Files:
- 'barrel_shifter.v': RTL design
- 'barrel_shifter_tb.v': Self-checking testbench
- 'barrel_shifter_vcd.png': Simulation waveform

## Simulation:
Testbench applies all input combinations using self-testing testbench. Uses '$display' to report failed cases.

## Waveform:
[barrel_shifter_vcd.png]

## Result:
All test cases passed. Design behaves as expected.
