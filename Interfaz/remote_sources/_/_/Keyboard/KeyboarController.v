`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:56:47 11/26/2017 
// Design Name: 
// Module Name:    KeyboarController 
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
module KeyboarController(
    input clk,
	 input Reset,
    input clk_ps2,
    inout PS2DATA,
    inout PS2CLOCK,
    output reg [13:0] LED
    );
	
	reg [7:0] the_command;
	reg send_command;
	
	reg  [7:0]  previous_word;
	
	wire [7:0]	received_data;
	wire			received_data_en;
	
	wire        command_sent;
	wire error_communication_timed_out;
	
	initial begin
		the_command = 8'hFF;
		send_command = 1'b0;
	end
	
	PS2_Controller PS2_Keyboard_Controller (
    .CLOCK_50(clk_ps2), 
    .reset(Reset), 
    .the_command(the_command), 
    .send_command(send_command), 
    .PS2_CLK(PS2CLOCK), 
    .PS2_DAT(PS2DATA), 
    .command_was_sent(command_sent), 
    .error_communication_timed_out(error_communication_timed_out), 
    .received_data(received_data), 
    .received_data_en(received_data_en)
    );
	 
	 always @(posedge clk) begin
		if(Reset) begin
			previous_word <= 0;
			LED <= 0;
		end
		else begin
			case (received_data)
				8'hF0 : begin
				end
				
				8'h70: begin
					if(previous_word == 8'hF0) begin
						LED[0] <= ~LED[0];
					end
				end
				
				8'h69: begin
					if(previous_word == 8'hF0) begin
						LED[1] <= ~LED[1];
					end
				end
				
				8'h72: begin
					if(previous_word == 8'hF0) begin
						LED[2] <= ~LED[2];
					end
				end
				
				8'h7A: begin
					if(previous_word == 8'hF0) begin
						LED[3] <= ~LED[3];
					end
				end
				
				8'h6B: begin
					if(previous_word == 8'hF0) begin
						LED[4] <= ~LED[4];
					end
				end
				
				8'h73: begin
					if(previous_word == 8'hF0) begin
						LED[5] <= ~LED[5];
					end
				end
				
				8'h74: begin
					if(previous_word == 8'hF0) begin
						LED[6] <= ~LED[6];
					end					
				end
				
				8'h6C: begin
					if(previous_word == 8'hF0) begin
						LED[7] <= ~LED[7];
					end					
				end
				
				8'h75: begin
					if(previous_word == 8'hF0) begin
						LED[8] <= ~LED[8];
					end					
				end
				
				8'h7D: begin
					if(previous_word == 8'hF0) begin
						LED[9] <= ~LED[9];
					end					
				end
				
				8'h79: begin //+
					if(previous_word == 8'hF0) begin
						LED[10] <= ~LED[10];
					end					
				end
				
				8'h7B: begin //-
					if(previous_word == 8'hF0) begin
						LED[11] <= ~LED[11];
					end					
				end
				
				8'h7C: begin //*
					if(previous_word == 8'hF0) begin
						LED[12] <= ~LED[12];
					end					
				end
				
				8'hE05A: begin //=
					if(previous_word == 8'hF0) begin
						LED[13] <= ~LED[13];
					end					
				end
				
			endcase
			previous_word <= received_data; 
		end
	 end

endmodule
