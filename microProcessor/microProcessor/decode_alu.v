`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:38:04 11/26/2017 
// Design Name: 
// Module Name:    decode_alu 
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
module decode_alu(
			input L,
			input [3:0] cmd,
			input ALUOp,
			output reg NoWrite,
			output reg [1:0] ALUControl,
			output reg [1:0] Flagw
    );
	 
	 initial begin
			ALUControl = 0;
			Flagw = 0;
			NoWrite = 0;
	 end
	 always@ *
		begin
		 if(ALUOp)
			begin
			case(cmd)
			0: //AND
				begin
					ALUControl = 2;
					NoWrite = 0;
				end
			2: //SUB
				begin 
					ALUControl = 1;
					NoWrite = 0;
				end
			4: //ADD
				begin 
					ALUControl = 0;
					NoWrite = 0;
				end	
			12: //ORR
				begin 
					ALUControl = 3;
					NoWrite = 0;
				end
			10: //CMP
				begin 
					ALUControl = 1;
					NoWrite=1;				
				end
			13: //MOV
				begin 
					ALUControl = 0;
					NoWrite = 0;
				end
			endcase
			if(cmd==10)
				begin
					Flagw=3;
				end
			else
				begin
					Flagw[0] =  L & (ALUControl==0 | ALUControl==1);
					Flagw[1] = L;
				end
			end
		else
			begin
				ALUControl=0;
				Flagw = 0;
			end
		end
endmodule
