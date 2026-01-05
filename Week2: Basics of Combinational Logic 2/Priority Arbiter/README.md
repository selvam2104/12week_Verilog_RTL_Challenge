# Parameterized Priority Arbiter implementation

## Design Summary:
A priority arbiter selects one request among multiple requesters based on a predefined priority order.
  Highest-priority request wins.
  Only one grant is asserted.
  If no request → no grant.

        grant[i] = req[i] & ~(any higher-priority req active)

  A priority arbiter grants access to the highest-priority active request, typically implemented using priority masking or leading-one detection.
  This arbiter implements fixed-priority arbitration using MSB-first priority resolution and combinational masking logic.

## Files:
- 'priority_arbiter.v': RTL design
- 'priority_arbiter_tb.v': Self-checking testbench
- 'priority_arbiter_vcd.png': Simulation waveform

## Simulation:
Testbench applies all input combinations using self-testing testbench. Uses '$display' to report failed cases.

## Waveform:
[priority_arbiter_vcd.png]

## Result:
All test cases passed. Design behaves as expected.
