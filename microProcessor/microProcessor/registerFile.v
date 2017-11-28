`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:10:23 11/27/2017 
// Design Name: 
// Module Name:    registerFile 
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
module registerFile(
			input clk,
			input [3:0] ra1,ra2,wa3,
			input we3,
			input [31:0] wd3,r15,
			output [31:0] rd1,rd2
			
    );
	 
	 reg[31:0] registers[14:0];
	 initial begin 
		 registers[0] = 0;
		 registers[1] = 0;
		 registers[2] = 0;
		 registers[3] = 0;
		 registers[4] = 0;
		 registers[5] = 0;
		 registers[6] = 0;
		 registers[7] = 0;
		 registers[8] = 0;
		 registers[9] = 0;
		 registers[10] = 0;
		 registers[11] = 0;
		 registers[12] = 0;
		 registers[13] = 0;
		 registers[14] = 0;
	end
	 
	 always @(posedge clk)
			if(we3)
				begin
					registers[wa3]<=wd3;
				end
	  assign rd1 = (ra1 == 4'b1111) ? r15 : registers[ra1];
	  assign rd2 = (ra2 == 4'b1111) ? r15 : registers[ra2];
endmodule
