# Full-Subtractor implementation

## Design Summary:
A Full Subtractor is a circuit that takes three inputs, A, B and Bin, and produces two outputs, Diff (the Difference between A and B and borrow in) and Bout (the borrow out).
Using two half Subtractors and a OR gate,
                Diff = A xor B xor Bin

## Files:
- 'full_sub.v': RTL design
- 'full_sub_tb.v': Self-checking testbench
- 'full_sub_vcd.png': Simulation waveform

## Functionality Table:
| A | B |  Bin |    Diff   |     Bout    |
|---|---|------|-----------|-------------|
| 0 | 0 |   0  |     0     |       0     |
| 0 | 0 |   1  |     1     |       1     |
| 0 | 1 |   0  |     1     |       1     |
| 0 | 1 |   1  |     0     |       1     |
| 1 | 0 |   0  |     1     |       0     |
| 1 | 0 |   1  |     0     |       0     |
| 1 | 1 |   0  |     0     |       0     |
| 1 | 1 |   1  |     1     |       1     |

## Simulation:
Testbench applies all 8 input combinations. Uses '$display' to report failed cases.

## Waveform:
[full_sub_vcd.png]

## Result:
All test cases passed. Design behaves as expected.
