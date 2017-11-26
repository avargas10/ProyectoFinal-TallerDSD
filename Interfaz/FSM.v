`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:35:09 10/16/2017 
// Design Name: 
// Module Name:    FSM 
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
module FSM(clk, bCen,
				finish,reset
				);
	input clk, bCen;
	output reg finish=0,reset=0;
	reg [9:0]lTime=0;
	
	reg [3:0] stateNext, 
				 state = cero; 
				 
	localparam [3:0]
		cero = 4'b0000,
		uno = 4'b0001,
		dos = 4'b0010;


	always @(*)
		state <= stateNext;
	always @ (posedge clk)
			begin
				case(state)
					cero:
						begin	
							lTime = lTime + 1;
							reset = 0;
							finish = 0;
							if (lTime >= 60)
								begin
									stateNext = uno;
								end								
							else stateNext = cero;
						end
					uno:
						begin
							finish = 1;
							reset = 0;
							if (bCen)
								begin
									stateNext = dos;
								end
							else stateNext = uno;
						end
					dos:
						begin	
							reset = 1;
							finish = 0;
							lTime = 0;
							if (bCen)
								begin
									stateNext = cero;
								end
							else stateNext = dos;
						end
					default: stateNext = cero;
				endcase
			end	
endmodule