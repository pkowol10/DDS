`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2025 18:27:34
// Design Name: 
// Module Name: Debouncer
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


module Debouncer(
    input CLK,
    input CE,
    input RESET,
    input in,
    output out
    );
    
    reg [2:0] Q_int = 0;
    always @(posedge CLK)
    begin
        if (CE)
        begin
            if (RESET)
                Q_int <= 0;
            else
                Q_int <= {Q_int[1:0], in};
        end
    end
    assign out = 1'b1 ? (Q_int == 3'b011 && CE) : 1'b0;
    
endmodule
