`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2025 01:07:27
// Design Name: 
// Module Name: Serializer_8_1_TB
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


module Serializer_8_1_TB();
    reg CLK;
//    reg nCLK;
    reg CE;
    reg RESET;
    reg Load;
    reg [7:0] Din;
    wire Dout;
    
    Serializer_8_1 DUT(CLK, CE, RESET, Load, Din, Dout);
    
    
    function [15:0] prbs16;
        input [15:0] in;
            begin
                prbs16[15] = in[15]^in[14];
                prbs16[14] = in[14]^in[13];
                prbs16[13] = in[13]^in[12];
                prbs16[12] = in[12]^in[11];
                prbs16[11] = in[11]^in[10];
                prbs16[10] = in[10]^in[9];
                prbs16[9] = in[9]^in[8];
                prbs16[8] = in[8]^in[7];
                prbs16[7] = in[7]^in[6];
                prbs16[6] = in[6]^in[5];
                prbs16[5] = in[5]^in[4];
                prbs16[4] = in[4]^in[3];
                prbs16[3] = in[3]^in[2];
                prbs16[2] = in[2]^in[1];
                prbs16[1] = in[1]^in[0];
                prbs16[0] = in[0]^(in[15]^in[14]);
            end
    endfunction
    
    
    
initial begin
    CLK <= 0;
//    nCLK <= ~CLK;
    forever 
    begin
    #5;
    CLK <= ~CLK;
//    nCLK <= CLK;
    end
end

reg [1:0] prbsTrig = 0;
reg [15:0] prbs = 4'hfffe;
always @(posedge CLK)
begin
    prbsTrig <= prbsTrig + 1;
    if (prbsTrig == 2'b11)
    begin
        prbs <= prbs16(prbs);
        Din <= prbs[11:4];
        Load <= 1'b1;
    end
    if (prbsTrig == 2'b00)      //beh sim
//    if (prbsTrig == 2'b10)    //post synth sim
        Load <= 1'b0;
end

initial begin
    CE <= 1'b1;
    RESET <= 1'b1;
    Load <= 1'b0;
    Din <= 8'b11100101;
    #10;
    RESET <= 1'b0;
    #10;
//    CE <= 1'b1;
//    Load <= 1'b1;
//    #30;
//    CE <= 1'b0;
//    #10;
//    Load <= 1'b0;
//    #20;
//    CE <= 1'b1;
//    Load <= 1'b1;
//    #25;
//    Load <= 1'b0;
//    #40;
////    Din <= 8'b00000000;
//    #20;
end
endmodule
