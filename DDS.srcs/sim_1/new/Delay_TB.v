`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2025 01:04:44
// Design Name: 
// Module Name: Delay_TB
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


module Delay_TB();

    parameter delay = 3;
    
    reg CLK;
    reg CE;
    reg Delin;
    wire DelCE;
    
    time T_CLK = 8;
    
//    Delay #(delay) DUT (CLK, CE, Delin, DelCE);
    Delay3_test DUT(CLK, CE, Delin, DelCE);
    
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
        Delin <= 0;
        #(2*T_CLK);
        CE <= 1;
        #(2*T_CLK);
        Delin <= 1;
        #(20*T_CLK);
        Delin <= 0;
        #(10*T_CLK);
        $finish;
    end
    
endmodule
