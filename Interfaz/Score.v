`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:27:19 10/16/2017 
// Design Name: 
// Module Name:    Score 
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
module Score(input clk, col,reset,
				output reg [4:0]score=0
				);
	 
	reg [3:0] stateNext, 
				 state = cero; 
				 
	localparam [3:0]
		cero = 4'b0000,
		uno = 4'b0001,
		dos = 4'b0010;


	always @(*)
		state <= stateNext;
	always @ (posedge clk)begin
			if(reset)
				begin
					score = 0;
					stateNext = cero;
				end
			else
				begin
					case(state)
						cero:
							begin	
								if (col)
									begin
										stateNext = uno;
									end
							end
						uno:
							begin
								score = score + 1;
								stateNext = dos;
							end
						dos:
							begin	
								if (~col)
									begin
										stateNext = cero;
									end
							end
						default: stateNext = cero;
					endcase
				end
		end
endmodule


