`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:42:35 11/27/2017
// Design Name:   registerFile
// Module Name:   C:/Users/Andres Vargas/Documents/Verilog Projects/microProcessor/microProcessor/regFileTest.v
// Project Name:  microProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: registerFile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module regFileTest;

	// Inputs
	reg clk;
	reg [3:0] ra1;
	reg [3:0] ra2;
	reg [3:0] wa3;
	reg we3;
	reg [31:0] wd3;
	reg [31:0] r15;

	// Outputs
	wire [31:0] rd1;
	wire [31:0] rd2;

	// Instantiate the Unit Under Test (UUT)
	registerFile uut (
		.clk(clk), 
		.ra1(ra1), 
		.ra2(ra2), 
		.wa3(wa3), 
		.we3(we3), 
		.wd3(wd3), 
		.r15(r15), 
		.rd1(rd1), 
		.rd2(rd2)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		ra1 = 0;
		ra2 = 0;
		wa3 = 4;
		we3 = 1;
		wd3 = 15;
		r15 = 0;
	end
	always
		begin 
			#20 clk<=1;
			#20 clk<=0;
		end
      
endmodule

