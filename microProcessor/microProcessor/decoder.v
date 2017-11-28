	`timescale 1ns / 1ps
	//////////////////////////////////////////////////////////////////////////////////
	// Company: 
	// Engineer: 
	// 
	// Create Date:    20:07:19 11/26/2017 
	// Design Name: 
	// Module Name:    decoder 
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
	module decoder(
			// Inputs
			input [1:0] Op,
			input [5:0] Funct,
			input [3:0] rd,
			// Outputs
			output wire [1:0] ALUControl,
			output wire [1:0] Flagw,
			output wire [1:0] InmSrc,
			output wire [1:0] RegSrc,
			output wire ALUSrc,
			output wire MemWR,
			output wire RegWR,
			output wire MemtoReg,
			output wire PCS,
			output wire NoWrite
	);
	wire Branch,ALUOp;
				
	principalDecoder decoMain (
		.Op(Op), 
		.I(Funct[5]), 
		.L(Funct[0]), 
		.InmSrc(InmSrc), 
		.RegSrc(RegSrc), 
		.ALUSrc(ALUSrc), 
		.Branch(Branch), 
		.MemWR(MemWR), 
		.RegWR(RegWR), 
		.MemtoReg(MemtoReg), 
		.ALUOp(ALUOp)
	);
	
		decode_alu aluMain (
		.L(Funct[0]), 
		.cmd(Funct[4:1]), 
		.ALUOp(ALUOp), 
		.NoWrite(NoWrite),
		.ALUControl(ALUControl), 
		.Flagw(Flagw)
	);
	
	pc_decoder pcMain (
		.rd(rd), 
		.RegW(RegWR), 
		.Branch(Branch), 
		.PCS(PCS)
	);
endmodule
	