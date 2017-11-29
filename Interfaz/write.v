`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:11:49 11/29/2017 
// Design Name: 
// Module Name:    write 
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
module write(
		input clk,
		input [31:0]num ,
		output reg [31:0]data ,
		output reg [31:0]address ,
		output reg enable
    );
	 
	 //declarations of variables
	 
	 reg [31:0] oper;
	 reg [3:0] control = 0 ;
	 
	 always @(posedge clk) begin
	 enable <= 0;
	 if (num != 16) begin
		if (control == 0)
			begin
			data <= num;
			address <= 4;
			enable <= 1;
			control <= 1;
			end
			
		else if (control == 1)
			begin
			oper <= num;
			control <= 2;
			end
			
		else if (control == 2)
			begin
			data <= num;
			address <= 8;
			enable <= 1;
			control <= 3;
			end
			
		else if (control == 3)
			begin
			data <= oper;
			address <= 0;
			enable <= 1;
			control <= 4;
			end
		
		else if (control == 4)
			begin
			address <= 12;
			enable <= 0;
			control <= 0;
			end
			
		end
		
	
	 end
	 
	 


endmodule
