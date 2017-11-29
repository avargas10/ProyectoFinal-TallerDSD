`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:46:29 11/27/2017
// Design Name:   ARM
// Module Name:   C:/Users/Andres Vargas/Documents/Verilog Projects/microProcessor/microProcessor/arm_test.v
// Project Name:  microProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ARM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module arm_test;

	// Inputs
	reg clk;
	reg reset;
	reg [31:0] Instr;
	reg [31:0] ReadData;

	// Outputs
	wire [31:0] PC;
	wire MemWrite;
	wire [31:0] ALUResult;
	wire [31:0] WriteData;

	// Instantiate the Unit Under Test (UUT)
	ARM uut (
		.clk(clk), 
		.reset(reset), 
		.PC(PC), 
		.Instr(Instr), 
		.MemWrite(MemWrite), 
		.ALUResult(ALUResult), 
		.WriteData(WriteData), 
		.ReadData(ReadData)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		Instr = 32'h0A00000C;
		ReadData = 0;
		reset <= 1; # 22; reset <= 0;
		// Wait 100 ns for global reset to finish
		// Add stimulus here
    end

		always
			begin
				#20 clk=5;
				#20 clk=0;
			end
     /* always @(negedge clk)
				begin
				if(MemWrite) begin
				if(DataAdr === 100 & WriteData === 7) begin
					$display("Simulation succeeded");
					$stop;
				end else if (DataAdr !== 96) begin
					$display("Simulation failed");
					$stop;
				end
			end
		end*/
endmodule

