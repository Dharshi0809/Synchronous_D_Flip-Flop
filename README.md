Synchronous D Flip-Flop – SystemVerilog Verification
📌 Overview

This project implements and verifies a Synchronous D Flip-Flop using Verilog HDL and a SystemVerilog-based verification environment.

The D Flip-Flop captures the input D at the rising edge of the clock and updates the output Q. It also includes an active-high synchronous reset.

🔹 DUT – Synchronous D Flip-Flop
Inputs
clk – Clock signal
reset – Active-high synchronous reset
d – Data input
Output
q – Data output
Logic
If reset = 1, q = 0 at the rising edge of clk
If reset = 0, q follows d at the rising edge of clk
🔹 SystemVerilog Verification

The verification environment consists of:

Transaction – Stores and transfers test data
Generator – Generates different input transactions
Driver – Drives inputs to the DUT
Monitor – Observes DUT signals
Scoreboard – Compares expected and actual outputs
Coverage – Measures functional coverage
Interface – Connects the testbench with the DUT
Agent – Organizes the verification components
Environment – Connects the verification components
🔹 Functional Coverage

Functional coverage is used to ensure that important input conditions are exercised.

Coverage includes:

Data input D
Reset condition
Cross coverage of relevant input conditions
🔹 Verification Flow

Generator → Driver → DUT → Monitor → Scoreboard → Expected vs Actual

Functional coverage is collected during simulation to ensure that the required scenarios are tested.

🛠️ Tools & Technologies
Verilog HDL
SystemVerilog
Synopsys VCS
Synopsys Verdi

Project Structure

Synchronous_D_FF/

├── DUT/
│ └── design.sv

└── Testbench/
    ├── testbench.sv
    ├── transaction.sv
    ├── generator.sv
    ├── common.sv
    ├── interface.sv
    ├── driver.sv
    ├── monitor.sv
    ├── scoreboard.sv
    ├── coverage.sv
    ├── agent.sv
    └── environment.sv
