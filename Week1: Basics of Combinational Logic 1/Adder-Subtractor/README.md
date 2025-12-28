# Adder-Subtractor implementation

## Design Summary:
A Binary Adder-Subtractor is can do both the addition and subtraction of binary numbers in one circuit itself. The operation is performed depending on the binary value the control signal holds.
                if sel=0 -> ADD = A ^ B ^ sel
                if sel=1 -> SUB = A ^ (~B) ^ sel

## Files:
- 'add_sub.v': RTL design
- 'add_sub_tb.v': Self-checking testbench
- 'add_sub_vcd.png': Simulation waveform

## Simulation:
Testbench applies all 8 input combinations. Uses '$display' to report failed cases.

## Waveform:
[add_sub_vcd.png]

## Result:
All test cases passed. Design behaves as expected.
