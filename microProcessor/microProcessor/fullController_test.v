`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:31:00 11/27/2017
// Design Name:   fullController
// Module Name:   C:/Users/Andres Vargas/Documents/Verilog Projects/microProcessor/microProcessor/fullController_test.v
// Project Name:  microProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fullController
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fullController_test;

	// Inputs
	reg clk;
	reg reset;
	reg [31:12] Instr;
	reg [3:0] ALUFlags;

	// Outputs
	wire [1:0] RegSrc;
	wire RegWrite;
	wire [1:0] ImmSrc;
	wire ALUSrc;
	wire [1:0] ALUControl;
	wire MemWrite;
	wire MemtoReg;
	wire PCSrc;

	// Instantiate the Unit Under Test (UUT)
	fullController uut (
		.clk(clk), 
		.reset(reset), 
		.Instr(Instr), 
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

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		Instr = 0;
		ALUFlags = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

