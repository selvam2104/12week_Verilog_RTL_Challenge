# 2:4 Decoder implementation

## Design Summary:
a combinational logic circuit that converts an N-bit binary input code into M output channels in such a way that only one output channel is activated for each one of the possible combinations of inputs is known as a decoder.
Which gives,
        4 combinations for 2 inputs,
        8 combinations for 3 inputs, and so on

## Files:
- 'decoder_2.v': RTL design
- 'decoder_2_tb.v': Self-checking testbench
- 'decoder_2_vcd.png': Simulation waveform

## Functionality Table:
| in | en_in|    out    |  
|----|------|-----------|
| 00 |   0  |   0000    |  
| 00 |   1  |   0001    |     
| 01 |   0  |   0000    |   
| 01 |   1  |   0010    |     
| 10 |   0  |   0000    |     
| 10 |   1  |   0100    |    
| 11 |   0  |   0000    |     
| 11 |   1  |   1000    |    

## Simulation:
Testbench applies all 8 input combinations using self-testing testbench. Uses '$display' to report failed cases.

## Waveform:
[decoder_2_vcd.png]

## Result:
All test cases passed. Design behaves as expected.
