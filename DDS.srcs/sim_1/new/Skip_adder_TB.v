`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 22:47:25
// Design Name: 
// Module Name: Skip_adder_TB
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


module Skip_adder_TB();

    reg  [7:0] A, B;
    reg        Cin;
    wire [7:0] Sum;
    wire       Cout;

    Skip_adder #(8) uut (
        .A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout)
    );

    initial begin
        A = 8'b00011001;
        B = 8'b00000111;
        Cin = 1'b0;
        #10;
        A = 8'b11111111;
        B = 8'b00000001;
        #10;
        $display("A=%b B=%b Cin=%b -> Sum=%b Cout=%b", A, B, Cin, Sum, Cout);
        $finish;
    end

endmodule
