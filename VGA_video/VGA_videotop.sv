`include "./DE0_VGA.v"

// NAMES: JOHNNY SYLVAIN, OZWIN CORDES, COLE ADAMS
module VGA_videotop(CLOCK_50, 
                VGA_R, VGA_G, VGA_B, VGA_HS, VGA_VS, SW);

input	wire			CLOCK_50;
input [7:0]			SW;

output	wire	[3:0]		VGA_R;		//Output Red
output	wire	[3:0]		VGA_G;		//Output Green
output	wire	[3:0]		VGA_B;		//Output Blue

output	wire	[0:0]		VGA_HS;			//Horizontal Sync
output	wire	[0:0]		VGA_VS;			//Vertical Sync

wire			[9:0]		X_pix;			//Location in X of the driver
wire			[9:0]		Y_pix;			//Location in Y of the driver

wire			[0:0]		H_visible;		//H_blank?
wire			[0:0]		V_visible;		//V_blank?

wire		[0:0]		pixel_clk;		//Pixel clock. Every clock a pixel is being drawn. 
wire			[9:0]		pixel_cnt;		//How many pixels have been output.

reg			[11:0]		pixel_color;	//12 Bits representing color of pixel, 4 bits for R, G, and B
										//4 bits for Blue are in most significant position, Red in least
				
//Draw player 1 paddle
wire [9:0] player_1_paddle_width=20;
wire [9:0] player_1_paddle_height=80;
wire [9:0] player_1_paddle_X_location=0;
wire [9:0] player_1_paddle_Y_location=SW[7:0];
reg player_1_paddle;				
make_box draw_player_1_paddle(
	.X_pix(X_pix),
	.Y_pix(Y_pix),
	.box_width(player_1_paddle_width),
	.box_height(player_1_paddle_height),
	.box_X_location(player_1_paddle_X_location),
	.box_Y_location(player_1_paddle_Y_location),
	.pixel_clk(pixel_clk),
	.box(player_1_paddle)
);	
always @(posedge pixel_clk)
	begin
		if(player_1_paddle) pixel_color <= 12'b0000_0000_1111;
		else pixel_color <= 12'b0000_0000_0000;
	end
	
		//Pass pins and current pixel values to display driver
		DE0_VGA VGA_Driver
		(
			.clk_50(CLOCK_50),
			.pixel_color(pixel_color),
			.VGA_BUS_R(VGA_R), 
			.VGA_BUS_G(VGA_G), 
			.VGA_BUS_B(VGA_B), 
			.VGA_HS(VGA_HS), 
			.VGA_VS(VGA_VS), 
			.X_pix(X_pix), 
			.Y_pix(Y_pix), 
			.H_visible(H_visible),
			.V_visible(V_visible), 
			.pixel_clk(pixel_clk),
			.pixel_cnt(pixel_cnt)
		);

endmodule

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
		if((X_pix>box_X_location)&&(X_pix<(box_X_location+box_width))&&(Y_pix>box_Y_location)&&(Y_pix<(box_Y_location+box_height))) box=1; 
		else box=0;
	end
endmodule
