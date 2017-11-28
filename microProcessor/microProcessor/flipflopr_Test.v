`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:18:16 11/27/2017
// Design Name:   flipflop
// Module Name:   C:/Users/Andres Vargas/Documents/Verilog Projects/microProcessor/microProcessor/flipflopr_Test.v
// Project Name:  microProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: flipflop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module flipflopr_Test;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] d;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	flipflop uut (
		.clk(clk), 
		.reset(reset), 
		.d(d), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

