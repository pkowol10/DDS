`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2025 01:46:12
// Design Name: 
// Module Name: DDS_top
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

// source project: https://ieeexplore.ieee.org/document/6829760

module DDS_core #(parameter w_step = 8, parameter w_PA = 16, parameter w_addr = 8, parameter w_data = 64, parameter w_sample = 8, parameter N = 8)(ref_CLK, CE, RESET, step, data_in, WE, sample, LS_CLK);

input ref_CLK;
input CE;
input RESET;
input [w_step-1:0] step;
input [w_data-1:0] data_in;
input WE;
output [w_sample-1:0] sample;
output LS_CLK;

wire HS_CLK;
wire lock;
wire [w_addr-1:0] addrA;     // internal counter
wire [w_addr-1:0] addrB;    // PA output
wire [w_PA-1:0] PA_out;
wire [w_data-1:0] data;
wire RE;
wire int_CE;
//wire int_WE;
wire int_RESET;
reg [w_addr-1:0] addrA_cnt;


CLK_gen PLL(ref_CLK, HS_CLK, LS_CLK, lock);
Phase_acumulator #(1, w_step, w_PA, N) PA(LS_CLK, int_CE, int_RESET, step, PA_out);
BRAM_Controller #(w_addr, w_data) BRAM(LS_CLK, int_CE, WE, addrA, data_in, int_CE, RE, addrB, data);

genvar i;
generate
    for (i = 0; i < w_sample; i = i + 1)
    begin
        Serializer_8_1_primitive_v2 SER_i (HS_CLK, LS_CLK, int_CE, int_RESET, {data[7*w_sample+i], data[6*w_sample+i], data[5*w_sample+i], data[4*w_sample+i], data[3*w_sample+i], data[2*w_sample+i], data[w_sample+i], data[i]}, sample[i]);
    end
endgenerate


assign addrB = PA_out[w_PA-1:w_PA-w_addr];
assign int_CE = CE & lock;
assign int_RESET = lock ? RESET : 1'b1;
assign RE = int_CE & ~WE;

always @(posedge LS_CLK)
begin
    if (RESET)
        addrA_cnt <= 0;
    else if (int_CE & WE)
        addrA_cnt <= addrA_cnt + 1;
end

assign addrA = WE ? addrA_cnt : 'bz;

endmodule
