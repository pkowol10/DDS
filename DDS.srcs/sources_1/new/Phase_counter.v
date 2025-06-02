`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2025 00:46:18
// Design Name: 
// Module Name: Phase_counter
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


module Phase_counter # (parameter w = 16)(CLK, CE, RESET, mod, out);

    input CLK;
    input CE;
    input RESET;
    input [w-1:0] mod;
    output reg [w-1:0] out;
    
    always @(posedge CLK)
    begin
        if (CE)
            begin
                if (RESET || out == mod - 1)
                    out <= 0;
                else
                    out <= out + 1;
            end
    end
endmodule
