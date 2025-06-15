`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2025 01:43:00
// Design Name: 
// Module Name: SERDES_test_TB
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


module SERDES_test_TB();

    reg HS_CLK;
    reg nHS_CLK;
    reg LS_CLK;
    reg CE;
    reg RESET;
    reg [11:0] Din;
    wire [7:0] Dout;
//    wire [7:0] Dout0;
//    wire [7:0] Dout1;
//    wire [7:0] Dout2;
//    wire [7:0] Dout3;
//    wire [7:0] Dout4;
//    wire [7:0] Dout5;
//    wire [7:0] Dout6;
//    wire [7:0] Dout7;
    
    time T_CLK = 2;
    reg data_en;
    wire correct;
    
    reg [11:0] Din_del1;
    reg [11:0] Din_del2;
    reg [11:0] Din_del3;
    reg [11:0] Din_del4;
    reg [11:0] Din_del5;
    
//    reg sel = 0;
//    reg sel_en;
//    wire sel_en_out;
    reg [7:0] prbs;
    reg prbs_en;
    
//    SERDES_test SERDES (HS_CLK, nHS_CLK, LS_CLK, CE, RESET, Din[11:4], Dout0, Dout1, Dout2, Dout3, Dout4, Dout5, Dout6, Dout7);
    SERDES_test SERDES (HS_CLK, nHS_CLK, LS_CLK, CE, RESET, Din[11:4], Dout);
    
//    Delay #(5) del (LS_CLK, CE,  sel_en, sel_en_out);
    
    function [7:0] prbs8;
        input [7:0] in;
            begin
                prbs8[7] = in[7]^in[6];
                prbs8[6] = in[6]^in[5];
                prbs8[5] = in[5]^in[4];
                prbs8[4] = in[4]^in[3];
                prbs8[3] = in[3]^in[2];
                prbs8[2] = in[2]^in[1];
                prbs8[1] = in[1]^in[0];
                prbs8[0] = in[0]^(in[7]^in[6]);
            end
    endfunction
    
    
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
        LS_CLK <= 0;
        #(2*T_CLK);
        forever begin
            LS_CLK <= ~LS_CLK;
            #(2*T_CLK);
        end
    end
    
    always @(posedge LS_CLK)
    begin
        if (data_en & ~prbs_en)
            Din <= Din + 5;
        else if (data_en & prbs_en)
        begin
            Din <= prbs;
            prbs <= prbs8(prbs);
        end
//        if (sel_en_out)
//            sel <= sel + 1;
        Din_del5 <= Din_del4;       // post impl
        Din_del4 <= Din_del3;       // post impl
        Din_del3 <= Din_del2;
        Din_del2 <= Din_del1;
        Din_del1 <= Din;
    end
    
    assign correct = (Din_del5[11:4] == Dout);      // post impl
//    assign correct = (Din_del3[11:4] == Dout);      // behav
//    assign correct = sel ? (Din_del4[11:4] == Dout7) : (Din_del2[11:4] == Dout7);

    initial begin
        CE <= 0;
        RESET <= 0;
        data_en <= 0;
//        sel_en <= 0;
        prbs_en <= 0;
        Din <= 'h000;
        prbs <= 'hfe;
        #(4*T_CLK);
        CE <= 1;
        RESET <= 1;
        #(20.5*T_CLK);
        RESET <= 0;
        data_en <= 1;
//        prbs_en <= 1;
//        sel_en <= 1;
        #(200*T_CLK);
        data_en <= 0;
        #(20*T_CLK);
        $finish;
        
        //Dout7 dziala najlepiej, ale jest przeklamanie na najmlodszym bicie - trzeba brac bit poprzedni ???
        //dziala jeszcze lepiej, ale sa bledy gdy 2 bity takie same pod rzad
    end
    
endmodule
