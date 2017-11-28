`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:15:21 11/27/2017
// Design Name:   logicControl
// Module Name:   C:/Users/Andres Vargas/Documents/Verilog Projects/microProcessor/microProcessor/logicControl_test.v
// Project Name:  microProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: logicControl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module logicControl_test;

	// Inputs
	reg NoWrite;
	reg clk;
	reg reset;
	reg [3:0] Cond;
	reg [3:0] ALUFlags;
	reg [1:0] FlagW;
	reg PCS;
	reg RegW;
	reg MemW;

	// Outputs
	wire PCSrc;
	wire RegWrite;
	wire MemWrite;

	// Instantiate the Unit Under Test (UUT)
	logicControl uut (
		.NoWrite(NoWrite),
		.clk(clk), 
		.reset(reset), 
		.Cond(Cond), 
		.ALUFlags(ALUFlags), 
		.FlagW(FlagW), 
		.PCS(PCS), 
		.RegW(RegW), 
		.MemW(MemW), 
		.PCSrc(PCSrc), 
		.RegWrite(RegWrite), 
		.MemWrite(MemWrite)
	);

	initial begin
		// Initialize Inputs
		NoWrite=0;
		clk = 0;
		reset = 0;
		Cond = 0;
		ALUFlags = 4;
		FlagW = 2;
		PCS = 0;
		RegW = 1;
		MemW = 0;

		// Wait 100 ns for global reset to finish
		// Add stimulus here
	end
	always 
		begin
		#20 clk=5;
		#20 clk=0;
		end
		
endmodule

