# 4-bit Ripple Carry Adder implementation

## Design Summary:
A 4-bit Ripple Carry Adder (RCA) is a combinational arithmetic circuit used to add two 4-bit binary numbers along with an input carry (Cin). The adder produces a 4-bit sum (Sum) and a carry-out (Cout).
The design is implemented by cascading four 1-bit Full Adders. Each Full Adder computes the sum and carry for one bit position. The carry generated at each stage ripples to the next higher bit, hence the name Ripple Carry Adder.

Inputs:
A[3:0] – First 4-bit operand
B[3:0] – Second 4-bit operand
Cin – Carry input

Outputs:
Sum[3:0] – 4-bit sum output
Cout – Final carry output

## Files:
- 'rca.v': RTL design
- 'rca_tb.v': Self-checking testbench
- 'rca_vcd.png': Simulation waveform

## Simulation:
Testbench applies all input combinations through for loop to check the Ripple Carry Adder outputs. Uses '$display' to report failed cases.

## Waveform:
[rca_vcd.png]

## Result:
All test cases passed. Design behaves as expected.
