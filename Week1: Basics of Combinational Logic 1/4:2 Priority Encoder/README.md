# 4:2 Priority Encoder implementation

## Design Summary:
A 4 to 2 priority encoder has 4 inputs: [3:0] in and 2 outputs: [1:0] out. Here, the input, in[3] has the highest priority, whereas the input, in[0] has the lowest priority. In this case, even if more than one input is ‘1’ at the same time, the output will be the code corresponding to the input, which is having higher priority.

The priority encoder generates values only if any one of the input is '1', using 'valid' variable.
Here we use 'casez' to check the states to minimize the state definition in case statements.
The first prioritized '1' will get selected as out case result.

## Files:
- 'p_encoder_4.v': RTL design
- 'p_encoder_4_tb.v': Self-checking testbench
- 'p_encoder_4_vcd.png': Simulation waveform 

## Simulation:
Testbench applies all input combinations using self-testing testbench. Uses '$display' to report failed cases.

## Waveform:
[p_encoder_4_vcd.png]

## Result:
All test cases passed. Design behaves as expected.
