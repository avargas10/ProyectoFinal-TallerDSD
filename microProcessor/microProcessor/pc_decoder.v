`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:39:17 11/26/2017 
// Design Name: 
// Module Name:    pc_decoder 
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
module pc_decoder(
		input [3:0] rd,
		input RegW,
		input Branch,
		output reg PCS
    );
	 
	 always@ *
		begin
			PCS = ((rd==15)&RegW)| Branch;
		end


endmodule
