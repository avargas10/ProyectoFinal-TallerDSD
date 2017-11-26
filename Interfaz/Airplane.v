module Airplane(col,clk, airplanex,finish,reset);
//para trabajar colisiones 
    input col,clk,finish,reset;
    output reg [9:0] airplanex=40;
	 
	 reg[3:0] dir=3;
 
    always@(posedge clk)
		begin
			if(reset)
				begin
					airplanex=40;
				end
			else if(finish)
				begin
					airplanex=airplanex;
				end
			else begin
			airplanex=airplanex+dir;
			if(col)
				begin
					airplanex=40; 
				end
			else if (airplanex>=600) 
				begin
					airplanex=10;
				end
			else 
				airplanex=airplanex;    
			end
      end 
endmodule
