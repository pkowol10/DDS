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

module DDS_core #(parameter w_step = 8, parameter w_PA = 16, parameter w_addr = 8, parameter w_data = 64, parameter w_sample = 8, parameter N = 4)(ref_CLK, CE, RESET, step, data_in, WE, BIST_en, sample, LS_CLK, BIST_correct);

input ref_CLK;
input CE;
input RESET;
input [w_step-1:0] step;
input [w_data-1:0] data_in;
input WE;
input BIST_en;
output [w_sample-1:0] sample;
output LS_CLK;
output BIST_correct;

wire HS_CLK;
wire nHS_CLK;
wire lock;
wire [w_addr-1:0] addrA;     // internal counter
wire [w_addr-1:0] addrB;    // PA output
wire [w_PA-1:0] PA_out;
wire [w_data-1:0] data;
wire [w_data-1:0] data_BIST;
wire RE;
wire int_CE;
//wire int_WE;
wire int_RESET;
wire RESET_SER;
reg [w_addr-1:0] addrA_cnt;

parameter BIST_byte_slip = 3;

wire [w_data-1:0] data_int;
wire [w_sample*3-1:0] Sel;
wire [w_sample-1:0] data_FB;

CLK_gen PLL(ref_CLK, HS_CLK, nHS_CLK, LS_CLK, lock);
Phase_acumulator #(1, w_step, w_PA, N) PA(LS_CLK, int_CE & ~BIST_en, RESET_SER, step, PA_out);
BRAM_Controller #(w_addr, w_data) BRAM(LS_CLK, int_CE, WE, addrA, data_in, int_CE, RE, addrB, data);
BIST_logic #(w_data, w_sample, BIST_byte_slip) BIST(HS_CLK, nHS_CLK, LS_CLK, int_CE, RESET_SER, BIST_en, data, data_FB, data_BIST, BIST_correct);

//mux_driver #(w_step, w_PA, w_addr, N) muxDr (LS_CLK, CE, RESET_SER, step, PA_out, Sel);

genvar i;
generate
    for (i = 0; i < (w_data/w_sample); i = i + 1)
    begin
        if (i > 8)
            Serializer_8_1_primitive_v2 SER_i (HS_CLK, LS_CLK, 0, RESET_SER, {data_BIST[7*w_sample+i], data_BIST[6*w_sample+i], data_BIST[5*w_sample+i], data_BIST[4*w_sample+i], data_BIST[3*w_sample+i], data_BIST[2*w_sample+i], data_BIST[w_sample+i], data_BIST[i]}, sample[i], data_FB[i]);
        else
            Serializer_8_1_primitive_v2 SER_i (HS_CLK, LS_CLK, int_CE, RESET_SER, {data_BIST[7*w_sample+i], data_BIST[6*w_sample+i], data_BIST[5*w_sample+i], data_BIST[4*w_sample+i], data_BIST[3*w_sample+i], data_BIST[2*w_sample+i], data_BIST[w_sample+i], data_BIST[i]}, sample[i], data_FB[i]);
//        mux_64_8 mux_i (data, Sel[3*(i+1)-1:3*i], data_int[w_sample*(i+1)-1:w_sample*i]);
//        Serializer_8_1_primitive_v2 SER_i (HS_CLK_tx, LS_CLK, int_CE, RESET_SER, data_BIST_int[w_sample*(i+1)-1:w_sample*i], sample[i]);
    end
endgenerate


assign addrB = PA_out[w_PA-1:w_PA-w_addr];
assign int_CE = CE & lock;
assign int_RESET = lock ? RESET : 1'b1;
assign RESET_SER = WE | int_RESET;
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
