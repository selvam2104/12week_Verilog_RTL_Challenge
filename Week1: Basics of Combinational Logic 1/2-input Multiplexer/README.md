# 2 input Multiplexer

## Design summary :
This module is an implementation of 2-input multiplexer using Verilog HDL. The output 'Y' will be 'A' if 'sel' is HIGH (1), otherwise 'B'

## Files :
- 'mux_2_in.v' : RTL Design
- 'mux_2_in_tb' : Self-testing Testbench
- 'mux_2_in_vcd.png' : Simulation waveform

## Functionality Table :
| A | B | sel |     Y     |
|---|---|-----|-----------|
| 0 | 0 |  0  |     0     |
| 0 | 0 |  1  |     0     |
| 0 | 1 |  0  |     1     |
| 0 | 1 |  1  |     0     |
| 1 | 0 |  0  |     0     |
| 1 | 0 |  1  |     1     |
| 1 | 1 |  0  |     1     |
| 1 | 1 |  1  |     1     |

## Simulation :
Testbench applies all 8 input combinations. Uses '$display' to report failed cases.

## Waveform :
[mux_2_in_vcd.png]

## Result :
All testcases are passed and design behaves as expected.
