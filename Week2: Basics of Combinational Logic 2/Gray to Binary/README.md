# Gray code to Binary conversion implementation

## Design Summary:
A gray code-to-binary converter is a digital circuit that can translate a gray code into an equivalent pure binary code. Thus, a gray code to binary converter takes a gray code as input and gives a pure binary code as output.
Binary bits are formed by accumulative XOR from MSB to LSB

                B[n-1] = G[n-1]
                B[i] = B[i+1] ^ G[i]

## Files:
- 'gray_bin.v': RTL design
- 'gray_bin_tb.v': Self-checking testbench
- 'gray_bin_vcd.png': Simulation waveform

## Functionality Table:
| Binary | Gray |
|--------|------|
|  0000  | 0000 |
|  0001  | 0001 |
|  0010  | 0011 |
|  0011  | 0010 |
|  0100  | 0110 |
|  0101  | 0111 |
|  0110  | 0101 |
|  0111  | 0100 |
|  1000  | 1100 |
|  1001  | 1101 |
|  1010  | 1111 |
|  1011  | 1110 |
|  1100  | 1010 |
|  1101  | 1011 |
|  1110  | 1001 |
|  1111  | 1000 |

## Simulation:
Testbench applies all input combinations using self-testing testbench. Uses '$display' to report failed cases.

## Waveform:
[gray_bin_vcd.png]

## Result:
All test cases passed. Design behaves as expected.
