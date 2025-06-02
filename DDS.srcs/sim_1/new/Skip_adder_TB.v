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
    wire correct;

//    Skip_adder #(4) uut (
//        .A(A[3:0]), .B(B[3:0]), .Cin(Cin), .Sum(Sum[3:0]), .Cout(Cout)
//    );

    Skip_adder #() uut (
        .A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout)
    );
    assign correct = ((A + B + Cin) == {Cout, Sum}) ? 1'b1 : 1'b0;
    initial begin
        A = 8'b00011001;
        B = 8'b00000111;
        Cin = 1'b0;
        #10;
        A = 8'b11111111;
        B = 8'b00000001;
        Cin = 1'b1;
        #10;
        B = 8'b00000000;
        #10;
        A = 'h01;
        B = 'h01;
        #10;
        A = 'h02;
        B = 'h02;
        #10;
        A = 'h04;
        B = 'h04;
        #10;
        A = 'h08;
        B = 'h08;
        #10;
        A = 'h10;
        B = 'h10;
        #10;
        A = 'h20;
        B = 'h20;
        #10;
        A = 'h40;
        B = 'h40;
        #10;
        A = 'h80;
        B = 'h80;
        #10;
        $display("A=%b B=%b Cin=%b -> Sum=%b Cout=%b correct=%b", A, B, Cin, Sum, Cout, correct);
        $finish;
    end
//<result> = <conditional_expression> ? <true_expression> : <false_expression>
endmodule
