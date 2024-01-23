`timescale 1ns / 1ps

module position_tracker_tb( );
    reg clk_tb, reset_tb, move_check_tb;
    reg [8:0] p1_en_tb, p2_en_tb;
    wire [1:0] pos0_tb, pos1_tb, pos2_tb, pos3_tb, pos4_tb, pos5_tb, pos6_tb, pos7_tb, pos8_tb;
    
    localparam period = 50; 
     
    position_tracker uut(.clk(clk_tb), .reset(reset_tb), .move_check(move_check_tb), .p1_en(p1_en_tb), .p2_en(p2_en_tb),
                         .pos0(pos0_tb), .pos1(pos1_tb), .pos2(pos2_tb), .pos3(pos3_tb), .pos4(pos4_tb), .pos5(pos5_tb),
                         .pos6(pos6_tb), .pos7(pos7_tb), .pos8(pos8_tb) );
                                                
   always #10 clk_tb = ~clk_tb;
   
   initial begin
        clk_tb = 0;
        move_check_tb = 0; 
        reset_tb = 1; 
        p1_en_tb = 9'b000000000;
        p2_en_tb = 9'b000000000; 
        #period; 
        
        reset_tb = 0;
        #period; 
        
        p1_en_tb = 9'b000000001; 
        #period; 
        
        p1_en_tb = 9'b000000000;
        #period; 
                
        move_check_tb = 1;
        p2_en_tb = 9'b000000010;
        #period; 
        
        move_check_tb = 0;
        p2_en_tb = 9'b000000010;
        #period; 
        
   end 
endmodule
