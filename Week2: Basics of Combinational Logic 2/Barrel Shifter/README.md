# Multiplexer using tri-state buffer implementation

## Design Summary:
A three-state bus buffer is an integrated circuit that connects multiple data sources to a single bus. The open drivers can be selected to be either a logical high, a logical low, or high impedance which allows other buffers to drive the bus. 
Each input drives the same wire
Selection decides who is allowed to drive
Others go to Z

                assign Y = enable ? data : 1'bz;

## Files:
- 'mux_tristate.v': RTL design
- 'mux_tristate_tb.v': Self-checking testbench
- 'mux_tristate_vcd.png': Simulation waveform

## Simulation:
Testbench applies all input combinations using self-testing testbench. Uses '$display' to report failed cases.

## Waveform:
[mux_tristate_vcd.png]

## Result:
All test cases passed. Design behaves as expected.
