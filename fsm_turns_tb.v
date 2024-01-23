`timescale 1ns / 1ps

module fsm_turns_tb();
    reg clk_tb, reset_tb, p1_tb, p2_tb, move_check_tb, no_space_tb, winner_tb; 
    wire p1_en_tb, p2_en_tb; 
    
    localparam period = 50; 
    
    fsm_turns uut(.clk(clk_tb), .reset(reset_tb), .p1(p1_tb), .p2(p2_tb), .move_check(move_check_tb), .no_space(no_space_tb),
                  .winner(winner_tb), . p1_en(p1_en_tb), .p2_en(p2_en_tb) );
                  
    always #10 clk_tb = ~clk_tb; 
    
    initial begin
        clk_tb = 0;
        reset_tb = 1; 
        p1_tb = 0;
        p2_tb = 0;
        move_check_tb = 0;
        no_space_tb = 0;
        winner_tb = 0; 
        #period; 
        
        reset_tb = 0; 
        #period; 
        
        p1_tb = 1;
        #period; 
        
        p1_tb = 0;
        #period; 
        
        p2_tb = 1;
        #period; 
        
        move_check_tb = 1; 
        #period; 
        
        p2_tb = 0; 
        #period;
        
        p1_tb = 1;
        #period; 
         
    end    
endmodule
