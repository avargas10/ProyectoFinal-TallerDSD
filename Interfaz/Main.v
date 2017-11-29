`include "VGA.v"
`include "Divisor_de_frecuencia.v"
`include "Divisor_1Hz.v"
`include "Divisor_vga_Clk.v"

`timescale 1ns / 1ps
module Main(
    input gen_clk, 
    input [8:0]sw,
	 input bDer, bIzq, bCen,bR,
    output hsync, vsync,
    output [8:0] rgb,
	 output [13:0] LED,
	 inout PS2CLK,
	 inout PS2DATA
    );

	 wire CLK_50; 
	 wire clk_1HZ,clk_25MHZ,clkPer;
	 wire [9:0] w_airplanex,w_gunx,w_bulletx,w_bullety;
	 wire w_col,finish;
	 wire [4:0] w_score;
	 wire Reset1;
	 wire [31:0]data;
	 wire [31:0]address;
	 wire enable;
	 

	 Divisor_Clk_50 keyclk(.clk_in(gen_clk),.div_frec(CLK_50));
	 Divisor_de_frecuencia div(.clk_in(gen_clk),.div_frec(clk_1HZ));
	 Divisor_vga_Clk vgaClk(.clk_in(gen_clk),.div_frec(clk_25MHZ));
	 Divisor_1Hz divPer(.clk_in(gen_clk),.div_frec(clkPer));
	 
	 VGA image(.clk(clk_25MHZ),.num(LED),.result(23),.hsync(hsync),
					.vsync(vsync),.reset(Reset1),.rgb(rgb));
					
	 KeyboarController kb(
		.clk(gen_clk),
		.Reset(Reset1),
		.LED(LED),
		.clk_ps2(CLK_50),
		.PS2CLOCK(PS2CLK),
		.PS2DATA(PS2DATA)
		);
	 
	 write w(.clk(gen_clk),.num(LED),.data(data),.address(address),.enable(enable));
	
	
	 //signal declaration
    reg [8:0] rgb_reg;
    wire video_on;
    wire [9:0] x,y;

endmodule
