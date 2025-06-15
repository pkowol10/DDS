`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2025 00:01:45
// Design Name: 
// Module Name: mux_64_8
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


module mux_64_8(
    input [63:0] D_in,
    input [2:0] Sel,
    output [7:0] D_out
    );
    parameter w_in = 64;
    parameter w_out = 8;
    
    genvar i;
    
    generate 
        for (i = 0; i < w_out; i = i + 1)
        begin
//            mux_8_1 mux_i ({D_in[7*w_out+i], D_in[6*w_out+i], D_in[5*w_out+i], D_in[4*w_out+i], D_in[3*w_out+i], D_in[2*w_out+i], D_in[w_out+i], D_in[i]}, Sel, D_out[i]);
            mux_8_1 mux_i (D_in[w_out*(i+1)-1:w_out*i], Sel, D_out[i]);
        end
    endgenerate
    
endmodule
