`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:01:12 11/27/2017
// Design Name:   decoder
// Module Name:   C:/Users/Andres Vargas/Documents/Verilog Projects/microProcessor/microProcessor/deco_test.v
// Project Name:  microProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module deco_test;

	// Inputs
	reg [1:0] Op;
	reg [5:0] Funct;
	reg [3:0] rd;

	// Outputs
	wire [1:0] ALUControl;
	wire [1:0] Flagw;
	wire [1:0] InmSrc;
	wire [1:0] RegSrc;
	wire ALUSrc;
	wire MemWR;
	wire RegWR;
	wire MemtoReg;
	wire PCS;

	// Instantiate the Unit Under Test (UUT)
	decoder uut (
		.Op(Op), 
		.Funct(Funct), 
		.rd(rd), 
		.ALUControl(ALUControl), 
		.Flagw(Flagw), 
		.InmSrc(InmSrc), 
		.RegSrc(RegSrc), 
		.ALUSrc(ALUSrc), 
		.MemWR(MemWR), 
		.RegWR(RegWR), 
		.MemtoReg(MemtoReg), 
		.PCS(PCS)
	);

	initial begin
		// Initialize Inputs
		Op = 0;
		Funct = 101000;
		rd = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

