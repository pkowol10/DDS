`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2025 00:48:32
// Design Name: 
// Module Name: BRAM_controller_TB
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


module BRAM_Controller_TB();

    parameter waddr = 8;
    parameter wdata = 64;

    reg CLKA;
    reg CEA;
    reg WE;
    reg [waddr-1:0] addrA;
    wire [wdata-1:0] DinA;
    reg CLKB;
    reg CEB;
    reg RE;
    reg [waddr-1:0] addrB;
    wire [wdata-1:0] DoutB;
    
    
    reg [wdata-1:0] data_buf;
    reg dataEN;
    reg dataRE;
    
    time T_CLK = 8;
    
    BRAM_Controller #(waddr, wdata) DUT (CLKA, CEA, WE, addrA, DinA, CEB, RE, addrB, DoutB);
    
    initial begin
        CLKA <= 0;
        CLKB <= 0;
        #(0.5*T_CLK);
        forever 
        begin
            CLKA <= ~CLKA;
            CLKB <= ~CLKB;
            #(0.5*T_CLK);
        end
    end
    
    always @(posedge CLKA)
    begin
        #1;
        if (dataEN)
        begin
//            data_buf <= data_buf + 'h0808080808080808;
            data_buf[63:56] <= data_buf[63:56] + 'h8;
            data_buf[55:48] <= data_buf[55:48] + 'h8;
            data_buf[47:40] <= data_buf[47:40] + 'h8;
            data_buf[39:32] <= data_buf[39:32] + 'h8;
            data_buf[31:24] <= data_buf[31:24] + 'h8;
            data_buf[23:16] <= data_buf[23:16] + 'h8;
            data_buf[15:8] <= data_buf[15:8] + 'h8;
            data_buf[7:0] <= data_buf[7:0] + 'h8;
//            data_buf <= {data_buf[63:56] + 'h8, data_buf[55:48] + 'h8, data_buf[47:40] + 'h8, data_buf[39:32] + 'h8, data_buf[31:24] + 'h8, data_buf[23:16] + 'h8, data_buf[15:8] + 'h8, data_buf[7:0] + 'h8};
            addrA <= addrA + 1;
            
        end
    end
    
    always @(posedge CLKB)
    begin
        #1;
        if (RE & dataRE)
            addrB <= addrB + 1;
    end
    
    assign DinA = data_buf;
    
    
    initial begin
        data_buf <= 'h0706050403020100;
        dataEN <= 0;
        dataRE <= 0;
        addrA <= 0;
        addrB <= 0;
        CEA <= 0;
        CEB <= 0;
        WE <= 0;
        RE <= 0;
        #(2*T_CLK);
        CEA <= 1;
        CEB <= 1;
        #(11*T_CLK);
        WE <= 1;
        addrA <= 0;
        addrB <= 'bz;
        #(1*T_CLK);
        addrA <= 1;
        data_buf <= 'h0f0e0d0c0b0a0908;
        #(1*T_CLK);
        WE <= 0;
        addrA <= 'bz;
        addrB <= 0;
        RE <= 1;
        data_buf <= 'h0706050403020100;
        #(2*T_CLK);
        addrB <= 1;
        #(2*T_CLK);
        WE <= 1;
        addrA <= 0;
        addrB <= 'bz;
        RE <= 0;
        CEB <= 0;
        #(1*T_CLK);
        dataEN <= 1;
        #(2**waddr*T_CLK);
        WE <= 0;
        dataEN <= 0;
        #(2*T_CLK);
        CEB <= 1;
        addrA <= 'bz;
        addrB <= 0;
        #(1*T_CLK);
        RE <= 1;
        #(5*T_CLK);
        dataRE <= 1;
        #(2**waddr*T_CLK);
        RE <= 0;
        dataRE <= 0;
        #(7*T_CLK);
        $finish;
        
    end

    // dane przy zapisie sa pobierane przy pierwszym zboczu po wystapieniu WE (wystarczy jeden takt)
    // dane na wyjsciu pojawiaja sie okolo 1.5*T_CLK po zboczu zegara dla danego adresu (wzgledem buforowanego CLK)
    
endmodule
