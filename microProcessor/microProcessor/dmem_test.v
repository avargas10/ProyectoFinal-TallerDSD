`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:10:57 11/29/2017
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
	reg te;
	reg [31:0] a;
	reg [31:0] ta;
	reg [31:0] wd;
	reg [31:0] td;

	// Outputs
	wire [31:0] rd;
	wire [31:0] rtd;

	// Instantiate the Unit Under Test (UUT)
	data_mem uut (
		.clk(clk), 
		.we(we), 
		.te(te), 
		.a(a), 
		.ta(ta), 
		.wd(wd), 
		.td(td), 
		.rd(rd), 
		.rtd(rtd)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		we = 0;
		te = 0;
		a = 0;
		ta = 0;
		wd = 0;
		td = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

