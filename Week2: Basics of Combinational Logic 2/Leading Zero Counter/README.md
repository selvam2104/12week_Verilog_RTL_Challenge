# Leading zero counter implementation

## Design Summary:
A Leading Zero Counter counts the number of consecutive 0s starting from the MSB of a binary number until the first 1 appears.
A leading zero counter is a priority encoder starting from the MSB, used to detect normalization shifts in arithmetic datapaths.
This design models the hardware priority logic used in LZC blocks without relying on reduction operators.

## Files:
- 'lead_zero_count.v': RTL design
- 'lead_zero_count_tb.v': Self-checking testbench
- 'lead_zero_count_vcd.png': Simulation waveform

## Simulation:
Testbench applies all input combinations using self-testing testbench. Uses '$display' to report failed cases.

## Waveform:
[lead_zero_count_vcd.png]

## Result:
All test cases passed. Design behaves as expected.
