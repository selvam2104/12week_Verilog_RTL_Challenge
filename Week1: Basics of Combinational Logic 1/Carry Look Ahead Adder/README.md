# 4-bit Carry Look Ahead Adder implementation

## Design Summary:
A Carry Look-Ahead Adder (CLA) is a fast digital circuit that adds binary numbers by predicting carry bits in parallel, rather than waiting for them to ripple sequentially, dramatically reducing delay. It achieves this speed by generating "Generate" (G) and "Propagate" (P) signals for each bit position, which are then used by dedicated logic to compute all carries simultaneously, making addition much faster and independent of the number of bits, unlike Ripple Carry Adders.

Inputs:
A[3:0] – First 4-bit operand
B[3:0] – Second 4-bit operand
Cin – Carry input

Outputs:
Sum[3:0] – 4-bit sum output
Cout – Final carry output

Carry Look Ahead Logic:
G[3:0] - Carry Generate - A signal indicating if a carry is generated at that bit position
P[3:0] - Carry Propagate - A signal indicating if a carry-in to a bit position will also be carried out (propagated) to the next position

Expressions:
Gi = Ai · Bi
Pi = Ai xor Bi
Ci+1 = Gi + (Pi · Ci)
Si = Pi ⊕ Ci

C1 = G0 + P0·Cin
C2 = G1 + P1·G0 + P1·P0·Cin
C3 = G2 + P2·G1 + P2·P1·G0 + P2·P1·P0·Cin
Cout = G3 + P3·G2 + P3·P2·G1 + P3·P2·P1·G0 + P3·P2·P1·P0·Cin

## Files:
- 'cla.v': RTL design
- 'cla_tb.v': Self-checking testbench
- 'cla_vcd.png': Simulation waveform

## Simulation:
Testbench applies all input combinations through for loop to check the Ripple Carry Adder outputs. Uses '$display' to report failed cases.

## Waveform:
[cla_vcd.png]

## Result:
All test cases passed. Design behaves as expected.
