`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2025 01:15:37
// Design Name: 
// Module Name: PA_comparison
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


module PA_comparison # (parameter w_step = 8, parameter w_out = 16, parameter N = 4)(CLK, CE, RESET, step, mod, out1, out2, out3);

input CLK;
input CE;
input RESET;
input [w_step-1:0] step;
input [w_out-1:0] mod;

output [w_out-1:0] out1;
output [w_out-1:0] out2;
output [w_out-1:0] out3;

    Phase_acumulator #(1, w_step, w_out, N) PA_v1(CLK, CE, RESET, step, out1);
    Phase_acumulator #(2, w_step, w_out, N) PA_v2(CLK, CE, RESET, step, out2);
    Phase_counter #(w_out) PC(CLK, CE, RESET, mod, out3);
    
endmodule
