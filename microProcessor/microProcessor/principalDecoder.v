`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:28:30 11/26/2017 
// Design Name: 
// Module Name:    principalDecoder 
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
module principalDecoder(
			input [1:0] Op,
			input I,
			input L,
			output reg [1:0]  InmSrc, RegSrc,
			output reg ALUSrc,
			output reg Branch,
			output reg MemWR,
			output reg RegWR,
			output reg MemtoReg,
			output reg ALUOp
			
    );
	 
	 initial begin
			MemtoReg = 0;
			ALUSrc = 0;
			ALUOp = 0;
			RegWR = 0;
			MemWR = 0;
			InmSrc = 0;
			RegSrc = 0;
			Branch = 0;

	 end
	 always@ *
	 case(Op)
	 0: if(I)
			begin
				ALUSrc = 1;
				Branch = 0;
				MemWR = 0;
				RegWR = 1;
				InmSrc = 0;
				RegSrc =0;
				ALUOp = 1;				
				MemtoReg=0;
			end
		 else 
			begin
				ALUSrc = 0;
				Branch = 0;
				MemWR = 0;
				RegWR = 1;
				InmSrc = 0;
				RegSrc =0;
				ALUOp = 1;
				MemtoReg=0;
			end
	 1: if(L)
			begin
				MemtoReg = 1;
				ALUSrc = 1;
				ALUOp = 0;
				RegWR = 1;
				MemWR = 0;
				InmSrc = 1;
				RegSrc = 0;
				Branch = 0;
			end
		 else 
			begin
				MemtoReg = 1;
				ALUSrc = 1;
				ALUOp = 0;
				RegWR = 0;
				MemWR = 1;
				InmSrc = 1;
				RegSrc = 2;
				Branch = 0;
			end
	 2: begin
			 MemtoReg = 0;
			 ALUSrc = 1;
			 ALUOp = 0;
			 RegWR = 0;
			 MemWR = 0;
			 InmSrc = 2;
			 RegSrc = 1;
			 Branch = 1;
		 end	
	 endcase
endmodule
