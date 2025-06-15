`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2025 01:42:42
// Design Name: 
// Module Name: SERDES_test
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


module SERDES_test(
    input HS_CLK,
    input nHS_CLK,
    input LS_CLK,
    input CE,
    input RESET,
    input [7:0] Din,
    output [7:0] Dout
//    output [7:0] Dout1,
//    output [7:0] Dout2,
//    output [7:0] Dout3,
//    output [7:0] Dout4,
//    output [7:0] Dout5,
//    output [7:0] Dout6,
//    output [7:0] Dout7
    );
    
    wire OFB;
    wire Q;
    wire [7:0] Dout_int;
    reg [7:0] del_Dout;
    
    Serializer_8_1_primitive_v2 SER (HS_CLK, LS_CLK, CE, RESET, Din, Q, OFB);
    
    deserializer_1_8_primitive DES (HS_CLK, nHS_CLK, LS_CLK, CE, RESET, OFB, Dout_int);
    
    always @(posedge LS_CLK)
    begin
        if (CE)
            del_Dout <= Dout_int;
    end
//    assign Dout0 = Dout_int;
//    assign Dout1 = {Dout_int[0], Dout_int[7:1]};
//    assign Dout2 = {Dout_int[1:0], Dout_int[7:2]};
////    assign Dout2 = {Dout_int[1:0], Dout_int[7], del_Dout[6], Dout_int[5:2]};
//    assign Dout3 = {Dout_int[2:0], Dout_int[7:3]};
//    assign Dout4 = {Dout_int[3:0], Dout_int[7:4]};
//    assign Dout5 = {Dout_int[4:0], Dout_int[7:5]};
//    assign Dout6 = {Dout_int[5:0], Dout_int[7:6]};
//    assign Dout7 = {Dout_int[6:0], Dout_int[7]};
//    assign Dout7 = {del_Dout[6:0], Dout_int[7]};
    assign Dout = {Dout_int[6:0], del_Dout[7]};        // jedeny sluszny sposob odczytu danych (co najwyzej dotrymowac timingi), reszta do wywalenia
                                                        // odczyt danych przy serializacji zaczyna sie W POLOWIE TRWANIA STANU WYSOIEGO LS_CLK !!!
                                                        // indeksy odczytywanych bitow: 7, 0, 1, 2, 3, 4, 5, 6 - bit 7 jest ostatnim z poprzednej sekwencji i 
                                                        // jednoczesnie najmlodszym bitem odbieranego bajtu
    
    
//    assign Dout0 = {del_Dout[1], del_Dout[2], del_Dout[3], del_Dout[4], del_Dout[5], del_Dout[6], del_Dout[7], Dout_int[0]};
endmodule
