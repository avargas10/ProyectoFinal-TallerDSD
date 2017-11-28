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
 module topLevelModule(input  clk, reset);
							wire [31:0] WriteData, DataAdr;
							wire [31:0] PC, Instr, ReadData;
							wire MemWrite;
		// instantiate processor and memories
		ARM arm (
			.clk(clk), 
			.reset(reset), 
			.PC(PC), 
			.Instr(Instr), 
			.MemWrite(MemWrite), 
			.ALUResult(DataAdr), 
			.WriteData(WriteData), 
			.ReadData(ReadData)
		);
		Instruction_MEM imem (
			.a(PC), 
			.rd(Instr)
		);
		
		data_mem dmem (
			.clk(clk), 
			.we(MemWrite), 
			.a(DataAdr), 
			.wd(WriteData), 
			.rd(ReadData)
		);

endmodule 