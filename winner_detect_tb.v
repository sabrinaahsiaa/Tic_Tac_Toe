`timescale 1ns / 1ps

module winner_detect_tb( );
    reg [1:0] pos0_tb, pos1_tb, pos2_tb;
    wire winner_tb;
    wire [1:0] who_tb; 
    
    winner_detect uut(.pos0(pos0_tb), .pos1(pos1_tb), .pos2(pos2_tb), .winner(winner_tb), .who(who_tb) );
    //P1: 01 
    //P2: 10
    initial begin
        pos0_tb = 2'b01;
        pos1_tb = 2'b01;
        pos2_tb = 2'b01;
        #50; 
        pos0_tb = 2'b00;
        pos1_tb = 2'b00;
        pos2_tb = 2'b00;
        #50;
        pos0_tb = 2'b10;
        pos1_tb = 2'b10;
        pos2_tb = 2'b10;
        #50; 
        pos0_tb = 2'b00;
        pos1_tb = 2'b00;
        pos2_tb = 2'b00;
        #50;
        pos0_tb = 2'b10;
        pos1_tb = 2'b10;
        pos2_tb = 2'b01;
        #50;
    end
    
endmodule
