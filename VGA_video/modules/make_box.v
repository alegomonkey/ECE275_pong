module make_box (
	input [9:0] X_pix,
	input [9:0] Y_pix,
	input [9:0] box_width,
	input [9:0] box_height,
	input [9:0] box_X_location,
	input [9:0] box_Y_location,
	input pixel_clk, 
	output reg box	
	);
	always @(posedge pixel_clk)
	begin
		if((X_pix>=box_X_location)&&(X_pix<(box_X_location+box_width))&&(Y_pix>=box_Y_location)&&(Y_pix<(box_Y_location+box_height))) box=1; 
		else box=0;
	end
endmodule

`timescale 1ns/100ps
module make_box_tb ();
	reg [9:0] X_pix;
	reg [9:0] Y_pix;
	reg [9:0] box_width;
	reg [9:0] box_height;
	reg [9:0] box_X_location;
	reg [9:0] box_Y_location;
	reg pixel_clk;
	wire box;
	
	make_box make_box_tb (.X_pix, .Y_pix, .box_width, .box_height, .box_X_location, .box_Y_location, .pixel_clk, .box);
	
	initial begin
		X_pix<=0;Y_pix<=0;box_width<=10;box_height<=10;box_X_location<=200;box_Y_location<=200; pixel_clk<=0;
		forever #20 pixel_clk=!pixel_clk;
	end
	always@(posedge pixel_clk)
	begin
		if(X_pix<640) X_pix<=X_pix+1;
		else
		begin
			Y_pix<=Y_pix+1;
			X_pix<=0;
		end
		if(Y_pix>480) Y_pix<=0;
	end
endmodule