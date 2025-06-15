`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2025 20:48:31
// Design Name: 
// Module Name: deserializer_1_8_primitive_TB
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


module deserializer_1_8_primitive_TB();

    reg HS_CLK;
    reg nHS_CLK;
    reg LS_CLK;
    reg CE;
    reg RESET;
    wire data_in;
    wire [7:0] data_out;
    
    reg prbsEn;
    time T_CLK = 2;
    
    deserializer_1_8_primitive DUT(HS_CLK, nHS_CLK, LS_CLK, CE, RESET, data_in, data_out);
    
    function [15:0] prbs16;
        input [15:0] in;
            begin
                prbs16[15] = in[15]^in[14];
                prbs16[14] = in[14]^in[13];
                prbs16[13] = in[13]^in[12];
                prbs16[12] = in[12]^in[11];
                prbs16[11] = in[11]^in[10];
                prbs16[10] = in[10]^in[9];
                prbs16[9] = in[9]^in[8];
                prbs16[8] = in[8]^in[7];
                prbs16[7] = in[7]^in[6];
                prbs16[6] = in[6]^in[5];
                prbs16[5] = in[5]^in[4];
                prbs16[4] = in[4]^in[3];
                prbs16[3] = in[3]^in[2];
                prbs16[2] = in[2]^in[1];
                prbs16[1] = in[1]^in[0];
                prbs16[0] = in[0]^(in[15]^in[14]);
            end
    endfunction
    
    reg [15:0] prbs = 'hfffe;
    reg [7:0] Din;
    reg [7:0] Din_del1;
    reg [7:0] Din_del2;
    reg [2:0] sel;
    wire correct;
    
    always @(posedge LS_CLK)
    begin
        if (prbsEn == 1'b1)
        begin
            Din_del2 <= Din_del1;
            Din_del1 <= Din;
            #(1*T_CLK);
            prbs <= prbs16(prbs);
            Din <= prbs[11:4];
        end
    end
    
    assign correct = (Din_del2 == data_out);
    
    initial begin
        HS_CLK <= 0;
        nHS_CLK <= 1;
        #(0.5*T_CLK);
        forever begin
            HS_CLK <= ~HS_CLK;
            nHS_CLK <= ~nHS_CLK;
            #(0.5*T_CLK);
        end
    end
    
    initial begin
//        #(2*T_CLK);
        LS_CLK <= 0;
        #(2*T_CLK);
        forever begin
            LS_CLK <= ~LS_CLK;
            #(2*T_CLK);
        end
    end
    
    initial begin
        forever begin
            if (prbsEn)
            begin

                sel <= sel + 1;
            end
            #(0.5*T_CLK);
        end
    end
    
    assign data_in = Din[sel];
    
    initial begin
        sel <= 6;
        prbsEn <= 0;
        CE <= 0;
        RESET <= 1;
//        Din = 'h54;
        #(60*T_CLK);
        CE <= 1;
        #(6*T_CLK);
        RESET <= 0;
        #(4*T_CLK);
        prbsEn <= 1;
    end
    
endmodule
