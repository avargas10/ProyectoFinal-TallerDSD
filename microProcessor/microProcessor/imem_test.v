`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:48:55 11/27/2017
// Design Name:   Instruction_MEM
// Module Name:   C:/Users/Andres Vargas/Documents/Verilog Projects/microProcessor/microProcessor/imem_test.v
// Project Name:  microProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Instruction_MEM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module imem_test;

	// Inputs
	reg [31:0] a;

	// Outputs
	wire [31:0] rd;

	// Instantiate the Unit Under Test (UUT)
	Instruction_MEM uut (
		.a(a), 
		.rd(rd)
	);

	initial begin
		// Initialize Inputs
		a = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

