`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2025 01:46:32
// Design Name: 
// Module Name: DDS_top_TB
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


module DDS_core_TB();

    parameter w_step = 8;
    parameter w_PA = 16;
    parameter w_addr = 8;
    parameter w_data = 64;
    parameter w_sample = 8;
    parameter N = 4;
    
    reg ref_CLK;
    reg CE;
    reg RESET;
    reg [w_step-1:0] step;
    wire [w_data-1:0] data_in;
    reg WE;
    reg BIST_en;
    wire [w_sample-1:0] sample;
    wire LS_CLK;
    wire BIST_correct;
    
    reg dataEN;
    reg [w_data-1:0] data_buf;
    
    time T_CLK = 10;
    
    DDS_core #(w_step, w_PA, w_addr, w_data, w_sample, N) DUT (ref_CLK, CE, RESET, step, data_in, WE, BIST_en, sample, LS_CLK, BIST_correct);
    
    
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
    
    reg [w_data-1:0] rom [2**w_addr-1:0];
    reg romEN;
    reg [w_addr-1:0] romAddr;
    
    integer i, sin_i;

    initial begin
        rom[0] = 'h8080808080808080; // 0 deg
        rom[2**(w_addr-2)] = 'hffffffffffffffff; // 90 deg
        rom[2**(w_addr-1)] = 'h8080808080808080; // 180 deg
        rom[2**(w_addr-2) + 2**(w_addr-1)] = 'h0000000000000000; // 270 deg
        
        for(i=1; i<2**(w_addr-2); i=i+1) 
        begin 
            sin_i = 0.5 + 127.0 * sin(i * Pi / (2**(w_addr-1) * 1.0)); // angle 0 to 90 deg
            rom[i][63:56] = 128 + sin_i;
            rom[i][55:48] = 128 + sin_i;
            rom[i][47:40] = 128 + sin_i;
            rom[i][39:32] = 128 + sin_i;
            rom[i][31:24] = 128 + sin_i;
            rom[i][23:16] = 128 + sin_i;
            rom[i][15:8] = 128 + sin_i;
            rom[i][7:0] = 128 + sin_i;
            
            rom[2**(w_addr-1)-i][63:56] = 128 + sin_i;
            rom[2**(w_addr-1)-i][55:48] = 128 + sin_i;
            rom[2**(w_addr-1)-i][47:40] = 128 + sin_i;
            rom[2**(w_addr-1)-i][39:32] = 128 + sin_i;
            rom[2**(w_addr-1)-i][31:24] = 128 + sin_i;
            rom[2**(w_addr-1)-i][23:16] = 128 + sin_i;
            rom[2**(w_addr-1)-i][15:8] = 128 + sin_i;
            rom[2**(w_addr-1)-i][7:0] = 128 + sin_i;

            rom[2**(w_addr-1)+i][63:56] = 128 - sin_i;
            rom[2**(w_addr-1)+i][55:48] = 128 - sin_i;
            rom[2**(w_addr-1)+i][47:40] = 128 - sin_i;
            rom[2**(w_addr-1)+i][39:32] = 128 - sin_i;
            rom[2**(w_addr-1)+i][31:24] = 128 - sin_i;
            rom[2**(w_addr-1)+i][23:16] = 128 - sin_i;
            rom[2**(w_addr-1)+i][15:8] = 128 - sin_i;
            rom[2**(w_addr-1)+i][7:0] = 128 - sin_i;

            rom[2**(w_addr)-i][63:56] = 128 - sin_i;
            rom[2**(w_addr)-i][55:48] = 128 - sin_i;
            rom[2**(w_addr)-i][47:40] = 128 - sin_i;
            rom[2**(w_addr)-i][39:32] = 128 - sin_i;
            rom[2**(w_addr)-i][31:24] = 128 - sin_i;
            rom[2**(w_addr)-i][23:16] = 128 - sin_i;
            rom[2**(w_addr)-i][15:8] = 128 - sin_i;
            rom[2**(w_addr)-i][7:0] = 128 - sin_i;
            
//            rom[i] = 128 + sin_i; // 0 to 90 deg
//            rom[128 -i] = 128 + sin_i; // 180 downto 90 deg
//            rom[128 + i] = 128 - sin_i; // 180 to 270 deg
//            rom[256 -i] = 128 - sin_i; // 270 to 360 deg
        end
    end
    
    
    initial begin
        ref_CLK <= 0;
        #(0.5*T_CLK);
        forever begin
            ref_CLK <= ~ref_CLK;
            #(0.5*T_CLK);
        end
    end
    
    always @(posedge LS_CLK)
    begin
//        #1;
        if (dataEN & ~romEN)
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
            
        end
        else if (dataEN & romEN)
        begin
            data_buf = rom[romAddr];
            romAddr <= romAddr + 1;
        end
    end
    
    assign data_in = data_buf;
    
    initial begin
        BIST_en <= 0;
        romAddr <= 0;
        romEN <= 1;
        CE <= 1;
        RESET <= 0;
        step <= 1500;
        WE <= 0;
        data_buf <= 'h0706050403020100;
        dataEN <= 0;
        #5500;
        RESET <= 1;
        #(2*T_CLK);
        RESET <= 0;
        #(1*T_CLK);
        WE <= 1;
        #(0.25*T_CLK);
        dataEN <= 1;
        #(2**(w_addr)*T_CLK);
        dataEN <= 0;
        WE <= 0;
        #((2**(w_addr) + 100)*T_CLK);
        BIST_en <= 1;
        #(200*T_CLK);
        $finish;
        
        // cos jest mocno zrabane z muxami - dane na wyjsciu nie zgadzaja sie z oczekiwaniami !!!
    end
endmodule
