`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:52:26 11/27/2017
// Design Name:   flipflopEN
// Module Name:   C:/Users/Andres Vargas/Documents/Verilog Projects/microProcessor/microProcessor/flipflipEN_test.v
// Project Name:  microProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: flipflopEN
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module flipflipEN_test;

	// Inputs
	reg clk;
	reg reset;
	reg en;
	reg [1:0] d;

	// Outputs
	wire [1:0] q;

	// Instantiate the Unit Under Test (UUT)
	flipflopEN #(2)uut (
		.clk(clk), 
		.reset(reset), 
		.en(en), 
		.d(d), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		en = 0;
		d = 2;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      always
		#20 clk=!clk;
endmodule

