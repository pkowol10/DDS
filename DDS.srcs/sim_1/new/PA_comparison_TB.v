`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2025 01:21:37
// Design Name: 
// Module Name: PA_comparison_TB
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


module PA_comparison_TB();

    parameter w_step = 8;
    parameter w_out = 16;
    parameter N = 8;
    
    time T_CLK = 8;
    
    reg CLK;
    reg CE;
    reg RESET;
    reg [w_step-1:0] step;
    reg [w_out-1:0] mod;
    wire [w_out-1:0] out1;
    wire [w_out-1:0] out2;
    wire [w_out-1:0] out3;
    
    wire [7:0] data1;
    wire [7:0] data2;
    wire [7:0] data3;
    
    PA_comparison #(w_step, w_out, N) DUT (CLK, CE, RESET, step, mod, out1, out2, out3);
    
    
    function real sin (input real x);
            if (x > 0.25) // cos is easier to calculate
                sin = cos( 1.570796327 - x); // sin(x) = cos(90 - x)
            else 
            begin // Taylor
                 real x2 = x*x;
                sin = x * (1.0 + x2 * ( -1.0 / 6.0 + x2 * ( 1.0 / 120.0 - x2 / 5040.0) ) ); // Taylor series skiped x^9 / 9!
            end 
    endfunction
           
    
    function real cos (input real x);
        if( x <= 0.25) 
        begin // Taylor
            real x2 = x*x;
            cos = 1.0 + x2 * (-0.5 + x2 * (1.0/24.0 + x2 * (-1.0/720.0 + x2/40320.0) ) ); // skipped -x^10 / 10!
        end
        else 
        begin // use formula cos(4x) = f( cos(x) )
            real cosx4 = cos(0.25 * x); // cos(4x) = 2*cos^2(2x)-1 = 8*cos^4(x) - 8*cos^2(x) + 1
            cosx4 = cosx4 * cosx4;
            cos = 8.0 * (cosx4 * (cosx4 - 1.0) ) + 1.0; // 
        end
    endfunction
    
    parameter Pi = 3.141592653589;
    
    reg [7:0] rom[255:0];
    
    wire T1;
    wire T3;
    
    assign T1 = 1'b1 ? data1 >= 'h79 & data1 <= 'h88: 1'b0;     // detekcja przejscia przez zero
//    assign T3 = 1'b1 ? data3 >= 'h79 & data3 <= 'h88 : 1'b0;
    assign T3 = 1'b1 ? out3 == 0 : 1'b0;

    assign data1 = rom[out1[15:8]];
    assign data2 = rom[out2[15:8]];
    assign data3 = rom[out3[7:0]];
    
    integer i, sin_i;

initial begin
    rom[0] = 128; // 0 deg
    rom[64] = 255; // 90 deg
    rom[128] = 128; // 180 deg
    rom[192] = 1; // 270 deg
    
    for(i=1; i<64; i=i+1) 
        begin 
            sin_i = 0.5 + 127.0 * sin(i * Pi / 128.0); // angle 0 to 90 deg
            rom[i] = 128 + sin_i; // 0 to 90 deg
            rom[128 -i] = 128 + sin_i; // 180 downto 90 deg
            rom[128 + i] = 128 - sin_i; // 180 to 270 deg
            rom[256 -i] = 128 - sin_i; // 270 to 360 deg
        end
end


    
    initial begin
        CLK <= 0;
        #(0.5*T_CLK);
        forever
        begin
            CLK <= ~CLK;
            #(0.5*T_CLK);
        end
    end
    
    initial begin
        RESET <= 0;
        CE <= 0;
        mod <= 240;
        #(2*T_CLK);
        RESET <= 1;
        CE <= 1;
        step <= 200;
        #(2*T_CLK);
        RESET <= 0;
        #(20*T_CLK);
//        mod <= 250;
        #(2000*T_CLK);
        $finish;
    end
    
    // potrzeba 8 taktow CLK od CE (RESET)do rozpoczecia dzialania ukladow
    

endmodule
