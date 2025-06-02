`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2025 01:33:30
// Design Name: 
// Module Name: CLK_gen_TB
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


module CLK_gen_TB();

    reg ref_CLK;
    wire HS_CLK;
    wire LS_CLK;
    wire lock;
    
    time T_ref_CLK = 40;
    
    CLK_gen DUT(ref_CLK, HS_CLK, LS_CLK, lock);
    initial begin
        ref_CLK <= 0;
        forever
        begin
            #(0.5*T_ref_CLK);
            ref_CLK <= ~ref_CLK;
        end
    end
    initial begin
        #6000;
        $finish;
    end
    
    // 2.3 us do rozpoczecia generacji, 5.5 us locka
endmodule
