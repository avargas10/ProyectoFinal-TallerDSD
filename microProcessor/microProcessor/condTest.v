`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:11:54 11/27/2017
// Design Name:   conditionals
// Module Name:   C:/Users/Andres Vargas/Documents/Verilog Projects/microProcessor/microProcessor/condTest.v
// Project Name:  microProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: conditionals
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module condTest;

	// Inputs
	reg [3:0] cond;
	reg [3:0] flags;

	// Outputs
	wire CondEx;

	// Instantiate the Unit Under Test (UUT)
	conditionals uut (
		.cond(cond), 
		.flags(flags), 
		.CondEx(CondEx)
	);

	initial begin
		// Initialize Inputs
		cond = 0;
		flags = 4;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

