`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2025 23:54:15
// Design Name: 
// Module Name: Skip_adder_32bit
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


module Skip_adder_32bit(
    input [31:0] A,
    input [31:0] B,
    input Cin,
    output [31:0] Sum,
    output Cout
    );
    
    wire [4:0] C;
    assign C[0] = Cin;
    
    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) 
        begin
            Skip_adder #8 Skip_adder_i (A[8*(i+1)-1:8*i], B[8*(i+1)-1:8*i], C[i], Sum[8*(i+1)-1:8*i], C[i+1]); 
        end
    endgenerate
    
    assign Cout = C[4];
    
endmodule
