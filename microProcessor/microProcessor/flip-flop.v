`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:26:05 11/27/2017 
// Design Name: 
// Module Name:    flip-flop 
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
module flipflop#(
		parameter WIDTH=8)(
		input clk,reset,
		input [WIDTH-1:0] d,
		output reg [WIDTH-1:0] q
    );
	
	always@(posedge clk, posedge reset)
		if(reset) q<=0;
		else q<=d;
endmodule
