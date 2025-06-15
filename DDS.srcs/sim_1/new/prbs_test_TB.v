`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2025 23:14:23
// Design Name: 
// Module Name: prbs_test_TB
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


module prbs_test_TB();

    reg CLK;
    reg CE;
    reg RESET;
    wire [7:0] Q;
    
    prbs_test DUT (CLK, CE, RESET, Q);
    
    initial begin
        CLK <= 0;
        #5;
        forever begin
            CLK <= ~CLK;
            #5;
        end
    end
    
    initial begin
        CE <= 1;
        RESET <= 1;
        #10;
        RESET <= 0;
        #3000;
        $finish;
    end
endmodule
