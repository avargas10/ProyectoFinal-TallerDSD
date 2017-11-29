`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:31:37 11/27/2017
// Design Name:   dataPath
// Module Name:   C:/Users/Andres Vargas/Documents/Verilog Projects/microProcessor/microProcessor/dataPath_test.v
// Project Name:  microProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dataPath
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dataPath_test;

	// Inputs
	reg clk;
	reg reset;
	reg [1:0] RegSrc;
	reg RegWrite;
	reg [1:0] ImmSrc;
	reg ALUSrc;
	reg [1:0] ALUControl;
	reg MemtoReg;
	reg PCSrc;
	reg [31:0] Instr;
	reg [31:0] ReadData;

	// Outputs
	wire Zero;
	wire Negative;
	wire Overflow;
	wire Carry;
	wire [31:0] PC;
	wire [31:0] ALUResult;
	wire [31:0] WriteData;

	// Instantiate the Unit Under Test (UUT)
	dataPath uut (
		.clk(clk), 
		.reset(reset), 
		.RegSrc(RegSrc), 
		.RegWrite(RegWrite), 
		.ImmSrc(ImmSrc), 
		.ALUSrc(ALUSrc), 
		.ALUControl(ALUControl), 
		.MemtoReg(MemtoReg), 
		.PCSrc(PCSrc), 
		.Zero(Zero), 
		.Negative(Negative), 
		.Overflow(Overflow), 
		.Carry(Carry), 
		.PC(PC), 
		.Instr(Instr), 
		.ALUResult(ALUResult), 
		.WriteData(WriteData), 
		.ReadData(ReadData)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		RegSrc = 0;
		RegWrite = 1;
		ImmSrc = 0;
		ALUSrc = 0;
		ALUControl = 0;
		MemtoReg = 0;
		PCSrc = 0;
		Instr = 32'hE2802005;
		ReadData = 0;
		reset <= 1; # 22; reset <= 0;
		#100
		clk = 1;
		#100;
		clk=0;
	end
			
		always
			begin
				
				
			end	
endmodule

