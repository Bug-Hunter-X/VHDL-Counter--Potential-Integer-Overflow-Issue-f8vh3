# VHDL Counter with Potential Integer Overflow

This repository demonstrates a potential integer overflow bug in VHDL and its solution. The `buggy_counter.vhdl` file contains the buggy code, while `buggy_counter_solution.vhdl` presents a robust solution.

## Bug Description
The original counter does not handle potential integer overflows gracefully. If an external factor causes `count` to be assigned a value outside of its defined range, unexpected behavior will occur. The improved version uses a modulo operator to prevent such issues.