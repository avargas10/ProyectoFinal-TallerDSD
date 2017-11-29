`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:59:33 11/27/2017 
// Design Name: 
// Module Name:    data_mem 
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
module data_mem(input  clk, we,te,
		input  [31:0] a,ta, wd,td,
		output reg [31:0] rd,rtd);	
	 reg[31:0] RAM[63:0];
	 reg [7:0] offset;
	 initial begin
	  for (offset=0; offset < 64; offset = offset + 1)
				RAM[offset] = 0;
				
				end
		always@*
			begin
				rd = RAM[a/4];
			end
		always@*
			begin
				rtd = RAM[ta/4];
			end
		always@(posedge clk)
			begin 
				if(we)
					begin
						RAM[a/4]<=wd;
					end
				if(td)
					begin
						RAM[ta/4]<=td;
					end
			end
endmodule
