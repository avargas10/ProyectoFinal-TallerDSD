`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:30:58 11/27/2017 
// Design Name: 
// Module Name:    flipflopEN 
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
module flipflopEN#(
		parameter WIDTH=8)(
		input clk,reset,en,
		input [WIDTH-1:0] d,
		output reg [WIDTH-1:0] q
    );
	
	always@(posedge clk, posedge reset)
		begin
			if(reset) 
				q<=0;
			else if
				(en)q<=d;
		end
endmodule
