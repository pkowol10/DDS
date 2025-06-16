`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2025 23:30:45
// Design Name: 
// Module Name: BIST_logic
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


module BIST_logic #(parameter w_data = 64, parameter w_sample = 8, parameter byte_slip = 3) (HS_CLK, nHS_CLK, LS_CLK, CE, RESET, BIST_en, Din[w_data-1:0], FBin[w_sample-1:0], Dout[w_data-1:0], correct);

    input HS_CLK;
    input nHS_CLK;
    input LS_CLK;
    input CE;
    input RESET;
    input BIST_en;
    input [w_data-1:0]Din;
    input [w_sample-1:0]FBin;
    output [w_data-1:0]Dout;
    output reg correct;
    
    reg [w_data-1:0]Din_del1;
    reg [w_data-1:0]Din_del2;
    reg [w_data-1:0]Din_del3;
    reg [w_data-1:0]Din_del4;
    reg [w_data-1:0]Din_del5;
    
    reg [w_data-1:0] prbs;
    reg [w_sample-1:0] prbs_sample [w_data/w_sample-1:0];
    
    wire [w_data-1:0] DES_out;
    reg [w_data-1:0] DES_out_del;
    wire prbs_en;
//    wire [w_data-1:0] aux_prbs;
    wire [w_data-1:0] DES_out_int;
    wire correct_int;
    
    function [7:0] prbs8;
        input [7:0] in;
            begin
//                prbs8[7] = in[7]^in[6];
//                prbs8[6] = in[6]^in[5];
//                prbs8[5] = in[5]^in[4];
//                prbs8[4] = in[4]^in[3];
//                prbs8[3] = in[3]^in[2];
//                prbs8[2] = in[2]^in[1];
//                prbs8[1] = in[1]^in[0];
//                prbs8[0] = in[0]^(in[7]^in[6]);
                prbs8 = {in[6:0], in[7] ^ in[3] ^ in[2] ^ in[1]};
            end
    endfunction
    
    genvar i;
    generate
        for (i = 0; i < (w_data/w_sample); i = i + 1)
        begin
//            deserializer_1_8_primitive DES_i(HS_CLK, nHS_CLK, LS_CLK, CE, RESET, FBin[i], DES_out[w_sample*(i+1)-1:w_sample*i]);
            deserializer_1_8_primitive DES_i(HS_CLK, nHS_CLK, LS_CLK, CE, RESET, FBin[i], {DES_out[7*w_sample+i], DES_out[6*w_sample+i], DES_out[5*w_sample+i], DES_out[4*w_sample+i], DES_out[3*w_sample+i], DES_out[2*w_sample+i], DES_out[w_sample+i], DES_out[i]});
//            assign DES_out_int[w_sample*(i+1)-1:w_sample*i] = {DES_out[6*w_sample+i], DES_out[5*w_sample+i], DES_out[4*w_sample+i], DES_out[3*w_sample+i], DES_out[2*w_sample+i], DES_out[w_sample+i], DES_out[i], DES_out_del[7*w_sample+i]};
//            assign aux_prbs[w_sample*(i+1)-1:w_sample*i] = {prbs[w_sample*7+i], prbs[w_sample*6+i], prbs[w_sample*5+i], prbs[w_sample*4+i], prbs[w_sample*3+i], prbs[w_sample*2+i], prbs[w_sample+i], prbs[i]};
        end
    endgenerate
    
    Delay #(3) Del (LS_CLK, CE, BIST_en, prbs_en);
    
    always @(posedge LS_CLK)
    begin
        if (CE)
        begin
            if (RESET)
            begin
                prbs <= 'hfff9bf9f7f5f3f1f;
                Din_del4 <= 0;
                Din_del3 <= 0;
                Din_del2 <= 0;
                Din_del1 <= 0;
                correct <= 0;
            end
            else 
            begin
                if (prbs_en)
                begin
                    prbs <= {prbs8(prbs[63:56]), prbs8(prbs[55:48]), prbs8(prbs[47:40]), prbs8(prbs[39:32]), prbs8(prbs[31:24]), prbs8(prbs[23:16]), prbs8(prbs[15:8]), prbs8(prbs[7:0])};
//                    prbs <= 'h0807060504030201;
                    Din_del1 <= prbs;
                    correct <= correct_int;
                end
                else
                    Din_del1 <= Din;
                Din_del5 <= Din_del4;
                Din_del4 <= Din_del3;
                Din_del3 <= Din_del2;
                Din_del2 <= Din_del1;
                DES_out_del <= DES_out;
            end
        end
    end
    
    assign Dout = BIST_en & prbs_en ? prbs : BIST_en ? 0 : Din;
//    assign DES_out_int = {DES_out[62:56], DES_out_del[63], DES_out[54:48], DES_out_del[55], DES_out[46:40], DES_out_del[47], DES_out[38:32], DES_out_del[39], DES_out[30:24], DES_out_del[31], DES_out[22:16], DES_out_del[23], DES_out[14:8], DES_out_del[15], DES_out[6:0], DES_out_del[7]};
//    assign DES_out_int = {DES_out[55:0], DES_out_del[63:56]};
    assign DES_out_int = {DES_out[w_data-8*byte_slip-1:0], DES_out_del[w_data-1:w_data-8*byte_slip]};
    // byte_slip wymusza porownanie odpowiednich bajtow - wynika z 3 taktor HS_CLK roznicy miedzy OSERDESE2_OFB i ISERDESE2_OFB 
//    assign correct = ({Din_del3[w_data-1:w_data-w_sample*byte_slip], Din_del4[w_data-w_sample*byte_slip-1:0]} == DES_out);
    assign correct_int = Din_del4 == DES_out_int;
        
endmodule
