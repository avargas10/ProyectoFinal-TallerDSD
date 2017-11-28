`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:10:04 11/27/2017
// Design Name:   topLevelModule
// Module Name:   C:/Users/Andres Vargas/Documents/Verilog Projects/microProcessor/microProcessor/total_test.v
// Project Name:  microProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: topLevelModule
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module total_test;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [31:0] WriteData;
	wire [31:0] DataAdr;
	wire MemWrite;

	// Instantiate the Unit Under Test (UUT)
	topLevelModule uut (
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		reset <= 1; # 22; reset <= 0;
        
		// Add stimulus here

	end
	
	always 
		begin
				#20 clk=5;
				#20 clk=0;
			end	
      
endmodule

