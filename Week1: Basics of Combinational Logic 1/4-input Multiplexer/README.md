# 4:1 Multiplexer

## Design summary :
This module is an implementation of 4-input multiplexer using Verilog HDL. The output 'Y' will be decided by 'sel' signal for inputs 'A' 'B' 'C' 'D'
This module is setted as Top module and 'mux_2_in' is instatiated 3 times. Two 2-to-1 mux (u1,u2) to select 2 out of 4 inputs and One 2-to-1 mux (u3) to select 1 out of 2 resulted from previous muxes.

## Files :
- 'mux_4.v' : RTL Design
- 'mux_4_tb' : Self-testing Testbench
- 'mux_4_vcd.png' : Simulation waveform

## Functionality Table :
| A | B | C | D | sel  |     Y     |
|---|---|---|---|------|-----------|
| 1 | 0 | 0 | 0 |  00  |     1     |
| 0 | 1 | 0 | 0 |  01  |     1     |
| 0 | 0 | 1 | 0 |  10  |     1     |
| 0 | 0 | 0 | 1 |  11  |     1     |

## Simulation :
Testbench applies different input combinations. Uses '$display' to report failed cases.

## Waveform :
[mux_4_vcd.png]

## Result :
All testcases are passed and design behaves as expected.
