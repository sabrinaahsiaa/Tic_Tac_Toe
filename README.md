# Tic_Tac_Toe

This repository contains resources related to the Tic_Tac_Toe project. The Tic_Tac_Toe project demonstrates a tic-tac-toe game on the Nexys A7-100T FPGA development board with a physical LED display of the game board connected via PMOD ports.

Collaborated with Jackie Huang

# Development Tools

* Xilinx Vivado for Verilog modules and simulation

# Contents

* `tic_tac_toe` : Top module for Tic-Tac-Toe game with testbench
* `winner_detect` : Module detecting which player is the winner with testbench
* `winner_detector` : Module detecting if a winner has been found by checking all combinations of win conditions with testbench
* `position_tracker` : Module tracking the player's positions on the game board with testbench
* `position_dec` : Module decoding the positions of the game board from 4 bits to 16 bits with testbench
* `noSpace_detect` : Module detecting if there are no more open positions on the game board with testbench
* `illegal_move_detect` : Module detecting if an illegal move has been made by any players with testbench
* `fsm_turns` : Module with fsm controlling which state the game is in with testbench

# Demo Video
https://www.youtube.com/watch?v=FZPGrZc9zmY&t=1s
