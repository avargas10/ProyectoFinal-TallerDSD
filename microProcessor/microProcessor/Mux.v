`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:31:56 11/27/2017 
// Design Name: 
// Module Name:    Mux 
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
module Mux#(parameter WIDTH=8)	
			(input  [WIDTH-1:0] d0, d1,
			 input  s,
			 output reg [WIDTH-1:0] y);
			 
		always@*
		 begin	
			y = s ? d1 : d0;
		 end
endmodule
