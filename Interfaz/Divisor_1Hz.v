`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:30:54 10/16/2017 
// Design Name: 
// Module Name:    Divisor_1Hz 
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
module Divisor_1Hz(
    output wire div_frec,
    input wire clk_in
    );
//-- Valor por defecto del divisor
//-- Lo ponemos a 1 kHz
parameter M = 100_000_000;
    
//-- Numero de bits para almacenar el divisor
//-- numero de bits necesarios para representar el numero M
//-- Es un parametro local
localparam N = 27;
    
//-- Registro para implementar el contador
reg [N-1:0] divcounter = 0;
    
//-- Contador módulo M
always @(posedge clk_in)
  divcounter <= (divcounter == M - 1) ? 0 : divcounter + 1'b1;
    
//-- Sacar el bit mas significativo por clk_out
assign div_frec = divcounter[N-1];
    
endmodule
