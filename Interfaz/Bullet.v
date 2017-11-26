`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:55:33 10/16/2017 
// Design Name: 
// Module Name:    Bullet 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Bullet(col,clk,bCen,gunx,bulletx,bullety,finish,reset);

	input [9:0]gunx;
	input col,clk,bCen,finish,reset;
	output reg [9:0] bulletx = 0;
	output reg [9:0] bullety = 480;
	reg flag = 1'b0;

	always@(posedge clk)
		begin
			if(reset)
				begin
					bulletx = 0;
					bullety = 480;
				end
			else if(finish)
				begin
					bulletx = bulletx;
					bullety = bullety;
				end
			else if(col)
				begin
					bulletx = 0;
					bullety = 480;
					flag = 1'b0;
				end
			else if (flag)
				begin
					bullety = bullety-5;
					if (bullety<10) 
						begin
							flag = 1'b0;
						end
				end	
			else if (bCen) 
				begin
					bulletx =gunx;
					bullety = 440;
					flag = 1'b1;
				end
			else 
				begin
					bulletx = 0;
					bullety = 480;
				end
      end 

endmodule
