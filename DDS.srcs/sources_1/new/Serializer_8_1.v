`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2025 00:51:30
// Design Name: 
// Module Name: Serializer_8_1
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


module Serializer_8_1(
    input CLK,
//    input nCLK,
    input CE,
    input RESET,
    input Load,
    input [7:0] Din,
    output Dout
    );
    
//    reg [7:0] Data;
    reg [3:0] shreg1;
    reg [3:0] shreg2;


    always @(posedge CLK)   //dziala w symulacji, ale po syntezie nie
        begin
            if (RESET == 1'b1)
                begin 
                    shreg1 <= 4'b0000;
                    shreg2 <= 4'b0000;
                end
            else if (CE == 1'b1)
                begin
                    if (Load == 1'b1)
                        begin
                            shreg1 <= {Din[7], Din[5], Din[3], Din[1]};
                            shreg2 <= {Din[6], Din[4], Din[2], Din[0]};
                        end
                    else
                        begin
//                            shreg1 <= {shreg1[2:0], 1'b0};
//                            shreg2 <= {shreg2[2:0], 1'b0};
                            shreg1 <= shreg1 <<< 1;
                            shreg2 <= shreg2 <<< 1;
                        end
                end
            else
                begin
                    shreg1 <= shreg1;
                    shreg2 <= shreg2;
                end
        end
//    assign Dout[0] = CLK ? shreg1[3] : shreg2[3];   // beh sim
    assign Dout = CLK ? shreg2[3] : shreg1[3]; // post synth time sim
//    assign Dout = shreg1[3];
//    assign Dout = {shreg1[3], shreg2[3]};
endmodule

// przerobic na 2x ser_4_1, wyjscia gateowac clk, load laduje dane, gdy nie ma load, to ser przesuwa
