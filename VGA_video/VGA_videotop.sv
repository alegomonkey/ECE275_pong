`include "./DE0_VGA.v"
`include "./modules/make_box.v"

// NAMES: JOHNNY SYLVAIN, OZWIN CORDES, COLE ADAMS
// Screen Size 640x480
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
wire [9:0] player_1_paddle_width=5;
wire [9:0] player_1_paddle_height=50;
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

//Draw ball
wire [9:0] ball_width=4;
wire [9:0] ball_height=4;
reg [9:0] ball_X_location=0;
reg [9:0] ball_Y_location=0;
reg b_direction = 1;
reg ball;
make_box draw_ball(
	.X_pix(X_pix),
	.Y_pix(Y_pix),
	.box_width(ball_width),
	.box_height(ball_height),
	.box_X_location(ball_X_location),
	.box_Y_location(ball_Y_location),
	.pixel_clk(pixel_clk),
	.box(ball)
);

reg [19:0] ball_speed_counter = 0;  // Adjust bit-width as needed
//reg pixel_cycle = ;
always @(posedge pixel_clk)
	begin
		
		ball_speed_counter <= ball_speed_counter + 1;
		
		if (ball_speed_counter == 500_000) begin
			ball_speed_counter <= 0;
			if (b_direction == 1 && ball_X_location > 5)
				ball_X_location = ball_X_location - 1;
			
			else if (ball_X_location <= 5) begin
				b_direction = 2;
				ball_X_location = ball_X_location + 1;
				end
			
			else if (ball_X_location == 640) begin
				b_direction = 1;
				ball_X_location = ball_X_location - 1;
				end
			
			else
				ball_X_location = ball_X_location + 1;
		end
		
		if(player_1_paddle) pixel_color <= 12'b0000_1111_0000;
		else if(ball) pixel_color <= 12'b1111_1111_1111;
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
