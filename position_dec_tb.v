`timescale 1ns / 1ps

module position_dec_tb( );
    reg [3:0] in_tb;
    reg enable_tb;
    wire [8:0] out_en_tb;
    
    integer i;
    
    localparam period = 50;
    
    position_dec uut(.in(in_tb), .enable(enable_tb), .out_en(out_en_tb));
    
    initial begin
        in_tb = 0; 
        enable_tb = 0;
        #period; 
        for(i = 0; i < 9; i = i + 1) begin
            in_tb = i; 
            #period;
        end
        
        in_tb = 0; 
        enable_tb = 1;
        #period; 
        for(i = 0; i < 9; i = i + 1) begin
            in_tb = i; 
            #period;
        end   
    end
    
    
endmodule
