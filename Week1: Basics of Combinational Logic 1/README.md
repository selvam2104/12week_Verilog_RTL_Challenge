# Week 01 – Basic Logic Gates

## Modules Implemented
- AND Gate
- OR Gate
- XOR Gate
- NAND Gate
- NOR Gate
- NOT Gate
- XNOR Gate
- Basic logic gates
- 2-input & 4-input Multiplexers
- 1:2, 1:4, 1:8 Demultiplexers
- 2:4, 3:8, 4:16 Decoder
- 4:2, 8:3 Encoders with priority
- Half Adder/Full Adder
- 4-bit Ripple Carry Adder
- Carry Look Ahead Adder
- Half Subtractor/Full Subtractor
- Adder-Subtractor using 2’s complement
- 4-bit BCD Adder

## Features
- Fully synthesizable RTL
- Self-checking testbenches
- GTKWave simulation
- README.md file for every modules

## How to Simulate
iverilog -o logic_sim *.v *_tb.v
vvp logic_sim
gtkwave *.vcd
