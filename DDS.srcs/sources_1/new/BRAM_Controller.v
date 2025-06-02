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


module BRAM_Controller #(parameter waddr = 8, parameter wdata = 64) (CLK, CEA, WE, addrA, DinA, CEB, RE, addrB, DoutB);
    input CLK;
    input CEA;
    input WE;       // only port A, port B is read only
    input [waddr-1:0] addrA;
    input [wdata-1:0] DinA;
//    input CLKB;
    input CEB;
    input RE;
    input [waddr-1:0] addrB;
    output reg [wdata-1:0] DoutB;
    
    reg [wdata-1:0] eeprom [2**waddr-1:0];
    
    always @(posedge CLK)
    begin
        if (CEA & WE)
            eeprom[addrA] <= DinA;
        else if (CEB & RE & ~WE)
            DoutB <= eeprom[addrB];
        else
            DoutB <= 0;
    end
    
//    always @(posedge CLK)
//    begin
//        if (CEB & RE & ~WE)
//            DoutB <= eeprom[addrB];
//        else
//            DoutB <= 0;
//    end
    
endmodule
