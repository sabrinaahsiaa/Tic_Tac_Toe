`timescale 1ns / 1ps

module noSpace_detect_tb( );
    reg [1:0] pos1_tb, pos2_tb, pos3_tb, pos4_tb, pos5_tb, pos6_tb, pos7_tb, pos8_tb, pos9_tb;
    wire no_space_tb;
    integer i; 
    noSpace_detect uut(.pos1(pos1_tb), .pos2(pos2_tb), .pos3(pos3_tb), .pos4(pos4_tb), .pos5(pos5_tb), 
                       .pos6(pos6_tb), .pos7(pos7_tb), .pos8(pos8_tb), .pos9(pos9_tb), .no_space(no_space_tb) );
    
    initial begin
        for(i = 0; i < 3 ; i = i + 1) begin
           pos1_tb = i;
           pos2_tb = i;
           pos3_tb = i; 
           pos4_tb = i;
           pos5_tb = i;
           pos6_tb = i;
           pos7_tb = i;
           pos8_tb = i;
           pos9_tb = i; 
           #50; 
        end
    end
endmodule
