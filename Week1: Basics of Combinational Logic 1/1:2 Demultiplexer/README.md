# 1:2 Demultiplexer

## Design summary :
This module is an implementation of 1:2 demultiplexer using Verilog HDL. The output 'Y0,Y1' will be decided by 'sel' signal for input 'in'.
If the 'sel' signal is '0', then the output will 'Y0', else if 'sel' signal is '1', then the output will be 'Y1'.

## Files :
- 'demux_2.v' : RTL Design
- 'demux_2_tb' : Self-testing Testbench
- 'demux_2_vcd.png' : Simulation waveform

## Functionality Table :
| in | sel | out |
|--- |-----|-----|
|  1 |  0  |  Y0 |
|  1 |  1  |  Y1 |

## Simulation :
Testbench applies different input combinations. Uses '$display' to report failed cases.

## Waveform :
[demux_2_vcd.png]

## Result :
All testcases are passed and design behaves as expected.
