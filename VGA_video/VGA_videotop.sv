`include "./DE0_VGA.v"
`include "./modules/make_box.v"

// NAMES: JOHNNY SYLVAIN, OZWIN CORDES, COLE ADAMS
// Screen Size 640x480
module VGA_videotop(
CLOCK_50, 
VGA_R, VGA_G, VGA_B, VGA_HS, VGA_VS, 
SW, ORG_BUTTON);

input	wire			CLOCK_50;
input [7:0]			SW;
input [2:1] ORG_BUTTON;

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
reg [8:0] player_1_paddle_Y_location=0;
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

//Draw player 2 paddle
wire [9:0] player_2_paddle_width=5;
wire [9:0] player_2_paddle_height=50;
wire [9:0] player_2_paddle_X_location=470;
wire [9:0] player_2_paddle_Y_location=0;
reg player_2_paddle;				
make_box draw_player_2_paddle(
	.X_pix(X_pix),
	.Y_pix(Y_pix),
	.box_width(player_2_paddle_width),
	.box_height(player_2_paddle_height),
	.box_X_location(player_2_paddle_X_location),
	.box_Y_location(player_2_paddle_Y_location),
	.pixel_clk(pixel_clk),
	.box(player_2_paddle)
);

//Draw ball
wire [9:0] ball_width=4;
wire [9:0] ball_height=4;
reg signed [9:0] ball_X_location=230;
reg signed [9:0] ball_Y_location=320;
reg b_direction = 1;
reg signed [4:0] b_velocity_X = -1;
reg signed [4:0] b_velocity_Y = 1;
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
reg [19:0] paddle_speed_counter = 0;
//reg pixel_cycle = ;
always @(posedge pixel_clk)
	begin
		
		ball_speed_counter <= ball_speed_counter + 1;
		paddle_speed_counter <= paddle_speed_counter + 1;
		
<<<<<<< Updated upstream
		if (paddle_speed_counter == 100_000) begin
			paddle_speed_counter <= 0;
			if (ORG_BUTTON[1]) begin
				player_1_paddle_Y_location = player_1_paddle_Y_location - 1;
			end
			
			if (ORG_BUTTON[2]) begin
				player_1_paddle_Y_location = player_1_paddle_Y_location + 1;
			end
		end
		
		if (ball_speed_counter == 200_000) begin
		
<<<<<<< Updated upstream
=======
		if (ball_speed_counter == 250_000) begin
>>>>>>> Stashed changes
			ball_speed_counter <= 0;
			
			if (ball_X_location-1 == player_1_paddle) begin
				ball_X_location = ball_X_location + 2;
				b_velocity_X = -b_velocity_X;
			end
			else if (ball_X_location+1 == player_2_paddle) begin
				ball_X_location = ball_X_location - 2;
				b_velocity_X = -b_velocity_X;
			end
			else if (ball_X_location+1 >= 635)begin
				ball_X_location = ball_X_location - 5;
				b_velocity_X = -b_velocity_X;
			end
			else if (ball_X_location-1 <= 5)begin
				ball_X_location = ball_X_location + 5;
				b_velocity_X = -b_velocity_X;
			end
			//Y
			else if(ball_Y_location-1 <= 5)begin
				ball_Y_location = ball_Y_location + 5 ;
				b_velocity_Y = -b_velocity_Y; 
			end
			else if(ball_Y_location+1 >= 470)begin
				ball_Y_location = ball_Y_location - 5;
				b_velocity_Y = -b_velocity_Y; 
			end
			else begin
				ball_X_location = ball_X_location + b_velocity_X;
				ball_Y_location = ball_Y_location + b_velocity_Y;
			end
		end
		
<<<<<<< Updated upstream
		
		
		
		if(player_1_paddle) pixel_color <= 12'b0000_1111_0000;
=======
		if(player_1_paddle) pixel_color <= 12'b0000_0000_1111;
		else if(player_2_paddle) pixel_color <= 12'b1111_0000_0000;
>>>>>>> Stashed changes
=======
		if (ball_speed_counter == 250_000) begin
			ball_speed_counter <= 0;
			
			if (ball_X_location-1 == player_1_paddle) begin
				ball_X_location = ball_X_location + 2;
				b_velocity_X = -b_velocity_X;
			end
			else if (ball_X_location+1 == player_2_paddle) begin
				ball_X_location = ball_X_location - 2;
				b_velocity_X = -b_velocity_X;
			end
			else if (ball_X_location+1 >= 635)begin
				ball_X_location = ball_X_location - 5;
				b_velocity_X = -b_velocity_X;
			end
			else if (ball_X_location-1 <= 5)begin
				ball_X_location = ball_X_location + 5;
				b_velocity_X = -b_velocity_X;
			end
			//Y
			else if(ball_Y_location-1 <= 5)begin
				ball_Y_location = ball_Y_location + 5 ;
				b_velocity_Y = -b_velocity_Y; 
			end
			else if(ball_Y_location+1 >= 470)begin
				ball_Y_location = ball_Y_location - 5;
				b_velocity_Y = -b_velocity_Y; 
			end
			else begin
				ball_X_location = ball_X_location + b_velocity_X;
				ball_Y_location = ball_Y_location + b_velocity_Y;
			end
		end
		
		if(player_1_paddle) pixel_color <= 12'b0000_0000_1111;
		else if(player_2_paddle) pixel_color <= 12'b1111_0000_0000;
>>>>>>> Stashed changes
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
