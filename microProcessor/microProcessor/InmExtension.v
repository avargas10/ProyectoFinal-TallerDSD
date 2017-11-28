`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:13:08 11/27/2017 
// Design Name: 
// Module Name:    InmExtension 
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
module InmExtension(
		input [23:0] Instr,
		input [1:0] InmSrc,
		output reg [31:0] ExtInm 
    );
	 
	 always@*
		begin
		  case(InmSrc)
			0: ExtInm = {24'b0,Instr[7:0]};
			1: ExtInm = {20'b0,Instr[11:0]};
			2: ExtInm = {{6{Instr[23]}}, Instr[23:0], 2'b00};
			default: ExtInm = 32'bx;
		  endcase
		end
endmodule
