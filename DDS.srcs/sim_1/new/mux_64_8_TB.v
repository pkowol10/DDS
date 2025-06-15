`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2025 00:15:46
// Design Name: 
// Module Name: mux_64_8_TB
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


module mux_64_8_TB();

    reg [63:0] D_in;
    reg [2:0] Sel;
    wire [7:0] D_out;
    
    mux_64_8 DUT (D_in, Sel, D_out);
    
    initial begin
        D_in <= 'h00f0ccaa00f0ccaa;
        Sel <= 0;
        #10;
        Sel <= 1;
        #10;
        Sel <= 2;
        #10;
        Sel <= 3;
        #10;
        Sel <= 4;
        #10;
        Sel <= 5;
        #10;
        Sel <= 6;
        #10;
        Sel <= 7;
        #10;
        $finish;
    end
endmodule
