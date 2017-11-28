`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:42:46 11/27/2017 
// Design Name: 
// Module Name:    dataPath 
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
module dataPath(
			input  clk, reset,
			input  [1:0] RegSrc,
			input  RegWrite,
			input  [1:0] ImmSrc,
			input  ALUSrc,
			input  [1:0] ALUControl,
			input  MemtoReg,
			input  PCSrc,
			output wire Zero,Negative,Overflow,Carry,
			output wire [31:0] PC,
			input  [31:0] Instr,
			output wire [31:0] ALUResult, WriteData,
			input  [31:0] ReadData);
			
			wire [31:0] PCNext, PCPlus4, PCPlus8;
			wire [31:0] ExtImm, RegDatA,RegDatB,SrcA, SrcB, Result;
			wire [3:0] RA1, RA2;
			//FETCH
			Mux#(32) pcMux (
				.d0(PCPlus4), 
				.d1(Result), 
				.s(PCSrc), 
				.y(PCNext)
			);
			flipflop#(32) ffPc (
				.clk(clk), 
				.reset(reset), 
				.d(PCNext), 
				.q(PC)
			);
			adder#(32) pcADD1 (
				.a(PC), 
				.b(32'b100), 
				.y(PCPlus4)
			);
			adder#(32) pcADD2 (
				.a(PCPlus4), 
				.b(32'b100), 
				.y(PCPlus8)
			);
			
			//DECODE
			Mux#(4) ra1Mux (
				.d0(Instr[19:16]), 
				.d1(4'b1111), 
				.s(RegSrc[0]), 
				.y(RA1)
			);
			
			Mux#(4) ra2Mux (
				.d0(Instr[3:0]), 
				.d1(Instr[15:12]), 
				.s(RegSrc[1]), 
				.y(RA2)
			);
			registerFile regFile (
				.clk(clk), 
				.ra1(RA1), 
				.ra2(RA2), 
				.wa3(Instr[15:12]), 
				.we3(RegWrite), 
				.wd3(Result), 
				.r15(PCPlus8), 
				.rd1(SrcA), 
				.rd2(WriteData)
			);
			InmExtension ext (
					.Instr(Instr[23:0]), 
					.InmSrc(ImmSrc), 
					.ExtInm(ExtImm)
				);

			//EXE
			Mux#(32) srcBmux (
				.d0(WriteData), 
				.d1(ExtImm), 
				.s(ALUSrc), 
				.y(SrcB)
				); 
				
			ALU mainALU (
				.OperA(SrcA), 
				.OperB(SrcB), 
				.ALU_Code(ALUControl), 
				.Result(ALUResult),  
				.Zero(Zero), 
				.Negative(Negative), 
				.Carry(Carry), 
				.Overflow(Overflow)
			);
			//WriteBack
			Mux#(32) WBMux (
				.d0(ALUResult), 
				.d1(ReadData), 
				.s(MemtoReg), 
				.y(Result)
				);
endmodule
