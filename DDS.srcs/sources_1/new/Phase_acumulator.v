`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2025 00:47:24
// Design Name: 
// Module Name: Phase_acumulator
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


module Phase_acumulator(CLK, CE, step, out);
    input CLK;
    input CE;
    parameter win = 8;
    parameter wout = 16;
    input [win-1:0] step;
    output reg [wout-1:0] out;

endmodule
