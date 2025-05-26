`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 22:46:04
// Design Name: 
// Module Name: Skip_adder
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


module Skip_adder #(parameter W = 8)(
    input  [W-1:0] A,
    input  [W-1:0] B,
    input          Cin,
    output [W-1:0] Sum,
    output         Cout
);
    wire [W-1:0] T;
    wire [W:0]   C;
    wire t_out;
    assign C[0] = Cin;

    genvar i;
    generate
        for (i = 0; i < W; i = i + 1) begin : adder_stage
            assign T[i] = A[i] ^ B[i];
            assign C[i+1] = C[i] ? A[i] ^ B[i]: A[i];
            assign Sum[i] = A[i] ^ B[i] ^ C[i];
//            assign t_out = C[0] & T[0] ? (i <= 1): t_out & T[i];
//            assign t_out = t_out & T[i];
        end
    endgenerate

    assign t_out = Cin & T;
    assign Cout = C[W] | t_out;


// ZA WOLNO DZIALA, WRZUCIC np N*4-bity xdddd
endmodule