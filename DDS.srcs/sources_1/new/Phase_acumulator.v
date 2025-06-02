`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2025 00:47:24
// Design Name: 
// Module Name: Phase_acumulator
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


module Phase_acumulator # (parameter version = 1, parameter w_step = 8, parameter w_out = 16, parameter N = 8)(CLK, CE, RESET, step, out);

    input CLK;
    input CE;
    input RESET;
    input [w_step-1:0] step;
    output reg [w_out-1:0] out;
    
    wire [w_out-1:0] sum;
    
    parameter K = w_out/N;      // number of N-bit skip adders
    genvar i;
    generate
        if (version == 1)
        begin

            wire [K:0] C;
            wire [w_out-1:0] int_step;
            assign int_step = step;
            assign C[0] = 0;
            for (i = 0; i < K; i = i + 1) 
            begin
                Skip_adder #N Skip_adder_i (out[N*(i+1)-1:N*i], int_step[N*(i+1)-1:N*i], C[i], sum[N*(i+1)-1:N*i], C[i+1]); 
            end
        end
        else 
            assign sum = out + step;
    endgenerate

    always @(posedge CLK)
    begin
        if (CE) 
        begin
            if (RESET)
                out <= 0;
            else 
                out <= sum;
        end
    end

endmodule
