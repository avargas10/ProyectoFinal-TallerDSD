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
							  output wire [31:0] WriteData,DataAdr,
							  output wire MemWrite);	
		
		wire [31:0]  Instr, ReadData,rtd,td,ta;
		wire [31:0]  PC;		
		wire te;
		// instantiate processor and memories
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
		.ALUResult(DataAdr), 
		.WriteData(WriteData), 
		.ReadData(ReadData)
	);
		data_mem dmem (
		.clk(clk), 
		.we(MemWrite), 
		.te(te), 
		.a(DataAdr), 
		.ta(ta), 
		.wd(WriteData), 
		.td(td), 
		.rd(ReadData), 
		.rtd(rtd)
	);
endmodule 