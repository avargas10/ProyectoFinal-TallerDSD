`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:11:25 11/27/2017 
// Design Name: 
// Module Name:    Divisor_CLK_50 
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
module  Divisor_Clk_50(
    output wire div_frec,
    input wire clk_in, reset
    );
//-- Valor por defecto del divisor
//-- Lo ponemos a 1 kHz
    
//-- Numero de bits para almacenar el divisor
//-- numero de bits necesarios para representar el numero M
//-- Es un parametro local
localparam N = 1;
localparam M = 8;
    
//-- Registro para implementar el contador
reg [N-1:0] divcounter = 0;
    
//-- Contador modulo M
always @(posedge clk_in, posedge reset)
	if (reset)
		divcounter <= 0;
	else
		divcounter <= (divcounter == M - 1) ? 0 : divcounter + 1'b1;
    
//-- Sacar el bit mas significativo por clk_out
assign div_frec = divcounter[N-1];
    
endmodule