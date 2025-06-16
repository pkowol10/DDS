`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2025 23:34:51
// Design Name: 
// Module Name: Debouncer_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Debouncer_TB();

    reg CLK;
    reg CE;
    reg RESET;
    reg in;
    wire out;
    
    time T_CLK = 8;
    
    Debouncer DUT(CLK, CE, RESET, in, out);
    
    initial begin
        CLK <= 0;
        #(0.5*T_CLK);
        forever begin
            CLK <= ~CLK;
            #(0.5*T_CLK);
        end
    end
    
    initial begin
        CE <= 0;
        RESET <= 0;
        #(5*T_CLK);
        CE <= 1;
        RESET <= 1;
        in <= 1;
        #(2*T_CLK);
        RESET <= 0;
        #(20*T_CLK);
        in <= 0;
        #(20*T_CLK);
        in <= 1;
        #(20*T_CLK);
        $finish;
    end
endmodule
