`include "vga_sync.v"

module VGA( 
    input clk, 
	 input [13:0] num,
	 input [8:0] result,
    output hsync, vsync, 
	 output wire reset,
    output [8:0] rgb
    );
    //signal declaration
    reg [8:0] rgb_reg;
    wire video_on;
    wire [9:0] x,y;
    reg [9:0] ax,ay;
    reg [9:0] bx,by;
    reg [9:0] cx,cy;
    reg [9:0] dx,dy;
    reg [9:0] ex,ey;
    reg [9:0] fx,fy;
    reg [9:0] gx,gy;
    reg [9:0] hx,hy;
    reg [9:0] ix,iy;
    reg [9:0] jx,jy;
    reg [9:0] kx,ky;
    reg [9:0] lx,ly;
    reg [9:0] mx,my;
    reg [9:0] nx,ny;
    reg [9:0] ox,oy;
    reg [9:0] px,py;
	 reg [9:0] sx,sy;
	 reg [9:0] tx,ty;
	 reg r1;
	 
    //instantiate vga sync circuit
    vga_sync vsync_unit (.clk(clk), .hsync(hsync), . vsync(vsync), .video_on(video_on), . p_tick(), .pixel_x(x), .pixel_y(y));

    //rgb buffer
     always @(posedge clk) begin
				r1 <=0;
																		  //rrrgggbb
            if (x>=0 & x<=10 & y>=0 & y<=480) rgb_reg<=8'b11111111;
            else if (x>=620 & x<=630 & y>=0 & y<=480) rgb_reg<=8'b11111111;
            else if (x>=0 & x<=630 & y>=0 & y<=10) rgb_reg<=8'b11111111;
            else if (x>=0 & x<=630 & y>=470 & y<=480) rgb_reg<=8'b11111111;
				else rgb_reg <= 0;
				
				ax<=60;
				ay<=360;//uno
				if      (x>=ax+25 & x<=ax+30 & y>=ay    & y<=ay+25)rgb_reg<=8'b00000011;//b
				else if (x>=ax+25 & x<=ax+30 & y>=ay+25 & y<=ay+50) rgb_reg<=8'b00000011;//c
				else if (x>=ax-20 & x<=ax+50 & y>=ay-20 & y<=ay-15) rgb_reg<=8'b11111111;//borde
				else if (x>=ax-20 & x<=ax+50 & y>=ay+70 & y<=ay+75) rgb_reg<=8'b11111111;//borde
				else if (x>=ax-20 & x<=ax-15 & y>=ay-20 & y<=ay+70) rgb_reg<=8'b11111111;//borde
				else if (x>=ax+45 & x<=ax+50 & y>=ay-20 & y<=ay+70) rgb_reg<=8'b11111111;//borde
				
				bx<=150;
				by<=360;//dos
				if      (x>=bx    & x<=bx+30 & y>=by    & y<=by+5 ) rgb_reg<=8'b00000011;//a
				else if (x>=bx+25 & x<=bx+30 & y>=by    & y<=by+25) rgb_reg<=8'b00000011;//b
				else if (x>=bx    & x<=bx+30 & y>=by+50 & y<=by+55) rgb_reg<=8'b00000011;//d
				else if (x>=bx    & x<=bx+5  & y>=by+25 & y<=by+50) rgb_reg<=8'b00000011;//e
				else if (x>=bx    & x<=bx+30 & y>=by+25 & y<=by+30) rgb_reg<=8'b00000011;//g
				else if (x>=bx-20 & x<=bx+50 & y>=by-20 & y<=by-15) rgb_reg<=8'b11111111;//borde
				else if (x>=bx-20 & x<=bx+50 & y>=by+70 & y<=by+75) rgb_reg<=8'b11111111;//borde
				else if (x>=bx-20 & x<=bx-15 & y>=by-20 & y<=by+70) rgb_reg<=8'b11111111;//borde
				else if (x>=bx+45 & x<=bx+50 & y>=by-20 & y<=by+70) rgb_reg<=8'b11111111;//borde
				
				cx<=240;
				cy<=360;//tres
				if      (x>=cx    & x<=cx+30 & y>=cy    & y<=cy+5 ) rgb_reg<=8'b00000011;//a
				else if (x>=cx+25 & x<=cx+30 & y>=cy    & y<=cy+25) rgb_reg<=8'b00000011;//b
				else if (x>=cx+25 & x<=cx+30 & y>=cy+25 & y<=cy+50) rgb_reg<=8'b00000011;//c
				else if (x>=cx    & x<=cx+30 & y>=cy+50 & y<=cy+55) rgb_reg<=8'b00000011;//d
				else if (x>=cx    & x<=cx+30 & y>=cy+25 & y<=cy+30) rgb_reg<=8'b00000011;//g
				else if (x>=cx-20 & x<=cx+50 & y>=cy-20 & y<=cy-15) rgb_reg<=8'b11111111;//borde
				else if (x>=cx-20 & x<=cx+50 & y>=cy+70 & y<=cy+75) rgb_reg<=8'b11111111;//borde
				else if (x>=cx-20 & x<=cx-15 & y>=cy-20 & y<=cy+70) rgb_reg<=8'b11111111;//borde
				else if (x>=cx+45 & x<=cx+50 & y>=cy-20 & y<=cy+70) rgb_reg<=8'b11111111;//borde
				
				jx<=330;
				jy<=360;//cero
				if      (x>=jx    & x<=jx+30 & y>=jy    & y<=jy+5 ) rgb_reg<=8'b00000011;//a
				else if (x>=jx+25 & x<=jx+30 & y>=jy    & y<=jy+25) rgb_reg<=8'b00000011;//b
				else if (x>=jx+25 & x<=jx+30 & y>=jy+25 & y<=jy+50) rgb_reg<=8'b00000011;//c
				else if (x>=jx    & x<=jx+30 & y>=jy+50 & y<=jy+55) rgb_reg<=8'b00000011;//d
				else if (x>=jx    & x<=jx+5  & y>=jy+25 & y<=jy+50) rgb_reg<=8'b00000011;//e
				else if (x>=jx    & x<=jx+5  & y>=jy    & y<=jy+25) rgb_reg<=8'b00000011;//f
				else if (x>=jx-20 & x<=jx+50 & y>=jy-20 & y<=jy-15) rgb_reg<=8'b11111111;//borde
				else if (x>=jx-20 & x<=jx+50 & y>=jy+70 & y<=jy+75) rgb_reg<=8'b11111111;//borde
				else if (x>=jx-20 & x<=jx-15 & y>=jy-20 & y<=jy+70) rgb_reg<=8'b11111111;//borde
				else if (x>=jx+45 & x<=jx+50 & y>=jy-20 & y<=jy+70) rgb_reg<=8'b11111111;//borde
				
				kx<=420;
				ky<=360;//igual
				if      (x>=kx    & x<=kx+30 & y>=ky+50 & y<=ky+55) rgb_reg<=8'b00000011;//d
				else if (x>=kx    & x<=kx+30 & y>=ky+25 & y<=ky+30) rgb_reg<=8'b00000011;//g
				else if (x>=kx-20 & x<=kx+50 & y>=ky-20 & y<=ky-15) rgb_reg<=8'b11111111;//borde
				else if (x>=kx-20 & x<=kx+50 & y>=ky+70 & y<=ky+75) rgb_reg<=8'b11111111;//borde
				else if (x>=kx-20 & x<=kx-15 & y>=ky-20 & y<=ky+70) rgb_reg<=8'b11111111;//borde
				else if (x>=kx+45 & x<=kx+50 & y>=ky-20 & y<=ky+70) rgb_reg<=8'b11111111;//borde
				
				dx<=60;
				dy<=260;//cuatro
				if (x>=dx+25 & x<=dx+30 & y>=dy    & y<=dy+25) rgb_reg<=8'b00000011;//b
				else if (x>=dx+25 & x<=dx+30 & y>=dy+25 & y<=dy+50) rgb_reg<=8'b00000011;//c
				else if (x>=dx    & x<=dx+5  & y>=dy    & y<=dy+25) rgb_reg<=8'b00000011;//f
				else if (x>=dx    & x<=dx+30 & y>=dy+25 & y<=dy+30) rgb_reg<=8'b00000011;//g
				else if (x>=dx-20 & x<=dx+50 & y>=dy-20 & y<=dy-15) rgb_reg<=8'b11111111;//borde
				else if (x>=dx-20 & x<=dx+50 & y>=dy+70 & y<=dy+75) rgb_reg<=8'b11111111;//borde
				else if (x>=dx-20 & x<=dx-15 & y>=dy-20 & y<=dy+70) rgb_reg<=8'b11111111;//borde
				else if (x>=dx+45 & x<=dx+50 & y>=dy-20 & y<=dy+70) rgb_reg<=8'b11111111;//borde
				
				ex<=150;
				ey<=260;//cinco
				if      (x>=ex    & x<=ex+30 & y>=ey    & y<=ey+5 ) rgb_reg<=8'b00000011;//a
				else if (x>=ex+25 & x<=ex+30 & y>=ey+25 & y<=ey+50) rgb_reg<=8'b00000011;//c
				else if (x>=ex    & x<=ex+30 & y>=ey+50 & y<=ey+55) rgb_reg<=8'b00000011;//d
				else if (x>=ex    & x<=ex+5  & y>=ey    & y<=ey+25) rgb_reg<=8'b00000011;//f
				else if (x>=ex    & x<=ex+30 & y>=ey+25 & y<=ey+30) rgb_reg<=8'b00000011;//g
				else if (x>=ex-20 & x<=ex+50 & y>=ey-20 & y<=ey-15) rgb_reg<=8'b11111111;//borde
				else if (x>=ex-20 & x<=ex+50 & y>=ey+70 & y<=ey+75) rgb_reg<=8'b11111111;//borde
				else if (x>=ex-20 & x<=ex-15 & y>=ey-20 & y<=ey+70) rgb_reg<=8'b11111111;//borde
				else if (x>=ex+45 & x<=ex+50 & y>=ey-20 & y<=ey+70) rgb_reg<=8'b11111111;//borde
				
				fx<=240;
				fy<=260;//seis
				if      (x>=fx    & x<=fx+30 & y>=fy    & y<=fy+5 ) rgb_reg<=8'b00000011;//a
				else if (x>=fx+25 & x<=fx+30 & y>=fy+25 & y<=fy+50) rgb_reg<=8'b00000011;//c
				else if (x>=fx    & x<=fx+30 & y>=fy+50 & y<=fy+55) rgb_reg<=8'b00000011;//d
				else if (x>=fx    & x<=fx+5  & y>=fy+25 & y<=fy+50) rgb_reg<=8'b00000011;//e
				else if (x>=fx    & x<=fx+5  & y>=fy    & y<=fy+25) rgb_reg<=8'b00000011;//f
				else if (x>=fx    & x<=fx+30 & y>=fy+25 & y<=fy+30) rgb_reg<=8'b00000011;//g
				else if (x>=fx-20 & x<=fx+50 & y>=fy-20 & y<=fy-15) rgb_reg<=8'b11111111;//borde
				else if (x>=fx-20 & x<=fx+50 & y>=fy+70 & y<=fy+75) rgb_reg<=8'b11111111;//borde
				else if (x>=fx-20 & x<=fx-15 & y>=fy-20 & y<=fy+70) rgb_reg<=8'b11111111;//borde
				else if (x>=fx+45 & x<=fx+50 & y>=fy-20 & y<=fy+70) rgb_reg<=8'b11111111;//borde
				
				lx<=330;
				ly<=260;//menos
				if		  (x>=lx    & x<=lx+30 & y>=ly+25 & y<=ly+30)rgb_reg<=8'b00000011;//g
				else if (x>=lx-20 & x<=lx+50 & y>=ly-20 & y<=ly-15) rgb_reg<=8'b11111111;//borde
				else if (x>=lx-20 & x<=lx+50 & y>=ly+70 & y<=ly+75) rgb_reg<=8'b11111111;//borde
				else if (x>=lx-20 & x<=lx-15 & y>=ly-20 & y<=ly+70) rgb_reg<=8'b11111111;//borde
				else if (x>=lx+45 & x<=lx+50 & y>=ly-20 & y<=ly+70) rgb_reg<=8'b11111111;//borde
				
				sx<=420;
				sy<=260;//producto
				if		  (x>=sx+10    & x<=sx+15 & y>=sy+25 & y<=sy+30)rgb_reg<=8'b00000011;//g
				else if (x>=sx-20 & x<=sx+50 & y>=sy-20 & y<=sy-15) rgb_reg<=8'b11111111;//borde
				else if (x>=sx-20 & x<=sx+50 & y>=sy+70 & y<=sy+75) rgb_reg<=8'b11111111;//borde
				else if (x>=sx-20 & x<=sx-15 & y>=sy-20 & y<=sy+70) rgb_reg<=8'b11111111;//borde
				else if (x>=sx+45 & x<=sx+50 & y>=sy-20 & y<=sy+70) rgb_reg<=8'b11111111;//borde
				
				gx<=60;
				gy<=160;//siete
				if      (x>=gx    & x<=gx+30 & y>=gy    & y<=gy+5 ) rgb_reg<=8'b00000011;//a
				else if (x>=gx+25 & x<=gx+30 & y>=gy    & y<=gy+25) rgb_reg<=8'b00000011;//b
				else if (x>=gx+25 & x<=gx+30 & y>=gy+25 & y<=gy+50) rgb_reg<=8'b00000011;//c
				else if (x>=gx-20 & x<=gx+50 & y>=gy-20 & y<=gy-15) rgb_reg<=8'b11111111;//borde
				else if (x>=gx-20 & x<=gx+50 & y>=gy+70 & y<=gy+75) rgb_reg<=8'b11111111;//borde
				else if (x>=gx-20 & x<=gx-15 & y>=gy-20 & y<=gy+70) rgb_reg<=8'b11111111;//borde
				else if (x>=gx+45 & x<=gx+50 & y>=gy-20 & y<=gy+70) rgb_reg<=8'b11111111;//borde
				
				hx<=150;
				hy<=160;//ocho
				if      (x>=hx    & x<=hx+30 & y>=hy    & y<=hy+5 ) rgb_reg<=8'b00000011;//a
				else if (x>=hx+25 & x<=hx+30 & y>=hy    & y<=hy+25) rgb_reg<=8'b00000011;//b
				else if (x>=hx+25 & x<=hx+30 & y>=hy+25 & y<=hy+50) rgb_reg<=8'b00000011;//c
				else if (x>=hx    & x<=hx+30 & y>=hy+50 & y<=hy+55) rgb_reg<=8'b00000011;//d
				else if (x>=hx    & x<=hx+5  & y>=hy+25 & y<=hy+50) rgb_reg<=8'b00000011;//e
				else if (x>=hx    & x<=hx+5  & y>=hy    & y<=hy+25) rgb_reg<=8'b00000011;//f
				else if (x>=hx    & x<=hx+30 & y>=hy+25 & y<=hy+30) rgb_reg<=8'b00000011;//g
				else if (x>=hx-20 & x<=hx+50 & y>=hy-20 & y<=hy-15) rgb_reg<=8'b11111111;//borde
				else if (x>=hx-20 & x<=hx+50 & y>=hy+70 & y<=hy+75) rgb_reg<=8'b11111111;//borde
				else if (x>=hx-20 & x<=hx-15 & y>=hy-20 & y<=hy+70) rgb_reg<=8'b11111111;//borde
				else if (x>=hx+45 & x<=hx+50 & y>=hy-20 & y<=hy+70) rgb_reg<=8'b11111111;//borde
				
				ix<=240;
				iy<=160;//nueve
				if      (x>=ix    & x<=ix+30 & y>=iy    & y<=iy+5 ) rgb_reg<=8'b00000011;//a
				else if (x>=ix+25 & x<=ix+30 & y>=iy    & y<=iy+25) rgb_reg<=8'b00000011;//b
				else if (x>=ix+25 & x<=ix+30 & y>=iy+25 & y<=iy+50) rgb_reg<=8'b00000011;//c
				else if (x>=ix    & x<=ix+30 & y>=iy+50 & y<=iy+55) rgb_reg<=8'b00000011;//d
				else if (x>=ix    & x<=ix+5  & y>=iy    & y<=iy+25) rgb_reg<=8'b00000011;//f
				else if (x>=ix    & x<=ix+30 & y>=iy+25 & y<=iy+30) rgb_reg<=8'b00000011;//g
				else if (x>=ix-20 & x<=ix+50 & y>=iy-20 & y<=iy-15) rgb_reg<=8'b11111111;//borde
				else if (x>=ix-20 & x<=ix+50 & y>=iy+70 & y<=iy+75) rgb_reg<=8'b11111111;//borde
				else if (x>=ix-20 & x<=ix-15 & y>=iy-20 & y<=iy+70) rgb_reg<=8'b11111111;//borde
				else if (x>=ix+45 & x<=ix+50 & y>=iy-20 & y<=iy+70) rgb_reg<=8'b11111111;//borde
				
				mx<=330;
				my<=160;//mas
					if (x>=mx+10 & x<=mx+20 & y>=my+10 & y<=my+25)rgb_reg<=8'b00000011;//b
				else if (x>=mx+10 & x<=mx+20 & y>=my+25 & y<=my+40) rgb_reg<=8'b00000011;//c
				else if (x>=mx    & x<=mx+30 & y>=my+25 & y<=my+30) rgb_reg<=8'b00000011;//g
				else if (x>=mx-20 & x<=mx+50 & y>=my-20 & y<=my-15) rgb_reg<=8'b11111111;//borde
				else if (x>=mx-20 & x<=mx+50 & y>=my+70 & y<=my+75) rgb_reg<=8'b11111111;//borde
				else if (x>=mx-20 & x<=mx-15 & y>=my-20 & y<=my+70) rgb_reg<=8'b11111111;//borde
				else if (x>=mx+45 & x<=mx+50 & y>=my-20 & y<=my+70) rgb_reg<=8'b11111111;//borde
				/*
				nx<=330;
				ny<=160;//dividido
				     if (x>=nx+10 & x<=nx+20 & y>=ny+10 & y<=ny+20) rgb_reg<=8'b00000011;//b
				else if (x>=nx+10 & x<=nx+20 & y>=ny+30 & y<=ny+40) rgb_reg<=8'b00000011;//c
				else if (x>=nx    & x<=nx+30 & y>=ny+25 & y<=ny+30) rgb_reg<=8'b00000011;//g
				else if (x>=nx-20 & x<=nx+50 & y>=ny-20 & y<=ny-15) rgb_reg<=8'b11111111;//borde
				else if (x>=nx-20 & x<=nx+50 & y>=ny+70 & y<=ny+75) rgb_reg<=8'b11111111;//borde
				else if (x>=nx-20 & x<=nx-15 & y>=ny-20 & y<=ny+70) rgb_reg<=8'b11111111;//borde
				else if (x>=nx+45 & x<=nx+50 & y>=ny-20 & y<=ny+70) rgb_reg<=8'b11111111;//borde*/
				
				nx<=330;
				ny<=70;
				
				if (num [0]) //cero
				begin
						if(x>=nx & x<=nx+30 & y>=ny & y<=ny+5)rgb_reg<=8'b00000011;//a
				else if (x>=nx+25 & x<=nx+30 & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//b
				else if (x>=nx+25 & x<=nx+30 & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//c
				else if (x>=nx    & x<=nx+30 & y>=ny+50 & y<=ny+55) rgb_reg<=8'b00000011;//d
				else if (x>=nx    & x<=nx+5  & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//e
				else if (x>=nx    & x<=nx+5  & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//f
			
				if      (x>=jx    & x<=jx+30 & y>=jy    & y<=jy+5 ) rgb_reg<=8'b11111111;//a
				else if (x>=jx+25 & x<=jx+30 & y>=jy    & y<=jy+25) rgb_reg<=8'b11111111;//b
				else if (x>=jx+25 & x<=jx+30 & y>=jy+25 & y<=jy+50) rgb_reg<=8'b11111111;//c
				else if (x>=jx    & x<=jx+30 & y>=jy+50 & y<=jy+55) rgb_reg<=8'b11111111;//d
				else if (x>=jx    & x<=jx+5  & y>=jy+25 & y<=jy+50) rgb_reg<=8'b11111111;//e
				else if (x>=jx    & x<=jx+5  & y>=jy    & y<=jy+25) rgb_reg<=8'b11111111;//f
				else if (x>=jx-20 & x<=jx+50 & y>=jy-20 & y<=jy-15) rgb_reg<=8'b00000011;//borde
				else if (x>=jx-20 & x<=jx+50 & y>=jy+70 & y<=jy+75) rgb_reg<=8'b00000011;//borde
				else if (x>=jx-20 & x<=jx-15 & y>=jy-20 & y<=jy+70) rgb_reg<=8'b00000011;//borde
				else if (x>=jx+45 & x<=jx+50 & y>=jy-20 & y<=jy+70) rgb_reg<=8'b00000011;//borde
				end
				
				else if (num [1]) //uno
				begin
						if(x>=nx+25 & x<=nx+30 & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//b
				else if (x>=nx+25 & x<=nx+30 & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//c
				
				if      (x>=ax+25 & x<=ax+30 & y>=ay    & y<=ay+25) rgb_reg<=8'b11111111;//b
				else if (x>=ax+25 & x<=ax+30 & y>=ay+25 & y<=ay+50) rgb_reg<=8'b11111111;//c
				else if (x>=ax-20 & x<=ax+50 & y>=ay-20 & y<=ay-15) rgb_reg<=8'b00000011;//borde
				else if (x>=ax-20 & x<=ax+50 & y>=ay+70 & y<=ay+75) rgb_reg<=8'b00000011;//borde
				else if (x>=ax-20 & x<=ax-15 & y>=ay-20 & y<=ay+70) rgb_reg<=8'b00000011;//borde
				else if (x>=ax+45 & x<=ax+50 & y>=ay-20 & y<=ay+70) rgb_reg<=8'b00000011;//borde
				end
				
				else if (num [2]) //dos
				begin
						if(x>=nx    & x<=nx+30 & y>=ny    & y<=ny+5 ) rgb_reg<=8'b00000011;//a
				else if (x>=nx+25 & x<=nx+30 & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//b
				else if (x>=nx    & x<=nx+30 & y>=ny+50 & y<=ny+55) rgb_reg<=8'b00000011;//d
				else if (x>=nx    & x<=nx+5  & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//e
				else if (x>=nx    & x<=nx+30 & y>=ny+25 & y<=ny+30) rgb_reg<=8'b00000011;//g
				
				if      (x>=bx    & x<=bx+30 & y>=by    & y<=by+5 ) rgb_reg<=8'b11111111;//a
				else if (x>=bx+25 & x<=bx+30 & y>=by    & y<=by+25) rgb_reg<=8'b11111111;//b
				else if (x>=bx    & x<=bx+30 & y>=by+50 & y<=by+55) rgb_reg<=8'b11111111;//d
				else if (x>=bx    & x<=bx+5  & y>=by+25 & y<=by+50) rgb_reg<=8'b11111111;//e
				else if (x>=bx    & x<=bx+30 & y>=by+25 & y<=by+30) rgb_reg<=8'b11111111;//g
				else if (x>=bx-20 & x<=bx+50 & y>=by-20 & y<=by-15) rgb_reg<=8'b00000011;//borde
				else if (x>=bx-20 & x<=bx+50 & y>=by+70 & y<=by+75) rgb_reg<=8'b00000011;//borde
				else if (x>=bx-20 & x<=bx-15 & y>=by-20 & y<=by+70) rgb_reg<=8'b00000011;//borde
				else if (x>=bx+45 & x<=bx+50 & y>=by-20 & y<=by+70) rgb_reg<=8'b00000011;//borde
				end
				
				else if (num [3]) //tres
				begin
						if(x>=nx    & x<=nx+30 & y>=ny    & y<=ny+5 ) rgb_reg<=8'b00000011;//a
				else if (x>=nx+25 & x<=nx+30 & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//b
				else if (x>=nx+25 & x<=nx+30 & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//c
				else if (x>=nx    & x<=nx+30 & y>=ny+50 & y<=ny+55) rgb_reg<=8'b00000011;//d
				else if (x>=nx    & x<=nx+30 & y>=ny+25 & y<=ny+30) rgb_reg<=8'b00000011;//g
				
				if      (x>=cx    & x<=cx+30 & y>=cy    & y<=cy+5 ) rgb_reg<=8'b11111111;//a
				else if (x>=cx+25 & x<=cx+30 & y>=cy    & y<=cy+25) rgb_reg<=8'b11111111;//b
				else if (x>=cx+25 & x<=cx+30 & y>=cy+25 & y<=cy+50) rgb_reg<=8'b11111111;//c
				else if (x>=cx    & x<=cx+30 & y>=cy+50 & y<=cy+55) rgb_reg<=8'b11111111;//d
				else if (x>=cx    & x<=cx+30 & y>=cy+25 & y<=cy+30) rgb_reg<=8'b11111111;//g
				else if (x>=cx-20 & x<=cx+50 & y>=cy-20 & y<=cy-15) rgb_reg<=8'b00000011;//borde
				else if (x>=cx-20 & x<=cx+50 & y>=cy+70 & y<=cy+75) rgb_reg<=8'b00000011;//borde
				else if (x>=cx-20 & x<=cx-15 & y>=cy-20 & y<=cy+70) rgb_reg<=8'b00000011;//borde
				else if (x>=cx+45 & x<=cx+50 & y>=cy-20 & y<=cy+70) rgb_reg<=8'b00000011;//borde
				end
				
				else if (num [4]) //cuatro
				begin
						if (x>=nx+25 & x<=nx+30 & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//b
				else if (x>=nx+25 & x<=nx+30 & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//c
				else if (x>=nx    & x<=nx+5  & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//f
				else if (x>=nx    & x<=nx+30 & y>=ny+25 & y<=ny+30) rgb_reg<=8'b00000011;//g
				
				if (x>=dx+25 & x<=dx+30 & y>=dy    & y<=dy+25) rgb_reg<=8'b11111111;//b
				else if (x>=dx+25 & x<=dx+30 & y>=dy+25 & y<=dy+50) rgb_reg<=8'b11111111;//c
				else if (x>=dx    & x<=dx+5  & y>=dy    & y<=dy+25) rgb_reg<=8'b11111111;//f
				else if (x>=dx    & x<=dx+30 & y>=dy+25 & y<=dy+30) rgb_reg<=8'b11111111;//g
				else if (x>=dx-20 & x<=dx+50 & y>=dy-20 & y<=dy-15) rgb_reg<=8'b00000011;//borde
				else if (x>=dx-20 & x<=dx+50 & y>=dy+70 & y<=dy+75) rgb_reg<=8'b00000011;//borde
				else if (x>=dx-20 & x<=dx-15 & y>=dy-20 & y<=dy+70) rgb_reg<=8'b00000011;//borde
				else if (x>=dx+45 & x<=dx+50 & y>=dy-20 & y<=dy+70) rgb_reg<=8'b00000011;//borde
				end
				
				else if (num [5]) //cinco
				begin
						if(x>=nx    & x<=nx+30 & y>=ny    & y<=ny+5 ) rgb_reg<=8'b00000011;//a
				else if (x>=nx+25 & x<=nx+30 & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//c
				else if (x>=nx    & x<=nx+30 & y>=ny+50 & y<=ny+55) rgb_reg<=8'b00000011;//d
				else if (x>=nx    & x<=nx+5  & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//f
				else if (x>=nx    & x<=nx+30 & y>=ny+25 & y<=ny+30) rgb_reg<=8'b00000011;//g
				
				if      (x>=ex    & x<=ex+30 & y>=ey    & y<=ey+5 ) rgb_reg<=8'b11111111;//a
				else if (x>=ex+25 & x<=ex+30 & y>=ey+25 & y<=ey+50) rgb_reg<=8'b11111111;//c
				else if (x>=ex    & x<=ex+30 & y>=ey+50 & y<=ey+55) rgb_reg<=8'b11111111;//d
				else if (x>=ex    & x<=ex+5  & y>=ey    & y<=ey+25) rgb_reg<=8'b11111111;//f
				else if (x>=ex    & x<=ex+30 & y>=ey+25 & y<=ey+30) rgb_reg<=8'b11111111;//g
				else if (x>=ex-20 & x<=ex+50 & y>=ey-20 & y<=ey-15) rgb_reg<=8'b00000011;//borde
				else if (x>=ex-20 & x<=ex+50 & y>=ey+70 & y<=ey+75) rgb_reg<=8'b00000011;//borde
				else if (x>=ex-20 & x<=ex-15 & y>=ey-20 & y<=ey+70) rgb_reg<=8'b00000011;//borde
				else if (x>=ex+45 & x<=ex+50 & y>=ey-20 & y<=ey+70) rgb_reg<=8'b00000011;//borde
				end
				
				else if (num [6]) //seis
				begin
						if(x>=nx    & x<=nx+30 & y>=ny    & y<=ny+5 ) rgb_reg<=8'b00000011;//a
				else if (x>=nx+25 & x<=nx+30 & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//c
				else if (x>=nx    & x<=nx+30 & y>=ny+50 & y<=ny+55) rgb_reg<=8'b00000011;//d
				else if (x>=nx    & x<=nx+5  & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//e
				else if (x>=nx    & x<=nx+5  & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//f
				else if (x>=nx    & x<=nx+30 & y>=ny+25 & y<=ny+30) rgb_reg<=8'b00000011;//g
				
				if      (x>=fx    & x<=fx+30 & y>=fy    & y<=fy+5 ) rgb_reg<=8'b11111111;//a
				else if (x>=fx+25 & x<=fx+30 & y>=fy+25 & y<=fy+50) rgb_reg<=8'b11111111;//c
				else if (x>=fx    & x<=fx+30 & y>=fy+50 & y<=fy+55) rgb_reg<=8'b11111111;//d
				else if (x>=fx    & x<=fx+5  & y>=fy+25 & y<=fy+50) rgb_reg<=8'b11111111;//e
				else if (x>=fx    & x<=fx+5  & y>=fy    & y<=fy+25) rgb_reg<=8'b11111111;//f
				else if (x>=fx    & x<=fx+30 & y>=fy+25 & y<=fy+30) rgb_reg<=8'b11111111;//g
				else if (x>=fx-20 & x<=fx+50 & y>=fy-20 & y<=fy-15) rgb_reg<=8'b00000011;//borde
				else if (x>=fx-20 & x<=fx+50 & y>=fy+70 & y<=fy+75) rgb_reg<=8'b00000011;//borde
				else if (x>=fx-20 & x<=fx-15 & y>=fy-20 & y<=fy+70) rgb_reg<=8'b00000011;//borde
				else if (x>=fx+45 & x<=fx+50 & y>=fy-20 & y<=fy+70) rgb_reg<=8'b00000011;//borde
				end
				
				else if (num [7]) //siete
				begin
						if(x>=nx    & x<=nx+30 & y>=ny    & y<=ny+5 ) rgb_reg<=8'b00000011;//a
				else if (x>=nx+25 & x<=nx+30 & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//b
				else if (x>=nx+25 & x<=nx+30 & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//c
				
				if      (x>=gx    & x<=gx+30 & y>=gy    & y<=gy+5 ) rgb_reg<=8'b11111111;//a
				else if (x>=gx+25 & x<=gx+30 & y>=gy    & y<=gy+25) rgb_reg<=8'b11111111;//b
				else if (x>=gx+25 & x<=gx+30 & y>=gy+25 & y<=gy+50) rgb_reg<=8'b11111111;//c
				else if (x>=gx-20 & x<=gx+50 & y>=gy-20 & y<=gy-15) rgb_reg<=8'b00000011;//borde
				else if (x>=gx-20 & x<=gx+50 & y>=gy+70 & y<=gy+75) rgb_reg<=8'b00000011;//borde
				else if (x>=gx-20 & x<=gx-15 & y>=gy-20 & y<=gy+70) rgb_reg<=8'b00000011;//borde
				else if (x>=gx+45 & x<=gx+50 & y>=gy-20 & y<=gy+70) rgb_reg<=8'b00000011;//borde
				end
				
				else if (num [8]) //ocho
				begin
						if(x>=nx    & x<=nx+30 & y>=ny    & y<=ny+5 ) rgb_reg<=8'b00000011;//a
				else if (x>=nx+25 & x<=nx+30 & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//b
				else if (x>=nx+25 & x<=nx+30 & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//c
				else if (x>=nx    & x<=nx+30 & y>=ny+50 & y<=ny+55) rgb_reg<=8'b00000011;//d
				else if (x>=nx    & x<=nx+5  & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//e
				else if (x>=nx    & x<=nx+5  & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//f
				else if (x>=nx    & x<=nx+30 & y>=ny+25 & y<=ny+30) rgb_reg<=8'b00000011;//g
				
				if      (x>=hx    & x<=hx+30 & y>=hy    & y<=hy+5 ) rgb_reg<=8'b11111111;//a
				else if (x>=hx+25 & x<=hx+30 & y>=hy    & y<=hy+25) rgb_reg<=8'b11111111;//b
				else if (x>=hx+25 & x<=hx+30 & y>=hy+25 & y<=hy+50) rgb_reg<=8'b11111111;//c
				else if (x>=hx    & x<=hx+30 & y>=hy+50 & y<=hy+55) rgb_reg<=8'b11111111;//d
				else if (x>=hx    & x<=hx+5  & y>=hy+25 & y<=hy+50) rgb_reg<=8'b11111111;//e
				else if (x>=hx    & x<=hx+5  & y>=hy    & y<=hy+25) rgb_reg<=8'b11111111;//f
				else if (x>=hx    & x<=hx+30 & y>=hy+25 & y<=hy+30) rgb_reg<=8'b11111111;//g
				else if (x>=hx-20 & x<=hx+50 & y>=hy-20 & y<=hy-15) rgb_reg<=8'b00000011;//borde
				else if (x>=hx-20 & x<=hx+50 & y>=hy+70 & y<=hy+75) rgb_reg<=8'b00000011;//borde
				else if (x>=hx-20 & x<=hx-15 & y>=hy-20 & y<=hy+70) rgb_reg<=8'b00000011;//borde
				else if (x>=hx+45 & x<=hx+50 & y>=hy-20 & y<=hy+70) rgb_reg<=8'b00000011;//borde
				end
				
				else if (num [9]) //nueve
				begin
						if(x>=nx    & x<=nx+30 & y>=ny    & y<=ny+5 )rgb_reg<=8'b00000011;//a
				else if (x>=nx+25 & x<=nx+30 & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//b
				else if (x>=nx+25 & x<=nx+30 & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//c
				else if (x>=nx    & x<=nx+30 & y>=ny+50 & y<=ny+55) rgb_reg<=8'b00000011;//d
				else if (x>=nx    & x<=nx+5  & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//f
				else if (x>=nx    & x<=nx+30 & y>=ny+25 & y<=ny+30) rgb_reg<=8'b00000011;//g
				
				if      (x>=ix    & x<=ix+30 & y>=iy    & y<=iy+5 ) rgb_reg<=8'b11111111;//a
				else if (x>=ix+25 & x<=ix+30 & y>=iy    & y<=iy+25) rgb_reg<=8'b11111111;//b
				else if (x>=ix+25 & x<=ix+30 & y>=iy+25 & y<=iy+50) rgb_reg<=8'b11111111;//c
				else if (x>=ix    & x<=ix+30 & y>=iy+50 & y<=iy+55) rgb_reg<=8'b11111111;//d
				else if (x>=ix    & x<=ix+5  & y>=iy    & y<=iy+25) rgb_reg<=8'b11111111;//f
				else if (x>=ix    & x<=ix+30 & y>=iy+25 & y<=iy+30) rgb_reg<=8'b11111111;//g
				else if (x>=ix-20 & x<=ix+50 & y>=iy-20 & y<=iy-15) rgb_reg<=8'b00000011;//borde
				else if (x>=ix-20 & x<=ix+50 & y>=iy+70 & y<=iy+75) rgb_reg<=8'b00000011;//borde
				else if (x>=ix-20 & x<=ix-15 & y>=iy-20 & y<=iy+70) rgb_reg<=8'b00000011;//borde
				else if (x>=ix+45 & x<=ix+50 & y>=iy-20 & y<=iy+70) rgb_reg<=8'b00000011;//borde
				end
				
				if (num [10]) //+
				begin
						if(x>=nx+10 & x<=nx+20 & y>=ny+10 & y<=ny+25)
						begin
						rgb_reg<=8'b00000011;//b
						r1 <= 1;
						end						
				else if (x>=nx+10 & x<=nx+20 & y>=ny+25 & y<=ny+40) rgb_reg<=8'b00000011;//c
				else if (x>=nx    & x<=nx+30 & y>=ny+25 & y<=ny+30) rgb_reg<=8'b00000011;//g
				
				if (x>=mx+10 & x<=mx+20 & y>=my+10 & y<=my+25) rgb_reg<=8'b11111111;//b
				else if (x>=mx+10 & x<=mx+20 & y>=my+25 & y<=my+40) rgb_reg<=8'b11111111;//c
				else if (x>=mx    & x<=mx+30 & y>=my+25 & y<=my+30) rgb_reg<=8'b11111111;//g
				else if (x>=mx-20 & x<=mx+50 & y>=my-20 & y<=my-15) rgb_reg<=8'b00000011;//borde
				else if (x>=mx-20 & x<=mx+50 & y>=my+70 & y<=my+75) rgb_reg<=8'b00000011;//borde
				else if (x>=mx-20 & x<=mx-15 & y>=my-20 & y<=my+70) rgb_reg<=8'b00000011;//borde
				else if (x>=mx+45 & x<=mx+50 & y>=my-20 & y<=my+70) rgb_reg<=8'b00000011;//borde
				end
				
				else if (num [11]) //-
				begin
						if(x>=nx    & x<=nx+30 & y>=ny+25 & y<=ny+30)
						begin
						rgb_reg<=8'b00000011;//g
						r1 <= 1;
						end	
						
				if		  (x>=lx    & x<=lx+30 & y>=ly+25 & y<=ly+30) rgb_reg<=8'b11111111;//g
				else if (x>=lx-20 & x<=lx+50 & y>=ly-20 & y<=ly-15) rgb_reg<=8'b00000011;//borde
				else if (x>=lx-20 & x<=lx+50 & y>=ly+70 & y<=ly+75) rgb_reg<=8'b00000011;//borde
				else if (x>=lx-20 & x<=lx-15 & y>=ly-20 & y<=ly+70) rgb_reg<=8'b00000011;//borde
				else if (x>=lx+45 & x<=lx+50 & y>=ly-20 & y<=ly+70) rgb_reg<=8'b00000011;//borde
				end
				
				else if (num [12]) //*
				begin
						if (x>=nx+10    & x<=nx+15 & y>=ny+25 & y<=ny+30)
						begin
						rgb_reg<=8'b00000011;//g
						r1 <= 1;
						end						
						
				if		  (x>=sx+10    & x<=sx+15 & y>=sy+25 & y<=sy+30) rgb_reg<=8'b11111111;//g
				else if (x>=sx-20 & x<=sx+50 & y>=sy-20 & y<=sy-15) rgb_reg<=8'b00000011;//borde
				else if (x>=sx-20 & x<=sx+50 & y>=sy+70 & y<=sy+75) rgb_reg<=8'b00000011;//borde
				else if (x>=sx-20 & x<=sx-15 & y>=sy-20 & y<=sy+70) rgb_reg<=8'b00000011;//borde
				else if (x>=sx+45 & x<=sx+50 & y>=sy-20 & y<=sy+70) rgb_reg<=8'b00000011;//borde
						
				end
				
/*resultados*/	
				tx<=290;
				ty<=70;
				if (num[13])// =
				begin
/*numero 1*/
				if (result/10 == 0) //cero
						begin
						end
			
					else if (result/10 == 1) //uno
						begin
						if(x>=tx+25 & x<=tx+30 & y>=ty    & y<=ty+25) rgb_reg<=8'b00000011;//b
						else if (x>=tx+25 & x<=tx+30 & y>=ty+25 & y<=ty+50) rgb_reg<=8'b00000011;//c
						end
			
					else if (result/10 == 2) //dos
						begin
						if(x>=tx    & x<=tx+30 & y>=ty    & y<=ty+5 ) rgb_reg<=8'b00000011;//a
						else if (x>=tx+25 & x<=tx+30 & y>=ty    & y<=ty+25) rgb_reg<=8'b00000011;//b
						else if (x>=tx    & x<=tx+30 & y>=ty+50 & y<=ty+55) rgb_reg<=8'b00000011;//d
						else if (x>=tx    & x<=tx+5  & y>=ty+25 & y<=ty+50) rgb_reg<=8'b00000011;//e
						else if (x>=tx    & x<=tx+30 & y>=ty+25 & y<=ty+30) rgb_reg<=8'b00000011;//g
						end
			
					else if (result/10 == 3) //tres
						begin
						if(x>=tx    & x<=tx+30 & y>=ty    & y<=ty+5 ) rgb_reg<=8'b00000011;//a
						else if (x>=tx+25 & x<=tx+30 & y>=ty    & y<=ty+25) rgb_reg<=8'b00000011;//b
						else if (x>=tx+25 & x<=tx+30 & y>=ty+25 & y<=ty+50) rgb_reg<=8'b00000011;//c
						else if (x>=tx    & x<=tx+30 & y>=ty+50 & y<=ty+55) rgb_reg<=8'b00000011;//d
						else if (x>=tx    & x<=tx+30 & y>=ty+25 & y<=ty+30) rgb_reg<=8'b00000011;//g
						end
			
					else if (result/10 == 4) //cuatro
						begin
						if (x>=tx+25 & x<=tx+30 & y>=ty    & y<=ty+25) rgb_reg<=8'b00000011;//b
						else if (x>=tx+25 & x<=tx+30 & y>=ty+25 & y<=ty+50) rgb_reg<=8'b00000011;//c
						else if (x>=tx    & x<=tx+5  & y>=ty    & y<=ty+25) rgb_reg<=8'b00000011;//f
						else if (x>=tx    & x<=tx+30 & y>=ty+25 & y<=ty+30) rgb_reg<=8'b00000011;//g
						end
			
					else if (result/10 == 5) //cinco
						begin
						if(x>=tx    & x<=tx+30 & y>=ty    & y<=ty+5 ) rgb_reg<=8'b00000011;//a
						else if (x>=tx+25 & x<=tx+30 & y>=ty+25 & y<=ty+50) rgb_reg<=8'b00000011;//c
						else if (x>=tx    & x<=tx+30 & y>=ty+50 & y<=ty+55) rgb_reg<=8'b00000011;//d
						else if (x>=tx    & x<=tx+5  & y>=ty    & y<=ty+25) rgb_reg<=8'b00000011;//f
						else if (x>=tx    & x<=tx+30 & y>=ty+25 & y<=ty+30) rgb_reg<=8'b00000011;//g
						end
			
					else if (result/10 == 6) //seis
						begin
						if(x>=tx    & x<=tx+30 & y>=ty    & y<=ty+5 ) rgb_reg<=8'b00000011;//a
						else if (x>=tx+25 & x<=tx+30 & y>=ty+25 & y<=ty+50) rgb_reg<=8'b00000011;//c
						else if (x>=tx    & x<=tx+30 & y>=ty+50 & y<=ty+55) rgb_reg<=8'b00000011;//d
						else if (x>=tx    & x<=tx+5  & y>=ty+25 & y<=ty+50) rgb_reg<=8'b00000011;//e
						else if (x>=tx    & x<=tx+5  & y>=ty    & y<=ty+25) rgb_reg<=8'b00000011;//f
						else if (x>=tx    & x<=tx+30 & y>=ty+25 & y<=ty+30) rgb_reg<=8'b00000011;//g
						end
			
					else if (result/10 == 7) //siete
						begin
								if(x>=tx    & x<=tx+30 & y>=ty    & y<=ty+5 ) rgb_reg<=8'b00000011;//a
						else if (x>=tx+25 & x<=tx+30 & y>=ty    & y<=ty+25) rgb_reg<=8'b00000011;//b
						else if (x>=tx+25 & x<=tx+30 & y>=ty+25 & y<=ty+50) rgb_reg<=8'b00000011;//c
						end
			
					else if (result/10 == 8) //ocho
						begin
								if(x>=tx    & x<=tx+30 & y>=ty    & y<=ty+5 ) rgb_reg<=8'b00000011;//a
						else if (x>=tx+25 & x<=tx+30 & y>=ty    & y<=ty+25) rgb_reg<=8'b00000011;//b
						else if (x>=tx+25 & x<=tx+30 & y>=ty+25 & y<=ty+50) rgb_reg<=8'b00000011;//c
						else if (x>=tx    & x<=tx+30 & y>=ty+50 & y<=ty+55) rgb_reg<=8'b00000011;//d
						else if (x>=tx    & x<=tx+5  & y>=ty+25 & y<=ty+50) rgb_reg<=8'b00000011;//e
						else if (x>=tx    & x<=tx+5  & y>=ty    & y<=ty+25) rgb_reg<=8'b00000011;//f
						else if (x>=tx    & x<=tx+30 & y>=ty+25 & y<=ty+30) rgb_reg<=8'b00000011;//g
						end
					
					else if (result/10 == 9) //nueve
						begin
								if(x>=tx    & x<=tx+30 & y>=ty    & y<=ty+5 ) rgb_reg<=8'b00000011;//a
						else if (x>=tx+25 & x<=tx+30 & y>=ty    & y<=ty+25) rgb_reg<=8'b00000011;//b
						else if (x>=tx+25 & x<=tx+30 & y>=ty+25 & y<=ty+50) rgb_reg<=8'b00000011;//c
						else if (x>=tx    & x<=tx+30 & y>=ty+50 & y<=ty+55) rgb_reg<=8'b00000011;//d
						else if (x>=tx    & x<=tx+5  & y>=ty    & y<=ty+25) rgb_reg<=8'b00000011;//f
						else if (x>=tx    & x<=tx+30 & y>=ty+25 & y<=ty+30) rgb_reg<=8'b00000011;//g
						end
/*numero 2*/
					if (result%10 == 0) //cero
						begin
						if(x>=nx & x<=nx+30 & y>=ny & y<=ny+5) rgb_reg<=8'b00000011;//a
						else if (x>=nx+25 & x<=nx+30 & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//b
						else if (x>=nx+25 & x<=nx+30 & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//c
						else if (x>=nx    & x<=nx+30 & y>=ny+50 & y<=ny+55) rgb_reg<=8'b00000011;//d
						else if (x>=nx    & x<=nx+5  & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//e
						else if (x>=nx    & x<=nx+5  & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//f
						end
			
					else if (result%10 == 1) //uno
						begin
						if(x>=nx+25 & x<=nx+30 & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//b
						else if (x>=nx+25 & x<=nx+30 & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//c
						end
			
					else if (result%10 == 2) //dos
						begin
						if(x>=nx    & x<=nx+30 & y>=ny    & y<=ny+5 ) rgb_reg<=8'b00000011;//a
						else if (x>=nx+25 & x<=nx+30 & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//b
						else if (x>=nx    & x<=nx+30 & y>=ny+50 & y<=ny+55) rgb_reg<=8'b00000011;//d
						else if (x>=nx    & x<=nx+5  & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//e
						else if (x>=nx    & x<=nx+30 & y>=ny+25 & y<=ny+30) rgb_reg<=8'b00000011;//g
						end
			
					else if (result%10 == 3) //tres
						begin
						if(x>=nx    & x<=nx+30 & y>=ny    & y<=ny+5 ) rgb_reg<=8'b00000011;//a
						else if (x>=nx+25 & x<=nx+30 & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//b
						else if (x>=nx+25 & x<=nx+30 & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//c
						else if (x>=nx    & x<=nx+30 & y>=ny+50 & y<=ny+55) rgb_reg<=8'b00000011;//d
						else if (x>=nx    & x<=nx+30 & y>=ny+25 & y<=ny+30) rgb_reg<=8'b00000011;//g
						end
			
					else if (result%10 == 4) //cuatro
						begin
						if (x>=nx+25 & x<=nx+30 & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//b
						else if (x>=nx+25 & x<=nx+30 & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//c
						else if (x>=nx    & x<=nx+5  & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//f
						else if (x>=nx    & x<=nx+30 & y>=ny+25 & y<=ny+30) rgb_reg<=8'b00000011;//g
						end
			
					else if (result%10 == 5) //cinco
						begin
						if(x>=nx    & x<=nx+30 & y>=ny    & y<=ny+5 ) rgb_reg<=8'b00000011;//a
						else if (x>=nx+25 & x<=nx+30 & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//c
						else if (x>=nx    & x<=nx+30 & y>=ny+50 & y<=ny+55) rgb_reg<=8'b00000011;//d
						else if (x>=nx    & x<=nx+5  & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//f
						else if (x>=nx    & x<=nx+30 & y>=ny+25 & y<=ny+30) rgb_reg<=8'b00000011;//g
						end
			
					else if (result%10 == 6) //seis
						begin
						if(x>=nx    & x<=nx+30 & y>=ny    & y<=ny+5 ) rgb_reg<=8'b00000011;//a
						else if (x>=nx+25 & x<=nx+30 & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//c
						else if (x>=nx    & x<=nx+30 & y>=ny+50 & y<=ny+55) rgb_reg<=8'b00000011;//d
						else if (x>=nx    & x<=nx+5  & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//e
						else if (x>=nx    & x<=nx+5  & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//f
						else if (x>=nx    & x<=nx+30 & y>=ny+25 & y<=ny+30) rgb_reg<=8'b00000011;//g
						end
			
					else if (result%10 == 7) //siete
						begin
								if(x>=nx    & x<=nx+30 & y>=ny    & y<=ny+5 ) rgb_reg<=8'b00000011;//a
						else if (x>=nx+25 & x<=nx+30 & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//b
						else if (x>=nx+25 & x<=nx+30 & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//c
						end
			
					else if (result%10 == 8) //ocho
						begin
								if(x>=nx    & x<=nx+30 & y>=ny    & y<=ny+5 ) rgb_reg<=8'b00000011;//a
						else if (x>=nx+25 & x<=nx+30 & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//b
						else if (x>=nx+25 & x<=nx+30 & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//c
						else if (x>=nx    & x<=nx+30 & y>=ny+50 & y<=ny+55) rgb_reg<=8'b00000011;//d
						else if (x>=nx    & x<=nx+5  & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//e
						else if (x>=nx    & x<=nx+5  & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//f
						else if (x>=nx    & x<=nx+30 & y>=ny+25 & y<=ny+30) rgb_reg<=8'b00000011;//g
						end
					
					else if (result%10 == 9) //nueve
						begin
								if(x>=nx    & x<=nx+30 & y>=ny    & y<=ny+5 ) rgb_reg<=8'b00000011;//a
						else if (x>=nx+25 & x<=nx+30 & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//b
						else if (x>=nx+25 & x<=nx+30 & y>=ny+25 & y<=ny+50) rgb_reg<=8'b00000011;//c
						else if (x>=nx    & x<=nx+30 & y>=ny+50 & y<=ny+55) rgb_reg<=8'b00000011;//d
						else if (x>=nx    & x<=nx+5  & y>=ny    & y<=ny+25) rgb_reg<=8'b00000011;//f
						else if (x>=nx    & x<=nx+30 & y>=ny+25 & y<=ny+30) rgb_reg<=8'b00000011;//g
						end
														
													
				end	
				
				else
				begin
				
				end
				
				
    end
    // output
	 assign reset = r1;
    assign rgb = (video_on) ? rgb_reg : 3'b000;
endmodule
