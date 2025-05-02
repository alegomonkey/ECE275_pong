`include "./DE0_VGA.v"
`include "./modules/make_box.v"

// NAMES: JOHNNY SYLVAIN, OZWIN CORDES, COLE ADAMS
// Screen Size 640x480
module VGA_videotop(
CLOCK_50, 
VGA_R, VGA_G, VGA_B, VGA_HS, VGA_VS, ORG_BUTTON);

input	wire			CLOCK_50;
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
wire [9:0] player_1_paddle_X_location=5;
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
wire [9:0] player_2_paddle_X_location=630;
reg signed [10:0] player_2_paddle_Y_location=20;
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
reg signed [10:0] ball_X_location=600;
reg signed [10:0] ball_Y_location=20;
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

//Draw powerup box 1 - doubles X velocity of ball
wire [9:0] pBox1_width=3;
wire [9:0] pBox1_height=100;
wire [9:0] pBox1_X_location=320;
wire [9:0] pBox1_Y_location=60;
reg pBox1;
make_box draw_pBox1(
	.X_pix(X_pix),
	.Y_pix(Y_pix),
	.box_width(pBox1_width),
	.box_height(pBox1_height),
	.box_X_location(pBox1_X_location),
	.box_Y_location(pBox1_Y_location),
	.pixel_clk(pixel_clk),
	.box(pBox1)
);

//Draw powerup box 2 - doubles Y velocity of ball
wire [9:0] pBox2_width=3;
wire [9:0] pBox2_height=100;
wire  [9:0] pBox2_X_location=320;
wire  [9:0] pBox2_Y_location=330;
reg pBox2;
make_box draw_pBox2(
	.X_pix(X_pix),
	.Y_pix(Y_pix),
	.box_width(pBox2_width),
	.box_height(pBox2_height),
	.box_X_location(pBox2_X_location),
	.box_Y_location(pBox2_Y_location),
	.pixel_clk(pixel_clk),
	.box(pBox2)
);

//instantiate various counters to initiate behaviors after a certain amount of clock cycles
reg [19:0] ball_speed_counter = 0;  // Adjust bit-width as needed
reg [19:0] paddle_speed_counter = 0;
reg [19:0] AI_counter = 0;
reg [19:0] colorChangeCounter = 0;
reg [19:0] collisionCounter = 0;
reg score_player = 0;
reg score_AI = 0;
//colors for ball and powerup boxes
reg [11:0] ballColor = 12'b1111_1111_1111;
reg [11:0] pBoxColor = 12'b0000_0000_0001;

//main game loop
always @(posedge pixel_clk)
	begin
		
		//increment all counters every pixel clock cycle
		ball_speed_counter <= ball_speed_counter + 1;
		paddle_speed_counter <= paddle_speed_counter + 1;
		AI_counter <= AI_counter + 1;
		colorChangeCounter <= colorChangeCounter + 1;
		collisionCounter <= collisionCounter + 1;
		
		// rainbow colors for powerup boxes
		if (colorChangeCounter == 1_000_000) begin
			colorChangeCounter <= 0;
			pBoxColor = pBoxColor + 12'b000000000001;
		end;
		
		// player input
		if (paddle_speed_counter == 100_000) begin
			paddle_speed_counter <= 0;
			if (ORG_BUTTON[1]) begin
				player_1_paddle_Y_location = player_1_paddle_Y_location - 1;
			end
			
			if (ORG_BUTTON[2]) begin
				player_1_paddle_Y_location = player_1_paddle_Y_location + 1;
			end
		end
		
		//AI paddle movement
		if (AI_counter == 172_500) begin
			AI_counter <= 0;
			if(player_2_paddle_Y_location >= 0 && player_2_paddle_Y_location <= 430 && player_2_paddle_Y_location + b_velocity_Y <= 430 && player_2_paddle_Y_location + b_velocity_Y >= 0) begin
				player_2_paddle_Y_location = player_2_paddle_Y_location + b_velocity_Y;
				end
		end
		
		//ball movement
		if (ball_speed_counter == 150_000) begin
			ball_speed_counter <= 0;
		
			
			// X
			if (ball_X_location+1 >= 640)begin
				b_velocity_X = -1;
				b_velocity_Y = 1;
				pBoxColor = 12'b0000_0000_0001;
				score_AI = score_AI + 1;
				ball_X_location = 320;
				ball_Y_location = 240;
				player_2_paddle_Y_location = 240;
				
			end
			
			else if (ball_X_location-1 <= 0)begin
				b_velocity_X = 1;
				b_velocity_Y = 1;
				pBoxColor = 12'b0000_0000_0001;
				ballColor = 12'b1111_1111_1111;
				score_player = score_player + 1;
				ball_X_location = 320;
				ball_Y_location = 240;
				player_2_paddle_Y_location = 240;
				
			end
			
			// Y
			else if(ball_Y_location-1 <= 4)begin
				ball_Y_location = ball_Y_location + 5;
				b_velocity_Y = -b_velocity_Y; 
			end
			
			else if(ball_Y_location+1 >= 476)begin
				ball_Y_location = ball_Y_location - 5;
				b_velocity_Y = -b_velocity_Y; 
			end
			
			
			else begin
				ball_X_location = ball_X_location + b_velocity_X;
				ball_Y_location = ball_Y_location + b_velocity_Y;
			end
		end
		
		// Fast Logic for collisions
		if (collisionCounter == 10_000) begin
			collisionCounter <= 0;
			
			// Paddle Collisions
			if (ball_X_location-1 == player_1_paddle_X_location+player_1_paddle_width && (ball_Y_location >= player_1_paddle_Y_location && ball_Y_location < player_1_paddle_Y_location + player_1_paddle_height)) begin
				ball_X_location = ball_X_location + 2;
				b_velocity_X = -b_velocity_X;
				if (ball_Y_location <= player_1_paddle_Y_location + (player_1_paddle_height / 2))begin
					b_velocity_Y = -b_velocity_Y;
				end;
			end
			
			else if (ball_X_location+1 == player_2_paddle_X_location && (ball_Y_location >= player_2_paddle_Y_location && ball_Y_location < player_2_paddle_Y_location + player_2_paddle_height)) begin
				ball_X_location = ball_X_location - 2;
				b_velocity_X = -b_velocity_X;
				if (ball_Y_location <= player_2_paddle_Y_location + (player_2_paddle_height / 2))begin
					b_velocity_Y = -b_velocity_Y;
					end;
			end
			
			//Powerup Boxes Collisions
			else if (ball_X_location == pBox1_X_location && (ball_Y_location >= pBox1_Y_location && ball_Y_location < pBox1_Y_location + pBox1_height)) begin
				ballColor = 12'b0000_1111_0000;
				ball_X_location = ball_X_location + pBox1_width;
				b_velocity_X = b_velocity_X + b_velocity_X;
			end
			
			else if (ball_X_location == pBox2_X_location && (ball_Y_location >= pBox2_Y_location && ball_Y_location < pBox2_Y_location + pBox2_height)) begin
				ballColor = 12'b0000_1111_0000;
				ball_X_location = ball_X_location + pBox1_width;
				b_velocity_Y = b_velocity_Y + b_velocity_Y;
			end
			
			else if (ball_X_location == pBox1_X_location && (ball_Y_location >= pBox1_Y_location && ball_Y_location < pBox1_Y_location + pBox1_height)) begin
				ballColor = 12'b0000_1111_0000;
				ball_X_location = ball_X_location - pBox1_width;
				b_velocity_X = b_velocity_X + b_velocity_X;
			end
			
			else if (ball_X_location == pBox2_X_location && (ball_Y_location >= pBox2_Y_location && ball_Y_location < pBox2_Y_location + pBox2_height)) begin
				ballColor = 12'b0000_1111_0000;
				ball_X_location = ball_X_location - pBox1_width;
				b_velocity_Y= b_velocity_Y + b_velocity_Y;
			end
		end
		
		//draw colors to screen every cycle
		if(player_1_paddle) pixel_color <= 12'b0000_0000_1111;
		else if(player_2_paddle) pixel_color <= 12'b1111_0000_0000;
		else if(ball) pixel_color <= ballColor;
		else if(pBox1) pixel_color <= pBoxColor;
		else if(pBox2) pixel_color <= pBoxColor;
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
