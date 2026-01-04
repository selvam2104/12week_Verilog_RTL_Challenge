# Parity generator & checker implementation

## Design Summary:
The parity generator is a combination circuit at the transmitter, it takes an original message as input and generates the parity bit for that message and the transmitter in this generator transmits messages along with its parity bit.
The combinational circuit at the receiver is the parity checker. This checker takes the received message including the parity bit as input. It gives output ‘1’ if there is some error found and gives output ‘0’ if no error is found in the message including the parity bit.

        Parity = XOR of all data bits
        For even parity, Parity bit = XOR of data
        For odd parity, Parity bit = NOT (XOR of data)

## Files:
- 'parity.v': RTL design
- 'parity_tb.v': Self-checking testbench
- 'parity_vcd.png': Simulation waveform

## Simulation:
Testbench applies all input combinations using self-testing testbench. Uses '$display' to report failed cases.

## Waveform:
[parity_vcd.png]

## Result:
All test cases passed. Design behaves as expected.
