`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2025 02:16:21
// Design Name: 
// Module Name: mux_driver
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


module mux_driver #(parameter w_step = 8, parameter w_PA = 16, parameter w_addr = 8, parameter N = 4) (CLK, CE, RESET, step, PA_out, sel);

    input CLK;
    input CE;
    input RESET;
    input [w_step-1:0] step;
    input [w_PA-1:0] PA_out;
    output reg [23:0] sel;
    
    parameter K = w_PA/N;
    parameter M = (w_PA-w_step+4)/N;
    
    wire [w_PA-1:0] sum;        // next step estimation
    wire [K:0] C;
    wire [M:0] D;
    wire [w_PA-1:0] int_step;
    
    wire [w_PA-w_step+4-1:0] diff;
    
     // number of N-bit skip adders
    genvar i, j;
    generate
        assign int_step[w_step-1:0] = step;
        assign int_step[w_PA-1:w_step] = 0;
        assign C[0] = 0;
        assign D[0] = 1;
        for (i = 0; i < K; i = i + 1) 
        begin
            Skip_adder #N Skip_adder_i (PA_out[N*(i+1)-1:N*i], int_step[N*(i+1)-1:N*i], C[i], sum[N*(i+1)-1:N*i], C[i+1]); 
//            Skip_adder #N Skip_diff_i (sum[N*(i+1)-1:N*i], ~PA_out[N*(i+1)-1:N*i], D[i], diff[N*(i+1)-1:N*i], D[i+1]);
        end
        
        for (j = 0; j < M; j = j + 1)
        begin
            Skip_adder #N Skip_diff_j (sum[w_PA-w_step-4+N*(j+1)-1:w_PA-w_step-4+N*j], ~PA_out[w_PA-w_step-4+N*(j+1)-1:w_PA-w_step-4+N*j], D[j], diff[N*(j+1)-1:N*j], D[j+1]);
        end
    endgenerate
    
    
//    assign diff = sum[w_PA-1:w_PA-w_step] - PA_out[w_PA-1:w_PA-w_step];
    // wynik to po prostu step, wiec cos jest nie tak :(
    
    always @(posedge CLK)
    begin
        if (RESET)
            sel <= 0;
        else if (CE)
        begin
            if (diff[w_PA-w_step+4-1:1] == 0)
//            if (PA_out[w_PA-w_addr-1:w_PA-w_addr-3-1]
                sel <= 0;
            else if (diff[w_PA-w_step+4-1:1] == 1)      // pseudo modulo operation
            begin
                sel[23:21] <= 'h01;
                sel[20:18] <= 'h01;
                sel[17:15] <= 'h01;
                sel[14:12] <= 'h01;
                sel[11:9] <= 'h00;
                sel[8:6] <= 'h00;
                sel[5:3] <= 'h00;
                sel[2:0] <= 'h00;
            end
            else if (diff[w_PA-w_step+4-1:1] == 2)
            begin
                sel[23:21] <= 'h02;
                sel[20:18] <= 'h02;
                sel[17:15] <= 'h02;
                sel[14:12] <= 'h01;
                sel[11:9] <= 'h01;
                sel[8:6] <= 'h00;
                sel[5:3] <= 'h00;
                sel[2:0] <= 'h00;
            end
            else if (diff[w_PA-w_step+4-1:1] == 3)
            begin
                sel[23:21] <= 'h03;
                sel[20:18] <= 'h03;
                sel[17:15] <= 'h02;
                sel[14:12] <= 'h02;
                sel[11:9] <= 'h01;
                sel[8:6] <= 'h01;
                sel[5:3] <= 'h00;
                sel[2:0] <= 'h00;
            end
            else if (diff[w_PA-w_step+4-1:1] == 4)
            begin
                sel[23:21] <= 'h04;
                sel[20:18] <= 'h04;
                sel[17:15] <= 'h03;
                sel[14:12] <= 'h02;
                sel[11:9] <= 'h02;
                sel[8:6] <= 'h01;
                sel[5:3] <= 'h00;
                sel[2:0] <= 'h00;
            end
            else if (diff[w_PA-w_step+4-1:1] == 5)
            begin
                sel[23:21] <= 'h05;
                sel[20:18] <= 'h04;
                sel[17:15] <= 'h03;
                sel[14:12] <= 'h03;
                sel[11:9] <= 'h02;
                sel[8:6] <= 'h01;
                sel[5:3] <= 'h00;
                sel[2:0] <= 'h00;
            end
            else if (diff[w_PA-w_step+4-1:1] == 6)
            begin
                sel[23:21] <= 'h06;
                sel[20:18] <= 'h05;
                sel[17:15] <= 'h04;
                sel[14:12] <= 'h03;
                sel[11:9] <= 'h03;
                sel[8:6] <= 'h02;
                sel[5:3] <= 'h01;
                sel[2:0] <= 'h00;
            end
            else if (diff[w_PA-w_step+4-1:1] >= 7)
            begin
                sel[23:21] <= 'h07;
                sel[20:18] <= 'h06;
                sel[17:15] <= 'h05;
                sel[14:12] <= 'h04;
                sel[11:9] <= 'h03;
                sel[8:6] <= 'h02;
                sel[5:3] <= 'h01;
                sel[2:0] <= 'h00;
            end
        end
    end
    
endmodule
