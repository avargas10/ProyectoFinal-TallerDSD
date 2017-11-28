`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:17:33 11/26/2017
// Design Name:   principalDecoder
// Module Name:   C:/Users/Andres Vargas/Documents/Verilog Projects/microProcessor/microProcessor/principalDeco_Test.v
// Project Name:  microProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: principalDecoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module principalDeco_Test;

	// Inputs
	reg [1:0] Op;
	reg I;
	reg L;

	// Outputs
	wire [1:0] InmSrc;
	wire [1:0] RegSrc;
	wire ALUSrc;
	wire Branch;
	wire MemWR;
	wire RegWR;
	wire MemtoReg;
	wire ALUOp;

	// Instantiate the Unit Under Test (UUT)
	principalDecoder uut (
		.Op(Op), 
		.I(I), 
		.L(L), 
		.InmSrc(InmSrc), 
		.RegSrc(RegSrc), 
		.ALUSrc(ALUSrc), 
		.Branch(Branch), 
		.MemWR(MemWR), 
		.RegWR(RegWR), 
		.MemtoReg(MemtoReg), 
		.ALUOp(ALUOp)
	);

	initial begin
		// Initialize Inputs
		Op = 0;
		I = 0;
		L = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		Op = 0;
		I = 1;
		L = 0;
		#100;
		
		Op = 1;
		I = 0;
		L = 0;
		#100;
		
		Op = 1;
		I = 0;
		L = 1;
		#100;
		
		Op = 2;
		I = 0;
		L = 0;
		#100;

	end
      
endmodule

