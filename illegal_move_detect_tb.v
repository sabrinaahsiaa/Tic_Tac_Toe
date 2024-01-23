`timescale 1ns / 1ps

module illegal_move_detect_tb();
    reg [1:0] pos1_tb, pos2_tb, pos3_tb, pos4_tb, pos5_tb, pos6_tb, pos7_tb, pos8_tb, pos9_tb;  
    reg[8:0] PL1_en_tb, PL2_en_tb;
    wire illegal_move_tb;
    
    localparam period = 50;
    
    illegal_move_detect uut(.pos1(pos1_tb), .pos2(pos2_tb), .pos3(pos3_tb), .pos4(pos4_tb), .pos5(pos5_tb), .pos6(pos6_tb),
                             .pos7(pos7_tb), .pos8(pos8_tb), .pos9(pos9_tb), .PL1_en(PL1_en_tb), .PL2_en(PL2_en_tb), .illegal_move(illegal_move_tb) ); 
    
    initial begin
        pos1_tb = 2'b00;
        pos2_tb = 2'b00;
        pos3_tb = 2'b00;
        pos4_tb = 2'b00;
        pos5_tb = 2'b00;
        pos6_tb = 2'b00;
        pos7_tb = 2'b00;
        pos8_tb = 2'b00;
        pos9_tb = 2'b00;
        PL1_en_tb = 9'b000000000;
        PL2_en_tb = 9'b000000000; 
        #period;
        
        PL1_en_tb =  9'b000000001;
        pos1_tb = 2'b01;
        #period; 
        
        PL2_en_tb =  9'b000000001;
        //pos1_tb = 2'b10;
        #period; 
        
    end
    
endmodule
