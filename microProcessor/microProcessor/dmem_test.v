`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:05:37 11/27/2017
// Design Name:   data_mem
// Module Name:   C:/Users/Andres Vargas/Documents/Verilog Projects/microProcessor/microProcessor/dmem_test.v
// Project Name:  microProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: data_mem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dmem_test;

	// Inputs
	reg clk;
	reg we;
	reg [31:0] a;
	reg [31:0] wd;

	// Outputs
	wire [31:0] rd;

	// Instantiate the Unit Under Test (UUT)
	data_mem uut (
		.clk(clk), 
		.we(we), 
		.a(a), 
		.wd(wd), 
		.rd(rd)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		we = 0;
		a = 0;
		wd = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

