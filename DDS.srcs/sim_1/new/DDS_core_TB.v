`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2025 01:46:32
// Design Name: 
// Module Name: DDS_top_TB
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


module DDS_core_TB();

    parameter w_step = 8;
    parameter w_PA = 16;
    parameter w_addr = 8;
    parameter w_data = 64;
    parameter w_sample = 8;
    parameter N = 8;
    
    reg ref_CLK;
    reg CE;
    reg RESET;
    reg [w_step-1:0] step;
    wire [w_data-1:0] data_in;
    reg WE;
    wire [w_sample-1:0] sample;
    wire LS_CLK;
    
    reg dataEN;
    reg [w_data-1:0] data_buf;
    
    time T_CLK = 10;
    
    DDS_core #(w_step, w_PA, w_addr, w_data, w_sample, N) DUT (ref_CLK, CE, RESET, step, data_in, WE, sample, LS_CLK);
    
    initial begin
        ref_CLK <= 0;
        #(0.5*T_CLK);
        forever begin
            ref_CLK <= ~ref_CLK;
            #(0.5*T_CLK);
        end
    end
    
    always @(posedge LS_CLK)
    begin
//        #1;
        if (dataEN)
        begin
//            data_buf <= data_buf + 'h0808080808080808;
            data_buf[63:56] <= data_buf[63:56] + 'h8;
            data_buf[55:48] <= data_buf[55:48] + 'h8;
            data_buf[47:40] <= data_buf[47:40] + 'h8;
            data_buf[39:32] <= data_buf[39:32] + 'h8;
            data_buf[31:24] <= data_buf[31:24] + 'h8;
            data_buf[23:16] <= data_buf[23:16] + 'h8;
            data_buf[15:8] <= data_buf[15:8] + 'h8;
            data_buf[7:0] <= data_buf[7:0] + 'h8;
//            data_buf <= {data_buf[63:56] + 'h8, data_buf[55:48] + 'h8, data_buf[47:40] + 'h8, data_buf[39:32] + 'h8, data_buf[31:24] + 'h8, data_buf[23:16] + 'h8, data_buf[15:8] + 'h8, data_buf[7:0] + 'h8};
            
        end
    end
    
    assign data_in = data_buf;
    
    initial begin
        CE <= 1;
        RESET <= 0;
        step <= 120;
        WE <= 0;
        data_buf <= 'h0706050403020100;
        dataEN <= 0;
        #5500;
        RESET <= 1;
        #(2*T_CLK);
        RESET <= 0;
        #(1*T_CLK);
        WE <= 1;
        #(0.25*T_CLK);
        dataEN <= 1;
        #(2**(w_addr-2)*T_CLK);
        dataEN <= 0;
        WE <= 0;
        #(20*T_CLK);
        $finish;
    end
endmodule
