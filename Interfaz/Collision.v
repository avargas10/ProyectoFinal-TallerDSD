`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:43:14 10/16/2017 
// Design Name: 
// Module Name:    Collision 
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
module Collision(clk, bulletx, bullety, airplanex,col);
	input [9:0]bulletx, bullety, airplanex;
	input clk;
	output reg col;
	
	
	always@(posedge clk)
		begin
			if(bulletx>=airplanex & bulletx<=(airplanex+30))
				begin
					if(((60-bullety)>=0 & (60-bullety)<=10)||
						((bullety-60)>=0 & (bullety-60)<=10))
						begin
							col = 1'b1;
						end
				end
			else
				begin
					col = 1'b0;
				end
      end 
	


endmodule
