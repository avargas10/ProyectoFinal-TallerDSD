`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:24:22 11/27/2017 
// Design Name: 
// Module Name:    testbench 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module testbench();
			reg clk;
			reg reset;
			wire [31:0] WriteData, DataAdr;
			wire MemWrite;
		

			// initialize test
				initial
					begin
						reset <= 1; # 22; reset <= 0;
					end
				// generate clock to sequence tests
				always@*
					begin
						clk <= 1; # 5; clk <= 0; # 5;
					end
					// check that 7 gets written to address 0x64
					// at end of program
					always @(negedge clk)
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
						end
endmodule
