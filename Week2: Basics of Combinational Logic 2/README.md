# Week 02 – Basic Combinational Logic 2

## Modules Implemented
- Parity Generator & Checker
- Binary to Gray
- Gray to Binary
- Comparator parameterized (2-bit, 4-bit, 8-bit)
- Multiplexer using tristate buffers
- Barrel Shifter (Left/Right)
- Arithmetic Shift and Logical Shift
- Leading Zero Counter
- Priority Arbiter
- Bit Reverser

## Features
- Fully synthesizable RTL
- Self-checking testbenches
- GTKWave simulation
- README.md file for every modules

## How to Simulate
iverilog -o logic_sim *.v *_tb.v

vvp logic_sim

gtkwave *.vcd

(* - rtl_design filename)
