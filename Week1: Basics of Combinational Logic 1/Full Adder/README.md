# Full-Adder implementation

## Design Summary:
A Full Adder is a circuit that takes three inputs, A, B and C_in, and produces two outputs, Sum (the sum of A and B and carry in) and C_out (the carry out).
Using two half adders and a OR gate,
                Sum = A xor B xor C_in
                C_out = (A & B) + (B & C_in) + (C_in & A)

## Files:
- 'full_adder.v': RTL design
- 'full_adder_tb.v': Self-checking testbench
- 'full_adder_vcd.png': Simulation waveform

## Functionality Table:
| A | B | C_in |    Sum    |     C_out   |
|---|---|------|-----------|-------------|
| 0 | 0 |   0  |     0     |       0     |
| 0 | 0 |   1  |     1     |       0     |
| 0 | 1 |   0  |     1     |       0     |
| 0 | 1 |   1  |     0     |       1     |
| 1 | 0 |   0  |     1     |       0     |
| 1 | 0 |   1  |     0     |       1     |
| 1 | 1 |   0  |     0     |       1     |
| 1 | 1 |   1  |     1     |       1     |

## Simulation:
Testbench applies all 8 input combinations. Uses '$display' to report failed cases.

## Waveform:
[full_adder_vcd.png]

## Result:
All test cases passed. Design behaves as expected.
