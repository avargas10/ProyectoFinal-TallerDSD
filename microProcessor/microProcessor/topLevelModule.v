`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:44:23 11/27/2017 
// Design Name: 
// Module Name:    topLevelModule 
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
 module topLevelModule(input  clk, reset,
							  output [31:0] ReadData);	
		
		wire [31:0]  Instr, ReadData, WriteData;
		wire [31:0]  DataAdr,PC;
		wire MemWrite;					
		// instantiate processor and memories
		assign LED=1;
		Instruction_MEM imem (
			.a(PC), 
			.rd(Instr)
		);
		ARM uut (
		.clk(clk), 
		.reset(reset), 
		.PC(PC), 
		.Instr(Instr), 
		.MemWrite(MemWrite), 
		.ALUResult(ALUResult), 
		.WriteData(WriteData), 
		.ReadData(ReadData)
	);
		data_mem dmem (
			.clk(clk), 
			.we(MemWrite), 
			.a(DataAdr), 
			.wd(WriteData), 
			.rd(ReadData)
		);
endmodule 