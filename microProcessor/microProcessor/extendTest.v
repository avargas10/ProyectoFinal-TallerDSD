`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:55:59 11/27/2017
// Design Name:   InmExtension
// Module Name:   C:/Users/Andres Vargas/Documents/Verilog Projects/microProcessor/microProcessor/extendTest.v
// Project Name:  microProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: InmExtension
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module extendTest;

	// Inputs
	reg [23:0] Instr;
	reg [1:0] InmSrc;

	// Outputs
	wire [31:0] ExtInm;

	// Instantiate the Unit Under Test (UUT)
	InmExtension uut (
		.Instr(Instr), 
		.InmSrc(InmSrc), 
		.ExtInm(ExtInm)
	);

	initial begin
		// Initialize Inputs
		Instr = 0;
		InmSrc = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

