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
    output [8:0] rgb
    );
	 wire clk_1HZ,clk_25MHZ,clkPer;
	 wire [9:0] w_airplanex,w_gunx,w_bulletx,w_bullety;
	 wire w_col,finish,reset;
	 wire [4:0] w_score;
	 
	 Divisor_de_frecuencia div(.clk_in(gen_clk),.div_frec(clk_1HZ));
	 Divisor_vga_Clk vgaClk(.clk_in(gen_clk),.div_frec(clk_25MHZ));
	 Divisor_1Hz divPer(.clk_in(gen_clk),.div_frec(clkPer));
	 
	 VGA image(.clk(clk_25MHZ), .sw(sw),.hsync(hsync),
					.vsync(vsync),.rgb(rgb));
	 //signal declaration
    reg [8:0] rgb_reg;
    wire video_on;
    wire [9:0] x,y;

endmodule
