`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2025 18:46:04
// Design Name: 
// Module Name: CLK_Buf
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


module CLK_Buf(
    input CLKin,
    input CE,
    input CLR,
    output CLKout
    );
    // https://docs.amd.com/r/en-US/ug953-vivado-7series-libraries/BUFR
    // BUFR: Regional Clock Buffer for I/O and Logic Resources within a Clock Region
    //       7 Series
    // Xilinx HDL Language Template, version 2024.2
    
    BUFR #(
//       .BUFR_DIVIDE("BYPASS"),   // Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8"
       .BUFR_DIVIDE("2"),
       .SIM_DEVICE("7SERIES")  // Must be set to "7SERIES"
    )
    BUFR_inst (
       .O(CLKout),     // 1-bit output: Clock output port
       .CE(CE),   // 1-bit input: Active high, clock enable (Divided modes only)
       .CLR(CLR), // 1-bit input: Active high, asynchronous clear (Divided modes only)
       .I(CLKin)      // 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
    );

// End of BUFR_inst instantiation
endmodule
