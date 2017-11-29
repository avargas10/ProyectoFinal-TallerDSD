`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:12:51 11/27/2017 
// Design Name: 
// Module Name:    Instruction_mem 
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
	module Instruction_MEM(input  [31:0] a,
							 output reg [31:0] rd);
				reg [31:0] RAM[63:0];
				reg [7:0] offset;
				initial
					begin
					for (offset=0; offset < 64; offset = offset + 1)
						begin
							RAM[offset] = 0;
						end
						/*RAM[0]=32'hE2811001;
						RAM[1]=32'hE351000F;
						RAM[3]=32'h1AFFFFFB;
						RAM[4]=32'hE0812000;*/
						
						
						RAM[0]=32'hE04F000F;
						RAM[1]=32'hE2802005;
						RAM[2]=32'hE280300C;
						RAM[3]=32'hE2437009;
						RAM[4]=32'hE1874002;
						RAM[5]=32'hE0035004;
						RAM[6]=32'hE0855004;
						RAM[7]=32'hE0558007;
						RAM[8]=32'h0A00000C;
						RAM[9]=32'hE0538004;
						RAM[10]=32'hAA000000;
						RAM[11]=32'hE2805000;
						RAM[12]=32'hE0578002;
						RAM[13]=32'hB2857001;
						RAM[14]=32'hE0477002;
						RAM[15]=32'hE5837054;
						RAM[16]=32'hE5902060;
						RAM[17]=32'hE08FF000;
						RAM[18]=32'hE280200E;
						RAM[19]=32'hEA000001;
						RAM[20]=32'hE280200D;
						RAM[21]=32'hE280200A;
						RAM[22]=32'hE5802064;
					end
				always@(a)
					begin
						 rd = RAM[a/4]; // word aligned
					end
				
endmodule
