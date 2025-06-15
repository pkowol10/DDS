`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2025 01:10:16
// Design Name: 
// Module Name: CLK_gen
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


module CLK_gen(
    input ref_CLK,
    output HS_CLK,
    output nHS_CLK,
//    output nHS_CLK_rx,
    output LS_CLK,
    output lock
    );
    wire FB_CLKin, FB_CLKout;
//    wire HS_CLK_int;
    wire CLKOUT2, CLKOUT3, CLKOUT4, CLKOUT5;
    
    // PLLE2_BASE: Base Phase Locked Loop (PLL)
    //             7 Series
    // Xilinx HDL Language Template, version 2021.2

    PLLE2_BASE #(
       .BANDWIDTH("LOW"),  // OPTIMIZED, HIGH, LOW
       .CLKFBOUT_MULT(9),        // Multiply value for all CLKOUT, (2-64)
//       .CLKFBOUT_MULT_F(10),        // do testu, moze nie dzialac !!!
       .CLKFBOUT_PHASE(0.0),     // Phase offset in degrees of CLKFB, (-360.000-360.000).
       .CLKIN1_PERIOD(10),      // Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
       // CLKOUT0_DIVIDE - CLKOUT5_DIVIDE: Divide amount for each CLKOUT (1-128)
       .CLKOUT0_DIVIDE(2),
       .CLKOUT1_DIVIDE(2),
       .CLKOUT2_DIVIDE(8),
       .CLKOUT3_DIVIDE(128),
       .CLKOUT4_DIVIDE(128),
       .CLKOUT5_DIVIDE(128),
       // CLKOUT0_DUTY_CYCLE - CLKOUT5_DUTY_CYCLE: Duty cycle for each CLKOUT (0.001-0.999).
       .CLKOUT0_DUTY_CYCLE(0.5),
       .CLKOUT1_DUTY_CYCLE(0.5),
       .CLKOUT2_DUTY_CYCLE(0.5),
       .CLKOUT3_DUTY_CYCLE(0.5),
       .CLKOUT4_DUTY_CYCLE(0.5),
       .CLKOUT5_DUTY_CYCLE(0.5),
       // CLKOUT0_PHASE - CLKOUT5_PHASE: Phase offset for each CLKOUT (-360.000-360.000).
       .CLKOUT0_PHASE(-20.0),       // post impl sim
//       .CLKOUT0_PHASE(0.0),       // behav sim
       .CLKOUT1_PHASE(180.0),
       .CLKOUT2_PHASE(0.0),
       .CLKOUT3_PHASE(0.0),
       .CLKOUT4_PHASE(0.0),
       .CLKOUT5_PHASE(0.0),
       .DIVCLK_DIVIDE(1),        // Master division value, (1-56)
       .REF_JITTER1(0.0),        // Reference input jitter in UI, (0.000-0.999).
       .STARTUP_WAIT("TRUE")    // Delay DONE until PLL Locks, ("TRUE"/"FALSE")
    )
    PLLE2_BASE_inst (
       // Clock Outputs: 1-bit (each) output: User configurable clock outputs
       .CLKOUT0(HS_CLK),   // 1-bit output: CLKOUT0
       .CLKOUT1(nHS_CLK),   // 1-bit output: CLKOUT1
       .CLKOUT2(LS_CLK),   // 1-bit output: CLKOUT2
       .CLKOUT3(CLKOUT3),   // 1-bit output: CLKOUT3
       .CLKOUT4(CLKOUT4),   // 1-bit output: CLKOUT4
       .CLKOUT5(CLKOUT5),   // 1-bit output: CLKOUT5
       // Feedback Clocks: 1-bit (each) output: Clock feedback ports
//       .CLKFBOUT(CLKFBOUT), // 1-bit output: Feedback clock
//       .CLKFBOUT(FB_CLKout),
       .CLKFBOUT(FB_CLKout),
       .LOCKED(lock),     // 1-bit output: LOCK
       .CLKIN1(ref_CLK),     // 1-bit input: Input clock
       // Control Ports: 1-bit (each) input: PLL control ports
       .PWRDWN(1'b0),     // 1-bit input: Power-down
       .RST(1'b0),           // 1-bit input: Reset
       // Feedback Clocks: 1-bit (each) input: Clock feedback ports
//       .CLKFBIN(CLKFBIN)    // 1-bit input: Feedback clock
//        .CLKFBIN(FB_CLKin)
       .CLKFBIN(FB_CLKout)
    );
// End of PLLE2_BASE_inst instantiation


//    BUFR #(
////       .BUFR_DIVIDE("BYPASS"),   // Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8"
//       .BUFR_DIVIDE("8"),
//       .SIM_DEVICE("7SERIES")  // Must be set to "7SERIES"
//    )
//    BUFR_inst (
//       .O(FB_CLKin),     // 1-bit output: Clock output port
//       .CE(1'b1),   // 1-bit input: Active high, clock enable (Divided modes only)
//       .CLR(1'b0), // 1-bit input: Active high, asynchronous clear (Divided modes only)
//       .I(FB_CLKout)      // 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
//    );


//    BUFR #(
////       .BUFR_DIVIDE("BYPASS"),   // Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8"
//       .BUFR_DIVIDE("BYPASS"),
//       .SIM_DEVICE("7SERIES")  // Must be set to "7SERIES"
//    )
//    BUFR_inst (
//       .O(HS_CLK),     // 1-bit output: Clock output port
//       .CE(1'b1),   // 1-bit input: Active high, clock enable (Divided modes only)
//       .CLR(1'b0), // 1-bit input: Active high, asynchronous clear (Divided modes only)
//       .I(HS_CLK_int)      // 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
//    );
    
    

// BUFMR: Multi-Region Clock Buffer
//        7 Series
// Xilinx HDL Language Template, version 2024.2

//BUFIO BUFIO_inst (
//   .O(HS_CLK), // 1-bit output: Clock output (connect to BUFIOs/BUFRs)
//   .I(HS_CLK_int)  // 1-bit input: Clock input (Connect to IBUF)
//);

// End of BUFMR_inst instantiation
endmodule
