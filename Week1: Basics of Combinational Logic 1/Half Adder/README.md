# Half-Adder implementation

## Design Summary:
A Half Adder is a circuit that takes two inputs, A and B, and produces two outputs, Sum (the sum of A and B) and C_out (the carry out).
Basically it contains,
            one XOR gate for Sum which produces '1'(HIGH), if odd number of input signals are '1'(HIGH)
            one AND gate for carry out which produces '1'(HIGH), if all input signals are '1'(HIGH)

## Files:
- 'half_adder.v': RTL design
- 'half_adder_tb.v': Self-checking testbench
- 'half_adder_vcd.png': Simulation waveform

## Functionality Table:
| A | B | Sum = A^B | C_out = A&B |
|---|---|-----------|-------------|
| 0 | 0 |     0     |       0     |
| 0 | 1 |     1     |       0     |
| 1 | 0 |     1     |       0     |
| 1 | 1 |     0     |       1     |

## Simulation:
Testbench applies all 4 input combinations. Uses '$display' to report failed cases.

## Waveform:
[half_adder_vcd.png]

## Result:
All test cases passed. Design behaves as expected.
