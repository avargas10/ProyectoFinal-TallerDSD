`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:42:39 11/27/2017 
// Design Name: 
// Module Name:    clock 
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
module Clk50(
  		input clk,
		output reg newOUT
);
	reg 	flag;
		always @(posedge clk)
			// Reset clock
			if (flag == 0) 
			begin
				newOUT <= 0;
				flag = 1;
			end
			else 
			begin
				newOUT <= ~newOUT;
				flag = 0;
			end
   
endmodule
