# 4:16 Decoder implementation

## Design Summary:
a combinational logic circuit that converts an N-bit binary input code into M output channels in such a way that only one output channel is activated for each one of the possible combinations of inputs is known as a decoder.
Which gives,
        4 combinations for 2 inputs,
        8 combinations for 3 inputs, and so on

Here 4:16 decoder is created by cascading two 3:8 decoders. By reviewing in[3] can assign MSB to lower vs upper output.
After in[3], using 3:8 decoder, output can be determined.

## Files:
- 'decoder_4.v': RTL design
- 'decoder_4_tb.v': Self-checking testbench
- 'decoder_4_vcd.png': Simulation waveform 

## Simulation:
Testbench applies all input combinations using self-testing testbench. Uses '$display' to report failed cases.

## Waveform:
[decoder_4_vcd.png]

## Result:
All test cases passed. Design behaves as expected.
