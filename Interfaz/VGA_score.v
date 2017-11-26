`include "vga_sync.v"

module VGA_score( 
    input clk, reset,
    output hsync, vsync,
    output [8:0] rgb,
	 input [4:0] score
    );
    //signal declaration
    reg [8:0] rgb_reg;
    wire video_on;
    wire [9:0] x,y;
	 
 
    //instantiate vga sync circuit
    vga_sync vsync_unit_score (.clk(clk), .reset(reset), .hsync(hsync), . vsync(vsync), .video_on(video_on), . p_tick(), .pixel_x(x), .pixel_y(y));

    //rgb buffer
     always @(posedge clk, posedge reset) begin
        if (reset) rgb_reg <= 0;
        else begin
																				 //rrrgggbb
            if(score==1)
					begin
						if (x>=550 & x<=560 & y>=330 & y<=380) rgb_reg<=8'b00011101;
					end
        end
    end
	 
	 
	 
 
    // output
    assign rgb = (video_on) ? rgb_reg : 3'b000;
endmodule
				