`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:49:39 11/27/2017 
// Design Name: 
// Module Name:    adder 
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
module adder#(
		parameter WIDTH=8
    )
	 (input [WIDTH-1:0] a,b,
	  output reg [WIDTH-1:0] y
	 );
	 always@*
		begin
			y = a+b;
		end
endmodule
