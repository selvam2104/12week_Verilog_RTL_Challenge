# 1:4 Demultiplexer

## Design summary :
This module is an implementation of 1:4 demultiplexer using Verilog HDL. The output 'out[3:0]' will be decided by 'sel[1:0]' signal for input 'in'.
Using case conditions, the output is determined.

## Files :
- 'demux_4.v' : RTL Design
- 'demux_4_tb' : Self-testing Testbench
- 'demux_4_vcd.png' : Simulation waveform

## Functionality Table :
| in | sel  |   out   |
|--- |------|---------|
|  1 |  00  |  out[0] |
|  1 |  01  |  out[1] |
|  1 |  10  |  out[2] |
|  1 |  11  |  out[3] |

## Simulation :
Testbench applies different input combinations. Uses '$display' to report failed cases.

## Waveform :
[demux_4_vcd.png]

## Result :
All testcases are passed and design behaves as expected.
