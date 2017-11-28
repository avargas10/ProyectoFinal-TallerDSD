`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:15:46 11/27/2017 
// Design Name: 
// Module Name:    fullController 
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
module fullController
  (input  clk, reset,
	input  [31:12] Instr,
	input  [3:0] ALUFlags,
	output wire [1:0] RegSrc,
	output wire RegWrite,
	output wire [1:0] ImmSrc,
	output wire ALUSrc,
	output wire [1:0] ALUControl,
	output wire  MemWrite, MemtoReg,
	output wire PCSrc);
	
			wire [1:0] FlagW;
			wire PCS, RegW, MemW,NoWrite;
			
			decoder deco (
				.Op(Instr[27:26]), 
				.Funct(Instr[25:20]), 
				.rd(Instr[15:12]), 
				.ALUControl(ALUControl), 
				.Flagw(FlagW), 
				.InmSrc(ImmSrc), 
				.RegSrc(RegSrc), 
				.ALUSrc(ALUSrc), 
				.MemWR( MemW), 
				.RegWR(RegW), 
				.MemtoReg(MemtoReg), 
				.PCS(PCS),
				.NoWrite(NoWrite)
			);
			
			logicControl controller (
				.NoWrite(NoWrite),
				.clk(clk), 
				.reset(reset), 
				.Cond(Instr[31:28]), 
				.ALUFlags(ALUFlags), 
				.FlagW(FlagW), 
				.PCS(PCS), 
				.RegW(RegW), 
				.MemW(MemW), 
				.PCSrc(PCSrc), 
				.RegWrite(RegWrite), 
				.MemWrite(MemWrite)
			);
endmodule
