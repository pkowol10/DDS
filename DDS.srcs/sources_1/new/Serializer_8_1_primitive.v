`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2025 20:12:58
// Design Name: 
// Module Name: Serializer_8_1_primitive
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


module Serializer_8_1_primitive(
    input CLK,
    input CLKDIV,
    input RESET,
    input Load,
    input [7:0] Data,
    output Q
    );
    
    wire T_OUT;
//    wire T = 0;
    OSERDESE3 #(
   .DATA_WIDTH(8),                 // Parallel Data Width (4-8)
   .INIT(1'b0),                    // Initialization value of the OSERDES flip-flops
   .IS_CLKDIV_INVERTED(1'b0),      // Optional inversion for CLKDIV
   .IS_CLK_INVERTED(1'b0),         // Optional inversion for CLK
   .IS_RST_INVERTED(1'b0),         // Optional inversion for RST
   .SIM_DEVICE("ULTRASCALE_PLUS")  // Set the device version for simulation functionality (ULTRASCALE,
                                   // ULTRASCALE_PLUS, ULTRASCALE_PLUS_ES1, ULTRASCALE_PLUS_ES2)
)
OSERDESE3_inst (
   .OQ(Q),         // 1-bit output: Serial Output Data
   .T_OUT(T_OUT),   // 1-bit output: 3-state control output to IOB
   .CLK(CLK),       // 1-bit input: High-speed clock
   .CLKDIV(CLKDIV), // 1-bit input: Divided Clock
   .D(Data),           // 8-bit input: Parallel Data Input
   .RST(RESET),       // 1-bit input: Asynchronous Reset
   .T(Load)            // 1-bit input: Tristate input from fabric
);
endmodule
