# Logic Gates - 1 bit
- AND Gate, OR Gate, NAND Gate, NOR Gate, NOT Gate, XOR Gate, XNOR Gate

## Design summary :
This module is an implementation of logic gate using Verilog HDL. This module is been kept as Top Module and the gate modules are intantiated into the Top Module.
The logic gates are predefined and called into the top_module.

## Files :
- 'logic_gates.v' : RTL Design
- 'logic_gates_tb' : Self-testing Testbench
- 'logic_gates_vcd.png' : Simulation waveform

## Functionality Table :
| A | B | AND |  OR | NAND | NOR | XOR | XNOR |
|---|---|-----|-----|------|-----|-----|------|
| 0 | 0 |  0  |  0  |   1  |  1  |  0  |   1  |
| 0 | 1 |  0  |  1  |   1  |  0  |  1  |   0  |
| 1 | 0 |  0  |  1  |   1  |  0  |  1  |   0  |
| 1 | 1 |  1  |  1  |   0  |  0  |  0  |   1  |

## Simulation :
Testbench applies all input combinations for respective logic gates.

## Waveform :
[logic_gates_vcd.png]

## Result :
All testcases are passed and design behaves as expected.
