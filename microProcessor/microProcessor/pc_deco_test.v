`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:54:57 11/26/2017
// Design Name:   pc_decoder
// Module Name:   C:/Users/Andres Vargas/Documents/Verilog Projects/microProcessor/microProcessor/pc_deco_test.v
// Project Name:  microProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pc_decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pc_deco_test;

	// Inputs
	reg [3:0] rd;
	reg RegW;
	reg Branch;

	// Outputs
	wire PCS;

	// Instantiate the Unit Under Test (UUT)
	pc_decoder uut (
		.rd(rd), 
		.RegW(RegW), 
		.Branch(Branch), 
		.PCS(PCS)
	);

	initial begin
		// Initialize Inputs
		rd = 0;
		RegW = 0;
		Branch = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

