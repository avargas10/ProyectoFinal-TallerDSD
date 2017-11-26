`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:51:13 10/16/2017 
// Design Name: 
// Module Name:    Gun 
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
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:50:01 10/16/2017 
// Design Name: 
// Module Name:    Gun 
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
module Gun(
		clk,
		bDer,
		bIzq,
		gunx
    );
input wire bDer,bIzq,clk;
output reg [9:0] gunx = 310;
	 
always@(posedge clk)
		begin
			if (gunx>620)
				begin
					gunx=620;
				end
			else if (gunx<20)
				begin
					gunx = 20;
				end
			else if (bDer) 
				begin
					gunx = gunx + 15;
				end
			else if (bIzq) 
				begin
					gunx = gunx - 15;
				end
			else 
				gunx=gunx;          
      end 

endmodule
