`timescale 1ns / 1ps

module winner_detector_tb();
    reg [1:0] pos1_tb, pos2_tb, pos3_tb, pos4_tb, pos5_tb, pos6_tb, pos7_tb, pos8_tb, pos9_tb;
    wire win_tb;
    wire [1:0] who_tb;
    integer i; 
    
    localparam period = 50; 
    
    winner_detector uut(.pos1(pos1_tb), .pos2(pos2_tb), .pos3(pos3_tb), .pos4(pos4_tb), .pos5(pos5_tb), 
                        .pos6(pos6_tb), .pos7(pos7_tb), .pos8(pos8_tb), .pos9(pos9_tb), .win(win_tb), .who(who_tb) );
    initial begin
         pos1_tb = 0;
         pos2_tb = 0;
         pos3_tb = 0;
         pos4_tb = 0;
         pos5_tb = 0;
         pos6_tb = 0;
         pos7_tb = 0;
         pos8_tb = 0;
         pos9_tb = 0;
         #period;
         
        // test top row 
        for( i = 0; i < 3; i = i + 1) begin
            pos1_tb = i;
            pos2_tb = i;
            pos3_tb = i;
            #period;
            pos1_tb = 0;
            pos2_tb = 0;
            pos3_tb = 0;
            #period;
        end
        
        // test middle row 
        for( i = 0; i < 3; i = i + 1) begin
            pos4_tb = i;
            pos5_tb = i;
            pos6_tb = i;
            #period;
            pos4_tb = 0;
            pos5_tb = 0;
            pos6_tb = 0;
            #period;    
        end
        
        // test bottom row 
        for( i = 0; i < 3; i = i + 1) begin
            pos7_tb = i;
            pos8_tb = i;
            pos9_tb = i;
            #period;
            pos7_tb = 0;
            pos8_tb = 0;
            pos9_tb = 0;
            #period;
        end
        
        // test left column 
        for( i = 0; i < 3; i = i + 1) begin
            pos1_tb = i;
            pos4_tb = i;
            pos7_tb = i;
            #period;
            pos1_tb = 0;
            pos4_tb = 0;
            pos7_tb = 0;
            #period;    
        end
        
        // test middle column 
        for( i = 0; i < 3; i = i + 1) begin
            pos2_tb = i;
            pos5_tb = i;
            pos8_tb = i;
            #period;
            pos2_tb = 0;
            pos5_tb = 0;
            pos8_tb = 0;
            #period;    
        end
        
        // test right column
        for( i = 0; i < 3; i = i + 1) begin
            pos3_tb = i;
            pos6_tb = i;
            pos9_tb = i;
            #period;
            pos3_tb = 0;
            pos6_tb = 0;
            pos9_tb = 0;
            #period;    
        end
        // test left diagonal 
        for( i = 0; i < 3; i = i + 1) begin
            pos1_tb = i;
            pos5_tb = i;
            pos9_tb = i;
            #period;
            pos1_tb = 0;
            pos5_tb = 0;
            pos9_tb = 0;
            #period;    
        end
         
        // test right diagonal
        for( i = 0; i < 3; i = i + 1) begin
            pos3_tb = i;
            pos5_tb = i;
            pos7_tb = i;
            #period;
            pos3_tb = 0;
            pos5_tb = 0;
            pos7_tb = 0;
            #period;    
        end
        
        
        $finish;
    end
    
endmodule
