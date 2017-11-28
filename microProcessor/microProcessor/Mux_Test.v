`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:13:54 11/27/2017
// Design Name:   Mux
// Module Name:   C:/Users/Andres Vargas/Documents/Verilog Projects/microProcessor/microProcessor/Mux_Test.v
// Project Name:  microProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mux_Test;

	// Inputs
	reg [7:0] d0;
	reg [7:0] d1;
	reg s;

	// Outputs
	wire [7:0] y;

	// Instantiate the Unit Under Test (UUT)
	Mux uut (
		.d0(d0), 
		.d1(d1), 
		.s(s), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		d0 = 0;
		d1 = 0;
		s = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

