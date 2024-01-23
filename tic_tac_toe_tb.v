`timescale 1ns / 1ps

module tik_tac_toe_tb( );
    reg clk_tb, reset_tb, p1_tb, p2_tb;
    reg [3:0] p1_pos_tb, p2_pos_tb;
    
    wire [1:0] pos0_tb, pos1_tb, pos2_tb, pos3_tb, pos4_tb, pos5_tb,
               pos6_tb, pos7_tb, pos8_tb, who_tb; 
   wire illegal_move_tb; 
               
   tik_tac_toe uut(.clk(clk_tb), .reset(reset_tb), .p1(p1_tb), .p2(p2_tb), .p1_pos(p1_pos_tb),
                   .p2_pos(p2_pos_tb), .pos0(pos0_tb), .pos1(pos1_tb), .pos2(pos2_tb), .pos3(pos3_tb),
                   .pos4(pos4_tb), .pos5(pos5_tb), .pos6(pos6_tb), .pos7(pos7_tb), .pos8(pos8_tb), .winner(who_tb), .illegal_move(illegal_move_tb) );
   
   always #10 clk_tb = ~clk_tb;               
   
   initial begin
        clk_tb = 0; 
        reset_tb = 1;
        p1_tb = 0;
        p2_tb = 0;
        p1_pos_tb = 0;
        p2_pos_tb = 0;
        #100; 
        
        reset_tb = 0;
        #50;
        
        p1_tb = 1; 
        #50;
        p1_tb = 0;
        #50;
        
        p2_tb = 1; 
        #50;
        p2_tb = 0; 
        #50; 
        
        p2_pos_tb = 4'd3;
        #50;
        p2_tb = 1;
        #50;
        p2_tb = 0;
        #50; 
        
        p1_pos_tb = 4'd2; 
        #50;
        p1_tb = 1; 
        #50; 
        p1_tb = 0; 
        #50;
        
        p2_pos_tb = 4'd4;
        p2_tb = 1;
        #50;
        
        p2_tb = 0;
        #50;
        
        p1_pos_tb = 4'd1;
        p1_tb = 1;
        #50; 
        
        p1_tb = 0; 
        
        
   end
endmodule
