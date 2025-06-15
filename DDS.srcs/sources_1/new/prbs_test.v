`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2025 23:13:47
// Design Name: 
// Module Name: prbs_test
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


module prbs_test(
    input CLK,
    input CE,
    input RESET,
    output reg [7:0] Q
    );
    
    wire D;
    
    always @(posedge CLK)
    begin
        if (CE)
        begin
            if (RESET)
                Q <= 'h01;
            else
                Q <= {Q[6:0], D};
        end
    end
    
    assign D = Q[7] ^ Q[3] ^ Q[2] ^ Q[1];
    
    // T = 255*T_CLK
endmodule
