`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:27:15 11/27/2017 
// Design Name: 
// Module Name:    conditionals 
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
module conditionals(
		input [3:0] cond,
		input [3:0] Flags,
		output reg CondEx
    );
	 
	 reg neg,zero,carry,overflow,ge;
	 
	 always@*
		begin
		{neg, zero, carry, overflow} = Flags;
	   ge = (neg==overflow);
		case(cond)
			4'b0000: CondEx = zero; // EQ
			4'b0001: CondEx = ~zero; // NE
			4'b0010: CondEx = carry; // CS
			4'b0011: CondEx = ~carry; // CC
			4'b0100: CondEx = neg; // MI
			4'b0101: CondEx = ~neg; // PL
			4'b0110: CondEx = overflow; // VS
			4'b0111: CondEx = ~overflow; // VC
			4'b1000: CondEx = carry & ~zero; // HI
			4'b1001: CondEx = ~(carry & ~zero); // LS
			4'b1010: CondEx = ge; // GE
			4'b1011: CondEx = ~ge; // LT
			4'b1100: CondEx = ~zero & ge; // GT
			4'b1101: CondEx = ~(~zero & ge); // LE
			4'b1110: CondEx = 1; // Always
			default: CondEx = 0; // undefined
		endcase
		end
endmodule
