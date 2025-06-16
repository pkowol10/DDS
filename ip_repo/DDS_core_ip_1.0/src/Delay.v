`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2025 01:04:17
// Design Name: 
// Module Name: Delay
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


module Delay # (parameter delay = 2)(CLK, CE, Delin, DelCE);

    input CLK;
    input CE;
    input Delin;
    output DelCE;
    
    // 8 taktow opoznienia na samych flopach + delay !!!
    
    parameter w = clogb2(delay);
    reg [w-1:0] del_int;
    
    function integer clogb2;
       input [31:0] value;
       integer 	i;
       begin
            clogb2 = 0;
            for(i = 0; 2**i < value; i = i + 1)
            clogb2 = i + 1;
       end
    endfunction
    
    always @(posedge CLK)
    begin
        if (CE)
        begin
            if (del_int < delay & Delin)
                del_int = del_int + 1;
            else if (Delin == 0)
                del_int = 0;
        end
    end
    assign DelCE = (del_int == delay) & CE & Delin;
endmodule
