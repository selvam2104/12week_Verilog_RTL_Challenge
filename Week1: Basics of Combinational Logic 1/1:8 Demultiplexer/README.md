# 1:8 Demultiplexer

## Design summary :
This module is an implementation of 1:8 demultiplexer using Verilog HDL. The output 'Y[7:0]' will be decided by 'sel[2:0]' signal for input 'in'.
In this implementation 'demux_8' is kept as top module and 'demux_2' 'demux_4' are instantiated to avoid using case statements.

## Files :
- 'demux_8_in.v' : RTL Design
- 'demux_8_in_tb' : Self-testing Testbench
- 'demux_8_in_vcd.png' : Simulation waveform

## Simulation :
Testbench applies different input combinations. Uses '$display' to report failed cases.

## Waveform :
[demux_8_in_vcd.png]

## Result :
All testcases are passed and design behaves as expected.
