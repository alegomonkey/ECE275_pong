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