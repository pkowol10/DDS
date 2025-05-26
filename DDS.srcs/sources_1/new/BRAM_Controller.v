`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2025 00:47:24
// Design Name: 
// Module Name: BRAM_Controller
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


module BRAM_Controller(CLKA, CEA, WE, addrA, DinA, CLKB, CEB, addrB, DoutB);
    input CLKA;
    input CEA;
    input WE;       // only port A, port B is read only
    parameter waddr = 8;
    parameter wdata = 8;
    input [waddr-1:0] addrA;
    input [wdata-1:0] DinA;
    input CLKB;
    input CEB;
    input [waddr-1:0] addrB;
    output reg [wdata-1:0] DoutB;
endmodule
