`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:33:03 11/26/2017
// Design Name:   decode_alu
// Module Name:   C:/Users/Andres Vargas/Documents/Verilog Projects/microProcessor/microProcessor/decode_alu_test.v
// Project Name:  microProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decode_alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decode_alu_test;

	// Inputs
	reg L;
	reg [3:0] cmd;
	reg ALUOp;

	// Outputs
	wire NoWrite;
	wire [1:0] ALUControl;
	wire [1:0] Flagw;

	// Instantiate the Unit Under Test (UUT)
	decode_alu uut (
		.L(L), 
		.cmd(cmd), 
		.ALUOp(ALUOp),
		.NoWrite(NoWrite),
		.ALUControl(ALUControl), 
		.Flagw(Flagw)
	);

	initial begin
		// Initialize Inputs
		L = 0;
		cmd = 4;
		ALUOp = 1;
		#100;
		
		L = 0;
		cmd = 0;
		ALUOp = 1;
		#100;
		
		L = 1;
		cmd = 2;
		ALUOp = 1;
		#100;
		
		L = 1;
		cmd = 13;
		ALUOp = 1;
		#100;
		
		L = 0;
		cmd = 12;
		ALUOp = 1;
		#100;
        
		L = 0;
		cmd = 10;
		ALUOp = 1;
		#100;
		// Add stimulus here

	end
      
endmodule

