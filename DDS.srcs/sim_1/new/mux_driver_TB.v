`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2025 02:16:42
// Design Name: 
// Module Name: mux_driver_TB
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


module mux_driver_TB();

    parameter w_step = 8;
    parameter w_PA = 16;
    parameter w_addr = 8;
    parameter N = 4;

    reg CLK;
    reg CE;
    reg RESET;
    reg [w_step-1:0] step;
    reg [w_PA-1:0] PA_out;
    wire [23:0] sel;
    
    time T_CLK = 10;
    
    reg PAEN;
    wire [w_PA-1:0] diff;
    
    mux_driver #(w_step, w_PA, w_addr, N) DUT (CLK, CE, RESET, step, PA_out, sel);
    
    initial begin
        CLK <= 0;
        #(0.5*T_CLK);
        forever
        begin
            CLK <= ~CLK;
            #(0.5*T_CLK);
        end
    end
    
    assign diff = PA_out + step - PA_out;
    
    always @(posedge CLK)
    begin
        if (PAEN)
            PA_out <= PA_out + step;
    end
    
    initial begin
        PA_out <= 0;
        CE <= 0;
        RESET <= 0;
        step <= 50;
        PAEN <= 0;
        #(2*T_CLK);
        RESET <= 1;
        #(2*T_CLK);
        CE <= 1;
        RESET <= 0;
        #(10*T_CLK);
        PAEN <= 1;
        #(100*T_CLK);
    end
endmodule
