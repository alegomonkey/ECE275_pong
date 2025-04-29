-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/29/2025 15:21:44"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	VGA_videotop IS
    PORT (
	CLOCK_50 : IN std_logic;
	VGA_R : OUT std_logic_vector(3 DOWNTO 0);
	VGA_G : OUT std_logic_vector(3 DOWNTO 0);
	VGA_B : OUT std_logic_vector(3 DOWNTO 0);
	VGA_HS : OUT std_logic_vector(0 DOWNTO 0);
	VGA_VS : OUT std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(7 DOWNTO 0);
	ORG_BUTTON : IN std_logic_vector(2 DOWNTO 1)
	);
END VGA_videotop;

-- Design Ports Information
-- VGA_R[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS[0]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ORG_BUTTON[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ORG_BUTTON[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VGA_videotop IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_VGA_VS : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ORG_BUTTON : std_logic_vector(2 DOWNTO 1);
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \VGA_Driver|Add3~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~11\ : std_logic;
SIGNAL \VGA_Driver|Add3~12_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~21\ : std_logic;
SIGNAL \VGA_Driver|Add4~22_combout\ : std_logic;
SIGNAL \VGA_Driver|WideNor0~combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~5_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~1\ : std_logic;
SIGNAL \VGA_Driver|Add4~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~4_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~3\ : std_logic;
SIGNAL \VGA_Driver|Add4~6_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~28_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~7\ : std_logic;
SIGNAL \VGA_Driver|Add4~8_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~25_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~9\ : std_logic;
SIGNAL \VGA_Driver|Add4~10_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector5~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~11\ : std_logic;
SIGNAL \VGA_Driver|Add4~12_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector4~0_combout\ : std_logic;
SIGNAL \VGA_Driver|WideNor0~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~24_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal1~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal1~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal1~3_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal2~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~13\ : std_logic;
SIGNAL \VGA_Driver|Add4~14_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector3~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~15\ : std_logic;
SIGNAL \VGA_Driver|Add4~17\ : std_logic;
SIGNAL \VGA_Driver|Add4~18_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~27_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~19\ : std_logic;
SIGNAL \VGA_Driver|Add4~20_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~26_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal1~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal3~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal3~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~16_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector2~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal4~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal4~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal4~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~13\ : std_logic;
SIGNAL \VGA_Driver|Add3~14_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~15\ : std_logic;
SIGNAL \VGA_Driver|Add3~16_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~17\ : std_logic;
SIGNAL \VGA_Driver|Add3~19\ : std_logic;
SIGNAL \VGA_Driver|Add3~20_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal5~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal6~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal5~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal7~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~18_combout\ : std_logic;
SIGNAL \VGA_Driver|VS_counter~4_combout\ : std_logic;
SIGNAL \VGA_Driver|VS_counter~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~1\ : std_logic;
SIGNAL \VGA_Driver|Add3~2_combout\ : std_logic;
SIGNAL \VGA_Driver|VS_counter~3_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~3\ : std_logic;
SIGNAL \VGA_Driver|Add3~4_combout\ : std_logic;
SIGNAL \VGA_Driver|VS_counter~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~5\ : std_logic;
SIGNAL \VGA_Driver|Add3~6_combout\ : std_logic;
SIGNAL \VGA_Driver|VS_counter~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~7\ : std_logic;
SIGNAL \VGA_Driver|Add3~8_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~9\ : std_logic;
SIGNAL \VGA_Driver|Add3~10_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal5~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal6~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal5~3_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal5~4_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector7~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector7~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector1~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector1~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Add0~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Add0~3_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|always0~0_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|always0~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Add0~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add0~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Add0~4_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|always0~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~1\ : std_logic;
SIGNAL \VGA_Driver|Add1~3\ : std_logic;
SIGNAL \VGA_Driver|Add1~5\ : std_logic;
SIGNAL \VGA_Driver|Add1~7\ : std_logic;
SIGNAL \VGA_Driver|Add1~9\ : std_logic;
SIGNAL \VGA_Driver|Add1~11\ : std_logic;
SIGNAL \VGA_Driver|Add1~13\ : std_logic;
SIGNAL \VGA_Driver|Add1~15\ : std_logic;
SIGNAL \VGA_Driver|Add1~17\ : std_logic;
SIGNAL \VGA_Driver|Add1~18_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~16_combout\ : std_logic;
SIGNAL \ORG_BUTTON[1]~input_o\ : std_logic;
SIGNAL \ORG_BUTTON[2]~input_o\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \player_1_paddle_Y_location[0]~9_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \paddle_speed_counter~6_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \paddle_speed_counter~0_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \paddle_speed_counter~1_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \paddle_speed_counter~2_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \paddle_speed_counter~3_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \paddle_speed_counter~4_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \paddle_speed_counter~5_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \player_1_paddle_Y_location[0]~10\ : std_logic;
SIGNAL \player_1_paddle_Y_location[1]~11_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \player_1_paddle_Y_location[1]~12\ : std_logic;
SIGNAL \player_1_paddle_Y_location[2]~13_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \player_1_paddle_Y_location[2]~14\ : std_logic;
SIGNAL \player_1_paddle_Y_location[3]~15_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \player_1_paddle_Y_location[3]~16\ : std_logic;
SIGNAL \player_1_paddle_Y_location[4]~17_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \player_1_paddle_Y_location[4]~18\ : std_logic;
SIGNAL \player_1_paddle_Y_location[5]~19_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \player_1_paddle_Y_location[5]~20\ : std_logic;
SIGNAL \player_1_paddle_Y_location[6]~21_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \player_1_paddle_Y_location[6]~22\ : std_logic;
SIGNAL \player_1_paddle_Y_location[7]~23_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \player_1_paddle_Y_location[7]~24\ : std_logic;
SIGNAL \player_1_paddle_Y_location[8]~25_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~14_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~12_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~10_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~8_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~6_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~4_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~0_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~1_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~3_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~5_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~7_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~9_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~11_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~13_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~15_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~16_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~1\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~3\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~5\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~7\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~9\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~11\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~13\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~14_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~12_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~10_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~8_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~6_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~4_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~2_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~0_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan3~1_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan3~3_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan3~5_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan3~7_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan3~9_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan3~11_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan3~13_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan3~15_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan3~17_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan3~18_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|always0~3_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|box~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \ball_speed_counter~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \ball_speed_counter~3_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \ball_speed_counter~4_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \ball_speed_counter~5_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \ball_speed_counter~6_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \ball_speed_counter~0_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \ball_speed_counter~1_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \b_direction~0_combout\ : std_logic;
SIGNAL \b_direction~q\ : std_logic;
SIGNAL \ball_X_location[0]~15_combout\ : std_logic;
SIGNAL \ball_X_location[0]~16\ : std_logic;
SIGNAL \ball_X_location[1]~17_combout\ : std_logic;
SIGNAL \ball_X_location[1]~18\ : std_logic;
SIGNAL \ball_X_location[2]~19_combout\ : std_logic;
SIGNAL \ball_X_location[1]~12_combout\ : std_logic;
SIGNAL \ball_X_location[2]~20\ : std_logic;
SIGNAL \ball_X_location[3]~21_combout\ : std_logic;
SIGNAL \ball_X_location[3]~22\ : std_logic;
SIGNAL \ball_X_location[4]~23_combout\ : std_logic;
SIGNAL \ball_X_location[4]~24\ : std_logic;
SIGNAL \ball_X_location[5]~25_combout\ : std_logic;
SIGNAL \ball_X_location[5]~26\ : std_logic;
SIGNAL \ball_X_location[6]~27_combout\ : std_logic;
SIGNAL \ball_X_location[1]~10_combout\ : std_logic;
SIGNAL \ball_X_location[6]~28\ : std_logic;
SIGNAL \ball_X_location[7]~29_combout\ : std_logic;
SIGNAL \ball_X_location[7]~30\ : std_logic;
SIGNAL \ball_X_location[8]~31_combout\ : std_logic;
SIGNAL \ball_X_location[1]~11_combout\ : std_logic;
SIGNAL \ball_X_location[1]~13_combout\ : std_logic;
SIGNAL \ball_X_location[1]~14_combout\ : std_logic;
SIGNAL \ball_X_location[8]~32\ : std_logic;
SIGNAL \ball_X_location[9]~33_combout\ : std_logic;
SIGNAL \draw_ball|LessThan0~1_cout\ : std_logic;
SIGNAL \draw_ball|LessThan0~3_cout\ : std_logic;
SIGNAL \draw_ball|LessThan0~5_cout\ : std_logic;
SIGNAL \draw_ball|LessThan0~7_cout\ : std_logic;
SIGNAL \draw_ball|LessThan0~9_cout\ : std_logic;
SIGNAL \draw_ball|LessThan0~11_cout\ : std_logic;
SIGNAL \draw_ball|LessThan0~13_cout\ : std_logic;
SIGNAL \draw_ball|LessThan0~15_cout\ : std_logic;
SIGNAL \draw_ball|LessThan0~17_cout\ : std_logic;
SIGNAL \draw_ball|LessThan0~18_combout\ : std_logic;
SIGNAL \draw_ball|Add0~1\ : std_logic;
SIGNAL \draw_ball|Add0~3\ : std_logic;
SIGNAL \draw_ball|Add0~5\ : std_logic;
SIGNAL \draw_ball|Add0~7\ : std_logic;
SIGNAL \draw_ball|Add0~9\ : std_logic;
SIGNAL \draw_ball|Add0~11\ : std_logic;
SIGNAL \draw_ball|Add0~12_combout\ : std_logic;
SIGNAL \draw_ball|Add0~10_combout\ : std_logic;
SIGNAL \draw_ball|Add0~8_combout\ : std_logic;
SIGNAL \draw_ball|Add0~6_combout\ : std_logic;
SIGNAL \draw_ball|Add0~4_combout\ : std_logic;
SIGNAL \draw_ball|Add0~2_combout\ : std_logic;
SIGNAL \draw_ball|Add0~0_combout\ : std_logic;
SIGNAL \draw_ball|LessThan1~1_cout\ : std_logic;
SIGNAL \draw_ball|LessThan1~3_cout\ : std_logic;
SIGNAL \draw_ball|LessThan1~5_cout\ : std_logic;
SIGNAL \draw_ball|LessThan1~7_cout\ : std_logic;
SIGNAL \draw_ball|LessThan1~9_cout\ : std_logic;
SIGNAL \draw_ball|LessThan1~11_cout\ : std_logic;
SIGNAL \draw_ball|LessThan1~13_cout\ : std_logic;
SIGNAL \draw_ball|LessThan1~15_cout\ : std_logic;
SIGNAL \draw_ball|LessThan1~17_cout\ : std_logic;
SIGNAL \draw_ball|LessThan1~18_combout\ : std_logic;
SIGNAL \draw_ball|always0~0_combout\ : std_logic;
SIGNAL \draw_ball|always0~1_combout\ : std_logic;
SIGNAL \draw_ball|always0~2_combout\ : std_logic;
SIGNAL \draw_ball|box~q\ : std_logic;
SIGNAL \pixel_color~0_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_R~0_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_R[0]~feeder_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_R[1]~feeder_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_R[2]~feeder_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_R[3]~feeder_combout\ : std_logic;
SIGNAL \pixel_color~1_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_G~0_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_B[0]~feeder_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_B[1]~feeder_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_B[2]~feeder_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector0~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector0~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector6~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector6~1_combout\ : std_logic;
SIGNAL \VGA_Driver|H_visible\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA_Driver|VGA_HS\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA_Driver|VGA_BUS_R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL player_1_paddle_Y_location : std_logic_vector(8 DOWNTO 0);
SIGNAL \VGA_Driver|V_visible\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA_Driver|VGA_VS\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \VGA_Driver|HS_counter\ : std_logic_vector(10 DOWNTO 0);
SIGNAL ball_speed_counter : std_logic_vector(19 DOWNTO 0);
SIGNAL \VGA_Driver|VS_counter\ : std_logic_vector(10 DOWNTO 0);
SIGNAL ball_X_location : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_Driver|VGA_BUS_B\ : std_logic_vector(3 DOWNTO 0);
SIGNAL pixel_color : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA_Driver|VGA_BUS_G\ : std_logic_vector(3 DOWNTO 0);
SIGNAL paddle_speed_counter : std_logic_vector(19 DOWNTO 0);
SIGNAL \VGA_Driver|ALT_INV_VGA_VS\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA_Driver|ALT_INV_VGA_HS\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
ww_SW <= SW;
ww_ORG_BUTTON <= ORG_BUTTON;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk\(0) <= \VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1_CLK_bus\(0);
\VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk\(1) <= \VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1_CLK_bus\(1);
\VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk\(2) <= \VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1_CLK_bus\(2);
\VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk\(3) <= \VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1_CLK_bus\(3);
\VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk\(4) <= \VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1_CLK_bus\(4);

\VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk\(0));
\VGA_Driver|ALT_INV_VGA_VS\(0) <= NOT \VGA_Driver|VGA_VS\(0);
\VGA_Driver|ALT_INV_VGA_HS\(0) <= NOT \VGA_Driver|VGA_HS\(0);

-- Location: IOOBUF_X41_Y23_N23
\VGA_R[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|VGA_BUS_R\(0),
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X41_Y25_N2
\VGA_R[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|VGA_BUS_R\(1),
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X41_Y22_N2
\VGA_R[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|VGA_BUS_R\(2),
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X41_Y21_N23
\VGA_R[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|VGA_BUS_R\(3),
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X41_Y20_N2
\VGA_G[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|VGA_BUS_G\(0),
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X41_Y24_N23
\VGA_G[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|VGA_BUS_G\(1),
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X41_Y21_N16
\VGA_G[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|VGA_BUS_G\(2),
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X41_Y20_N23
\VGA_G[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|VGA_BUS_G\(3),
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X41_Y19_N16
\VGA_B[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|VGA_BUS_B\(0),
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X41_Y19_N9
\VGA_B[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|VGA_BUS_B\(1),
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X41_Y19_N2
\VGA_B[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|VGA_BUS_B\(2),
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X41_Y21_N9
\VGA_B[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|VGA_BUS_B\(3),
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X41_Y18_N16
\VGA_HS[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|ALT_INV_VGA_HS\(0),
	devoe => ww_devoe,
	o => ww_VGA_HS(0));

-- Location: IOOBUF_X41_Y18_N23
\VGA_VS[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|ALT_INV_VGA_VS\(0),
	devoe => ww_devoe,
	o => ww_VGA_VS(0));

-- Location: IOIBUF_X41_Y15_N1
\CLOCK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: PLL_2
\VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 11,
	c0_initial => 1,
	c0_low => 10,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 147,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 74,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 16,
	m => 74,
	m_initial => 1,
	m_ph => 0,
	n => 7,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 3403,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 236,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X36_Y20_N6
\VGA_Driver|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add3~0_combout\ = \VGA_Driver|VS_counter\(0) $ (VCC)
-- \VGA_Driver|Add3~1\ = CARRY(\VGA_Driver|VS_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(0),
	datad => VCC,
	combout => \VGA_Driver|Add3~0_combout\,
	cout => \VGA_Driver|Add3~1\);

-- Location: LCCOMB_X36_Y20_N16
\VGA_Driver|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add3~10_combout\ = (\VGA_Driver|VS_counter\(5) & (!\VGA_Driver|Add3~9\)) # (!\VGA_Driver|VS_counter\(5) & ((\VGA_Driver|Add3~9\) # (GND)))
-- \VGA_Driver|Add3~11\ = CARRY((!\VGA_Driver|Add3~9\) # (!\VGA_Driver|VS_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(5),
	datad => VCC,
	cin => \VGA_Driver|Add3~9\,
	combout => \VGA_Driver|Add3~10_combout\,
	cout => \VGA_Driver|Add3~11\);

-- Location: LCCOMB_X36_Y20_N18
\VGA_Driver|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add3~12_combout\ = (\VGA_Driver|VS_counter\(6) & (\VGA_Driver|Add3~11\ $ (GND))) # (!\VGA_Driver|VS_counter\(6) & (!\VGA_Driver|Add3~11\ & VCC))
-- \VGA_Driver|Add3~13\ = CARRY((\VGA_Driver|VS_counter\(6) & !\VGA_Driver|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(6),
	datad => VCC,
	cin => \VGA_Driver|Add3~11\,
	combout => \VGA_Driver|Add3~12_combout\,
	cout => \VGA_Driver|Add3~13\);

-- Location: LCCOMB_X28_Y23_N26
\VGA_Driver|Add4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~20_combout\ = (\VGA_Driver|HS_counter\(9) & (!\VGA_Driver|Add4~19\)) # (!\VGA_Driver|HS_counter\(9) & ((\VGA_Driver|Add4~19\) # (GND)))
-- \VGA_Driver|Add4~21\ = CARRY((!\VGA_Driver|Add4~19\) # (!\VGA_Driver|HS_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(9),
	datad => VCC,
	cin => \VGA_Driver|Add4~19\,
	combout => \VGA_Driver|Add4~20_combout\,
	cout => \VGA_Driver|Add4~21\);

-- Location: LCCOMB_X28_Y23_N28
\VGA_Driver|Add4~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~22_combout\ = \VGA_Driver|Add4~21\ $ (!\VGA_Driver|HS_counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Driver|HS_counter\(10),
	cin => \VGA_Driver|Add4~21\,
	combout => \VGA_Driver|Add4~22_combout\);

-- Location: LCCOMB_X30_Y24_N12
\VGA_Driver|WideNor0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|WideNor0~combout\ = ((\VGA_Driver|Equal4~2_combout\) # (\VGA_Driver|Equal3~1_combout\)) # (!\VGA_Driver|WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|WideNor0~0_combout\,
	datab => \VGA_Driver|Equal4~2_combout\,
	datac => \VGA_Driver|Equal3~1_combout\,
	combout => \VGA_Driver|WideNor0~combout\);

-- Location: LCCOMB_X28_Y23_N8
\VGA_Driver|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~0_combout\ = \VGA_Driver|HS_counter\(0) $ (VCC)
-- \VGA_Driver|Add4~1\ = CARRY(\VGA_Driver|HS_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(0),
	datad => VCC,
	combout => \VGA_Driver|Add4~0_combout\,
	cout => \VGA_Driver|Add4~1\);

-- Location: LCCOMB_X29_Y24_N26
\VGA_Driver|Add4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~5_combout\ = (\VGA_Driver|Equal4~2_combout\) # ((\VGA_Driver|Equal3~1_combout\) # ((\VGA_Driver|Add4~0_combout\) # (!\VGA_Driver|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal4~2_combout\,
	datab => \VGA_Driver|Equal3~1_combout\,
	datac => \VGA_Driver|Add4~0_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Add4~5_combout\);

-- Location: FF_X29_Y24_N27
\VGA_Driver|HS_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(0));

-- Location: LCCOMB_X28_Y23_N10
\VGA_Driver|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~2_combout\ = (\VGA_Driver|HS_counter\(1) & (!\VGA_Driver|Add4~1\)) # (!\VGA_Driver|HS_counter\(1) & ((\VGA_Driver|Add4~1\) # (GND)))
-- \VGA_Driver|Add4~3\ = CARRY((!\VGA_Driver|Add4~1\) # (!\VGA_Driver|HS_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(1),
	datad => VCC,
	cin => \VGA_Driver|Add4~1\,
	combout => \VGA_Driver|Add4~2_combout\,
	cout => \VGA_Driver|Add4~3\);

-- Location: LCCOMB_X29_Y24_N0
\VGA_Driver|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~4_combout\ = (!\VGA_Driver|Equal4~2_combout\ & (!\VGA_Driver|Equal3~1_combout\ & (\VGA_Driver|Add4~2_combout\ & \VGA_Driver|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal4~2_combout\,
	datab => \VGA_Driver|Equal3~1_combout\,
	datac => \VGA_Driver|Add4~2_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Add4~4_combout\);

-- Location: FF_X29_Y24_N1
\VGA_Driver|HS_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(1));

-- Location: LCCOMB_X28_Y23_N12
\VGA_Driver|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~6_combout\ = (\VGA_Driver|HS_counter\(2) & (\VGA_Driver|Add4~3\ $ (GND))) # (!\VGA_Driver|HS_counter\(2) & (!\VGA_Driver|Add4~3\ & VCC))
-- \VGA_Driver|Add4~7\ = CARRY((\VGA_Driver|HS_counter\(2) & !\VGA_Driver|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(2),
	datad => VCC,
	cin => \VGA_Driver|Add4~3\,
	combout => \VGA_Driver|Add4~6_combout\,
	cout => \VGA_Driver|Add4~7\);

-- Location: LCCOMB_X28_Y23_N6
\VGA_Driver|Add4~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~28_combout\ = (!\VGA_Driver|Equal3~1_combout\ & (\VGA_Driver|Add4~6_combout\ & (!\VGA_Driver|Equal4~2_combout\ & \VGA_Driver|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|Add4~6_combout\,
	datac => \VGA_Driver|Equal4~2_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Add4~28_combout\);

-- Location: FF_X28_Y23_N7
\VGA_Driver|HS_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add4~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(2));

-- Location: LCCOMB_X28_Y23_N14
\VGA_Driver|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~8_combout\ = (\VGA_Driver|HS_counter\(3) & (!\VGA_Driver|Add4~7\)) # (!\VGA_Driver|HS_counter\(3) & ((\VGA_Driver|Add4~7\) # (GND)))
-- \VGA_Driver|Add4~9\ = CARRY((!\VGA_Driver|Add4~7\) # (!\VGA_Driver|HS_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(3),
	datad => VCC,
	cin => \VGA_Driver|Add4~7\,
	combout => \VGA_Driver|Add4~8_combout\,
	cout => \VGA_Driver|Add4~9\);

-- Location: LCCOMB_X28_Y23_N2
\VGA_Driver|Add4~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~25_combout\ = (!\VGA_Driver|Equal4~2_combout\ & (\VGA_Driver|Add4~8_combout\ & (!\VGA_Driver|Equal3~1_combout\ & \VGA_Driver|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal4~2_combout\,
	datab => \VGA_Driver|Add4~8_combout\,
	datac => \VGA_Driver|Equal3~1_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Add4~25_combout\);

-- Location: FF_X28_Y23_N3
\VGA_Driver|HS_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add4~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(3));

-- Location: LCCOMB_X28_Y23_N16
\VGA_Driver|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~10_combout\ = (\VGA_Driver|HS_counter\(4) & (\VGA_Driver|Add4~9\ $ (GND))) # (!\VGA_Driver|HS_counter\(4) & (!\VGA_Driver|Add4~9\ & VCC))
-- \VGA_Driver|Add4~11\ = CARRY((\VGA_Driver|HS_counter\(4) & !\VGA_Driver|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(4),
	datad => VCC,
	cin => \VGA_Driver|Add4~9\,
	combout => \VGA_Driver|Add4~10_combout\,
	cout => \VGA_Driver|Add4~11\);

-- Location: LCCOMB_X28_Y23_N30
\VGA_Driver|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector5~0_combout\ = ((!\VGA_Driver|Equal4~2_combout\ & (\VGA_Driver|Add4~10_combout\ & !\VGA_Driver|Equal3~1_combout\))) # (!\VGA_Driver|WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal4~2_combout\,
	datab => \VGA_Driver|Add4~10_combout\,
	datac => \VGA_Driver|Equal3~1_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Selector5~0_combout\);

-- Location: FF_X28_Y23_N31
\VGA_Driver|HS_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(4));

-- Location: LCCOMB_X28_Y23_N18
\VGA_Driver|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~12_combout\ = (\VGA_Driver|HS_counter\(5) & (!\VGA_Driver|Add4~11\)) # (!\VGA_Driver|HS_counter\(5) & ((\VGA_Driver|Add4~11\) # (GND)))
-- \VGA_Driver|Add4~13\ = CARRY((!\VGA_Driver|Add4~11\) # (!\VGA_Driver|HS_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(5),
	datad => VCC,
	cin => \VGA_Driver|Add4~11\,
	combout => \VGA_Driver|Add4~12_combout\,
	cout => \VGA_Driver|Add4~13\);

-- Location: LCCOMB_X30_Y24_N28
\VGA_Driver|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector4~0_combout\ = (\VGA_Driver|Equal3~1_combout\) # ((\VGA_Driver|Equal2~0_combout\) # ((!\VGA_Driver|WideNor0~combout\ & \VGA_Driver|Add4~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|WideNor0~combout\,
	datab => \VGA_Driver|Add4~12_combout\,
	datac => \VGA_Driver|Equal3~1_combout\,
	datad => \VGA_Driver|Equal2~0_combout\,
	combout => \VGA_Driver|Selector4~0_combout\);

-- Location: FF_X30_Y24_N29
\VGA_Driver|HS_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(5));

-- Location: LCCOMB_X30_Y24_N26
\VGA_Driver|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|WideNor0~0_combout\ = (\VGA_Driver|HS_counter\(5) $ (\VGA_Driver|HS_counter\(6))) # (!\VGA_Driver|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|Equal1~3_combout\,
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|WideNor0~0_combout\);

-- Location: LCCOMB_X28_Y23_N0
\VGA_Driver|Add4~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~24_combout\ = (!\VGA_Driver|Equal4~2_combout\ & (\VGA_Driver|Add4~22_combout\ & (!\VGA_Driver|Equal3~1_combout\ & \VGA_Driver|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal4~2_combout\,
	datab => \VGA_Driver|Add4~22_combout\,
	datac => \VGA_Driver|Equal3~1_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Add4~24_combout\);

-- Location: FF_X28_Y23_N1
\VGA_Driver|HS_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add4~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(10));

-- Location: LCCOMB_X29_Y24_N4
\VGA_Driver|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal1~0_combout\ = (!\VGA_Driver|HS_counter\(10) & (!\VGA_Driver|HS_counter\(1) & (!\VGA_Driver|HS_counter\(0) & !\VGA_Driver|HS_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(10),
	datab => \VGA_Driver|HS_counter\(1),
	datac => \VGA_Driver|HS_counter\(0),
	datad => \VGA_Driver|HS_counter\(3),
	combout => \VGA_Driver|Equal1~0_combout\);

-- Location: LCCOMB_X30_Y24_N22
\VGA_Driver|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal1~2_combout\ = (!\VGA_Driver|HS_counter\(7) & \VGA_Driver|HS_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(7),
	datac => \VGA_Driver|HS_counter\(4),
	combout => \VGA_Driver|Equal1~2_combout\);

-- Location: LCCOMB_X30_Y24_N16
\VGA_Driver|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal1~3_combout\ = (\VGA_Driver|Equal1~1_combout\ & (\VGA_Driver|Equal1~0_combout\ & (\VGA_Driver|Equal1~2_combout\ & !\VGA_Driver|HS_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal1~1_combout\,
	datab => \VGA_Driver|Equal1~0_combout\,
	datac => \VGA_Driver|Equal1~2_combout\,
	datad => \VGA_Driver|HS_counter\(2),
	combout => \VGA_Driver|Equal1~3_combout\);

-- Location: LCCOMB_X30_Y24_N6
\VGA_Driver|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal2~0_combout\ = (\VGA_Driver|Equal1~3_combout\ & (\VGA_Driver|HS_counter\(5) & \VGA_Driver|HS_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|Equal1~3_combout\,
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|Equal2~0_combout\);

-- Location: LCCOMB_X28_Y23_N20
\VGA_Driver|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~14_combout\ = (\VGA_Driver|HS_counter\(6) & (\VGA_Driver|Add4~13\ $ (GND))) # (!\VGA_Driver|HS_counter\(6) & (!\VGA_Driver|Add4~13\ & VCC))
-- \VGA_Driver|Add4~15\ = CARRY((\VGA_Driver|HS_counter\(6) & !\VGA_Driver|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(6),
	datad => VCC,
	cin => \VGA_Driver|Add4~13\,
	combout => \VGA_Driver|Add4~14_combout\,
	cout => \VGA_Driver|Add4~15\);

-- Location: LCCOMB_X30_Y24_N10
\VGA_Driver|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector3~0_combout\ = (\VGA_Driver|Equal2~0_combout\) # ((\VGA_Driver|Add4~14_combout\ & !\VGA_Driver|WideNor0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal2~0_combout\,
	datab => \VGA_Driver|Add4~14_combout\,
	datad => \VGA_Driver|WideNor0~combout\,
	combout => \VGA_Driver|Selector3~0_combout\);

-- Location: FF_X30_Y24_N11
\VGA_Driver|HS_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(6));

-- Location: LCCOMB_X28_Y23_N22
\VGA_Driver|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~16_combout\ = (\VGA_Driver|HS_counter\(7) & (!\VGA_Driver|Add4~15\)) # (!\VGA_Driver|HS_counter\(7) & ((\VGA_Driver|Add4~15\) # (GND)))
-- \VGA_Driver|Add4~17\ = CARRY((!\VGA_Driver|Add4~15\) # (!\VGA_Driver|HS_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(7),
	datad => VCC,
	cin => \VGA_Driver|Add4~15\,
	combout => \VGA_Driver|Add4~16_combout\,
	cout => \VGA_Driver|Add4~17\);

-- Location: LCCOMB_X28_Y23_N24
\VGA_Driver|Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~18_combout\ = (\VGA_Driver|HS_counter\(8) & (\VGA_Driver|Add4~17\ $ (GND))) # (!\VGA_Driver|HS_counter\(8) & (!\VGA_Driver|Add4~17\ & VCC))
-- \VGA_Driver|Add4~19\ = CARRY((\VGA_Driver|HS_counter\(8) & !\VGA_Driver|Add4~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(8),
	datad => VCC,
	cin => \VGA_Driver|Add4~17\,
	combout => \VGA_Driver|Add4~18_combout\,
	cout => \VGA_Driver|Add4~19\);

-- Location: LCCOMB_X30_Y26_N28
\VGA_Driver|Add4~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~27_combout\ = (!\VGA_Driver|Equal3~1_combout\ & (\VGA_Driver|Add4~18_combout\ & (\VGA_Driver|WideNor0~0_combout\ & !\VGA_Driver|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|Add4~18_combout\,
	datac => \VGA_Driver|WideNor0~0_combout\,
	datad => \VGA_Driver|Equal4~2_combout\,
	combout => \VGA_Driver|Add4~27_combout\);

-- Location: FF_X30_Y26_N29
\VGA_Driver|HS_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add4~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(8));

-- Location: LCCOMB_X28_Y23_N4
\VGA_Driver|Add4~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~26_combout\ = (!\VGA_Driver|Equal3~1_combout\ & (\VGA_Driver|Add4~20_combout\ & (!\VGA_Driver|Equal4~2_combout\ & \VGA_Driver|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|Add4~20_combout\,
	datac => \VGA_Driver|Equal4~2_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Add4~26_combout\);

-- Location: FF_X28_Y23_N5
\VGA_Driver|HS_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add4~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(9));

-- Location: LCCOMB_X28_Y25_N16
\VGA_Driver|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal1~1_combout\ = (!\VGA_Driver|HS_counter\(9) & !\VGA_Driver|HS_counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Driver|HS_counter\(9),
	datad => \VGA_Driver|HS_counter\(8),
	combout => \VGA_Driver|Equal1~1_combout\);

-- Location: LCCOMB_X30_Y24_N20
\VGA_Driver|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal3~0_combout\ = (\VGA_Driver|HS_counter\(5) & (\VGA_Driver|HS_counter\(7) & (!\VGA_Driver|HS_counter\(4) & !\VGA_Driver|HS_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(5),
	datab => \VGA_Driver|HS_counter\(7),
	datac => \VGA_Driver|HS_counter\(4),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|Equal3~0_combout\);

-- Location: LCCOMB_X30_Y24_N30
\VGA_Driver|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal3~1_combout\ = (\VGA_Driver|Equal1~1_combout\ & (!\VGA_Driver|HS_counter\(2) & (\VGA_Driver|Equal1~0_combout\ & \VGA_Driver|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal1~1_combout\,
	datab => \VGA_Driver|HS_counter\(2),
	datac => \VGA_Driver|Equal1~0_combout\,
	datad => \VGA_Driver|Equal3~0_combout\,
	combout => \VGA_Driver|Equal3~1_combout\);

-- Location: LCCOMB_X30_Y24_N4
\VGA_Driver|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector2~0_combout\ = (\VGA_Driver|Equal3~1_combout\) # ((!\VGA_Driver|Equal4~2_combout\ & (\VGA_Driver|WideNor0~0_combout\ & \VGA_Driver|Add4~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|Equal4~2_combout\,
	datac => \VGA_Driver|WideNor0~0_combout\,
	datad => \VGA_Driver|Add4~16_combout\,
	combout => \VGA_Driver|Selector2~0_combout\);

-- Location: FF_X30_Y24_N5
\VGA_Driver|HS_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(7));

-- Location: LCCOMB_X28_Y25_N26
\VGA_Driver|Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal4~1_combout\ = (!\VGA_Driver|HS_counter\(7) & \VGA_Driver|HS_counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(7),
	datad => \VGA_Driver|HS_counter\(8),
	combout => \VGA_Driver|Equal4~1_combout\);

-- Location: LCCOMB_X30_Y24_N8
\VGA_Driver|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal4~0_combout\ = (\VGA_Driver|HS_counter\(5) & (\VGA_Driver|HS_counter\(9) & (!\VGA_Driver|HS_counter\(4) & !\VGA_Driver|HS_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(5),
	datab => \VGA_Driver|HS_counter\(9),
	datac => \VGA_Driver|HS_counter\(4),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|Equal4~0_combout\);

-- Location: LCCOMB_X30_Y24_N2
\VGA_Driver|Equal4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal4~2_combout\ = (\VGA_Driver|Equal4~1_combout\ & (\VGA_Driver|Equal4~0_combout\ & (\VGA_Driver|Equal1~0_combout\ & !\VGA_Driver|HS_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal4~1_combout\,
	datab => \VGA_Driver|Equal4~0_combout\,
	datac => \VGA_Driver|Equal1~0_combout\,
	datad => \VGA_Driver|HS_counter\(2),
	combout => \VGA_Driver|Equal4~2_combout\);

-- Location: FF_X36_Y20_N19
\VGA_Driver|VS_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add3~12_combout\,
	ena => \VGA_Driver|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(6));

-- Location: LCCOMB_X36_Y20_N20
\VGA_Driver|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add3~14_combout\ = (\VGA_Driver|VS_counter\(7) & (!\VGA_Driver|Add3~13\)) # (!\VGA_Driver|VS_counter\(7) & ((\VGA_Driver|Add3~13\) # (GND)))
-- \VGA_Driver|Add3~15\ = CARRY((!\VGA_Driver|Add3~13\) # (!\VGA_Driver|VS_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(7),
	datad => VCC,
	cin => \VGA_Driver|Add3~13\,
	combout => \VGA_Driver|Add3~14_combout\,
	cout => \VGA_Driver|Add3~15\);

-- Location: FF_X36_Y20_N21
\VGA_Driver|VS_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add3~14_combout\,
	ena => \VGA_Driver|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(7));

-- Location: LCCOMB_X36_Y20_N22
\VGA_Driver|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add3~16_combout\ = (\VGA_Driver|VS_counter\(8) & (\VGA_Driver|Add3~15\ $ (GND))) # (!\VGA_Driver|VS_counter\(8) & (!\VGA_Driver|Add3~15\ & VCC))
-- \VGA_Driver|Add3~17\ = CARRY((\VGA_Driver|VS_counter\(8) & !\VGA_Driver|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(8),
	datad => VCC,
	cin => \VGA_Driver|Add3~15\,
	combout => \VGA_Driver|Add3~16_combout\,
	cout => \VGA_Driver|Add3~17\);

-- Location: FF_X36_Y20_N23
\VGA_Driver|VS_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add3~16_combout\,
	ena => \VGA_Driver|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(8));

-- Location: LCCOMB_X36_Y20_N24
\VGA_Driver|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add3~18_combout\ = (\VGA_Driver|VS_counter\(9) & (!\VGA_Driver|Add3~17\)) # (!\VGA_Driver|VS_counter\(9) & ((\VGA_Driver|Add3~17\) # (GND)))
-- \VGA_Driver|Add3~19\ = CARRY((!\VGA_Driver|Add3~17\) # (!\VGA_Driver|VS_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(9),
	datad => VCC,
	cin => \VGA_Driver|Add3~17\,
	combout => \VGA_Driver|Add3~18_combout\,
	cout => \VGA_Driver|Add3~19\);

-- Location: LCCOMB_X36_Y20_N26
\VGA_Driver|Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add3~20_combout\ = \VGA_Driver|VS_counter\(10) $ (!\VGA_Driver|Add3~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(10),
	cin => \VGA_Driver|Add3~19\,
	combout => \VGA_Driver|Add3~20_combout\);

-- Location: FF_X36_Y20_N27
\VGA_Driver|VS_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add3~20_combout\,
	ena => \VGA_Driver|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(10));

-- Location: LCCOMB_X36_Y20_N2
\VGA_Driver|Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal5~0_combout\ = (!\VGA_Driver|VS_counter\(10) & (!\VGA_Driver|VS_counter\(7) & (!\VGA_Driver|VS_counter\(8) & !\VGA_Driver|VS_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(10),
	datab => \VGA_Driver|VS_counter\(7),
	datac => \VGA_Driver|VS_counter\(8),
	datad => \VGA_Driver|VS_counter\(6),
	combout => \VGA_Driver|Equal5~0_combout\);

-- Location: LCCOMB_X37_Y18_N16
\VGA_Driver|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal6~0_combout\ = (\VGA_Driver|VS_counter\(2) & !\VGA_Driver|VS_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(2),
	datac => \VGA_Driver|VS_counter\(1),
	combout => \VGA_Driver|Equal6~0_combout\);

-- Location: LCCOMB_X37_Y18_N20
\VGA_Driver|Equal5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal5~1_combout\ = (!\VGA_Driver|VS_counter\(4) & \VGA_Driver|VS_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(4),
	datac => \VGA_Driver|VS_counter\(3),
	combout => \VGA_Driver|Equal5~1_combout\);

-- Location: LCCOMB_X37_Y18_N18
\VGA_Driver|Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal7~0_combout\ = (\VGA_Driver|Equal5~0_combout\ & (\VGA_Driver|Equal6~0_combout\ & (\VGA_Driver|VS_counter\(0) & \VGA_Driver|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal5~0_combout\,
	datab => \VGA_Driver|Equal6~0_combout\,
	datac => \VGA_Driver|VS_counter\(0),
	datad => \VGA_Driver|Equal5~1_combout\,
	combout => \VGA_Driver|Equal7~0_combout\);

-- Location: LCCOMB_X36_Y20_N30
\VGA_Driver|VS_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VS_counter~4_combout\ = (\VGA_Driver|Add3~18_combout\ & (((\VGA_Driver|VS_counter\(5)) # (!\VGA_Driver|VS_counter\(9))) # (!\VGA_Driver|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal7~0_combout\,
	datab => \VGA_Driver|Add3~18_combout\,
	datac => \VGA_Driver|VS_counter\(9),
	datad => \VGA_Driver|VS_counter\(5),
	combout => \VGA_Driver|VS_counter~4_combout\);

-- Location: FF_X36_Y20_N31
\VGA_Driver|VS_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VS_counter~4_combout\,
	ena => \VGA_Driver|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(9));

-- Location: LCCOMB_X36_Y20_N0
\VGA_Driver|VS_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VS_counter~0_combout\ = (\VGA_Driver|Add3~0_combout\) # ((!\VGA_Driver|VS_counter\(5) & (\VGA_Driver|VS_counter\(9) & \VGA_Driver|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add3~0_combout\,
	datab => \VGA_Driver|VS_counter\(5),
	datac => \VGA_Driver|VS_counter\(9),
	datad => \VGA_Driver|Equal7~0_combout\,
	combout => \VGA_Driver|VS_counter~0_combout\);

-- Location: FF_X36_Y20_N1
\VGA_Driver|VS_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VS_counter~0_combout\,
	ena => \VGA_Driver|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(0));

-- Location: LCCOMB_X36_Y20_N8
\VGA_Driver|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add3~2_combout\ = (\VGA_Driver|VS_counter\(1) & (!\VGA_Driver|Add3~1\)) # (!\VGA_Driver|VS_counter\(1) & ((\VGA_Driver|Add3~1\) # (GND)))
-- \VGA_Driver|Add3~3\ = CARRY((!\VGA_Driver|Add3~1\) # (!\VGA_Driver|VS_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(1),
	datad => VCC,
	cin => \VGA_Driver|Add3~1\,
	combout => \VGA_Driver|Add3~2_combout\,
	cout => \VGA_Driver|Add3~3\);

-- Location: LCCOMB_X37_Y18_N30
\VGA_Driver|VS_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VS_counter~3_combout\ = (\VGA_Driver|Add3~2_combout\ & ((\VGA_Driver|VS_counter\(5)) # ((!\VGA_Driver|Equal7~0_combout\) # (!\VGA_Driver|VS_counter\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(5),
	datab => \VGA_Driver|Add3~2_combout\,
	datac => \VGA_Driver|VS_counter\(9),
	datad => \VGA_Driver|Equal7~0_combout\,
	combout => \VGA_Driver|VS_counter~3_combout\);

-- Location: FF_X37_Y18_N31
\VGA_Driver|VS_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VS_counter~3_combout\,
	ena => \VGA_Driver|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(1));

-- Location: LCCOMB_X36_Y20_N10
\VGA_Driver|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add3~4_combout\ = (\VGA_Driver|VS_counter\(2) & (\VGA_Driver|Add3~3\ $ (GND))) # (!\VGA_Driver|VS_counter\(2) & (!\VGA_Driver|Add3~3\ & VCC))
-- \VGA_Driver|Add3~5\ = CARRY((\VGA_Driver|VS_counter\(2) & !\VGA_Driver|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(2),
	datad => VCC,
	cin => \VGA_Driver|Add3~3\,
	combout => \VGA_Driver|Add3~4_combout\,
	cout => \VGA_Driver|Add3~5\);

-- Location: LCCOMB_X36_Y20_N28
\VGA_Driver|VS_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VS_counter~2_combout\ = (\VGA_Driver|Add3~4_combout\ & ((\VGA_Driver|VS_counter\(5)) # ((!\VGA_Driver|Equal7~0_combout\) # (!\VGA_Driver|VS_counter\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add3~4_combout\,
	datab => \VGA_Driver|VS_counter\(5),
	datac => \VGA_Driver|VS_counter\(9),
	datad => \VGA_Driver|Equal7~0_combout\,
	combout => \VGA_Driver|VS_counter~2_combout\);

-- Location: FF_X36_Y20_N29
\VGA_Driver|VS_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VS_counter~2_combout\,
	ena => \VGA_Driver|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(2));

-- Location: LCCOMB_X36_Y20_N12
\VGA_Driver|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add3~6_combout\ = (\VGA_Driver|VS_counter\(3) & (!\VGA_Driver|Add3~5\)) # (!\VGA_Driver|VS_counter\(3) & ((\VGA_Driver|Add3~5\) # (GND)))
-- \VGA_Driver|Add3~7\ = CARRY((!\VGA_Driver|Add3~5\) # (!\VGA_Driver|VS_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(3),
	datad => VCC,
	cin => \VGA_Driver|Add3~5\,
	combout => \VGA_Driver|Add3~6_combout\,
	cout => \VGA_Driver|Add3~7\);

-- Location: LCCOMB_X36_Y20_N4
\VGA_Driver|VS_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VS_counter~1_combout\ = (\VGA_Driver|Add3~6_combout\ & ((\VGA_Driver|VS_counter\(5)) # ((!\VGA_Driver|Equal7~0_combout\) # (!\VGA_Driver|VS_counter\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add3~6_combout\,
	datab => \VGA_Driver|VS_counter\(5),
	datac => \VGA_Driver|VS_counter\(9),
	datad => \VGA_Driver|Equal7~0_combout\,
	combout => \VGA_Driver|VS_counter~1_combout\);

-- Location: FF_X36_Y20_N5
\VGA_Driver|VS_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VS_counter~1_combout\,
	ena => \VGA_Driver|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(3));

-- Location: LCCOMB_X36_Y20_N14
\VGA_Driver|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add3~8_combout\ = (\VGA_Driver|VS_counter\(4) & (\VGA_Driver|Add3~7\ $ (GND))) # (!\VGA_Driver|VS_counter\(4) & (!\VGA_Driver|Add3~7\ & VCC))
-- \VGA_Driver|Add3~9\ = CARRY((\VGA_Driver|VS_counter\(4) & !\VGA_Driver|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(4),
	datad => VCC,
	cin => \VGA_Driver|Add3~7\,
	combout => \VGA_Driver|Add3~8_combout\,
	cout => \VGA_Driver|Add3~9\);

-- Location: FF_X36_Y20_N15
\VGA_Driver|VS_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add3~8_combout\,
	ena => \VGA_Driver|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(4));

-- Location: FF_X36_Y20_N17
\VGA_Driver|VS_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add3~10_combout\,
	ena => \VGA_Driver|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(5));

-- Location: LCCOMB_X37_Y18_N22
\VGA_Driver|Equal5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal5~2_combout\ = (!\VGA_Driver|VS_counter\(9) & (!\VGA_Driver|VS_counter\(5) & !\VGA_Driver|VS_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(9),
	datac => \VGA_Driver|VS_counter\(5),
	datad => \VGA_Driver|VS_counter\(0),
	combout => \VGA_Driver|Equal5~2_combout\);

-- Location: LCCOMB_X37_Y18_N0
\VGA_Driver|Equal6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal6~1_combout\ = (\VGA_Driver|Equal5~0_combout\ & (\VGA_Driver|Equal6~0_combout\ & (\VGA_Driver|Equal5~2_combout\ & \VGA_Driver|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal5~0_combout\,
	datab => \VGA_Driver|Equal6~0_combout\,
	datac => \VGA_Driver|Equal5~2_combout\,
	datad => \VGA_Driver|Equal5~1_combout\,
	combout => \VGA_Driver|Equal6~1_combout\);

-- Location: LCCOMB_X37_Y18_N2
\VGA_Driver|Equal5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal5~3_combout\ = (!\VGA_Driver|VS_counter\(9) & (!\VGA_Driver|VS_counter\(0) & (!\VGA_Driver|VS_counter\(5) & !\VGA_Driver|VS_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(9),
	datab => \VGA_Driver|VS_counter\(0),
	datac => \VGA_Driver|VS_counter\(5),
	datad => \VGA_Driver|VS_counter\(2),
	combout => \VGA_Driver|Equal5~3_combout\);

-- Location: LCCOMB_X37_Y18_N28
\VGA_Driver|Equal5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal5~4_combout\ = (\VGA_Driver|Equal5~0_combout\ & (\VGA_Driver|Equal5~3_combout\ & (\VGA_Driver|VS_counter\(1) & \VGA_Driver|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal5~0_combout\,
	datab => \VGA_Driver|Equal5~3_combout\,
	datac => \VGA_Driver|VS_counter\(1),
	datad => \VGA_Driver|Equal5~1_combout\,
	combout => \VGA_Driver|Equal5~4_combout\);

-- Location: LCCOMB_X37_Y18_N6
\VGA_Driver|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector7~0_combout\ = (\VGA_Driver|Equal7~0_combout\ & (((!\VGA_Driver|Equal6~1_combout\ & !\VGA_Driver|Equal5~4_combout\)) # (!\VGA_Driver|V_visible\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|V_visible\(0),
	datab => \VGA_Driver|Equal6~1_combout\,
	datac => \VGA_Driver|Equal7~0_combout\,
	datad => \VGA_Driver|Equal5~4_combout\,
	combout => \VGA_Driver|Selector7~0_combout\);

-- Location: LCCOMB_X37_Y18_N10
\VGA_Driver|Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector7~1_combout\ = (\VGA_Driver|VS_counter\(5) & ((\VGA_Driver|V_visible\(0)) # ((!\VGA_Driver|VS_counter\(9) & \VGA_Driver|Selector7~0_combout\)))) # (!\VGA_Driver|VS_counter\(5) & (\VGA_Driver|V_visible\(0) & 
-- ((!\VGA_Driver|Selector7~0_combout\) # (!\VGA_Driver|VS_counter\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(5),
	datab => \VGA_Driver|VS_counter\(9),
	datac => \VGA_Driver|V_visible\(0),
	datad => \VGA_Driver|Selector7~0_combout\,
	combout => \VGA_Driver|Selector7~1_combout\);

-- Location: FF_X37_Y18_N11
\VGA_Driver|V_visible[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|V_visible\(0));

-- Location: LCCOMB_X30_Y24_N14
\VGA_Driver|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector1~0_combout\ = (\VGA_Driver|H_visible\(0) & (\VGA_Driver|Equal1~3_combout\ & (\VGA_Driver|HS_counter\(5) $ (!\VGA_Driver|HS_counter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|H_visible\(0),
	datab => \VGA_Driver|Equal1~3_combout\,
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|Selector1~0_combout\);

-- Location: LCCOMB_X30_Y24_N18
\VGA_Driver|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector1~1_combout\ = (\VGA_Driver|Equal3~1_combout\) # ((\VGA_Driver|Selector1~0_combout\) # ((\VGA_Driver|H_visible\(0) & !\VGA_Driver|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|Selector1~0_combout\,
	datac => \VGA_Driver|H_visible\(0),
	datad => \VGA_Driver|WideNor0~combout\,
	combout => \VGA_Driver|Selector1~1_combout\);

-- Location: FF_X30_Y24_N19
\VGA_Driver|H_visible[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|H_visible\(0));

-- Location: LCCOMB_X30_Y26_N26
\VGA_Driver|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add0~2_combout\ = \VGA_Driver|HS_counter\(8) $ (((\VGA_Driver|HS_counter\(7) & ((\VGA_Driver|HS_counter\(6)) # (\VGA_Driver|HS_counter\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(6),
	datab => \VGA_Driver|HS_counter\(7),
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(8),
	combout => \VGA_Driver|Add0~2_combout\);

-- Location: LCCOMB_X30_Y26_N20
\VGA_Driver|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add0~3_combout\ = \VGA_Driver|HS_counter\(7) $ (((\VGA_Driver|HS_counter\(5)) # (\VGA_Driver|HS_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(5),
	datab => \VGA_Driver|HS_counter\(7),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|Add0~3_combout\);

-- Location: LCCOMB_X29_Y24_N2
\draw_player_1_paddle|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|always0~0_combout\ = (!\VGA_Driver|HS_counter\(3) & (((!\VGA_Driver|HS_counter\(0) & !\VGA_Driver|HS_counter\(1))) # (!\VGA_Driver|HS_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(2),
	datab => \VGA_Driver|HS_counter\(3),
	datac => \VGA_Driver|HS_counter\(0),
	datad => \VGA_Driver|HS_counter\(1),
	combout => \draw_player_1_paddle|always0~0_combout\);

-- Location: LCCOMB_X29_Y24_N28
\draw_player_1_paddle|always0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|always0~1_combout\ = (!\VGA_Driver|Add0~3_combout\ & (\draw_player_1_paddle|always0~0_combout\ & (!\VGA_Driver|HS_counter\(4) & \VGA_Driver|HS_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~3_combout\,
	datab => \draw_player_1_paddle|always0~0_combout\,
	datac => \VGA_Driver|HS_counter\(4),
	datad => \VGA_Driver|HS_counter\(5),
	combout => \draw_player_1_paddle|always0~1_combout\);

-- Location: LCCOMB_X30_Y26_N30
\VGA_Driver|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add0~0_combout\ = (\VGA_Driver|HS_counter\(8)) # ((\VGA_Driver|HS_counter\(7) & ((\VGA_Driver|HS_counter\(6)) # (\VGA_Driver|HS_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(6),
	datab => \VGA_Driver|HS_counter\(7),
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(8),
	combout => \VGA_Driver|Add0~0_combout\);

-- Location: LCCOMB_X30_Y26_N24
\VGA_Driver|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add0~1_combout\ = \VGA_Driver|HS_counter\(9) $ (\VGA_Driver|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(9),
	datac => \VGA_Driver|Add0~0_combout\,
	combout => \VGA_Driver|Add0~1_combout\);

-- Location: LCCOMB_X30_Y26_N22
\VGA_Driver|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add0~4_combout\ = \VGA_Driver|HS_counter\(5) $ (\VGA_Driver|HS_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|Add0~4_combout\);

-- Location: LCCOMB_X29_Y24_N30
\draw_player_1_paddle|always0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|always0~2_combout\ = (\VGA_Driver|Add0~2_combout\ & (\draw_player_1_paddle|always0~1_combout\ & (\VGA_Driver|Add0~1_combout\ & \VGA_Driver|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~2_combout\,
	datab => \draw_player_1_paddle|always0~1_combout\,
	datac => \VGA_Driver|Add0~1_combout\,
	datad => \VGA_Driver|Add0~4_combout\,
	combout => \draw_player_1_paddle|always0~2_combout\);

-- Location: LCCOMB_X33_Y22_N4
\VGA_Driver|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~0_combout\ = \VGA_Driver|VS_counter\(0) $ (VCC)
-- \VGA_Driver|Add1~1\ = CARRY(\VGA_Driver|VS_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(0),
	datad => VCC,
	combout => \VGA_Driver|Add1~0_combout\,
	cout => \VGA_Driver|Add1~1\);

-- Location: LCCOMB_X33_Y22_N6
\VGA_Driver|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~2_combout\ = (\VGA_Driver|VS_counter\(1) & (\VGA_Driver|Add1~1\ & VCC)) # (!\VGA_Driver|VS_counter\(1) & (!\VGA_Driver|Add1~1\))
-- \VGA_Driver|Add1~3\ = CARRY((!\VGA_Driver|VS_counter\(1) & !\VGA_Driver|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(1),
	datad => VCC,
	cin => \VGA_Driver|Add1~1\,
	combout => \VGA_Driver|Add1~2_combout\,
	cout => \VGA_Driver|Add1~3\);

-- Location: LCCOMB_X33_Y22_N8
\VGA_Driver|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~4_combout\ = (\VGA_Driver|VS_counter\(2) & (\VGA_Driver|Add1~3\ $ (GND))) # (!\VGA_Driver|VS_counter\(2) & (!\VGA_Driver|Add1~3\ & VCC))
-- \VGA_Driver|Add1~5\ = CARRY((\VGA_Driver|VS_counter\(2) & !\VGA_Driver|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(2),
	datad => VCC,
	cin => \VGA_Driver|Add1~3\,
	combout => \VGA_Driver|Add1~4_combout\,
	cout => \VGA_Driver|Add1~5\);

-- Location: LCCOMB_X33_Y22_N10
\VGA_Driver|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~6_combout\ = (\VGA_Driver|VS_counter\(3) & (!\VGA_Driver|Add1~5\)) # (!\VGA_Driver|VS_counter\(3) & ((\VGA_Driver|Add1~5\) # (GND)))
-- \VGA_Driver|Add1~7\ = CARRY((!\VGA_Driver|Add1~5\) # (!\VGA_Driver|VS_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(3),
	datad => VCC,
	cin => \VGA_Driver|Add1~5\,
	combout => \VGA_Driver|Add1~6_combout\,
	cout => \VGA_Driver|Add1~7\);

-- Location: LCCOMB_X33_Y22_N12
\VGA_Driver|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~8_combout\ = (\VGA_Driver|VS_counter\(4) & ((GND) # (!\VGA_Driver|Add1~7\))) # (!\VGA_Driver|VS_counter\(4) & (\VGA_Driver|Add1~7\ $ (GND)))
-- \VGA_Driver|Add1~9\ = CARRY((\VGA_Driver|VS_counter\(4)) # (!\VGA_Driver|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(4),
	datad => VCC,
	cin => \VGA_Driver|Add1~7\,
	combout => \VGA_Driver|Add1~8_combout\,
	cout => \VGA_Driver|Add1~9\);

-- Location: LCCOMB_X33_Y22_N14
\VGA_Driver|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~10_combout\ = (\VGA_Driver|VS_counter\(5) & (!\VGA_Driver|Add1~9\)) # (!\VGA_Driver|VS_counter\(5) & ((\VGA_Driver|Add1~9\) # (GND)))
-- \VGA_Driver|Add1~11\ = CARRY((!\VGA_Driver|Add1~9\) # (!\VGA_Driver|VS_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(5),
	datad => VCC,
	cin => \VGA_Driver|Add1~9\,
	combout => \VGA_Driver|Add1~10_combout\,
	cout => \VGA_Driver|Add1~11\);

-- Location: LCCOMB_X33_Y22_N16
\VGA_Driver|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~12_combout\ = (\VGA_Driver|VS_counter\(6) & ((GND) # (!\VGA_Driver|Add1~11\))) # (!\VGA_Driver|VS_counter\(6) & (\VGA_Driver|Add1~11\ $ (GND)))
-- \VGA_Driver|Add1~13\ = CARRY((\VGA_Driver|VS_counter\(6)) # (!\VGA_Driver|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(6),
	datad => VCC,
	cin => \VGA_Driver|Add1~11\,
	combout => \VGA_Driver|Add1~12_combout\,
	cout => \VGA_Driver|Add1~13\);

-- Location: LCCOMB_X33_Y22_N18
\VGA_Driver|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~14_combout\ = (\VGA_Driver|VS_counter\(7) & (\VGA_Driver|Add1~13\ & VCC)) # (!\VGA_Driver|VS_counter\(7) & (!\VGA_Driver|Add1~13\))
-- \VGA_Driver|Add1~15\ = CARRY((!\VGA_Driver|VS_counter\(7) & !\VGA_Driver|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(7),
	datad => VCC,
	cin => \VGA_Driver|Add1~13\,
	combout => \VGA_Driver|Add1~14_combout\,
	cout => \VGA_Driver|Add1~15\);

-- Location: LCCOMB_X33_Y22_N20
\VGA_Driver|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~16_combout\ = (\VGA_Driver|VS_counter\(8) & ((GND) # (!\VGA_Driver|Add1~15\))) # (!\VGA_Driver|VS_counter\(8) & (\VGA_Driver|Add1~15\ $ (GND)))
-- \VGA_Driver|Add1~17\ = CARRY((\VGA_Driver|VS_counter\(8)) # (!\VGA_Driver|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(8),
	datad => VCC,
	cin => \VGA_Driver|Add1~15\,
	combout => \VGA_Driver|Add1~16_combout\,
	cout => \VGA_Driver|Add1~17\);

-- Location: LCCOMB_X33_Y22_N22
\VGA_Driver|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~18_combout\ = \VGA_Driver|VS_counter\(9) $ (!\VGA_Driver|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(9),
	cin => \VGA_Driver|Add1~17\,
	combout => \VGA_Driver|Add1~18_combout\);

-- Location: IOIBUF_X0_Y23_N15
\ORG_BUTTON[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ORG_BUTTON(1),
	o => \ORG_BUTTON[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\ORG_BUTTON[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ORG_BUTTON(2),
	o => \ORG_BUTTON[2]~input_o\);

-- Location: LCCOMB_X37_Y21_N8
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (player_1_paddle_Y_location(0) & (\ORG_BUTTON[1]~input_o\ $ (VCC))) # (!player_1_paddle_Y_location(0) & (\ORG_BUTTON[1]~input_o\ & VCC))
-- \Add2~1\ = CARRY((player_1_paddle_Y_location(0) & \ORG_BUTTON[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player_1_paddle_Y_location(0),
	datab => \ORG_BUTTON[1]~input_o\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X33_Y25_N12
\player_1_paddle_Y_location[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \player_1_paddle_Y_location[0]~9_combout\ = (\ORG_BUTTON[2]~input_o\ & (\Add2~0_combout\ $ (VCC))) # (!\ORG_BUTTON[2]~input_o\ & (\Add2~0_combout\ & VCC))
-- \player_1_paddle_Y_location[0]~10\ = CARRY((\ORG_BUTTON[2]~input_o\ & \Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ORG_BUTTON[2]~input_o\,
	datab => \Add2~0_combout\,
	datad => VCC,
	combout => \player_1_paddle_Y_location[0]~9_combout\,
	cout => \player_1_paddle_Y_location[0]~10\);

-- Location: LCCOMB_X36_Y22_N2
\Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (paddle_speed_counter(11) & (!\Add1~21\)) # (!paddle_speed_counter(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!paddle_speed_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => paddle_speed_counter(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X36_Y22_N4
\Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (paddle_speed_counter(12) & (\Add1~23\ $ (GND))) # (!paddle_speed_counter(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((paddle_speed_counter(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => paddle_speed_counter(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: FF_X36_Y22_N5
\paddle_speed_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => paddle_speed_counter(12));

-- Location: LCCOMB_X36_Y22_N6
\Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (paddle_speed_counter(13) & (!\Add1~25\)) # (!paddle_speed_counter(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!paddle_speed_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => paddle_speed_counter(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: FF_X36_Y22_N7
\paddle_speed_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => paddle_speed_counter(13));

-- Location: LCCOMB_X36_Y22_N8
\Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (paddle_speed_counter(14) & (\Add1~27\ $ (GND))) # (!paddle_speed_counter(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((paddle_speed_counter(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => paddle_speed_counter(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: FF_X36_Y22_N9
\paddle_speed_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => paddle_speed_counter(14));

-- Location: LCCOMB_X36_Y22_N10
\Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (paddle_speed_counter(15) & (!\Add1~29\)) # (!paddle_speed_counter(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!paddle_speed_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => paddle_speed_counter(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X36_Y22_N20
\paddle_speed_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \paddle_speed_counter~6_combout\ = (\Add1~30_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~0_combout\,
	combout => \paddle_speed_counter~6_combout\);

-- Location: FF_X36_Y22_N21
\paddle_speed_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \paddle_speed_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => paddle_speed_counter(15));

-- Location: LCCOMB_X36_Y22_N12
\Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (paddle_speed_counter(16) & (\Add1~31\ $ (GND))) # (!paddle_speed_counter(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((paddle_speed_counter(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => paddle_speed_counter(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X36_Y22_N28
\paddle_speed_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \paddle_speed_counter~0_combout\ = (\Add1~32_combout\ & ((!\Equal0~5_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Add1~32_combout\,
	datac => \Equal0~5_combout\,
	combout => \paddle_speed_counter~0_combout\);

-- Location: FF_X36_Y22_N29
\paddle_speed_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \paddle_speed_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => paddle_speed_counter(16));

-- Location: LCCOMB_X36_Y22_N14
\Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (paddle_speed_counter(17) & (!\Add1~33\)) # (!paddle_speed_counter(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!paddle_speed_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => paddle_speed_counter(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: FF_X36_Y22_N15
\paddle_speed_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => paddle_speed_counter(17));

-- Location: LCCOMB_X36_Y22_N16
\Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (paddle_speed_counter(18) & (\Add1~35\ $ (GND))) # (!paddle_speed_counter(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((paddle_speed_counter(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => paddle_speed_counter(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: FF_X36_Y22_N17
\paddle_speed_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => paddle_speed_counter(18));

-- Location: LCCOMB_X36_Y22_N18
\Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = \Add1~37\ $ (paddle_speed_counter(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => paddle_speed_counter(19),
	cin => \Add1~37\,
	combout => \Add1~38_combout\);

-- Location: FF_X36_Y22_N19
\paddle_speed_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => paddle_speed_counter(19));

-- Location: LCCOMB_X36_Y22_N22
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!paddle_speed_counter(18) & (!paddle_speed_counter(19) & (!paddle_speed_counter(17) & paddle_speed_counter(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => paddle_speed_counter(18),
	datab => paddle_speed_counter(19),
	datac => paddle_speed_counter(17),
	datad => paddle_speed_counter(16),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X36_Y23_N12
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = paddle_speed_counter(0) $ (VCC)
-- \Add1~1\ = CARRY(paddle_speed_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => paddle_speed_counter(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X36_Y23_N0
\paddle_speed_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \paddle_speed_counter~1_combout\ = (\Add1~0_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Equal0~5_combout\,
	datad => \Equal0~0_combout\,
	combout => \paddle_speed_counter~1_combout\);

-- Location: FF_X36_Y23_N1
\paddle_speed_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \paddle_speed_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => paddle_speed_counter(0));

-- Location: LCCOMB_X36_Y23_N14
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (paddle_speed_counter(1) & (!\Add1~1\)) # (!paddle_speed_counter(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!paddle_speed_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => paddle_speed_counter(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X36_Y23_N15
\paddle_speed_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => paddle_speed_counter(1));

-- Location: LCCOMB_X36_Y23_N16
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (paddle_speed_counter(2) & (\Add1~3\ $ (GND))) # (!paddle_speed_counter(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((paddle_speed_counter(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => paddle_speed_counter(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X36_Y23_N17
\paddle_speed_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => paddle_speed_counter(2));

-- Location: LCCOMB_X36_Y23_N18
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (paddle_speed_counter(3) & (!\Add1~5\)) # (!paddle_speed_counter(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!paddle_speed_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => paddle_speed_counter(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X36_Y23_N19
\paddle_speed_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => paddle_speed_counter(3));

-- Location: LCCOMB_X36_Y23_N20
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (paddle_speed_counter(4) & (\Add1~7\ $ (GND))) # (!paddle_speed_counter(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((paddle_speed_counter(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => paddle_speed_counter(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X36_Y23_N21
\paddle_speed_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => paddle_speed_counter(4));

-- Location: LCCOMB_X36_Y23_N22
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (paddle_speed_counter(5) & (!\Add1~9\)) # (!paddle_speed_counter(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!paddle_speed_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => paddle_speed_counter(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X36_Y23_N4
\paddle_speed_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \paddle_speed_counter~2_combout\ = (\Add1~10_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~5_combout\,
	datac => \Add1~10_combout\,
	datad => \Equal0~0_combout\,
	combout => \paddle_speed_counter~2_combout\);

-- Location: FF_X36_Y23_N5
\paddle_speed_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \paddle_speed_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => paddle_speed_counter(5));

-- Location: LCCOMB_X36_Y23_N24
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (paddle_speed_counter(6) & (\Add1~11\ $ (GND))) # (!paddle_speed_counter(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((paddle_speed_counter(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => paddle_speed_counter(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X36_Y23_N25
\paddle_speed_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => paddle_speed_counter(6));

-- Location: LCCOMB_X36_Y23_N26
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (paddle_speed_counter(7) & (!\Add1~13\)) # (!paddle_speed_counter(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!paddle_speed_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => paddle_speed_counter(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X36_Y23_N6
\paddle_speed_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \paddle_speed_counter~3_combout\ = (\Add1~14_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~5_combout\,
	datac => \Add1~14_combout\,
	datad => \Equal0~0_combout\,
	combout => \paddle_speed_counter~3_combout\);

-- Location: FF_X36_Y23_N7
\paddle_speed_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \paddle_speed_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => paddle_speed_counter(7));

-- Location: LCCOMB_X36_Y23_N28
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (paddle_speed_counter(8) & (\Add1~15\ $ (GND))) # (!paddle_speed_counter(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((paddle_speed_counter(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => paddle_speed_counter(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X36_Y23_N29
\paddle_speed_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => paddle_speed_counter(8));

-- Location: LCCOMB_X36_Y23_N30
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (paddle_speed_counter(9) & (!\Add1~17\)) # (!paddle_speed_counter(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!paddle_speed_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => paddle_speed_counter(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X36_Y23_N10
\paddle_speed_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \paddle_speed_counter~4_combout\ = (\Add1~18_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~5_combout\,
	datac => \Add1~18_combout\,
	datad => \Equal0~0_combout\,
	combout => \paddle_speed_counter~4_combout\);

-- Location: FF_X36_Y23_N11
\paddle_speed_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \paddle_speed_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => paddle_speed_counter(9));

-- Location: LCCOMB_X36_Y22_N0
\Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (paddle_speed_counter(10) & (\Add1~19\ $ (GND))) # (!paddle_speed_counter(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((paddle_speed_counter(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => paddle_speed_counter(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X36_Y22_N24
\paddle_speed_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \paddle_speed_counter~5_combout\ = (\Add1~20_combout\ & ((!\Equal0~5_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Add1~20_combout\,
	datac => \Equal0~5_combout\,
	combout => \paddle_speed_counter~5_combout\);

-- Location: FF_X36_Y22_N25
\paddle_speed_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \paddle_speed_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => paddle_speed_counter(10));

-- Location: FF_X36_Y22_N3
\paddle_speed_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => paddle_speed_counter(11));

-- Location: LCCOMB_X36_Y22_N26
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!paddle_speed_counter(11) & (paddle_speed_counter(10) & (!paddle_speed_counter(8) & paddle_speed_counter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => paddle_speed_counter(11),
	datab => paddle_speed_counter(10),
	datac => paddle_speed_counter(8),
	datad => paddle_speed_counter(9),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X36_Y23_N8
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (paddle_speed_counter(7) & (!paddle_speed_counter(4) & (paddle_speed_counter(5) & !paddle_speed_counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => paddle_speed_counter(7),
	datab => paddle_speed_counter(4),
	datac => paddle_speed_counter(5),
	datad => paddle_speed_counter(6),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X36_Y22_N30
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!paddle_speed_counter(13) & (!paddle_speed_counter(12) & (!paddle_speed_counter(14) & paddle_speed_counter(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => paddle_speed_counter(13),
	datab => paddle_speed_counter(12),
	datac => paddle_speed_counter(14),
	datad => paddle_speed_counter(15),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X36_Y23_N2
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!paddle_speed_counter(3) & (!paddle_speed_counter(2) & (!paddle_speed_counter(1) & !paddle_speed_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => paddle_speed_counter(3),
	datab => paddle_speed_counter(2),
	datac => paddle_speed_counter(1),
	datad => paddle_speed_counter(0),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X33_Y25_N8
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~4_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X33_Y25_N2
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Equal0~5_combout\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~5_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~6_combout\);

-- Location: FF_X33_Y25_N13
\player_1_paddle_Y_location[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \player_1_paddle_Y_location[0]~9_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_1_paddle_Y_location(0));

-- Location: LCCOMB_X37_Y21_N10
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (player_1_paddle_Y_location(1) & ((\ORG_BUTTON[1]~input_o\ & (\Add2~1\ & VCC)) # (!\ORG_BUTTON[1]~input_o\ & (!\Add2~1\)))) # (!player_1_paddle_Y_location(1) & ((\ORG_BUTTON[1]~input_o\ & (!\Add2~1\)) # (!\ORG_BUTTON[1]~input_o\ & 
-- ((\Add2~1\) # (GND)))))
-- \Add2~3\ = CARRY((player_1_paddle_Y_location(1) & (!\ORG_BUTTON[1]~input_o\ & !\Add2~1\)) # (!player_1_paddle_Y_location(1) & ((!\Add2~1\) # (!\ORG_BUTTON[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_1_paddle_Y_location(1),
	datab => \ORG_BUTTON[1]~input_o\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X33_Y25_N14
\player_1_paddle_Y_location[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \player_1_paddle_Y_location[1]~11_combout\ = (\Add2~2_combout\ & (!\player_1_paddle_Y_location[0]~10\)) # (!\Add2~2_combout\ & ((\player_1_paddle_Y_location[0]~10\) # (GND)))
-- \player_1_paddle_Y_location[1]~12\ = CARRY((!\player_1_paddle_Y_location[0]~10\) # (!\Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~2_combout\,
	datad => VCC,
	cin => \player_1_paddle_Y_location[0]~10\,
	combout => \player_1_paddle_Y_location[1]~11_combout\,
	cout => \player_1_paddle_Y_location[1]~12\);

-- Location: FF_X33_Y25_N15
\player_1_paddle_Y_location[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \player_1_paddle_Y_location[1]~11_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_1_paddle_Y_location(1));

-- Location: LCCOMB_X37_Y21_N12
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((player_1_paddle_Y_location(2) $ (\ORG_BUTTON[1]~input_o\ $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((player_1_paddle_Y_location(2) & ((\ORG_BUTTON[1]~input_o\) # (!\Add2~3\))) # (!player_1_paddle_Y_location(2) & (\ORG_BUTTON[1]~input_o\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_1_paddle_Y_location(2),
	datab => \ORG_BUTTON[1]~input_o\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X33_Y25_N16
\player_1_paddle_Y_location[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \player_1_paddle_Y_location[2]~13_combout\ = (\Add2~4_combout\ & (\player_1_paddle_Y_location[1]~12\ $ (GND))) # (!\Add2~4_combout\ & (!\player_1_paddle_Y_location[1]~12\ & VCC))
-- \player_1_paddle_Y_location[2]~14\ = CARRY((\Add2~4_combout\ & !\player_1_paddle_Y_location[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datad => VCC,
	cin => \player_1_paddle_Y_location[1]~12\,
	combout => \player_1_paddle_Y_location[2]~13_combout\,
	cout => \player_1_paddle_Y_location[2]~14\);

-- Location: FF_X33_Y25_N17
\player_1_paddle_Y_location[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \player_1_paddle_Y_location[2]~13_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_1_paddle_Y_location(2));

-- Location: LCCOMB_X37_Y21_N14
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (player_1_paddle_Y_location(3) & ((\ORG_BUTTON[1]~input_o\ & (\Add2~5\ & VCC)) # (!\ORG_BUTTON[1]~input_o\ & (!\Add2~5\)))) # (!player_1_paddle_Y_location(3) & ((\ORG_BUTTON[1]~input_o\ & (!\Add2~5\)) # (!\ORG_BUTTON[1]~input_o\ & 
-- ((\Add2~5\) # (GND)))))
-- \Add2~7\ = CARRY((player_1_paddle_Y_location(3) & (!\ORG_BUTTON[1]~input_o\ & !\Add2~5\)) # (!player_1_paddle_Y_location(3) & ((!\Add2~5\) # (!\ORG_BUTTON[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_1_paddle_Y_location(3),
	datab => \ORG_BUTTON[1]~input_o\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X33_Y25_N18
\player_1_paddle_Y_location[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \player_1_paddle_Y_location[3]~15_combout\ = (\Add2~6_combout\ & (!\player_1_paddle_Y_location[2]~14\)) # (!\Add2~6_combout\ & ((\player_1_paddle_Y_location[2]~14\) # (GND)))
-- \player_1_paddle_Y_location[3]~16\ = CARRY((!\player_1_paddle_Y_location[2]~14\) # (!\Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~6_combout\,
	datad => VCC,
	cin => \player_1_paddle_Y_location[2]~14\,
	combout => \player_1_paddle_Y_location[3]~15_combout\,
	cout => \player_1_paddle_Y_location[3]~16\);

-- Location: FF_X33_Y25_N19
\player_1_paddle_Y_location[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \player_1_paddle_Y_location[3]~15_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_1_paddle_Y_location(3));

-- Location: LCCOMB_X37_Y21_N16
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((player_1_paddle_Y_location(4) $ (\ORG_BUTTON[1]~input_o\ $ (!\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((player_1_paddle_Y_location(4) & ((\ORG_BUTTON[1]~input_o\) # (!\Add2~7\))) # (!player_1_paddle_Y_location(4) & (\ORG_BUTTON[1]~input_o\ & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_1_paddle_Y_location(4),
	datab => \ORG_BUTTON[1]~input_o\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X33_Y25_N20
\player_1_paddle_Y_location[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \player_1_paddle_Y_location[4]~17_combout\ = (\Add2~8_combout\ & (\player_1_paddle_Y_location[3]~16\ $ (GND))) # (!\Add2~8_combout\ & (!\player_1_paddle_Y_location[3]~16\ & VCC))
-- \player_1_paddle_Y_location[4]~18\ = CARRY((\Add2~8_combout\ & !\player_1_paddle_Y_location[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~8_combout\,
	datad => VCC,
	cin => \player_1_paddle_Y_location[3]~16\,
	combout => \player_1_paddle_Y_location[4]~17_combout\,
	cout => \player_1_paddle_Y_location[4]~18\);

-- Location: FF_X33_Y25_N21
\player_1_paddle_Y_location[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \player_1_paddle_Y_location[4]~17_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_1_paddle_Y_location(4));

-- Location: LCCOMB_X37_Y21_N18
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (player_1_paddle_Y_location(5) & ((\ORG_BUTTON[1]~input_o\ & (\Add2~9\ & VCC)) # (!\ORG_BUTTON[1]~input_o\ & (!\Add2~9\)))) # (!player_1_paddle_Y_location(5) & ((\ORG_BUTTON[1]~input_o\ & (!\Add2~9\)) # (!\ORG_BUTTON[1]~input_o\ & 
-- ((\Add2~9\) # (GND)))))
-- \Add2~11\ = CARRY((player_1_paddle_Y_location(5) & (!\ORG_BUTTON[1]~input_o\ & !\Add2~9\)) # (!player_1_paddle_Y_location(5) & ((!\Add2~9\) # (!\ORG_BUTTON[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_1_paddle_Y_location(5),
	datab => \ORG_BUTTON[1]~input_o\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X33_Y25_N22
\player_1_paddle_Y_location[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \player_1_paddle_Y_location[5]~19_combout\ = (\Add2~10_combout\ & (!\player_1_paddle_Y_location[4]~18\)) # (!\Add2~10_combout\ & ((\player_1_paddle_Y_location[4]~18\) # (GND)))
-- \player_1_paddle_Y_location[5]~20\ = CARRY((!\player_1_paddle_Y_location[4]~18\) # (!\Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~10_combout\,
	datad => VCC,
	cin => \player_1_paddle_Y_location[4]~18\,
	combout => \player_1_paddle_Y_location[5]~19_combout\,
	cout => \player_1_paddle_Y_location[5]~20\);

-- Location: FF_X33_Y25_N23
\player_1_paddle_Y_location[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \player_1_paddle_Y_location[5]~19_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_1_paddle_Y_location(5));

-- Location: LCCOMB_X37_Y21_N20
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = ((player_1_paddle_Y_location(6) $ (\ORG_BUTTON[1]~input_o\ $ (!\Add2~11\)))) # (GND)
-- \Add2~13\ = CARRY((player_1_paddle_Y_location(6) & ((\ORG_BUTTON[1]~input_o\) # (!\Add2~11\))) # (!player_1_paddle_Y_location(6) & (\ORG_BUTTON[1]~input_o\ & !\Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_1_paddle_Y_location(6),
	datab => \ORG_BUTTON[1]~input_o\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X33_Y25_N24
\player_1_paddle_Y_location[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \player_1_paddle_Y_location[6]~21_combout\ = (\Add2~12_combout\ & (\player_1_paddle_Y_location[5]~20\ $ (GND))) # (!\Add2~12_combout\ & (!\player_1_paddle_Y_location[5]~20\ & VCC))
-- \player_1_paddle_Y_location[6]~22\ = CARRY((\Add2~12_combout\ & !\player_1_paddle_Y_location[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datad => VCC,
	cin => \player_1_paddle_Y_location[5]~20\,
	combout => \player_1_paddle_Y_location[6]~21_combout\,
	cout => \player_1_paddle_Y_location[6]~22\);

-- Location: FF_X33_Y25_N25
\player_1_paddle_Y_location[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \player_1_paddle_Y_location[6]~21_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_1_paddle_Y_location(6));

-- Location: LCCOMB_X37_Y21_N22
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (player_1_paddle_Y_location(7) & ((\ORG_BUTTON[1]~input_o\ & (\Add2~13\ & VCC)) # (!\ORG_BUTTON[1]~input_o\ & (!\Add2~13\)))) # (!player_1_paddle_Y_location(7) & ((\ORG_BUTTON[1]~input_o\ & (!\Add2~13\)) # (!\ORG_BUTTON[1]~input_o\ & 
-- ((\Add2~13\) # (GND)))))
-- \Add2~15\ = CARRY((player_1_paddle_Y_location(7) & (!\ORG_BUTTON[1]~input_o\ & !\Add2~13\)) # (!player_1_paddle_Y_location(7) & ((!\Add2~13\) # (!\ORG_BUTTON[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_1_paddle_Y_location(7),
	datab => \ORG_BUTTON[1]~input_o\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X33_Y25_N26
\player_1_paddle_Y_location[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \player_1_paddle_Y_location[7]~23_combout\ = (\Add2~14_combout\ & (!\player_1_paddle_Y_location[6]~22\)) # (!\Add2~14_combout\ & ((\player_1_paddle_Y_location[6]~22\) # (GND)))
-- \player_1_paddle_Y_location[7]~24\ = CARRY((!\player_1_paddle_Y_location[6]~22\) # (!\Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~14_combout\,
	datad => VCC,
	cin => \player_1_paddle_Y_location[6]~22\,
	combout => \player_1_paddle_Y_location[7]~23_combout\,
	cout => \player_1_paddle_Y_location[7]~24\);

-- Location: FF_X33_Y25_N27
\player_1_paddle_Y_location[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \player_1_paddle_Y_location[7]~23_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_1_paddle_Y_location(7));

-- Location: LCCOMB_X37_Y21_N24
\Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = \ORG_BUTTON[1]~input_o\ $ (\Add2~15\ $ (!player_1_paddle_Y_location(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ORG_BUTTON[1]~input_o\,
	datad => player_1_paddle_Y_location(8),
	cin => \Add2~15\,
	combout => \Add2~16_combout\);

-- Location: LCCOMB_X33_Y25_N28
\player_1_paddle_Y_location[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \player_1_paddle_Y_location[8]~25_combout\ = \player_1_paddle_Y_location[7]~24\ $ (!\Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add2~16_combout\,
	cin => \player_1_paddle_Y_location[7]~24\,
	combout => \player_1_paddle_Y_location[8]~25_combout\);

-- Location: FF_X33_Y25_N29
\player_1_paddle_Y_location[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \player_1_paddle_Y_location[8]~25_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_1_paddle_Y_location(8));

-- Location: LCCOMB_X33_Y26_N10
\draw_player_1_paddle|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan2~1_cout\ = CARRY((player_1_paddle_Y_location(0) & !\VGA_Driver|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_1_paddle_Y_location(0),
	datab => \VGA_Driver|Add1~0_combout\,
	datad => VCC,
	cout => \draw_player_1_paddle|LessThan2~1_cout\);

-- Location: LCCOMB_X33_Y26_N12
\draw_player_1_paddle|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan2~3_cout\ = CARRY((\VGA_Driver|Add1~2_combout\ & ((!\draw_player_1_paddle|LessThan2~1_cout\) # (!player_1_paddle_Y_location(1)))) # (!\VGA_Driver|Add1~2_combout\ & (!player_1_paddle_Y_location(1) & 
-- !\draw_player_1_paddle|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~2_combout\,
	datab => player_1_paddle_Y_location(1),
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan2~1_cout\,
	cout => \draw_player_1_paddle|LessThan2~3_cout\);

-- Location: LCCOMB_X33_Y26_N14
\draw_player_1_paddle|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan2~5_cout\ = CARRY((\VGA_Driver|Add1~4_combout\ & (player_1_paddle_Y_location(2) & !\draw_player_1_paddle|LessThan2~3_cout\)) # (!\VGA_Driver|Add1~4_combout\ & ((player_1_paddle_Y_location(2)) # 
-- (!\draw_player_1_paddle|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~4_combout\,
	datab => player_1_paddle_Y_location(2),
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan2~3_cout\,
	cout => \draw_player_1_paddle|LessThan2~5_cout\);

-- Location: LCCOMB_X33_Y26_N16
\draw_player_1_paddle|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan2~7_cout\ = CARRY((player_1_paddle_Y_location(3) & (\VGA_Driver|Add1~6_combout\ & !\draw_player_1_paddle|LessThan2~5_cout\)) # (!player_1_paddle_Y_location(3) & ((\VGA_Driver|Add1~6_combout\) # 
-- (!\draw_player_1_paddle|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_1_paddle_Y_location(3),
	datab => \VGA_Driver|Add1~6_combout\,
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan2~5_cout\,
	cout => \draw_player_1_paddle|LessThan2~7_cout\);

-- Location: LCCOMB_X33_Y26_N18
\draw_player_1_paddle|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan2~9_cout\ = CARRY((\VGA_Driver|Add1~8_combout\ & (player_1_paddle_Y_location(4) & !\draw_player_1_paddle|LessThan2~7_cout\)) # (!\VGA_Driver|Add1~8_combout\ & ((player_1_paddle_Y_location(4)) # 
-- (!\draw_player_1_paddle|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~8_combout\,
	datab => player_1_paddle_Y_location(4),
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan2~7_cout\,
	cout => \draw_player_1_paddle|LessThan2~9_cout\);

-- Location: LCCOMB_X33_Y26_N20
\draw_player_1_paddle|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan2~11_cout\ = CARRY((\VGA_Driver|Add1~10_combout\ & ((!\draw_player_1_paddle|LessThan2~9_cout\) # (!player_1_paddle_Y_location(5)))) # (!\VGA_Driver|Add1~10_combout\ & (!player_1_paddle_Y_location(5) & 
-- !\draw_player_1_paddle|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~10_combout\,
	datab => player_1_paddle_Y_location(5),
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan2~9_cout\,
	cout => \draw_player_1_paddle|LessThan2~11_cout\);

-- Location: LCCOMB_X33_Y26_N22
\draw_player_1_paddle|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan2~13_cout\ = CARRY((player_1_paddle_Y_location(6) & ((!\draw_player_1_paddle|LessThan2~11_cout\) # (!\VGA_Driver|Add1~12_combout\))) # (!player_1_paddle_Y_location(6) & (!\VGA_Driver|Add1~12_combout\ & 
-- !\draw_player_1_paddle|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_1_paddle_Y_location(6),
	datab => \VGA_Driver|Add1~12_combout\,
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan2~11_cout\,
	cout => \draw_player_1_paddle|LessThan2~13_cout\);

-- Location: LCCOMB_X33_Y26_N24
\draw_player_1_paddle|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan2~15_cout\ = CARRY((player_1_paddle_Y_location(7) & (\VGA_Driver|Add1~14_combout\ & !\draw_player_1_paddle|LessThan2~13_cout\)) # (!player_1_paddle_Y_location(7) & ((\VGA_Driver|Add1~14_combout\) # 
-- (!\draw_player_1_paddle|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_1_paddle_Y_location(7),
	datab => \VGA_Driver|Add1~14_combout\,
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan2~13_cout\,
	cout => \draw_player_1_paddle|LessThan2~15_cout\);

-- Location: LCCOMB_X33_Y26_N26
\draw_player_1_paddle|LessThan2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan2~16_combout\ = (\VGA_Driver|Add1~16_combout\ & (!\draw_player_1_paddle|LessThan2~15_cout\ & player_1_paddle_Y_location(8))) # (!\VGA_Driver|Add1~16_combout\ & ((player_1_paddle_Y_location(8)) # 
-- (!\draw_player_1_paddle|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|Add1~16_combout\,
	datad => player_1_paddle_Y_location(8),
	cin => \draw_player_1_paddle|LessThan2~15_cout\,
	combout => \draw_player_1_paddle|LessThan2~16_combout\);

-- Location: LCCOMB_X35_Y24_N12
\draw_player_1_paddle|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|Add1~0_combout\ = (player_1_paddle_Y_location(1) & (player_1_paddle_Y_location(2) $ (VCC))) # (!player_1_paddle_Y_location(1) & (player_1_paddle_Y_location(2) & VCC))
-- \draw_player_1_paddle|Add1~1\ = CARRY((player_1_paddle_Y_location(1) & player_1_paddle_Y_location(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player_1_paddle_Y_location(1),
	datab => player_1_paddle_Y_location(2),
	datad => VCC,
	combout => \draw_player_1_paddle|Add1~0_combout\,
	cout => \draw_player_1_paddle|Add1~1\);

-- Location: LCCOMB_X35_Y24_N14
\draw_player_1_paddle|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|Add1~2_combout\ = (player_1_paddle_Y_location(3) & (!\draw_player_1_paddle|Add1~1\)) # (!player_1_paddle_Y_location(3) & ((\draw_player_1_paddle|Add1~1\) # (GND)))
-- \draw_player_1_paddle|Add1~3\ = CARRY((!\draw_player_1_paddle|Add1~1\) # (!player_1_paddle_Y_location(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_1_paddle_Y_location(3),
	datad => VCC,
	cin => \draw_player_1_paddle|Add1~1\,
	combout => \draw_player_1_paddle|Add1~2_combout\,
	cout => \draw_player_1_paddle|Add1~3\);

-- Location: LCCOMB_X35_Y24_N16
\draw_player_1_paddle|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|Add1~4_combout\ = (player_1_paddle_Y_location(4) & ((GND) # (!\draw_player_1_paddle|Add1~3\))) # (!player_1_paddle_Y_location(4) & (\draw_player_1_paddle|Add1~3\ $ (GND)))
-- \draw_player_1_paddle|Add1~5\ = CARRY((player_1_paddle_Y_location(4)) # (!\draw_player_1_paddle|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player_1_paddle_Y_location(4),
	datad => VCC,
	cin => \draw_player_1_paddle|Add1~3\,
	combout => \draw_player_1_paddle|Add1~4_combout\,
	cout => \draw_player_1_paddle|Add1~5\);

-- Location: LCCOMB_X35_Y24_N18
\draw_player_1_paddle|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|Add1~6_combout\ = (player_1_paddle_Y_location(5) & (\draw_player_1_paddle|Add1~5\ & VCC)) # (!player_1_paddle_Y_location(5) & (!\draw_player_1_paddle|Add1~5\))
-- \draw_player_1_paddle|Add1~7\ = CARRY((!player_1_paddle_Y_location(5) & !\draw_player_1_paddle|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_1_paddle_Y_location(5),
	datad => VCC,
	cin => \draw_player_1_paddle|Add1~5\,
	combout => \draw_player_1_paddle|Add1~6_combout\,
	cout => \draw_player_1_paddle|Add1~7\);

-- Location: LCCOMB_X35_Y24_N20
\draw_player_1_paddle|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|Add1~8_combout\ = (player_1_paddle_Y_location(6) & (\draw_player_1_paddle|Add1~7\ $ (GND))) # (!player_1_paddle_Y_location(6) & (!\draw_player_1_paddle|Add1~7\ & VCC))
-- \draw_player_1_paddle|Add1~9\ = CARRY((player_1_paddle_Y_location(6) & !\draw_player_1_paddle|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_1_paddle_Y_location(6),
	datad => VCC,
	cin => \draw_player_1_paddle|Add1~7\,
	combout => \draw_player_1_paddle|Add1~8_combout\,
	cout => \draw_player_1_paddle|Add1~9\);

-- Location: LCCOMB_X35_Y24_N22
\draw_player_1_paddle|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|Add1~10_combout\ = (player_1_paddle_Y_location(7) & (!\draw_player_1_paddle|Add1~9\)) # (!player_1_paddle_Y_location(7) & ((\draw_player_1_paddle|Add1~9\) # (GND)))
-- \draw_player_1_paddle|Add1~11\ = CARRY((!\draw_player_1_paddle|Add1~9\) # (!player_1_paddle_Y_location(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_1_paddle_Y_location(7),
	datad => VCC,
	cin => \draw_player_1_paddle|Add1~9\,
	combout => \draw_player_1_paddle|Add1~10_combout\,
	cout => \draw_player_1_paddle|Add1~11\);

-- Location: LCCOMB_X35_Y24_N24
\draw_player_1_paddle|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|Add1~12_combout\ = (player_1_paddle_Y_location(8) & (\draw_player_1_paddle|Add1~11\ $ (GND))) # (!player_1_paddle_Y_location(8) & (!\draw_player_1_paddle|Add1~11\ & VCC))
-- \draw_player_1_paddle|Add1~13\ = CARRY((player_1_paddle_Y_location(8) & !\draw_player_1_paddle|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_1_paddle_Y_location(8),
	datad => VCC,
	cin => \draw_player_1_paddle|Add1~11\,
	combout => \draw_player_1_paddle|Add1~12_combout\,
	cout => \draw_player_1_paddle|Add1~13\);

-- Location: LCCOMB_X35_Y24_N26
\draw_player_1_paddle|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|Add1~14_combout\ = \draw_player_1_paddle|Add1~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \draw_player_1_paddle|Add1~13\,
	combout => \draw_player_1_paddle|Add1~14_combout\);

-- Location: LCCOMB_X33_Y24_N6
\draw_player_1_paddle|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan3~1_cout\ = CARRY((!\VGA_Driver|Add1~0_combout\ & player_1_paddle_Y_location(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~0_combout\,
	datab => player_1_paddle_Y_location(0),
	datad => VCC,
	cout => \draw_player_1_paddle|LessThan3~1_cout\);

-- Location: LCCOMB_X33_Y24_N8
\draw_player_1_paddle|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan3~3_cout\ = CARRY((\VGA_Driver|Add1~2_combout\ & ((player_1_paddle_Y_location(1)) # (!\draw_player_1_paddle|LessThan3~1_cout\))) # (!\VGA_Driver|Add1~2_combout\ & (player_1_paddle_Y_location(1) & 
-- !\draw_player_1_paddle|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~2_combout\,
	datab => player_1_paddle_Y_location(1),
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan3~1_cout\,
	cout => \draw_player_1_paddle|LessThan3~3_cout\);

-- Location: LCCOMB_X33_Y24_N10
\draw_player_1_paddle|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan3~5_cout\ = CARRY((\draw_player_1_paddle|Add1~0_combout\ & ((!\draw_player_1_paddle|LessThan3~3_cout\) # (!\VGA_Driver|Add1~4_combout\))) # (!\draw_player_1_paddle|Add1~0_combout\ & (!\VGA_Driver|Add1~4_combout\ & 
-- !\draw_player_1_paddle|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_player_1_paddle|Add1~0_combout\,
	datab => \VGA_Driver|Add1~4_combout\,
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan3~3_cout\,
	cout => \draw_player_1_paddle|LessThan3~5_cout\);

-- Location: LCCOMB_X33_Y24_N12
\draw_player_1_paddle|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan3~7_cout\ = CARRY((\draw_player_1_paddle|Add1~2_combout\ & (\VGA_Driver|Add1~6_combout\ & !\draw_player_1_paddle|LessThan3~5_cout\)) # (!\draw_player_1_paddle|Add1~2_combout\ & ((\VGA_Driver|Add1~6_combout\) # 
-- (!\draw_player_1_paddle|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_player_1_paddle|Add1~2_combout\,
	datab => \VGA_Driver|Add1~6_combout\,
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan3~5_cout\,
	cout => \draw_player_1_paddle|LessThan3~7_cout\);

-- Location: LCCOMB_X33_Y24_N14
\draw_player_1_paddle|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan3~9_cout\ = CARRY((\VGA_Driver|Add1~8_combout\ & (\draw_player_1_paddle|Add1~4_combout\ & !\draw_player_1_paddle|LessThan3~7_cout\)) # (!\VGA_Driver|Add1~8_combout\ & ((\draw_player_1_paddle|Add1~4_combout\) # 
-- (!\draw_player_1_paddle|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~8_combout\,
	datab => \draw_player_1_paddle|Add1~4_combout\,
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan3~7_cout\,
	cout => \draw_player_1_paddle|LessThan3~9_cout\);

-- Location: LCCOMB_X33_Y24_N16
\draw_player_1_paddle|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan3~11_cout\ = CARRY((\draw_player_1_paddle|Add1~6_combout\ & (\VGA_Driver|Add1~10_combout\ & !\draw_player_1_paddle|LessThan3~9_cout\)) # (!\draw_player_1_paddle|Add1~6_combout\ & ((\VGA_Driver|Add1~10_combout\) # 
-- (!\draw_player_1_paddle|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_player_1_paddle|Add1~6_combout\,
	datab => \VGA_Driver|Add1~10_combout\,
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan3~9_cout\,
	cout => \draw_player_1_paddle|LessThan3~11_cout\);

-- Location: LCCOMB_X33_Y24_N18
\draw_player_1_paddle|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan3~13_cout\ = CARRY((\VGA_Driver|Add1~12_combout\ & (\draw_player_1_paddle|Add1~8_combout\ & !\draw_player_1_paddle|LessThan3~11_cout\)) # (!\VGA_Driver|Add1~12_combout\ & ((\draw_player_1_paddle|Add1~8_combout\) # 
-- (!\draw_player_1_paddle|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~12_combout\,
	datab => \draw_player_1_paddle|Add1~8_combout\,
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan3~11_cout\,
	cout => \draw_player_1_paddle|LessThan3~13_cout\);

-- Location: LCCOMB_X33_Y24_N20
\draw_player_1_paddle|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan3~15_cout\ = CARRY((\draw_player_1_paddle|Add1~10_combout\ & (\VGA_Driver|Add1~14_combout\ & !\draw_player_1_paddle|LessThan3~13_cout\)) # (!\draw_player_1_paddle|Add1~10_combout\ & ((\VGA_Driver|Add1~14_combout\) # 
-- (!\draw_player_1_paddle|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_player_1_paddle|Add1~10_combout\,
	datab => \VGA_Driver|Add1~14_combout\,
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan3~13_cout\,
	cout => \draw_player_1_paddle|LessThan3~15_cout\);

-- Location: LCCOMB_X33_Y24_N22
\draw_player_1_paddle|LessThan3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan3~17_cout\ = CARRY((\VGA_Driver|Add1~16_combout\ & (\draw_player_1_paddle|Add1~12_combout\ & !\draw_player_1_paddle|LessThan3~15_cout\)) # (!\VGA_Driver|Add1~16_combout\ & ((\draw_player_1_paddle|Add1~12_combout\) # 
-- (!\draw_player_1_paddle|LessThan3~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~16_combout\,
	datab => \draw_player_1_paddle|Add1~12_combout\,
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan3~15_cout\,
	cout => \draw_player_1_paddle|LessThan3~17_cout\);

-- Location: LCCOMB_X33_Y24_N24
\draw_player_1_paddle|LessThan3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan3~18_combout\ = (\VGA_Driver|Add1~18_combout\ & (\draw_player_1_paddle|LessThan3~17_cout\ & \draw_player_1_paddle|Add1~14_combout\)) # (!\VGA_Driver|Add1~18_combout\ & ((\draw_player_1_paddle|LessThan3~17_cout\) # 
-- (\draw_player_1_paddle|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|Add1~18_combout\,
	datad => \draw_player_1_paddle|Add1~14_combout\,
	cin => \draw_player_1_paddle|LessThan3~17_cout\,
	combout => \draw_player_1_paddle|LessThan3~18_combout\);

-- Location: LCCOMB_X33_Y26_N0
\draw_player_1_paddle|always0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|always0~3_combout\ = (\draw_player_1_paddle|always0~2_combout\ & (\draw_player_1_paddle|LessThan3~18_combout\ & ((\VGA_Driver|Add1~18_combout\) # (!\draw_player_1_paddle|LessThan2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_player_1_paddle|always0~2_combout\,
	datab => \VGA_Driver|Add1~18_combout\,
	datac => \draw_player_1_paddle|LessThan2~16_combout\,
	datad => \draw_player_1_paddle|LessThan3~18_combout\,
	combout => \draw_player_1_paddle|always0~3_combout\);

-- Location: FF_X33_Y26_N1
\draw_player_1_paddle|box\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \draw_player_1_paddle|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \draw_player_1_paddle|box~q\);

-- Location: LCCOMB_X11_Y24_N12
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ball_speed_counter(0) $ (VCC)
-- \Add0~1\ = CARRY(ball_speed_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ball_speed_counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X11_Y24_N8
\ball_speed_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_speed_counter~2_combout\ = (\Add0~0_combout\ & !\Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datad => \Equal1~6_combout\,
	combout => \ball_speed_counter~2_combout\);

-- Location: FF_X11_Y24_N9
\ball_speed_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_speed_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(0));

-- Location: LCCOMB_X11_Y24_N14
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (ball_speed_counter(1) & (!\Add0~1\)) # (!ball_speed_counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!ball_speed_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_speed_counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X11_Y24_N15
\ball_speed_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(1));

-- Location: LCCOMB_X11_Y24_N16
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (ball_speed_counter(2) & (\Add0~3\ $ (GND))) # (!ball_speed_counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((ball_speed_counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_speed_counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X11_Y24_N17
\ball_speed_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(2));

-- Location: LCCOMB_X11_Y24_N18
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (ball_speed_counter(3) & (!\Add0~5\)) # (!ball_speed_counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!ball_speed_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_speed_counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X11_Y24_N19
\ball_speed_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(3));

-- Location: LCCOMB_X11_Y24_N10
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!ball_speed_counter(2) & (!ball_speed_counter(1) & (!ball_speed_counter(0) & !ball_speed_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_speed_counter(2),
	datab => ball_speed_counter(1),
	datac => ball_speed_counter(0),
	datad => ball_speed_counter(3),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X11_Y24_N20
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (ball_speed_counter(4) & (\Add0~7\ $ (GND))) # (!ball_speed_counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((ball_speed_counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_speed_counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X11_Y24_N21
\ball_speed_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(4));

-- Location: LCCOMB_X11_Y24_N22
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (ball_speed_counter(5) & (!\Add0~9\)) # (!ball_speed_counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!ball_speed_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_speed_counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X11_Y24_N23
\ball_speed_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(5));

-- Location: LCCOMB_X11_Y24_N24
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (ball_speed_counter(6) & (\Add0~11\ $ (GND))) # (!ball_speed_counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((ball_speed_counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_speed_counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X11_Y24_N4
\ball_speed_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_speed_counter~3_combout\ = (\Add0~12_combout\ & !\Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datad => \Equal1~6_combout\,
	combout => \ball_speed_counter~3_combout\);

-- Location: FF_X11_Y24_N5
\ball_speed_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_speed_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(6));

-- Location: LCCOMB_X11_Y24_N26
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (ball_speed_counter(7) & (!\Add0~13\)) # (!ball_speed_counter(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!ball_speed_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_speed_counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X11_Y24_N27
\ball_speed_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(7));

-- Location: LCCOMB_X11_Y24_N28
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (ball_speed_counter(8) & (\Add0~15\ $ (GND))) # (!ball_speed_counter(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((ball_speed_counter(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_speed_counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X11_Y24_N0
\ball_speed_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_speed_counter~4_combout\ = (\Add0~16_combout\ & !\Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datad => \Equal1~6_combout\,
	combout => \ball_speed_counter~4_combout\);

-- Location: FF_X11_Y24_N1
\ball_speed_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_speed_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(8));

-- Location: LCCOMB_X11_Y24_N30
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (ball_speed_counter(9) & (!\Add0~17\)) # (!ball_speed_counter(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!ball_speed_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_speed_counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X11_Y24_N31
\ball_speed_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(9));

-- Location: LCCOMB_X11_Y23_N0
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (ball_speed_counter(10) & (\Add0~19\ $ (GND))) # (!ball_speed_counter(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((ball_speed_counter(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_speed_counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X9_Y23_N8
\ball_speed_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_speed_counter~5_combout\ = (\Add0~20_combout\ & !\Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	datad => \Equal1~6_combout\,
	combout => \ball_speed_counter~5_combout\);

-- Location: FF_X9_Y23_N9
\ball_speed_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_speed_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(10));

-- Location: LCCOMB_X11_Y23_N2
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (ball_speed_counter(11) & (!\Add0~21\)) # (!ball_speed_counter(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!ball_speed_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_speed_counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X11_Y23_N26
\ball_speed_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_speed_counter~6_combout\ = (\Add0~22_combout\ & !\Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~22_combout\,
	datad => \Equal1~6_combout\,
	combout => \ball_speed_counter~6_combout\);

-- Location: FF_X11_Y23_N27
\ball_speed_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_speed_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(11));

-- Location: LCCOMB_X11_Y23_N4
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (ball_speed_counter(12) & (\Add0~23\ $ (GND))) # (!ball_speed_counter(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((ball_speed_counter(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_speed_counter(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X11_Y23_N5
\ball_speed_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(12));

-- Location: LCCOMB_X11_Y23_N6
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (ball_speed_counter(13) & (!\Add0~25\)) # (!ball_speed_counter(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!ball_speed_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_speed_counter(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X11_Y23_N7
\ball_speed_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(13));

-- Location: LCCOMB_X11_Y23_N8
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (ball_speed_counter(14) & (\Add0~27\ $ (GND))) # (!ball_speed_counter(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((ball_speed_counter(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_speed_counter(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X11_Y23_N9
\ball_speed_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(14));

-- Location: LCCOMB_X11_Y23_N10
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (ball_speed_counter(15) & (!\Add0~29\)) # (!ball_speed_counter(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!ball_speed_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_speed_counter(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X11_Y23_N11
\ball_speed_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(15));

-- Location: LCCOMB_X9_Y23_N26
\Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (ball_speed_counter(11) & (ball_speed_counter(10) & (!ball_speed_counter(9) & ball_speed_counter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_speed_counter(11),
	datab => ball_speed_counter(10),
	datac => ball_speed_counter(9),
	datad => ball_speed_counter(8),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X11_Y23_N28
\Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (!ball_speed_counter(12) & !ball_speed_counter(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ball_speed_counter(12),
	datad => ball_speed_counter(13),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X11_Y23_N22
\Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!ball_speed_counter(15) & (\Equal1~3_combout\ & (!ball_speed_counter(14) & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_speed_counter(15),
	datab => \Equal1~3_combout\,
	datac => ball_speed_counter(14),
	datad => \Equal1~4_combout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X11_Y23_N12
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (ball_speed_counter(16) & (\Add0~31\ $ (GND))) # (!ball_speed_counter(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((ball_speed_counter(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_speed_counter(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X11_Y23_N20
\ball_speed_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_speed_counter~0_combout\ = (\Add0~32_combout\ & !\Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datad => \Equal1~6_combout\,
	combout => \ball_speed_counter~0_combout\);

-- Location: FF_X11_Y23_N21
\ball_speed_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_speed_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(16));

-- Location: LCCOMB_X11_Y23_N14
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (ball_speed_counter(17) & (!\Add0~33\)) # (!ball_speed_counter(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!ball_speed_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_speed_counter(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X11_Y23_N30
\ball_speed_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_speed_counter~1_combout\ = (\Add0~34_combout\ & !\Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~34_combout\,
	datad => \Equal1~6_combout\,
	combout => \ball_speed_counter~1_combout\);

-- Location: FF_X11_Y23_N31
\ball_speed_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_speed_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(17));

-- Location: LCCOMB_X11_Y23_N16
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (ball_speed_counter(18) & (\Add0~35\ $ (GND))) # (!ball_speed_counter(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((ball_speed_counter(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_speed_counter(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X11_Y23_N17
\ball_speed_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(18));

-- Location: LCCOMB_X11_Y23_N18
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = \Add0~37\ $ (ball_speed_counter(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => ball_speed_counter(19),
	cin => \Add0~37\,
	combout => \Add0~38_combout\);

-- Location: FF_X11_Y23_N19
\ball_speed_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(19));

-- Location: LCCOMB_X11_Y23_N24
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!ball_speed_counter(19) & (ball_speed_counter(16) & (ball_speed_counter(17) & !ball_speed_counter(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_speed_counter(19),
	datab => ball_speed_counter(16),
	datac => ball_speed_counter(17),
	datad => ball_speed_counter(18),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X11_Y24_N6
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!ball_speed_counter(5) & (ball_speed_counter(6) & (!ball_speed_counter(7) & !ball_speed_counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_speed_counter(5),
	datab => ball_speed_counter(6),
	datac => ball_speed_counter(7),
	datad => ball_speed_counter(4),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X11_Y24_N2
\Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (\Equal1~1_combout\ & (\Equal1~5_combout\ & (\Equal1~0_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~5_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X30_Y25_N4
\b_direction~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b_direction~0_combout\ = (\Equal1~6_combout\ & ((!\ball_X_location[1]~14_combout\))) # (!\Equal1~6_combout\ & (\b_direction~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~6_combout\,
	datac => \b_direction~q\,
	datad => \ball_X_location[1]~14_combout\,
	combout => \b_direction~0_combout\);

-- Location: FF_X30_Y25_N5
b_direction : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b_direction~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_direction~q\);

-- Location: LCCOMB_X30_Y25_N10
\ball_X_location[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[0]~15_combout\ = ball_X_location(0) $ (VCC)
-- \ball_X_location[0]~16\ = CARRY(ball_X_location(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(0),
	datad => VCC,
	combout => \ball_X_location[0]~15_combout\,
	cout => \ball_X_location[0]~16\);

-- Location: FF_X30_Y25_N11
\ball_X_location[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_X_location[0]~15_combout\,
	ena => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(0));

-- Location: LCCOMB_X30_Y25_N12
\ball_X_location[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[1]~17_combout\ = (\ball_X_location[1]~14_combout\ & ((ball_X_location(1) & (\ball_X_location[0]~16\ & VCC)) # (!ball_X_location(1) & (!\ball_X_location[0]~16\)))) # (!\ball_X_location[1]~14_combout\ & ((ball_X_location(1) & 
-- (!\ball_X_location[0]~16\)) # (!ball_X_location(1) & ((\ball_X_location[0]~16\) # (GND)))))
-- \ball_X_location[1]~18\ = CARRY((\ball_X_location[1]~14_combout\ & (!ball_X_location(1) & !\ball_X_location[0]~16\)) # (!\ball_X_location[1]~14_combout\ & ((!\ball_X_location[0]~16\) # (!ball_X_location(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_X_location[1]~14_combout\,
	datab => ball_X_location(1),
	datad => VCC,
	cin => \ball_X_location[0]~16\,
	combout => \ball_X_location[1]~17_combout\,
	cout => \ball_X_location[1]~18\);

-- Location: FF_X30_Y25_N13
\ball_X_location[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_X_location[1]~17_combout\,
	ena => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(1));

-- Location: LCCOMB_X30_Y25_N14
\ball_X_location[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[2]~19_combout\ = ((\ball_X_location[1]~14_combout\ $ (ball_X_location(2) $ (!\ball_X_location[1]~18\)))) # (GND)
-- \ball_X_location[2]~20\ = CARRY((\ball_X_location[1]~14_combout\ & ((ball_X_location(2)) # (!\ball_X_location[1]~18\))) # (!\ball_X_location[1]~14_combout\ & (ball_X_location(2) & !\ball_X_location[1]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_X_location[1]~14_combout\,
	datab => ball_X_location(2),
	datad => VCC,
	cin => \ball_X_location[1]~18\,
	combout => \ball_X_location[2]~19_combout\,
	cout => \ball_X_location[2]~20\);

-- Location: FF_X30_Y25_N15
\ball_X_location[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_X_location[2]~19_combout\,
	ena => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(2));

-- Location: LCCOMB_X30_Y25_N30
\ball_X_location[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[1]~12_combout\ = (\b_direction~q\ & ((ball_X_location(2)) # (ball_X_location(1)))) # (!\b_direction~q\ & (ball_X_location(2) & ball_X_location(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b_direction~q\,
	datac => ball_X_location(2),
	datad => ball_X_location(1),
	combout => \ball_X_location[1]~12_combout\);

-- Location: LCCOMB_X30_Y25_N16
\ball_X_location[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[3]~21_combout\ = (\ball_X_location[1]~14_combout\ & ((ball_X_location(3) & (\ball_X_location[2]~20\ & VCC)) # (!ball_X_location(3) & (!\ball_X_location[2]~20\)))) # (!\ball_X_location[1]~14_combout\ & ((ball_X_location(3) & 
-- (!\ball_X_location[2]~20\)) # (!ball_X_location(3) & ((\ball_X_location[2]~20\) # (GND)))))
-- \ball_X_location[3]~22\ = CARRY((\ball_X_location[1]~14_combout\ & (!ball_X_location(3) & !\ball_X_location[2]~20\)) # (!\ball_X_location[1]~14_combout\ & ((!\ball_X_location[2]~20\) # (!ball_X_location(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_X_location[1]~14_combout\,
	datab => ball_X_location(3),
	datad => VCC,
	cin => \ball_X_location[2]~20\,
	combout => \ball_X_location[3]~21_combout\,
	cout => \ball_X_location[3]~22\);

-- Location: FF_X30_Y25_N17
\ball_X_location[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_X_location[3]~21_combout\,
	ena => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(3));

-- Location: LCCOMB_X30_Y25_N18
\ball_X_location[4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[4]~23_combout\ = ((\ball_X_location[1]~14_combout\ $ (ball_X_location(4) $ (!\ball_X_location[3]~22\)))) # (GND)
-- \ball_X_location[4]~24\ = CARRY((\ball_X_location[1]~14_combout\ & ((ball_X_location(4)) # (!\ball_X_location[3]~22\))) # (!\ball_X_location[1]~14_combout\ & (ball_X_location(4) & !\ball_X_location[3]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_X_location[1]~14_combout\,
	datab => ball_X_location(4),
	datad => VCC,
	cin => \ball_X_location[3]~22\,
	combout => \ball_X_location[4]~23_combout\,
	cout => \ball_X_location[4]~24\);

-- Location: FF_X30_Y25_N19
\ball_X_location[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_X_location[4]~23_combout\,
	ena => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(4));

-- Location: LCCOMB_X30_Y25_N20
\ball_X_location[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[5]~25_combout\ = (\ball_X_location[1]~14_combout\ & ((ball_X_location(5) & (\ball_X_location[4]~24\ & VCC)) # (!ball_X_location(5) & (!\ball_X_location[4]~24\)))) # (!\ball_X_location[1]~14_combout\ & ((ball_X_location(5) & 
-- (!\ball_X_location[4]~24\)) # (!ball_X_location(5) & ((\ball_X_location[4]~24\) # (GND)))))
-- \ball_X_location[5]~26\ = CARRY((\ball_X_location[1]~14_combout\ & (!ball_X_location(5) & !\ball_X_location[4]~24\)) # (!\ball_X_location[1]~14_combout\ & ((!\ball_X_location[4]~24\) # (!ball_X_location(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_X_location[1]~14_combout\,
	datab => ball_X_location(5),
	datad => VCC,
	cin => \ball_X_location[4]~24\,
	combout => \ball_X_location[5]~25_combout\,
	cout => \ball_X_location[5]~26\);

-- Location: FF_X30_Y25_N21
\ball_X_location[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_X_location[5]~25_combout\,
	ena => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(5));

-- Location: LCCOMB_X30_Y25_N22
\ball_X_location[6]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[6]~27_combout\ = ((\ball_X_location[1]~14_combout\ $ (ball_X_location(6) $ (!\ball_X_location[5]~26\)))) # (GND)
-- \ball_X_location[6]~28\ = CARRY((\ball_X_location[1]~14_combout\ & ((ball_X_location(6)) # (!\ball_X_location[5]~26\))) # (!\ball_X_location[1]~14_combout\ & (ball_X_location(6) & !\ball_X_location[5]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_X_location[1]~14_combout\,
	datab => ball_X_location(6),
	datad => VCC,
	cin => \ball_X_location[5]~26\,
	combout => \ball_X_location[6]~27_combout\,
	cout => \ball_X_location[6]~28\);

-- Location: FF_X30_Y25_N23
\ball_X_location[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_X_location[6]~27_combout\,
	ena => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(6));

-- Location: LCCOMB_X30_Y25_N8
\ball_X_location[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[1]~10_combout\ = (!ball_X_location(6) & !ball_X_location(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ball_X_location(6),
	datad => ball_X_location(5),
	combout => \ball_X_location[1]~10_combout\);

-- Location: LCCOMB_X30_Y25_N24
\ball_X_location[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[7]~29_combout\ = (\ball_X_location[1]~14_combout\ & ((ball_X_location(7) & (\ball_X_location[6]~28\ & VCC)) # (!ball_X_location(7) & (!\ball_X_location[6]~28\)))) # (!\ball_X_location[1]~14_combout\ & ((ball_X_location(7) & 
-- (!\ball_X_location[6]~28\)) # (!ball_X_location(7) & ((\ball_X_location[6]~28\) # (GND)))))
-- \ball_X_location[7]~30\ = CARRY((\ball_X_location[1]~14_combout\ & (!ball_X_location(7) & !\ball_X_location[6]~28\)) # (!\ball_X_location[1]~14_combout\ & ((!\ball_X_location[6]~28\) # (!ball_X_location(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_X_location[1]~14_combout\,
	datab => ball_X_location(7),
	datad => VCC,
	cin => \ball_X_location[6]~28\,
	combout => \ball_X_location[7]~29_combout\,
	cout => \ball_X_location[7]~30\);

-- Location: FF_X30_Y25_N25
\ball_X_location[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_X_location[7]~29_combout\,
	ena => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(7));

-- Location: LCCOMB_X30_Y25_N26
\ball_X_location[8]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[8]~31_combout\ = ((ball_X_location(8) $ (\ball_X_location[1]~14_combout\ $ (!\ball_X_location[7]~30\)))) # (GND)
-- \ball_X_location[8]~32\ = CARRY((ball_X_location(8) & ((\ball_X_location[1]~14_combout\) # (!\ball_X_location[7]~30\))) # (!ball_X_location(8) & (\ball_X_location[1]~14_combout\ & !\ball_X_location[7]~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(8),
	datab => \ball_X_location[1]~14_combout\,
	datad => VCC,
	cin => \ball_X_location[7]~30\,
	combout => \ball_X_location[8]~31_combout\,
	cout => \ball_X_location[8]~32\);

-- Location: FF_X30_Y25_N27
\ball_X_location[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_X_location[8]~31_combout\,
	ena => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(8));

-- Location: LCCOMB_X30_Y25_N2
\ball_X_location[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[1]~11_combout\ = (!ball_X_location(3) & (\ball_X_location[1]~10_combout\ & (!ball_X_location(8) & !ball_X_location(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(3),
	datab => \ball_X_location[1]~10_combout\,
	datac => ball_X_location(8),
	datad => ball_X_location(4),
	combout => \ball_X_location[1]~11_combout\);

-- Location: LCCOMB_X30_Y25_N0
\ball_X_location[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[1]~13_combout\ = (ball_X_location(7) & (((!ball_X_location(0) & ball_X_location(9))) # (!\b_direction~q\))) # (!ball_X_location(7) & (((!\b_direction~q\ & ball_X_location(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(0),
	datab => ball_X_location(7),
	datac => \b_direction~q\,
	datad => ball_X_location(9),
	combout => \ball_X_location[1]~13_combout\);

-- Location: LCCOMB_X30_Y25_N6
\ball_X_location[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[1]~14_combout\ = (\ball_X_location[1]~12_combout\ & (((!\b_direction~q\)))) # (!\ball_X_location[1]~12_combout\ & ((\ball_X_location[1]~11_combout\ & ((\ball_X_location[1]~13_combout\))) # (!\ball_X_location[1]~11_combout\ & 
-- (!\b_direction~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_X_location[1]~12_combout\,
	datab => \ball_X_location[1]~11_combout\,
	datac => \b_direction~q\,
	datad => \ball_X_location[1]~13_combout\,
	combout => \ball_X_location[1]~14_combout\);

-- Location: LCCOMB_X30_Y25_N28
\ball_X_location[9]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[9]~33_combout\ = \ball_X_location[1]~14_combout\ $ (\ball_X_location[8]~32\ $ (ball_X_location(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_X_location[1]~14_combout\,
	datad => ball_X_location(9),
	cin => \ball_X_location[8]~32\,
	combout => \ball_X_location[9]~33_combout\);

-- Location: FF_X30_Y25_N29
\ball_X_location[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_X_location[9]~33_combout\,
	ena => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(9));

-- Location: LCCOMB_X29_Y24_N6
\draw_ball|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~1_cout\ = CARRY((ball_X_location(0) & !\VGA_Driver|HS_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(0),
	datab => \VGA_Driver|HS_counter\(0),
	datad => VCC,
	cout => \draw_ball|LessThan0~1_cout\);

-- Location: LCCOMB_X29_Y24_N8
\draw_ball|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~3_cout\ = CARRY((ball_X_location(1) & (\VGA_Driver|HS_counter\(1) & !\draw_ball|LessThan0~1_cout\)) # (!ball_X_location(1) & ((\VGA_Driver|HS_counter\(1)) # (!\draw_ball|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(1),
	datab => \VGA_Driver|HS_counter\(1),
	datad => VCC,
	cin => \draw_ball|LessThan0~1_cout\,
	cout => \draw_ball|LessThan0~3_cout\);

-- Location: LCCOMB_X29_Y24_N10
\draw_ball|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~5_cout\ = CARRY((\VGA_Driver|HS_counter\(2) & (ball_X_location(2) & !\draw_ball|LessThan0~3_cout\)) # (!\VGA_Driver|HS_counter\(2) & ((ball_X_location(2)) # (!\draw_ball|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(2),
	datab => ball_X_location(2),
	datad => VCC,
	cin => \draw_ball|LessThan0~3_cout\,
	cout => \draw_ball|LessThan0~5_cout\);

-- Location: LCCOMB_X29_Y24_N12
\draw_ball|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~7_cout\ = CARRY((ball_X_location(3) & (\VGA_Driver|HS_counter\(3) & !\draw_ball|LessThan0~5_cout\)) # (!ball_X_location(3) & ((\VGA_Driver|HS_counter\(3)) # (!\draw_ball|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(3),
	datab => \VGA_Driver|HS_counter\(3),
	datad => VCC,
	cin => \draw_ball|LessThan0~5_cout\,
	cout => \draw_ball|LessThan0~7_cout\);

-- Location: LCCOMB_X29_Y24_N14
\draw_ball|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~9_cout\ = CARRY((\VGA_Driver|HS_counter\(4) & (ball_X_location(4) & !\draw_ball|LessThan0~7_cout\)) # (!\VGA_Driver|HS_counter\(4) & ((ball_X_location(4)) # (!\draw_ball|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(4),
	datab => ball_X_location(4),
	datad => VCC,
	cin => \draw_ball|LessThan0~7_cout\,
	cout => \draw_ball|LessThan0~9_cout\);

-- Location: LCCOMB_X29_Y24_N16
\draw_ball|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~11_cout\ = CARRY((ball_X_location(5) & (!\VGA_Driver|HS_counter\(5) & !\draw_ball|LessThan0~9_cout\)) # (!ball_X_location(5) & ((!\draw_ball|LessThan0~9_cout\) # (!\VGA_Driver|HS_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(5),
	datab => \VGA_Driver|HS_counter\(5),
	datad => VCC,
	cin => \draw_ball|LessThan0~9_cout\,
	cout => \draw_ball|LessThan0~11_cout\);

-- Location: LCCOMB_X29_Y24_N18
\draw_ball|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~13_cout\ = CARRY((ball_X_location(6) & ((\VGA_Driver|Add0~4_combout\) # (!\draw_ball|LessThan0~11_cout\))) # (!ball_X_location(6) & (\VGA_Driver|Add0~4_combout\ & !\draw_ball|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(6),
	datab => \VGA_Driver|Add0~4_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan0~11_cout\,
	cout => \draw_ball|LessThan0~13_cout\);

-- Location: LCCOMB_X29_Y24_N20
\draw_ball|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~15_cout\ = CARRY((\VGA_Driver|Add0~3_combout\ & ((!\draw_ball|LessThan0~13_cout\) # (!ball_X_location(7)))) # (!\VGA_Driver|Add0~3_combout\ & (!ball_X_location(7) & !\draw_ball|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~3_combout\,
	datab => ball_X_location(7),
	datad => VCC,
	cin => \draw_ball|LessThan0~13_cout\,
	cout => \draw_ball|LessThan0~15_cout\);

-- Location: LCCOMB_X29_Y24_N22
\draw_ball|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~17_cout\ = CARRY((\VGA_Driver|Add0~2_combout\ & ((ball_X_location(8)) # (!\draw_ball|LessThan0~15_cout\))) # (!\VGA_Driver|Add0~2_combout\ & (ball_X_location(8) & !\draw_ball|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~2_combout\,
	datab => ball_X_location(8),
	datad => VCC,
	cin => \draw_ball|LessThan0~15_cout\,
	cout => \draw_ball|LessThan0~17_cout\);

-- Location: LCCOMB_X29_Y24_N24
\draw_ball|LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~18_combout\ = (\VGA_Driver|Add0~1_combout\ & ((ball_X_location(9)) # (\draw_ball|LessThan0~17_cout\))) # (!\VGA_Driver|Add0~1_combout\ & (ball_X_location(9) & \draw_ball|LessThan0~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~1_combout\,
	datab => ball_X_location(9),
	cin => \draw_ball|LessThan0~17_cout\,
	combout => \draw_ball|LessThan0~18_combout\);

-- Location: LCCOMB_X29_Y26_N8
\draw_ball|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add0~0_combout\ = (ball_X_location(3) & (ball_X_location(2) $ (VCC))) # (!ball_X_location(3) & (ball_X_location(2) & VCC))
-- \draw_ball|Add0~1\ = CARRY((ball_X_location(3) & ball_X_location(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(3),
	datab => ball_X_location(2),
	datad => VCC,
	combout => \draw_ball|Add0~0_combout\,
	cout => \draw_ball|Add0~1\);

-- Location: LCCOMB_X29_Y26_N10
\draw_ball|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add0~2_combout\ = (ball_X_location(4) & (!\draw_ball|Add0~1\)) # (!ball_X_location(4) & ((\draw_ball|Add0~1\) # (GND)))
-- \draw_ball|Add0~3\ = CARRY((!\draw_ball|Add0~1\) # (!ball_X_location(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(4),
	datad => VCC,
	cin => \draw_ball|Add0~1\,
	combout => \draw_ball|Add0~2_combout\,
	cout => \draw_ball|Add0~3\);

-- Location: LCCOMB_X29_Y26_N12
\draw_ball|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add0~4_combout\ = (ball_X_location(5) & (\draw_ball|Add0~3\ $ (GND))) # (!ball_X_location(5) & (!\draw_ball|Add0~3\ & VCC))
-- \draw_ball|Add0~5\ = CARRY((ball_X_location(5) & !\draw_ball|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(5),
	datad => VCC,
	cin => \draw_ball|Add0~3\,
	combout => \draw_ball|Add0~4_combout\,
	cout => \draw_ball|Add0~5\);

-- Location: LCCOMB_X29_Y26_N14
\draw_ball|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add0~6_combout\ = (ball_X_location(6) & (!\draw_ball|Add0~5\)) # (!ball_X_location(6) & ((\draw_ball|Add0~5\) # (GND)))
-- \draw_ball|Add0~7\ = CARRY((!\draw_ball|Add0~5\) # (!ball_X_location(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(6),
	datad => VCC,
	cin => \draw_ball|Add0~5\,
	combout => \draw_ball|Add0~6_combout\,
	cout => \draw_ball|Add0~7\);

-- Location: LCCOMB_X29_Y26_N16
\draw_ball|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add0~8_combout\ = (ball_X_location(7) & (\draw_ball|Add0~7\ $ (GND))) # (!ball_X_location(7) & (!\draw_ball|Add0~7\ & VCC))
-- \draw_ball|Add0~9\ = CARRY((ball_X_location(7) & !\draw_ball|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(7),
	datad => VCC,
	cin => \draw_ball|Add0~7\,
	combout => \draw_ball|Add0~8_combout\,
	cout => \draw_ball|Add0~9\);

-- Location: LCCOMB_X29_Y26_N18
\draw_ball|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add0~10_combout\ = (ball_X_location(8) & (!\draw_ball|Add0~9\)) # (!ball_X_location(8) & ((\draw_ball|Add0~9\) # (GND)))
-- \draw_ball|Add0~11\ = CARRY((!\draw_ball|Add0~9\) # (!ball_X_location(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(8),
	datad => VCC,
	cin => \draw_ball|Add0~9\,
	combout => \draw_ball|Add0~10_combout\,
	cout => \draw_ball|Add0~11\);

-- Location: LCCOMB_X29_Y26_N20
\draw_ball|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add0~12_combout\ = \draw_ball|Add0~11\ $ (!ball_X_location(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => ball_X_location(9),
	cin => \draw_ball|Add0~11\,
	combout => \draw_ball|Add0~12_combout\);

-- Location: LCCOMB_X30_Y26_N0
\draw_ball|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~1_cout\ = CARRY((ball_X_location(0) & !\VGA_Driver|HS_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(0),
	datab => \VGA_Driver|HS_counter\(0),
	datad => VCC,
	cout => \draw_ball|LessThan1~1_cout\);

-- Location: LCCOMB_X30_Y26_N2
\draw_ball|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~3_cout\ = CARRY((\VGA_Driver|HS_counter\(1) & ((!\draw_ball|LessThan1~1_cout\) # (!ball_X_location(1)))) # (!\VGA_Driver|HS_counter\(1) & (!ball_X_location(1) & !\draw_ball|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(1),
	datab => ball_X_location(1),
	datad => VCC,
	cin => \draw_ball|LessThan1~1_cout\,
	cout => \draw_ball|LessThan1~3_cout\);

-- Location: LCCOMB_X30_Y26_N4
\draw_ball|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~5_cout\ = CARRY((ball_X_location(2) & (!\VGA_Driver|HS_counter\(2) & !\draw_ball|LessThan1~3_cout\)) # (!ball_X_location(2) & ((!\draw_ball|LessThan1~3_cout\) # (!\VGA_Driver|HS_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(2),
	datab => \VGA_Driver|HS_counter\(2),
	datad => VCC,
	cin => \draw_ball|LessThan1~3_cout\,
	cout => \draw_ball|LessThan1~5_cout\);

-- Location: LCCOMB_X30_Y26_N6
\draw_ball|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~7_cout\ = CARRY((\draw_ball|Add0~0_combout\ & (\VGA_Driver|HS_counter\(3) & !\draw_ball|LessThan1~5_cout\)) # (!\draw_ball|Add0~0_combout\ & ((\VGA_Driver|HS_counter\(3)) # (!\draw_ball|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_ball|Add0~0_combout\,
	datab => \VGA_Driver|HS_counter\(3),
	datad => VCC,
	cin => \draw_ball|LessThan1~5_cout\,
	cout => \draw_ball|LessThan1~7_cout\);

-- Location: LCCOMB_X30_Y26_N8
\draw_ball|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~9_cout\ = CARRY((\draw_ball|Add0~2_combout\ & ((!\draw_ball|LessThan1~7_cout\) # (!\VGA_Driver|HS_counter\(4)))) # (!\draw_ball|Add0~2_combout\ & (!\VGA_Driver|HS_counter\(4) & !\draw_ball|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_ball|Add0~2_combout\,
	datab => \VGA_Driver|HS_counter\(4),
	datad => VCC,
	cin => \draw_ball|LessThan1~7_cout\,
	cout => \draw_ball|LessThan1~9_cout\);

-- Location: LCCOMB_X30_Y26_N10
\draw_ball|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~11_cout\ = CARRY((\VGA_Driver|HS_counter\(5) & (!\draw_ball|Add0~4_combout\ & !\draw_ball|LessThan1~9_cout\)) # (!\VGA_Driver|HS_counter\(5) & ((!\draw_ball|LessThan1~9_cout\) # (!\draw_ball|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(5),
	datab => \draw_ball|Add0~4_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan1~9_cout\,
	cout => \draw_ball|LessThan1~11_cout\);

-- Location: LCCOMB_X30_Y26_N12
\draw_ball|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~13_cout\ = CARRY((\VGA_Driver|Add0~4_combout\ & ((\draw_ball|Add0~6_combout\) # (!\draw_ball|LessThan1~11_cout\))) # (!\VGA_Driver|Add0~4_combout\ & (\draw_ball|Add0~6_combout\ & !\draw_ball|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~4_combout\,
	datab => \draw_ball|Add0~6_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan1~11_cout\,
	cout => \draw_ball|LessThan1~13_cout\);

-- Location: LCCOMB_X30_Y26_N14
\draw_ball|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~15_cout\ = CARRY((\draw_ball|Add0~8_combout\ & (\VGA_Driver|Add0~3_combout\ & !\draw_ball|LessThan1~13_cout\)) # (!\draw_ball|Add0~8_combout\ & ((\VGA_Driver|Add0~3_combout\) # (!\draw_ball|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_ball|Add0~8_combout\,
	datab => \VGA_Driver|Add0~3_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan1~13_cout\,
	cout => \draw_ball|LessThan1~15_cout\);

-- Location: LCCOMB_X30_Y26_N16
\draw_ball|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~17_cout\ = CARRY((\VGA_Driver|Add0~2_combout\ & ((\draw_ball|Add0~10_combout\) # (!\draw_ball|LessThan1~15_cout\))) # (!\VGA_Driver|Add0~2_combout\ & (\draw_ball|Add0~10_combout\ & !\draw_ball|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~2_combout\,
	datab => \draw_ball|Add0~10_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan1~15_cout\,
	cout => \draw_ball|LessThan1~17_cout\);

-- Location: LCCOMB_X30_Y26_N18
\draw_ball|LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~18_combout\ = (\draw_ball|Add0~12_combout\ & ((\draw_ball|LessThan1~17_cout\) # (\VGA_Driver|Add0~1_combout\))) # (!\draw_ball|Add0~12_combout\ & (\draw_ball|LessThan1~17_cout\ & \VGA_Driver|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \draw_ball|Add0~12_combout\,
	datad => \VGA_Driver|Add0~1_combout\,
	cin => \draw_ball|LessThan1~17_cout\,
	combout => \draw_ball|LessThan1~18_combout\);

-- Location: LCCOMB_X33_Y22_N2
\draw_ball|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|always0~0_combout\ = (!\draw_ball|LessThan0~18_combout\ & (!\VGA_Driver|Add1~18_combout\ & (!\VGA_Driver|Add1~4_combout\ & \draw_ball|LessThan1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_ball|LessThan0~18_combout\,
	datab => \VGA_Driver|Add1~18_combout\,
	datac => \VGA_Driver|Add1~4_combout\,
	datad => \draw_ball|LessThan1~18_combout\,
	combout => \draw_ball|always0~0_combout\);

-- Location: LCCOMB_X33_Y22_N0
\draw_ball|always0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|always0~1_combout\ = (!\VGA_Driver|Add1~8_combout\ & (!\VGA_Driver|Add1~12_combout\ & (!\VGA_Driver|Add1~10_combout\ & !\VGA_Driver|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~8_combout\,
	datab => \VGA_Driver|Add1~12_combout\,
	datac => \VGA_Driver|Add1~10_combout\,
	datad => \VGA_Driver|Add1~6_combout\,
	combout => \draw_ball|always0~1_combout\);

-- Location: LCCOMB_X33_Y22_N24
\draw_ball|always0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|always0~2_combout\ = (!\VGA_Driver|Add1~14_combout\ & (\draw_ball|always0~0_combout\ & (!\VGA_Driver|Add1~16_combout\ & \draw_ball|always0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~14_combout\,
	datab => \draw_ball|always0~0_combout\,
	datac => \VGA_Driver|Add1~16_combout\,
	datad => \draw_ball|always0~1_combout\,
	combout => \draw_ball|always0~2_combout\);

-- Location: FF_X33_Y22_N25
\draw_ball|box\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \draw_ball|always0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \draw_ball|box~q\);

-- Location: LCCOMB_X40_Y18_N8
\pixel_color~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_color~0_combout\ = (!\draw_player_1_paddle|box~q\ & \draw_ball|box~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draw_player_1_paddle|box~q\,
	datac => \draw_ball|box~q\,
	combout => \pixel_color~0_combout\);

-- Location: FF_X40_Y18_N9
\pixel_color[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \pixel_color~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_color(11));

-- Location: LCCOMB_X40_Y18_N6
\VGA_Driver|VGA_BUS_R~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_R~0_combout\ = (\VGA_Driver|V_visible\(0) & (\VGA_Driver|H_visible\(0) & pixel_color(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|V_visible\(0),
	datab => \VGA_Driver|H_visible\(0),
	datac => pixel_color(11),
	combout => \VGA_Driver|VGA_BUS_R~0_combout\);

-- Location: LCCOMB_X40_Y18_N24
\VGA_Driver|VGA_BUS_R[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_R[0]~feeder_combout\ = \VGA_Driver|VGA_BUS_R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Driver|VGA_BUS_R~0_combout\,
	combout => \VGA_Driver|VGA_BUS_R[0]~feeder_combout\);

-- Location: FF_X40_Y18_N25
\VGA_Driver|VGA_BUS_R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VGA_BUS_R[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_R\(0));

-- Location: LCCOMB_X40_Y18_N2
\VGA_Driver|VGA_BUS_R[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_R[1]~feeder_combout\ = \VGA_Driver|VGA_BUS_R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Driver|VGA_BUS_R~0_combout\,
	combout => \VGA_Driver|VGA_BUS_R[1]~feeder_combout\);

-- Location: FF_X40_Y18_N3
\VGA_Driver|VGA_BUS_R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VGA_BUS_R[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_R\(1));

-- Location: LCCOMB_X40_Y18_N4
\VGA_Driver|VGA_BUS_R[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_R[2]~feeder_combout\ = \VGA_Driver|VGA_BUS_R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Driver|VGA_BUS_R~0_combout\,
	combout => \VGA_Driver|VGA_BUS_R[2]~feeder_combout\);

-- Location: FF_X40_Y18_N5
\VGA_Driver|VGA_BUS_R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VGA_BUS_R[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_R\(2));

-- Location: LCCOMB_X40_Y18_N14
\VGA_Driver|VGA_BUS_R[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_R[3]~feeder_combout\ = \VGA_Driver|VGA_BUS_R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Driver|VGA_BUS_R~0_combout\,
	combout => \VGA_Driver|VGA_BUS_R[3]~feeder_combout\);

-- Location: FF_X40_Y18_N15
\VGA_Driver|VGA_BUS_R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VGA_BUS_R[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_R\(3));

-- Location: LCCOMB_X40_Y18_N18
\pixel_color~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_color~1_combout\ = (\draw_player_1_paddle|box~q\) # (\draw_ball|box~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draw_player_1_paddle|box~q\,
	datac => \draw_ball|box~q\,
	combout => \pixel_color~1_combout\);

-- Location: FF_X40_Y18_N19
\pixel_color[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \pixel_color~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_color(7));

-- Location: LCCOMB_X40_Y18_N30
\VGA_Driver|VGA_BUS_G~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_G~0_combout\ = (\VGA_Driver|V_visible\(0) & (\VGA_Driver|H_visible\(0) & pixel_color(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|V_visible\(0),
	datab => \VGA_Driver|H_visible\(0),
	datad => pixel_color(7),
	combout => \VGA_Driver|VGA_BUS_G~0_combout\);

-- Location: FF_X40_Y18_N1
\VGA_Driver|VGA_BUS_G[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_Driver|VGA_BUS_G~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_G\(0));

-- Location: FF_X40_Y18_N11
\VGA_Driver|VGA_BUS_G[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_Driver|VGA_BUS_G~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_G\(1));

-- Location: FF_X40_Y18_N13
\VGA_Driver|VGA_BUS_G[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_Driver|VGA_BUS_G~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_G\(2));

-- Location: FF_X40_Y18_N31
\VGA_Driver|VGA_BUS_G[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VGA_BUS_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_G\(3));

-- Location: LCCOMB_X40_Y18_N16
\VGA_Driver|VGA_BUS_B[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_B[0]~feeder_combout\ = \VGA_Driver|VGA_BUS_R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Driver|VGA_BUS_R~0_combout\,
	combout => \VGA_Driver|VGA_BUS_B[0]~feeder_combout\);

-- Location: FF_X40_Y18_N17
\VGA_Driver|VGA_BUS_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VGA_BUS_B[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_B\(0));

-- Location: LCCOMB_X40_Y18_N26
\VGA_Driver|VGA_BUS_B[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_B[1]~feeder_combout\ = \VGA_Driver|VGA_BUS_R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Driver|VGA_BUS_R~0_combout\,
	combout => \VGA_Driver|VGA_BUS_B[1]~feeder_combout\);

-- Location: FF_X40_Y18_N27
\VGA_Driver|VGA_BUS_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VGA_BUS_B[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_B\(1));

-- Location: LCCOMB_X40_Y18_N20
\VGA_Driver|VGA_BUS_B[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_B[2]~feeder_combout\ = \VGA_Driver|VGA_BUS_R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Driver|VGA_BUS_R~0_combout\,
	combout => \VGA_Driver|VGA_BUS_B[2]~feeder_combout\);

-- Location: FF_X40_Y18_N21
\VGA_Driver|VGA_BUS_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VGA_BUS_B[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_B\(2));

-- Location: FF_X40_Y18_N7
\VGA_Driver|VGA_BUS_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VGA_BUS_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_B\(3));

-- Location: LCCOMB_X30_Y24_N24
\VGA_Driver|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector0~0_combout\ = (!\VGA_Driver|VGA_HS\(0) & ((\VGA_Driver|Equal3~1_combout\) # (\VGA_Driver|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VGA_HS\(0),
	datac => \VGA_Driver|Equal3~1_combout\,
	datad => \VGA_Driver|Equal4~2_combout\,
	combout => \VGA_Driver|Selector0~0_combout\);

-- Location: LCCOMB_X30_Y24_N0
\VGA_Driver|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector0~1_combout\ = (!\VGA_Driver|Equal2~0_combout\ & (!\VGA_Driver|Selector0~0_combout\ & ((\VGA_Driver|VGA_HS\(0)) # (\VGA_Driver|WideNor0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal2~0_combout\,
	datab => \VGA_Driver|Selector0~0_combout\,
	datac => \VGA_Driver|VGA_HS\(0),
	datad => \VGA_Driver|WideNor0~combout\,
	combout => \VGA_Driver|Selector0~1_combout\);

-- Location: FF_X30_Y24_N1
\VGA_Driver|VGA_HS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_HS\(0));

-- Location: LCCOMB_X37_Y18_N12
\VGA_Driver|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector6~0_combout\ = (!\VGA_Driver|VGA_VS\(0) & (\VGA_Driver|Equal7~0_combout\ & (\VGA_Driver|VS_counter\(9) $ (\VGA_Driver|VS_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(9),
	datab => \VGA_Driver|VGA_VS\(0),
	datac => \VGA_Driver|VS_counter\(5),
	datad => \VGA_Driver|Equal7~0_combout\,
	combout => \VGA_Driver|Selector6~0_combout\);

-- Location: LCCOMB_X37_Y18_N24
\VGA_Driver|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector6~1_combout\ = (!\VGA_Driver|Selector6~0_combout\ & (!\VGA_Driver|Equal6~1_combout\ & ((\VGA_Driver|Equal5~4_combout\) # (\VGA_Driver|VGA_VS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Selector6~0_combout\,
	datab => \VGA_Driver|Equal5~4_combout\,
	datac => \VGA_Driver|VGA_VS\(0),
	datad => \VGA_Driver|Equal6~1_combout\,
	combout => \VGA_Driver|Selector6~1_combout\);

-- Location: FF_X37_Y18_N25
\VGA_Driver|VGA_VS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_VS\(0));

-- Location: IOIBUF_X0_Y24_N1
\SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\SW[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\SW[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\SW[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\SW[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\SW[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\SW[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);
END structure;


