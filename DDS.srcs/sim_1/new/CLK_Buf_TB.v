`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2025 18:57:49
// Design Name: 
// Module Name: CLK_Buf_TB
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


module CLK_Buf_TB();
    reg CE;
    reg CLR;
    reg CLKin;
    wire CLKout;
    
    time T_CLK = 2;
    CLK_Buf DUT(CLKin, CE, CLR, CLKout);

initial begin
    CLKin <= 1;
    forever
    begin
        #(0.5*T_CLK);
        CLKin <= ~CLKin;
    end
end

initial begin
    CE <= 1;
    CLR <= 0;
end

endmodule
