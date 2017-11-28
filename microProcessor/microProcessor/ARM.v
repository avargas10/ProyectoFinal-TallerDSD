`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:28:57 11/27/2017 
// Design Name: 
// Module Name:    ARM 
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
module ARM(input  clk, reset,
			output wire  [31:0] PC,
			input  [31:0] Instr,
			output wire MemWrite,
			output wire [31:0] ALUResult, WriteData,
			input  [31:0] ReadData);
			
			wire [3:0] ALUFlags;
			wire RegWrite,ALUSrc, MemtoReg, PCSrc;
			wire [1:0] RegSrc, ImmSrc, ALUControl;
			
			fullController controller(
					.clk(clk), 
					.reset(reset), 
					.Instr(Instr[31:12]), 
					.ALUFlags(ALUFlags), 
					.RegSrc(RegSrc), 
					.RegWrite(RegWrite), 
					.ImmSrc(ImmSrc), 
					.ALUSrc(ALUSrc), 
					.ALUControl(ALUControl), 
					.MemWrite(MemWrite), 
					.MemtoReg(MemtoReg), 
					.PCSrc(PCSrc)
				);
			dataPath data (
				.clk(clk), 
				.reset(reset), 
				.RegSrc(RegSrc), 
				.RegWrite(RegWrite), 
				.ImmSrc(ImmSrc), 
				.ALUSrc(ALUSrc), 
				.ALUControl(ALUControl), 
				.MemtoReg(MemtoReg), 
				.PCSrc(PCSrc), 
				.Zero(ALUFlags[3]), 
				.Negative(ALUFlags[2]), 
				.Overflow(ALUFlags[0]), 
				.Carry(ALUFlags[1]), 
				.PC(PC), 
				.Instr(Instr), 
				.ALUResult(ALUResult), 
				.WriteData(WriteData), 
				.ReadData(ReadData)
			);
endmodule 