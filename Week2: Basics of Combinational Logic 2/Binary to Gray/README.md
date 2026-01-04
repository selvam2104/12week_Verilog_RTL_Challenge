# Binary to Gray code conversion implementation

## Design Summary:
The binary-to-gray code converter accepts a binary number as input and produces a corresponding gray code as output.
MSB stays same,
Every next Gray bit = XOR of adjacent Binary bit

                G[n-1] = B[n-1]
                G[i] = B[i+1] ^ B[i]

## Files:
- 'bin_gray.v': RTL design
- 'bin_gray_tb.v': Self-checking testbench
- 'bin_gray_vcd.png': Simulation waveform

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
[bin_gray_vcd.png]

## Result:
All test cases passed. Design behaves as expected.
