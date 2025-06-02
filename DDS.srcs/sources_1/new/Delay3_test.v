`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2025 01:32:13
// Design Name: 
// Module Name: Delay_test
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


module Delay3_test(CLK, CE, Delin, DelCE);

    input CLK;
    input CE;
    input Delin;
    output DelCE;
    
    Delay #(3) del (CLK, CE, Delin, DelCE);
    
endmodule
