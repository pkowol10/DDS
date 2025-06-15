`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2025 20:00:35
// Design Name: 
// Module Name: deserializer_1_8_primitive
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


module deserializer_1_8_primitive(
    input CLKin,
    input CLKBin,
    input CLKDIVin,
    input CE,
    input RESET,
    input IFB,
    output [7:0] Q
    );
    
    // ISERDESE2: Input SERial/DESerializer with Bitslip
    //            7 Series
    // Xilinx HDL Language Template, version 2025.1
    
    ISERDESE2 #(
       .DATA_RATE("DDR"),           // DDR, SDR
       .DATA_WIDTH(8),              // Parallel data width (2-8,10,14)
       .DYN_CLKDIV_INV_EN("FALSE"), // Enable DYNCLKDIVINVSEL inversion (FALSE, TRUE)
       .DYN_CLK_INV_EN("FALSE"),    // Enable DYNCLKINVSEL inversion (FALSE, TRUE)
       // INIT_Q1 - INIT_Q4: Initial value on the Q outputs (0/1)
       .INIT_Q1(1'b0),
       .INIT_Q2(1'b0),
       .INIT_Q3(1'b0),
       .INIT_Q4(1'b0),
//       .INIT_Q5(1'b0),
//       .INIT_Q6(1'b0),
//       .INIT_Q7(1'b0),
//       .INIT_Q8(1'b0),
       .INTERFACE_TYPE("NETWORKING"),   // MEMORY, MEMORY_DDR3, MEMORY_QDR, NETWORKING, OVERSAMPLE
       .IOBDELAY("NONE"),           // NONE, BOTH, IBUF, IFD
       .NUM_CE(1),                  // Number of clock enables (1,2)
       .OFB_USED("TRUE"),          // Select OFB path (FALSE, TRUE)
       .SERDES_MODE("MASTER"),      // MASTER, SLAVE
       // SRVAL_Q1 - SRVAL_Q4: Q output values when SR is used (0/1)
       .SRVAL_Q1(1'b0),
       .SRVAL_Q2(1'b0),
       .SRVAL_Q3(1'b0),
       .SRVAL_Q4(1'b0)
    )
    ISERDESE2_inst (
       .O(O),                       // 1-bit output: Combinatorial output
       // Q1 - Q8: 1-bit (each) output: Registered data outputs
       .Q1(Q[7]),
       .Q2(Q[6]),
       .Q3(Q[5]),
       .Q4(Q[4]),
       .Q5(Q[3]),
       .Q6(Q[2]),
       .Q7(Q[1]),
       .Q8(Q[0]),
//       .Q1(Q[0]),
//       .Q2(Q[1]),
//       .Q3(Q[2]),
//       .Q4(Q[3]),
//       .Q5(Q[4]),
//       .Q6(Q[5]),
//       .Q7(Q[6]),
//       .Q8(Q[7]),
       // SHIFTOUT1, SHIFTOUT2: 1-bit (each) output: Data width expansion output ports
       .SHIFTOUT1(SHIFTOUT1),
       .SHIFTOUT2(SHIFTOUT2),
       .BITSLIP(1'b0),           // 1-bit input: The BITSLIP pin performs a Bitslip operation synchronous to
                                    // CLKDIV when asserted (active High). Subsequently, the data seen on the Q1
                                    // to Q8 output ports will shift, as in a barrel-shifter operation, one
                                    // position every time Bitslip is invoked (DDR operation is different from
                                    // SDR).
    
       // CE1, CE2: 1-bit (each) input: Data register clock enable inputs
       .CE1(CE),
       .CE2(CE),
       .CLKDIVP(1'b0),           // 1-bit input: TBD
       // Clocks: 1-bit (each) input: ISERDESE2 clock input ports
       .CLK(CLKin),                   // 1-bit input: High-speed clock
       .CLKB(CLKBin),                 // 1-bit input: High-speed secondary clock
       .CLKDIV(CLKDIVin),             // 1-bit input: Divided clock
       .OCLK(OCLKin),                 // 1-bit input: High speed output clock used when INTERFACE_TYPE="MEMORY"
       // Dynamic Clock Inversions: 1-bit (each) input: Dynamic clock inversion pins to switch clock polarity
       .DYNCLKDIVSEL(1'b0), // 1-bit input: Dynamic CLKDIV inversion
       .DYNCLKSEL(1'b0),       // 1-bit input: Dynamic CLK/CLKB inversion
       // Input Data: 1-bit (each) input: ISERDESE2 data input ports
       .D(1'b0),                       // 1-bit input: Data input
       .DDLY(1'b0),                 // 1-bit input: Serial data from IDELAYE2
       .OFB(IFB),                   // 1-bit input: Data feedback from OSERDESE2
       .OCLKB(OCLKBin),               // 1-bit input: High speed negative edge output clock
       .RST(RESET),                   // 1-bit input: Active high asynchronous reset
       // SHIFTIN1, SHIFTIN2: 1-bit (each) input: Data width expansion input ports
       .SHIFTIN1(1'b0),
       .SHIFTIN2(1'b0)
    );
    
    // End of ISERDESE2_inst instantiation
endmodule
