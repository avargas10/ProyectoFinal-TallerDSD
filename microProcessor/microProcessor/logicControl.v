`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:48:42 11/27/2017 
// Design Name: 
// Module Name:    logicControl 
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
module logicControl( input NoWrite,
							input  clk, reset,
							input  [3:0] Cond,
							input  [3:0] ALUFlags,
							input  [1:0] FlagW,
							input  PCS, RegW, MemW,
							output wire PCSrc, RegWrite,
							MemWrite);
			wire [1:0] FlagWrite;
			wire [3:0] Flags;
			wire CondEx;
			
			flipflopEN #(2)flagreg1 (
					.clk(clk), 
					.reset(reset), 
					.en(FlagWrite[1]), 
					.d(ALUFlags[3:2]), 
					.q(Flags[3:2])
				);
			flipflopEN #(2)flagreg2 (
					.clk(clk), 
					.reset(reset), 
					.en(FlagWrite[0]), 
					.d(ALUFlags[1:0]), 
					.q(Flags[1:0])
				);
				conditionals conds (
					.cond(Cond), 
					.Flags(Flags), 
					.CondEx(CondEx)
				);
			
				assign FlagWrite = FlagW & {2{CondEx}};
				assign RegWrite = RegW & CondEx & ~NoWrite;
				assign MemWrite = MemW & CondEx;
				assign PCSrc = PCS & CondEx;
				
endmodule

