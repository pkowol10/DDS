`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2025 01:50:58
// Design Name: 
// Module Name: mux_8_1
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


module mux_8_1(
    input [7:0] Din,
    input [2:0] Sel,
    output Dout
    );
    
    assign Dout = Din[Sel];
    
endmodule
