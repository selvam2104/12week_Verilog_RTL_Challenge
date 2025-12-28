# 8:3 Priority Encoder implementation

## Design Summary:
A 8 to 3 priority encoder has 8 inputs: [7:0] in and 3 outputs: [2:0] out. Here, the input, in[7] has the highest priority, whereas the input, in[0] has the lowest priority. In this case, even if more than one input is ‘1’ at the same time, the output will be the code corresponding to the input, which is having higher priority.

The priority encoder generates values only if any one of the input is '1', using 'valid' variable.
Here we use 'casez' to check the states to minimize the state definition in case statements.
The first prioritized '1' will get selected as out case result.

## Files:
- 'p_encoder_8.v': RTL design
- 'p_encoder_8_tb.v': Self-checking testbench
- 'p_encoder_8_vcd.png': Simulation waveform 

## Simulation:
Testbench applies all input combinations using self-testing testbench. Uses '$display' to report failed cases.

## Waveform:
[p_encoder_8_vcd.png]

## Result:
All test cases passed. Design behaves as expected.
