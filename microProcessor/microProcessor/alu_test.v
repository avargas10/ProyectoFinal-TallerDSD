`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:19:52 11/27/2017
// Design Name:   ALU
// Module Name:   C:/Users/Andres Vargas/Documents/Verilog Projects/microProcessor/microProcessor/alu_test.v
// Project Name:  microProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_test;

	// Inputs
	reg [31:0] OperA;
	reg [31:0] OperB;
	reg [1:0] ALU_Code;

	// Outputs
	wire [31:0] Result;
	wire Zero;
	wire Negative;
	wire Carry;
	wire Overflow;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.OperA(OperA), 
		.OperB(OperB), 
		.ALU_Code(ALU_Code), 
		.Result(Result), 
		.Zero(Zero), 
		.Negative(Negative), 
		.Carry(Carry), 
		.Overflow(Overflow)
	);

	initial begin
		// Initialize Inputs
		OperA = 4'b0100;
		OperB = 4'b1000;
		ALU_Code = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

