# Right shifter - logical & arithmetic shifting implementation

## Design Summary:
This project implements an N-bit variable right shifter that supports both logical and arithmetic right shift operations without using Verilog shift operators (>>, >>>).
The design explicitly models hardware behavior using bit selection, conditional logic, and sign extension, making it suitable for understanding barrel shifter internals and low-level RTL design.
    Logical Right Shift:
        Shifts input data to the right by a variable amount
        Vacated MSB positions are filled with 0
    Arithmetic Right Shift:
        Preserves the sign of signed data
        Vacated MSB positions are filled with the original sign bit (MSB)

## Files:
- 'right_shifter.v': RTL design
- 'right_shifter_tb.v': Self-checking testbench
- 'right_shifter_vcd.png': Simulation waveform

## Simulation:
Testbench applies all input combinations using self-testing testbench. Uses '$display' to report failed cases.

## Waveform:
[right_shifter_vcd.png]

## Result:
All test cases passed. Design behaves as expected.
