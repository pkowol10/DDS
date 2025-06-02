`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2025 23:54:35
// Design Name: 
// Module Name: Skip_adder_32bit_TB
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


module Skip_adder_32bit_TB();

    reg [31:0] A, B;
    reg Cin;
    wire [31:0] Sum;
    wire Cout;
    
    wire [32:0] result;
    wire correct;
    
    Skip_adder_32bit DUT(A, B, Cin, Sum, Cout);
    
//    always @ (*)
//    begin
        assign result = A + B + Cin;
        assign correct = ((result) == {Cout, Sum}) ? 1'b1 : 1'b0;
//    end

    
    initial begin
        A = 'h10fa9420;
        B = 'hef06ac69;
        Cin = 1'b0;
        
        #100;
        A = 'h6f292137;
        B = 'h2137ffff;
        Cin = 1'b1;
        #100;
        A = 'hffffffff;
        B = 'h00000000;
        #100;
        A = 'hfefefefe;
        B = 'h00000000;
        #100;
        A = 'hfa;
        B = 'h19;
        Cin = 1'b0;
        #100;
        $display("A=%b B=%b Cin=%b -> Sum=%b Cout=%b, result=%b, correct=%b", A, B, Cin, Sum, Cout, result, correct);
        $finish;
    end
endmodule
