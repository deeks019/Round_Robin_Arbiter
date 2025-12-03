This repository contains the RTL design, testbench, simulation waveforms, synthesis results, and physical design files for a Round Robin Arbiter.
The arbiter has been designed using fixed time slicing, ensuring fairness by rotating priority among all requesters in a cyclic manner.

📂 Table of Contents

Project Overview

Features

Floorplanning Layouts

Input–Output Layout

Netlist

Outputs

State Diagram

Waveforms

📝 Project Overview

The Round Robin Arbiter is a hardware module used to resolve conflicts when multiple requesters try to access a shared resource.
Using fixed time slicing, each requester receives exactly one turn in rotation, which ensures fairness and prevents starvation.

This repository includes:

RTL code in Verilog

Testbench for verification

Console output logs

Timing diagrams and waveforms

Synthesized netlist results

Full physical design flow layouts (floorplanning, placement, routing)

✨ Features

✔ Fixed-Time-Slicing Round Robin Arbitration

✔ Moore FSM-based design

✔ Fully tested using simulation waveforms

✔ Synthesized to gate-level netlist

✔ Implemented using physical design tools (layout included)

✔ Clean folder structure for easy navigation

🧱 1) Floorplanning Layouts

Click below to view the physical design floorplans:

Layout 1

Layout 2

Layout 3

Layout 4

Layout 5

Layout 6

Layout 7

🔌 2) Input–Output Layout

Input–Output Layout

🔧 3) Netlist

Gate-level netlists generated after synthesis:

Netlist 1

Netlist 2

Netlist 3

📤 4) Outputs

Console Output

State Diagram

📈 5) Waveforms

Simulation waveforms demonstrating correct arbitration behavior:

Waveform 1

Waveform 2

📌 How Fixed Time Slicing Works

Each requester gets one clock cycle when the pointer reaches them.

Even if only one requester keeps requesting, the pointer still moves in a cycle.

This ensures fairness, regular rotation, and no starvation.

🧪 Verification Summary

Tested under multiple scenarios:

Single requester active

Multiple requesters active

No requester active

Burst requests

Waveforms confirm correct state transitions and grant behavior.
