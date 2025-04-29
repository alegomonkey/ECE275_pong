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

-- DATE "04/29/2025 15:56:46"

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
SIGNAL \ORG_BUTTON[1]~input_o\ : std_logic;
SIGNAL \ORG_BUTTON[2]~input_o\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \player_1_paddle_Y_location[0]~9_combout\ : std_logic;
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
SIGNAL \Equal0~2_combout\ : std_logic;
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
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
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
SIGNAL \draw_player_1_paddle|Add1~1\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~3\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~5\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~7\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~9\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~11\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~13\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~14_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~0_combout\ : std_logic;
SIGNAL \VGA_Driver|VS_counter~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~1\ : std_logic;
SIGNAL \VGA_Driver|Add4~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~4_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~3\ : std_logic;
SIGNAL \VGA_Driver|Add4~7\ : std_logic;
SIGNAL \VGA_Driver|Add4~8_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~25_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~9\ : std_logic;
SIGNAL \VGA_Driver|Add4~10_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector5~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~11\ : std_logic;
SIGNAL \VGA_Driver|Add4~12_combout\ : std_logic;
SIGNAL \VGA_Driver|WideNor0~combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~15\ : std_logic;
SIGNAL \VGA_Driver|Add4~16_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector2~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~17\ : std_logic;
SIGNAL \VGA_Driver|Add4~18_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~28_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~19\ : std_logic;
SIGNAL \VGA_Driver|Add4~20_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~27_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal1~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal1~3_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal2~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector4~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~13\ : std_logic;
SIGNAL \VGA_Driver|Add4~14_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector3~0_combout\ : std_logic;
SIGNAL \VGA_Driver|WideNor0~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~5_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~21\ : std_logic;
SIGNAL \VGA_Driver|Add4~22_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~24_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal1~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal3~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal3~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~6_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~26_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal1~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal4~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal4~1_combout\ : std_logic;
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
SIGNAL \VGA_Driver|Add3~11\ : std_logic;
SIGNAL \VGA_Driver|Add3~12_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~13\ : std_logic;
SIGNAL \VGA_Driver|Add3~14_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~15\ : std_logic;
SIGNAL \VGA_Driver|Add3~16_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~17\ : std_logic;
SIGNAL \VGA_Driver|Add3~19\ : std_logic;
SIGNAL \VGA_Driver|Add3~20_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal5~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal5~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal7~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~18_combout\ : std_logic;
SIGNAL \VGA_Driver|VS_counter~4_combout\ : std_logic;
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
SIGNAL \draw_player_1_paddle|Add1~12_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~10_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~14_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~8_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~12_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~6_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~10_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~4_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~8_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~6_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~2_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~4_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~0_combout\ : std_logic;
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
SIGNAL \draw_player_1_paddle|LessThan2~1_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~3_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~5_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~7_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~9_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~11_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~13_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~15_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~16_combout\ : std_logic;
SIGNAL \VGA_Driver|Add0~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Add0~3_combout\ : std_logic;
SIGNAL \VGA_Driver|Add0~4_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|always0~0_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|always0~1_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|always0~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Add0~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add0~1_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|always0~3_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|box~q\ : std_logic;
SIGNAL \draw_player_2_paddle|always0~4_combout\ : std_logic;
SIGNAL \draw_player_2_paddle|always0~0_combout\ : std_logic;
SIGNAL \draw_player_2_paddle|always0~1_combout\ : std_logic;
SIGNAL \draw_player_2_paddle|always0~2_combout\ : std_logic;
SIGNAL \draw_player_2_paddle|always0~3_combout\ : std_logic;
SIGNAL \draw_player_2_paddle|always0~5_combout\ : std_logic;
SIGNAL \draw_player_2_paddle|box~q\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add14~0_combout\ : std_logic;
SIGNAL \ball_X_location[0]~5_combout\ : std_logic;
SIGNAL \Add5~1_combout\ : std_logic;
SIGNAL \Add15~0_combout\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \ball_Y_location[0]~3_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
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
SIGNAL \ball_speed_counter~3_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \ball_speed_counter~4_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \ball_speed_counter~5_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \ball_speed_counter~6_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \ball_speed_counter~7_combout\ : std_logic;
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
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \ball_Y_location[9]~8_combout\ : std_logic;
SIGNAL \Add15~1\ : std_logic;
SIGNAL \Add15~3\ : std_logic;
SIGNAL \Add15~4_combout\ : std_logic;
SIGNAL \Add12~1\ : std_logic;
SIGNAL \Add12~3\ : std_logic;
SIGNAL \Add12~4_combout\ : std_logic;
SIGNAL \Add10~22_combout\ : std_logic;
SIGNAL \Add10~1\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \Add10~23_combout\ : std_logic;
SIGNAL \Add15~5\ : std_logic;
SIGNAL \Add15~6_combout\ : std_logic;
SIGNAL \Add12~5\ : std_logic;
SIGNAL \Add12~6_combout\ : std_logic;
SIGNAL \ball_Y_location[3]~4_combout\ : std_logic;
SIGNAL \Add10~5\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \Add15~7\ : std_logic;
SIGNAL \Add15~8_combout\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~8_combout\ : std_logic;
SIGNAL \Add10~20_combout\ : std_logic;
SIGNAL \Add10~21_combout\ : std_logic;
SIGNAL \Add15~9\ : std_logic;
SIGNAL \Add15~10_combout\ : std_logic;
SIGNAL \Add12~9\ : std_logic;
SIGNAL \Add12~10_combout\ : std_logic;
SIGNAL \ball_Y_location[5]~5_combout\ : std_logic;
SIGNAL \Add10~9\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \Add12~11\ : std_logic;
SIGNAL \Add12~12_combout\ : std_logic;
SIGNAL \Add15~11\ : std_logic;
SIGNAL \Add15~12_combout\ : std_logic;
SIGNAL \ball_Y_location[6]~6_combout\ : std_logic;
SIGNAL \Add10~11\ : std_logic;
SIGNAL \Add10~12_combout\ : std_logic;
SIGNAL \Add12~13\ : std_logic;
SIGNAL \Add12~14_combout\ : std_logic;
SIGNAL \Add15~13\ : std_logic;
SIGNAL \Add15~14_combout\ : std_logic;
SIGNAL \ball_Y_location[7]~7_combout\ : std_logic;
SIGNAL \Add10~13\ : std_logic;
SIGNAL \Add10~14_combout\ : std_logic;
SIGNAL \Add15~15\ : std_logic;
SIGNAL \Add15~16_combout\ : std_logic;
SIGNAL \Add12~15\ : std_logic;
SIGNAL \Add12~16_combout\ : std_logic;
SIGNAL \ball_Y_location[8]~1_combout\ : std_logic;
SIGNAL \Add10~15\ : std_logic;
SIGNAL \Add10~16_combout\ : std_logic;
SIGNAL \Add12~17\ : std_logic;
SIGNAL \Add12~18_combout\ : std_logic;
SIGNAL \Add15~17\ : std_logic;
SIGNAL \Add15~18_combout\ : std_logic;
SIGNAL \ball_Y_location[9]~0_combout\ : std_logic;
SIGNAL \Add10~17\ : std_logic;
SIGNAL \Add10~18_combout\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~11\ : std_logic;
SIGNAL \Add11~13\ : std_logic;
SIGNAL \Add11~15\ : std_logic;
SIGNAL \Add11~16_combout\ : std_logic;
SIGNAL \Add11~17\ : std_logic;
SIGNAL \Add11~18_combout\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \Add11~12_combout\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \Add11~14_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \b_velocity_Y~0_combout\ : std_logic;
SIGNAL \Add15~2_combout\ : std_logic;
SIGNAL \Add12~2_combout\ : std_logic;
SIGNAL \ball_Y_location[1]~2_combout\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \Add9~1_cout\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~13\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~17\ : std_logic;
SIGNAL \Add9~19\ : std_logic;
SIGNAL \Add9~20_combout\ : std_logic;
SIGNAL \Add9~18_combout\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \ball_X_location[9]~6_combout\ : std_logic;
SIGNAL \ball_X_location[9]~7_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add14~1\ : std_logic;
SIGNAL \Add14~2_combout\ : std_logic;
SIGNAL \ball_X_location[1]~1_combout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~3_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add14~3\ : std_logic;
SIGNAL \Add14~4_combout\ : std_logic;
SIGNAL \ball_X_location[2]~2_combout\ : std_logic;
SIGNAL \Add5~4\ : std_logic;
SIGNAL \Add5~5_combout\ : std_logic;
SIGNAL \Add14~5\ : std_logic;
SIGNAL \Add14~6_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~7_combout\ : std_logic;
SIGNAL \Add5~27_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add14~7\ : std_logic;
SIGNAL \Add14~8_combout\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \Add5~8\ : std_logic;
SIGNAL \Add5~9_combout\ : std_logic;
SIGNAL \Add5~25_combout\ : std_logic;
SIGNAL \Add14~9\ : std_logic;
SIGNAL \Add14~11\ : std_logic;
SIGNAL \Add14~12_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~12\ : std_logic;
SIGNAL \Add5~13_combout\ : std_logic;
SIGNAL \Add5~23_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add14~13\ : std_logic;
SIGNAL \Add14~14_combout\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \ball_X_location[7]~4_combout\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~15_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \b_velocity_X[1]~0_combout\ : std_logic;
SIGNAL \Add14~10_combout\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \ball_X_location[5]~3_combout\ : std_logic;
SIGNAL \Add5~11_combout\ : std_logic;
SIGNAL \Add6~1_cout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~19\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \Add6~18_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \Add14~15\ : std_logic;
SIGNAL \Add14~16_combout\ : std_logic;
SIGNAL \ball_X_location[8]~0_combout\ : std_logic;
SIGNAL \Add5~16\ : std_logic;
SIGNAL \Add5~17_combout\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~18_combout\ : std_logic;
SIGNAL \Add14~17\ : std_logic;
SIGNAL \Add14~18_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~19_combout\ : std_logic;
SIGNAL \Add5~21_combout\ : std_logic;
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
SIGNAL \draw_ball|LessThan2~1_cout\ : std_logic;
SIGNAL \draw_ball|LessThan2~3_cout\ : std_logic;
SIGNAL \draw_ball|LessThan2~5_cout\ : std_logic;
SIGNAL \draw_ball|LessThan2~7_cout\ : std_logic;
SIGNAL \draw_ball|LessThan2~9_cout\ : std_logic;
SIGNAL \draw_ball|LessThan2~11_cout\ : std_logic;
SIGNAL \draw_ball|LessThan2~13_cout\ : std_logic;
SIGNAL \draw_ball|LessThan2~15_cout\ : std_logic;
SIGNAL \draw_ball|LessThan2~17_cout\ : std_logic;
SIGNAL \draw_ball|LessThan2~18_combout\ : std_logic;
SIGNAL \draw_ball|Add1~1\ : std_logic;
SIGNAL \draw_ball|Add1~3\ : std_logic;
SIGNAL \draw_ball|Add1~5\ : std_logic;
SIGNAL \draw_ball|Add1~7\ : std_logic;
SIGNAL \draw_ball|Add1~9\ : std_logic;
SIGNAL \draw_ball|Add1~11\ : std_logic;
SIGNAL \draw_ball|Add1~12_combout\ : std_logic;
SIGNAL \draw_ball|Add1~10_combout\ : std_logic;
SIGNAL \draw_ball|Add1~8_combout\ : std_logic;
SIGNAL \draw_ball|Add1~6_combout\ : std_logic;
SIGNAL \draw_ball|Add1~4_combout\ : std_logic;
SIGNAL \draw_ball|Add1~2_combout\ : std_logic;
SIGNAL \draw_ball|Add1~0_combout\ : std_logic;
SIGNAL \draw_ball|LessThan3~1_cout\ : std_logic;
SIGNAL \draw_ball|LessThan3~3_cout\ : std_logic;
SIGNAL \draw_ball|LessThan3~5_cout\ : std_logic;
SIGNAL \draw_ball|LessThan3~7_cout\ : std_logic;
SIGNAL \draw_ball|LessThan3~9_cout\ : std_logic;
SIGNAL \draw_ball|LessThan3~11_cout\ : std_logic;
SIGNAL \draw_ball|LessThan3~13_cout\ : std_logic;
SIGNAL \draw_ball|LessThan3~15_cout\ : std_logic;
SIGNAL \draw_ball|LessThan3~17_cout\ : std_logic;
SIGNAL \draw_ball|LessThan3~18_combout\ : std_logic;
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
SIGNAL \draw_ball|box~q\ : std_logic;
SIGNAL \pixel_color~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal5~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal5~3_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal6~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector7~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector7~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector1~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector1~1_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_R~0_combout\ : std_logic;
SIGNAL \pixel_color~1_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_G~0_combout\ : std_logic;
SIGNAL \pixel_color~2_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_B~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector0~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector0~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector6~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector6~1_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_G\ : std_logic_vector(3 DOWNTO 0);
SIGNAL b_velocity_X : std_logic_vector(4 DOWNTO 0);
SIGNAL \VGA_Driver|V_visible\ : std_logic_vector(0 DOWNTO 0);
SIGNAL ball_X_location : std_logic_vector(9 DOWNTO 0);
SIGNAL b_velocity_Y : std_logic_vector(4 DOWNTO 0);
SIGNAL pixel_color : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA_Driver|VGA_VS\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA_Driver|HS_counter\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \VGA_Driver|VS_counter\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \VGA_Driver|VGA_BUS_R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL ball_Y_location : std_logic_vector(9 DOWNTO 0);
SIGNAL player_1_paddle_Y_location : std_logic_vector(8 DOWNTO 0);
SIGNAL \VGA_Driver|VGA_HS\ : std_logic_vector(0 DOWNTO 0);
SIGNAL ball_speed_counter : std_logic_vector(19 DOWNTO 0);
SIGNAL paddle_speed_counter : std_logic_vector(19 DOWNTO 0);
SIGNAL \VGA_Driver|VGA_BUS_B\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_Driver|H_visible\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
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
\ALT_INV_LessThan2~2_combout\ <= NOT \LessThan2~2_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
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
	pll_compensation_delay => 5052,
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

-- Location: LCCOMB_X23_Y23_N4
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\ORG_BUTTON[1]~input_o\ & (player_1_paddle_Y_location(0) $ (VCC))) # (!\ORG_BUTTON[1]~input_o\ & (player_1_paddle_Y_location(0) & VCC))
-- \Add2~1\ = CARRY((\ORG_BUTTON[1]~input_o\ & player_1_paddle_Y_location(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ORG_BUTTON[1]~input_o\,
	datab => player_1_paddle_Y_location(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X24_Y23_N6
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

-- Location: LCCOMB_X22_Y23_N12
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = paddle_speed_counter(0) $ (VCC)
-- \Add1~1\ = CARRY(paddle_speed_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => paddle_speed_counter(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X24_Y23_N24
\paddle_speed_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \paddle_speed_counter~1_combout\ = (!\Equal0~6_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datac => \Add1~0_combout\,
	combout => \paddle_speed_counter~1_combout\);

-- Location: FF_X24_Y23_N25
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

-- Location: LCCOMB_X22_Y23_N14
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

-- Location: FF_X22_Y23_N15
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

-- Location: LCCOMB_X22_Y23_N16
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

-- Location: FF_X22_Y23_N17
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

-- Location: LCCOMB_X22_Y23_N18
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

-- Location: FF_X22_Y23_N19
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

-- Location: LCCOMB_X22_Y23_N20
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

-- Location: FF_X22_Y23_N21
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

-- Location: LCCOMB_X22_Y23_N22
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

-- Location: LCCOMB_X22_Y23_N2
\paddle_speed_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \paddle_speed_counter~2_combout\ = (\Add1~10_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~10_combout\,
	datad => \Equal0~6_combout\,
	combout => \paddle_speed_counter~2_combout\);

-- Location: FF_X22_Y23_N3
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

-- Location: LCCOMB_X22_Y23_N24
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

-- Location: FF_X22_Y23_N25
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

-- Location: LCCOMB_X22_Y23_N26
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (paddle_speed_counter(7) & (!\Add1~13\)) # (!paddle_speed_counter(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!paddle_speed_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => paddle_speed_counter(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X22_Y23_N4
\paddle_speed_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \paddle_speed_counter~3_combout\ = (\Add1~14_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~14_combout\,
	datad => \Equal0~6_combout\,
	combout => \paddle_speed_counter~3_combout\);

-- Location: FF_X22_Y23_N5
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

-- Location: LCCOMB_X22_Y23_N6
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (paddle_speed_counter(5) & (!paddle_speed_counter(4) & (paddle_speed_counter(7) & !paddle_speed_counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => paddle_speed_counter(5),
	datab => paddle_speed_counter(4),
	datac => paddle_speed_counter(7),
	datad => paddle_speed_counter(6),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X22_Y23_N28
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

-- Location: FF_X22_Y23_N29
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

-- Location: LCCOMB_X22_Y23_N30
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (paddle_speed_counter(9) & (!\Add1~17\)) # (!paddle_speed_counter(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!paddle_speed_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => paddle_speed_counter(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X22_Y23_N8
\paddle_speed_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \paddle_speed_counter~4_combout\ = (\Add1~18_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~18_combout\,
	datad => \Equal0~6_combout\,
	combout => \paddle_speed_counter~4_combout\);

-- Location: FF_X22_Y23_N9
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

-- Location: LCCOMB_X22_Y22_N0
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

-- Location: LCCOMB_X22_Y22_N24
\paddle_speed_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \paddle_speed_counter~5_combout\ = (\Add1~20_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~20_combout\,
	datad => \Equal0~6_combout\,
	combout => \paddle_speed_counter~5_combout\);

-- Location: FF_X22_Y22_N25
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

-- Location: LCCOMB_X22_Y22_N2
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

-- Location: FF_X22_Y22_N3
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

-- Location: LCCOMB_X22_Y22_N4
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

-- Location: FF_X22_Y22_N5
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

-- Location: LCCOMB_X22_Y22_N6
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

-- Location: FF_X22_Y22_N7
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

-- Location: LCCOMB_X22_Y22_N8
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

-- Location: FF_X22_Y22_N9
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

-- Location: LCCOMB_X22_Y22_N10
\Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (paddle_speed_counter(15) & (!\Add1~29\)) # (!paddle_speed_counter(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!paddle_speed_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => paddle_speed_counter(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X22_Y22_N26
\paddle_speed_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \paddle_speed_counter~6_combout\ = (\Add1~30_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datad => \Equal0~6_combout\,
	combout => \paddle_speed_counter~6_combout\);

-- Location: FF_X22_Y22_N27
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

-- Location: LCCOMB_X22_Y22_N12
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

-- Location: LCCOMB_X22_Y22_N20
\paddle_speed_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \paddle_speed_counter~0_combout\ = (\Add1~32_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~32_combout\,
	datad => \Equal0~6_combout\,
	combout => \paddle_speed_counter~0_combout\);

-- Location: FF_X22_Y22_N21
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

-- Location: LCCOMB_X22_Y22_N14
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

-- Location: FF_X22_Y22_N15
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

-- Location: LCCOMB_X22_Y22_N16
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

-- Location: FF_X22_Y22_N17
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

-- Location: LCCOMB_X22_Y22_N18
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

-- Location: FF_X22_Y22_N19
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

-- Location: LCCOMB_X22_Y22_N30
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!paddle_speed_counter(19) & (paddle_speed_counter(16) & (!paddle_speed_counter(17) & !paddle_speed_counter(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => paddle_speed_counter(19),
	datab => paddle_speed_counter(16),
	datac => paddle_speed_counter(17),
	datad => paddle_speed_counter(18),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X23_Y23_N24
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (paddle_speed_counter(9) & !paddle_speed_counter(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => paddle_speed_counter(9),
	datad => paddle_speed_counter(8),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X22_Y22_N28
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (paddle_speed_counter(15) & (!paddle_speed_counter(12) & (!paddle_speed_counter(14) & !paddle_speed_counter(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => paddle_speed_counter(15),
	datab => paddle_speed_counter(12),
	datac => paddle_speed_counter(14),
	datad => paddle_speed_counter(13),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X22_Y22_N22
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~3_combout\ & (paddle_speed_counter(10) & (\Equal0~4_combout\ & !paddle_speed_counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => paddle_speed_counter(10),
	datac => \Equal0~4_combout\,
	datad => paddle_speed_counter(11),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X22_Y23_N0
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!paddle_speed_counter(0) & (!paddle_speed_counter(2) & (!paddle_speed_counter(1) & !paddle_speed_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => paddle_speed_counter(0),
	datab => paddle_speed_counter(2),
	datac => paddle_speed_counter(1),
	datad => paddle_speed_counter(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X22_Y23_N10
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Equal0~2_combout\ & (\Equal0~0_combout\ & (\Equal0~5_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~6_combout\);

-- Location: FF_X24_Y23_N7
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

-- Location: LCCOMB_X23_Y23_N6
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\ORG_BUTTON[1]~input_o\ & ((player_1_paddle_Y_location(1) & (\Add2~1\ & VCC)) # (!player_1_paddle_Y_location(1) & (!\Add2~1\)))) # (!\ORG_BUTTON[1]~input_o\ & ((player_1_paddle_Y_location(1) & (!\Add2~1\)) # 
-- (!player_1_paddle_Y_location(1) & ((\Add2~1\) # (GND)))))
-- \Add2~3\ = CARRY((\ORG_BUTTON[1]~input_o\ & (!player_1_paddle_Y_location(1) & !\Add2~1\)) # (!\ORG_BUTTON[1]~input_o\ & ((!\Add2~1\) # (!player_1_paddle_Y_location(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ORG_BUTTON[1]~input_o\,
	datab => player_1_paddle_Y_location(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X24_Y23_N8
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

-- Location: FF_X24_Y23_N9
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

-- Location: LCCOMB_X23_Y23_N8
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\ORG_BUTTON[1]~input_o\ $ (player_1_paddle_Y_location(2) $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\ORG_BUTTON[1]~input_o\ & ((player_1_paddle_Y_location(2)) # (!\Add2~3\))) # (!\ORG_BUTTON[1]~input_o\ & (player_1_paddle_Y_location(2) & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ORG_BUTTON[1]~input_o\,
	datab => player_1_paddle_Y_location(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X24_Y23_N10
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

-- Location: FF_X24_Y23_N11
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

-- Location: LCCOMB_X23_Y23_N10
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\ORG_BUTTON[1]~input_o\ & ((player_1_paddle_Y_location(3) & (\Add2~5\ & VCC)) # (!player_1_paddle_Y_location(3) & (!\Add2~5\)))) # (!\ORG_BUTTON[1]~input_o\ & ((player_1_paddle_Y_location(3) & (!\Add2~5\)) # 
-- (!player_1_paddle_Y_location(3) & ((\Add2~5\) # (GND)))))
-- \Add2~7\ = CARRY((\ORG_BUTTON[1]~input_o\ & (!player_1_paddle_Y_location(3) & !\Add2~5\)) # (!\ORG_BUTTON[1]~input_o\ & ((!\Add2~5\) # (!player_1_paddle_Y_location(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ORG_BUTTON[1]~input_o\,
	datab => player_1_paddle_Y_location(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X24_Y23_N12
\player_1_paddle_Y_location[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \player_1_paddle_Y_location[3]~15_combout\ = (\Add2~6_combout\ & (!\player_1_paddle_Y_location[2]~14\)) # (!\Add2~6_combout\ & ((\player_1_paddle_Y_location[2]~14\) # (GND)))
-- \player_1_paddle_Y_location[3]~16\ = CARRY((!\player_1_paddle_Y_location[2]~14\) # (!\Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datad => VCC,
	cin => \player_1_paddle_Y_location[2]~14\,
	combout => \player_1_paddle_Y_location[3]~15_combout\,
	cout => \player_1_paddle_Y_location[3]~16\);

-- Location: FF_X24_Y23_N13
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

-- Location: LCCOMB_X23_Y23_N12
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((\ORG_BUTTON[1]~input_o\ $ (player_1_paddle_Y_location(4) $ (!\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((\ORG_BUTTON[1]~input_o\ & ((player_1_paddle_Y_location(4)) # (!\Add2~7\))) # (!\ORG_BUTTON[1]~input_o\ & (player_1_paddle_Y_location(4) & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ORG_BUTTON[1]~input_o\,
	datab => player_1_paddle_Y_location(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X24_Y23_N14
\player_1_paddle_Y_location[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \player_1_paddle_Y_location[4]~17_combout\ = (\Add2~8_combout\ & (\player_1_paddle_Y_location[3]~16\ $ (GND))) # (!\Add2~8_combout\ & (!\player_1_paddle_Y_location[3]~16\ & VCC))
-- \player_1_paddle_Y_location[4]~18\ = CARRY((\Add2~8_combout\ & !\player_1_paddle_Y_location[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datad => VCC,
	cin => \player_1_paddle_Y_location[3]~16\,
	combout => \player_1_paddle_Y_location[4]~17_combout\,
	cout => \player_1_paddle_Y_location[4]~18\);

-- Location: FF_X24_Y23_N15
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

-- Location: LCCOMB_X23_Y23_N14
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\ORG_BUTTON[1]~input_o\ & ((player_1_paddle_Y_location(5) & (\Add2~9\ & VCC)) # (!player_1_paddle_Y_location(5) & (!\Add2~9\)))) # (!\ORG_BUTTON[1]~input_o\ & ((player_1_paddle_Y_location(5) & (!\Add2~9\)) # 
-- (!player_1_paddle_Y_location(5) & ((\Add2~9\) # (GND)))))
-- \Add2~11\ = CARRY((\ORG_BUTTON[1]~input_o\ & (!player_1_paddle_Y_location(5) & !\Add2~9\)) # (!\ORG_BUTTON[1]~input_o\ & ((!\Add2~9\) # (!player_1_paddle_Y_location(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ORG_BUTTON[1]~input_o\,
	datab => player_1_paddle_Y_location(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X24_Y23_N16
\player_1_paddle_Y_location[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \player_1_paddle_Y_location[5]~19_combout\ = (\Add2~10_combout\ & (!\player_1_paddle_Y_location[4]~18\)) # (!\Add2~10_combout\ & ((\player_1_paddle_Y_location[4]~18\) # (GND)))
-- \player_1_paddle_Y_location[5]~20\ = CARRY((!\player_1_paddle_Y_location[4]~18\) # (!\Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datad => VCC,
	cin => \player_1_paddle_Y_location[4]~18\,
	combout => \player_1_paddle_Y_location[5]~19_combout\,
	cout => \player_1_paddle_Y_location[5]~20\);

-- Location: FF_X24_Y23_N17
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

-- Location: LCCOMB_X23_Y23_N16
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = ((\ORG_BUTTON[1]~input_o\ $ (player_1_paddle_Y_location(6) $ (!\Add2~11\)))) # (GND)
-- \Add2~13\ = CARRY((\ORG_BUTTON[1]~input_o\ & ((player_1_paddle_Y_location(6)) # (!\Add2~11\))) # (!\ORG_BUTTON[1]~input_o\ & (player_1_paddle_Y_location(6) & !\Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ORG_BUTTON[1]~input_o\,
	datab => player_1_paddle_Y_location(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X24_Y23_N18
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

-- Location: FF_X24_Y23_N19
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

-- Location: LCCOMB_X23_Y23_N18
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\ORG_BUTTON[1]~input_o\ & ((player_1_paddle_Y_location(7) & (\Add2~13\ & VCC)) # (!player_1_paddle_Y_location(7) & (!\Add2~13\)))) # (!\ORG_BUTTON[1]~input_o\ & ((player_1_paddle_Y_location(7) & (!\Add2~13\)) # 
-- (!player_1_paddle_Y_location(7) & ((\Add2~13\) # (GND)))))
-- \Add2~15\ = CARRY((\ORG_BUTTON[1]~input_o\ & (!player_1_paddle_Y_location(7) & !\Add2~13\)) # (!\ORG_BUTTON[1]~input_o\ & ((!\Add2~13\) # (!player_1_paddle_Y_location(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ORG_BUTTON[1]~input_o\,
	datab => player_1_paddle_Y_location(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X24_Y23_N20
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

-- Location: FF_X24_Y23_N21
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

-- Location: LCCOMB_X23_Y23_N20
\Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = \ORG_BUTTON[1]~input_o\ $ (\Add2~15\ $ (!player_1_paddle_Y_location(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ORG_BUTTON[1]~input_o\,
	datad => player_1_paddle_Y_location(8),
	cin => \Add2~15\,
	combout => \Add2~16_combout\);

-- Location: LCCOMB_X24_Y23_N22
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

-- Location: FF_X24_Y23_N23
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

-- Location: LCCOMB_X23_Y22_N4
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

-- Location: LCCOMB_X23_Y22_N6
\draw_player_1_paddle|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|Add1~2_combout\ = (player_1_paddle_Y_location(3) & (!\draw_player_1_paddle|Add1~1\)) # (!player_1_paddle_Y_location(3) & ((\draw_player_1_paddle|Add1~1\) # (GND)))
-- \draw_player_1_paddle|Add1~3\ = CARRY((!\draw_player_1_paddle|Add1~1\) # (!player_1_paddle_Y_location(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player_1_paddle_Y_location(3),
	datad => VCC,
	cin => \draw_player_1_paddle|Add1~1\,
	combout => \draw_player_1_paddle|Add1~2_combout\,
	cout => \draw_player_1_paddle|Add1~3\);

-- Location: LCCOMB_X23_Y22_N8
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

-- Location: LCCOMB_X23_Y22_N10
\draw_player_1_paddle|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|Add1~6_combout\ = (player_1_paddle_Y_location(5) & (\draw_player_1_paddle|Add1~5\ & VCC)) # (!player_1_paddle_Y_location(5) & (!\draw_player_1_paddle|Add1~5\))
-- \draw_player_1_paddle|Add1~7\ = CARRY((!player_1_paddle_Y_location(5) & !\draw_player_1_paddle|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player_1_paddle_Y_location(5),
	datad => VCC,
	cin => \draw_player_1_paddle|Add1~5\,
	combout => \draw_player_1_paddle|Add1~6_combout\,
	cout => \draw_player_1_paddle|Add1~7\);

-- Location: LCCOMB_X23_Y22_N12
\draw_player_1_paddle|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|Add1~8_combout\ = (player_1_paddle_Y_location(6) & (\draw_player_1_paddle|Add1~7\ $ (GND))) # (!player_1_paddle_Y_location(6) & (!\draw_player_1_paddle|Add1~7\ & VCC))
-- \draw_player_1_paddle|Add1~9\ = CARRY((player_1_paddle_Y_location(6) & !\draw_player_1_paddle|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player_1_paddle_Y_location(6),
	datad => VCC,
	cin => \draw_player_1_paddle|Add1~7\,
	combout => \draw_player_1_paddle|Add1~8_combout\,
	cout => \draw_player_1_paddle|Add1~9\);

-- Location: LCCOMB_X23_Y22_N14
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

-- Location: LCCOMB_X23_Y22_N16
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

-- Location: LCCOMB_X23_Y22_N18
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

-- Location: LCCOMB_X27_Y21_N6
\VGA_Driver|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add3~0_combout\ = \VGA_Driver|VS_counter\(0) $ (VCC)
-- \VGA_Driver|Add3~1\ = CARRY(\VGA_Driver|VS_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(0),
	datad => VCC,
	combout => \VGA_Driver|Add3~0_combout\,
	cout => \VGA_Driver|Add3~1\);

-- Location: LCCOMB_X28_Y21_N20
\VGA_Driver|VS_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VS_counter~0_combout\ = (\VGA_Driver|Add3~0_combout\) # ((!\VGA_Driver|VS_counter\(5) & (\VGA_Driver|VS_counter\(9) & \VGA_Driver|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(5),
	datab => \VGA_Driver|VS_counter\(9),
	datac => \VGA_Driver|Add3~0_combout\,
	datad => \VGA_Driver|Equal7~0_combout\,
	combout => \VGA_Driver|VS_counter~0_combout\);

-- Location: LCCOMB_X27_Y23_N8
\VGA_Driver|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~0_combout\ = \VGA_Driver|HS_counter\(0) $ (VCC)
-- \VGA_Driver|Add4~1\ = CARRY(\VGA_Driver|HS_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(0),
	datad => VCC,
	combout => \VGA_Driver|Add4~0_combout\,
	cout => \VGA_Driver|Add4~1\);

-- Location: LCCOMB_X27_Y23_N10
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

-- Location: LCCOMB_X27_Y23_N0
\VGA_Driver|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~4_combout\ = (!\VGA_Driver|Equal4~1_combout\ & (!\VGA_Driver|Equal3~1_combout\ & (\VGA_Driver|WideNor0~0_combout\ & \VGA_Driver|Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal4~1_combout\,
	datab => \VGA_Driver|Equal3~1_combout\,
	datac => \VGA_Driver|WideNor0~0_combout\,
	datad => \VGA_Driver|Add4~2_combout\,
	combout => \VGA_Driver|Add4~4_combout\);

-- Location: FF_X27_Y23_N1
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

-- Location: LCCOMB_X27_Y23_N12
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

-- Location: LCCOMB_X27_Y23_N14
\VGA_Driver|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~8_combout\ = (\VGA_Driver|HS_counter\(3) & (!\VGA_Driver|Add4~7\)) # (!\VGA_Driver|HS_counter\(3) & ((\VGA_Driver|Add4~7\) # (GND)))
-- \VGA_Driver|Add4~9\ = CARRY((!\VGA_Driver|Add4~7\) # (!\VGA_Driver|HS_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(3),
	datad => VCC,
	cin => \VGA_Driver|Add4~7\,
	combout => \VGA_Driver|Add4~8_combout\,
	cout => \VGA_Driver|Add4~9\);

-- Location: LCCOMB_X28_Y23_N6
\VGA_Driver|Add4~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~25_combout\ = (!\VGA_Driver|Equal3~1_combout\ & (\VGA_Driver|WideNor0~0_combout\ & (!\VGA_Driver|Equal4~1_combout\ & \VGA_Driver|Add4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|WideNor0~0_combout\,
	datac => \VGA_Driver|Equal4~1_combout\,
	datad => \VGA_Driver|Add4~8_combout\,
	combout => \VGA_Driver|Add4~25_combout\);

-- Location: FF_X28_Y23_N7
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

-- Location: LCCOMB_X27_Y23_N16
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

-- Location: LCCOMB_X26_Y23_N18
\VGA_Driver|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector5~0_combout\ = ((!\VGA_Driver|Equal3~1_combout\ & (\VGA_Driver|Add4~10_combout\ & !\VGA_Driver|Equal4~1_combout\))) # (!\VGA_Driver|WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|Add4~10_combout\,
	datac => \VGA_Driver|Equal4~1_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Selector5~0_combout\);

-- Location: FF_X26_Y23_N19
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

-- Location: LCCOMB_X27_Y23_N18
\VGA_Driver|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~12_combout\ = (\VGA_Driver|HS_counter\(5) & (!\VGA_Driver|Add4~11\)) # (!\VGA_Driver|HS_counter\(5) & ((\VGA_Driver|Add4~11\) # (GND)))
-- \VGA_Driver|Add4~13\ = CARRY((!\VGA_Driver|Add4~11\) # (!\VGA_Driver|HS_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(5),
	datad => VCC,
	cin => \VGA_Driver|Add4~11\,
	combout => \VGA_Driver|Add4~12_combout\,
	cout => \VGA_Driver|Add4~13\);

-- Location: LCCOMB_X28_Y23_N26
\VGA_Driver|WideNor0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|WideNor0~combout\ = (\VGA_Driver|Equal3~1_combout\) # ((\VGA_Driver|Equal4~1_combout\) # (!\VGA_Driver|WideNor0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datac => \VGA_Driver|Equal4~1_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|WideNor0~combout\);

-- Location: LCCOMB_X27_Y23_N20
\VGA_Driver|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~14_combout\ = (\VGA_Driver|HS_counter\(6) & (\VGA_Driver|Add4~13\ $ (GND))) # (!\VGA_Driver|HS_counter\(6) & (!\VGA_Driver|Add4~13\ & VCC))
-- \VGA_Driver|Add4~15\ = CARRY((\VGA_Driver|HS_counter\(6) & !\VGA_Driver|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(6),
	datad => VCC,
	cin => \VGA_Driver|Add4~13\,
	combout => \VGA_Driver|Add4~14_combout\,
	cout => \VGA_Driver|Add4~15\);

-- Location: LCCOMB_X27_Y23_N22
\VGA_Driver|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~16_combout\ = (\VGA_Driver|HS_counter\(7) & (!\VGA_Driver|Add4~15\)) # (!\VGA_Driver|HS_counter\(7) & ((\VGA_Driver|Add4~15\) # (GND)))
-- \VGA_Driver|Add4~17\ = CARRY((!\VGA_Driver|Add4~15\) # (!\VGA_Driver|HS_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(7),
	datad => VCC,
	cin => \VGA_Driver|Add4~15\,
	combout => \VGA_Driver|Add4~16_combout\,
	cout => \VGA_Driver|Add4~17\);

-- Location: LCCOMB_X26_Y23_N12
\VGA_Driver|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector2~0_combout\ = (\VGA_Driver|Equal3~1_combout\) # ((\VGA_Driver|Add4~16_combout\ & (!\VGA_Driver|Equal4~1_combout\ & \VGA_Driver|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|Add4~16_combout\,
	datac => \VGA_Driver|Equal4~1_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Selector2~0_combout\);

-- Location: FF_X26_Y23_N13
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

-- Location: LCCOMB_X27_Y23_N24
\VGA_Driver|Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~18_combout\ = (\VGA_Driver|HS_counter\(8) & (\VGA_Driver|Add4~17\ $ (GND))) # (!\VGA_Driver|HS_counter\(8) & (!\VGA_Driver|Add4~17\ & VCC))
-- \VGA_Driver|Add4~19\ = CARRY((\VGA_Driver|HS_counter\(8) & !\VGA_Driver|Add4~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(8),
	datad => VCC,
	cin => \VGA_Driver|Add4~17\,
	combout => \VGA_Driver|Add4~18_combout\,
	cout => \VGA_Driver|Add4~19\);

-- Location: LCCOMB_X26_Y23_N30
\VGA_Driver|Add4~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~28_combout\ = (!\VGA_Driver|Equal3~1_combout\ & (\VGA_Driver|Add4~18_combout\ & (!\VGA_Driver|Equal4~1_combout\ & \VGA_Driver|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|Add4~18_combout\,
	datac => \VGA_Driver|Equal4~1_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Add4~28_combout\);

-- Location: FF_X26_Y23_N31
\VGA_Driver|HS_counter[8]\ : dffeas
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
	q => \VGA_Driver|HS_counter\(8));

-- Location: LCCOMB_X27_Y23_N26
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

-- Location: LCCOMB_X26_Y23_N4
\VGA_Driver|Add4~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~27_combout\ = (!\VGA_Driver|Equal3~1_combout\ & (\VGA_Driver|Add4~20_combout\ & (!\VGA_Driver|Equal4~1_combout\ & \VGA_Driver|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|Add4~20_combout\,
	datac => \VGA_Driver|Equal4~1_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Add4~27_combout\);

-- Location: FF_X26_Y23_N5
\VGA_Driver|HS_counter[9]\ : dffeas
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
	q => \VGA_Driver|HS_counter\(9));

-- Location: LCCOMB_X26_Y23_N24
\VGA_Driver|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal1~2_combout\ = (!\VGA_Driver|HS_counter\(8) & !\VGA_Driver|HS_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(8),
	datac => \VGA_Driver|HS_counter\(9),
	combout => \VGA_Driver|Equal1~2_combout\);

-- Location: LCCOMB_X26_Y23_N14
\VGA_Driver|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal1~3_combout\ = (\VGA_Driver|Equal1~1_combout\ & (\VGA_Driver|Equal1~2_combout\ & (\VGA_Driver|HS_counter\(4) & !\VGA_Driver|HS_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal1~1_combout\,
	datab => \VGA_Driver|Equal1~2_combout\,
	datac => \VGA_Driver|HS_counter\(4),
	datad => \VGA_Driver|HS_counter\(7),
	combout => \VGA_Driver|Equal1~3_combout\);

-- Location: LCCOMB_X28_Y23_N12
\VGA_Driver|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal2~0_combout\ = (\VGA_Driver|HS_counter\(6) & (\VGA_Driver|Equal1~3_combout\ & \VGA_Driver|HS_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(6),
	datac => \VGA_Driver|Equal1~3_combout\,
	datad => \VGA_Driver|HS_counter\(5),
	combout => \VGA_Driver|Equal2~0_combout\);

-- Location: LCCOMB_X28_Y23_N2
\VGA_Driver|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector4~0_combout\ = (\VGA_Driver|Equal3~1_combout\) # ((\VGA_Driver|Equal2~0_combout\) # ((\VGA_Driver|Add4~12_combout\ & !\VGA_Driver|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|Add4~12_combout\,
	datac => \VGA_Driver|WideNor0~combout\,
	datad => \VGA_Driver|Equal2~0_combout\,
	combout => \VGA_Driver|Selector4~0_combout\);

-- Location: FF_X28_Y23_N3
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

-- Location: LCCOMB_X28_Y23_N16
\VGA_Driver|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector3~0_combout\ = (\VGA_Driver|Equal2~0_combout\) # ((\VGA_Driver|Add4~14_combout\ & !\VGA_Driver|WideNor0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|Add4~14_combout\,
	datac => \VGA_Driver|WideNor0~combout\,
	datad => \VGA_Driver|Equal2~0_combout\,
	combout => \VGA_Driver|Selector3~0_combout\);

-- Location: FF_X28_Y23_N17
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

-- Location: LCCOMB_X28_Y23_N24
\VGA_Driver|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|WideNor0~0_combout\ = (\VGA_Driver|HS_counter\(6) $ (\VGA_Driver|HS_counter\(5))) # (!\VGA_Driver|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(6),
	datac => \VGA_Driver|Equal1~3_combout\,
	datad => \VGA_Driver|HS_counter\(5),
	combout => \VGA_Driver|WideNor0~0_combout\);

-- Location: LCCOMB_X28_Y23_N4
\VGA_Driver|Add4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~5_combout\ = (\VGA_Driver|Equal3~1_combout\) # (((\VGA_Driver|Equal4~1_combout\) # (\VGA_Driver|Add4~0_combout\)) # (!\VGA_Driver|WideNor0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|WideNor0~0_combout\,
	datac => \VGA_Driver|Equal4~1_combout\,
	datad => \VGA_Driver|Add4~0_combout\,
	combout => \VGA_Driver|Add4~5_combout\);

-- Location: FF_X28_Y23_N5
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

-- Location: LCCOMB_X27_Y23_N28
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

-- Location: LCCOMB_X27_Y23_N2
\VGA_Driver|Add4~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~24_combout\ = (!\VGA_Driver|Equal4~1_combout\ & (!\VGA_Driver|Equal3~1_combout\ & (\VGA_Driver|WideNor0~0_combout\ & \VGA_Driver|Add4~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal4~1_combout\,
	datab => \VGA_Driver|Equal3~1_combout\,
	datac => \VGA_Driver|WideNor0~0_combout\,
	datad => \VGA_Driver|Add4~22_combout\,
	combout => \VGA_Driver|Add4~24_combout\);

-- Location: FF_X27_Y23_N3
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

-- Location: LCCOMB_X27_Y23_N4
\VGA_Driver|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal1~0_combout\ = (!\VGA_Driver|HS_counter\(0) & (!\VGA_Driver|HS_counter\(1) & (!\VGA_Driver|HS_counter\(10) & !\VGA_Driver|HS_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(0),
	datab => \VGA_Driver|HS_counter\(1),
	datac => \VGA_Driver|HS_counter\(10),
	datad => \VGA_Driver|HS_counter\(3),
	combout => \VGA_Driver|Equal1~0_combout\);

-- Location: LCCOMB_X26_Y23_N28
\VGA_Driver|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal3~0_combout\ = (\VGA_Driver|HS_counter\(7) & (!\VGA_Driver|HS_counter\(6) & (\VGA_Driver|HS_counter\(5) & !\VGA_Driver|HS_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(7),
	datab => \VGA_Driver|HS_counter\(6),
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(4),
	combout => \VGA_Driver|Equal3~0_combout\);

-- Location: LCCOMB_X26_Y23_N6
\VGA_Driver|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal3~1_combout\ = (\VGA_Driver|Equal1~0_combout\ & (\VGA_Driver|Equal1~2_combout\ & (\VGA_Driver|Equal3~0_combout\ & !\VGA_Driver|HS_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal1~0_combout\,
	datab => \VGA_Driver|Equal1~2_combout\,
	datac => \VGA_Driver|Equal3~0_combout\,
	datad => \VGA_Driver|HS_counter\(2),
	combout => \VGA_Driver|Equal3~1_combout\);

-- Location: LCCOMB_X26_Y23_N16
\VGA_Driver|Add4~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~26_combout\ = (!\VGA_Driver|Equal3~1_combout\ & (\VGA_Driver|Add4~6_combout\ & (!\VGA_Driver|Equal4~1_combout\ & \VGA_Driver|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|Add4~6_combout\,
	datac => \VGA_Driver|Equal4~1_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Add4~26_combout\);

-- Location: FF_X26_Y23_N17
\VGA_Driver|HS_counter[2]\ : dffeas
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
	q => \VGA_Driver|HS_counter\(2));

-- Location: LCCOMB_X26_Y23_N10
\VGA_Driver|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal1~1_combout\ = (!\VGA_Driver|HS_counter\(2) & \VGA_Driver|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(2),
	datad => \VGA_Driver|Equal1~0_combout\,
	combout => \VGA_Driver|Equal1~1_combout\);

-- Location: LCCOMB_X26_Y23_N0
\VGA_Driver|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal4~0_combout\ = (!\VGA_Driver|HS_counter\(4) & (!\VGA_Driver|HS_counter\(6) & (\VGA_Driver|HS_counter\(5) & \VGA_Driver|HS_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(4),
	datab => \VGA_Driver|HS_counter\(6),
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(9),
	combout => \VGA_Driver|Equal4~0_combout\);

-- Location: LCCOMB_X26_Y23_N26
\VGA_Driver|Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal4~1_combout\ = (\VGA_Driver|Equal1~1_combout\ & (\VGA_Driver|Equal4~0_combout\ & (\VGA_Driver|HS_counter\(8) & !\VGA_Driver|HS_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal1~1_combout\,
	datab => \VGA_Driver|Equal4~0_combout\,
	datac => \VGA_Driver|HS_counter\(8),
	datad => \VGA_Driver|HS_counter\(7),
	combout => \VGA_Driver|Equal4~1_combout\);

-- Location: FF_X28_Y21_N21
\VGA_Driver|VS_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VS_counter~0_combout\,
	ena => \VGA_Driver|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(0));

-- Location: LCCOMB_X27_Y21_N8
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

-- Location: LCCOMB_X27_Y21_N4
\VGA_Driver|VS_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VS_counter~3_combout\ = (\VGA_Driver|Add3~2_combout\ & (((\VGA_Driver|VS_counter\(5)) # (!\VGA_Driver|Equal7~0_combout\)) # (!\VGA_Driver|VS_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(9),
	datab => \VGA_Driver|VS_counter\(5),
	datac => \VGA_Driver|Add3~2_combout\,
	datad => \VGA_Driver|Equal7~0_combout\,
	combout => \VGA_Driver|VS_counter~3_combout\);

-- Location: FF_X27_Y21_N5
\VGA_Driver|VS_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VS_counter~3_combout\,
	ena => \VGA_Driver|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(1));

-- Location: LCCOMB_X27_Y21_N10
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

-- Location: LCCOMB_X27_Y21_N28
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

-- Location: FF_X27_Y21_N29
\VGA_Driver|VS_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VS_counter~2_combout\,
	ena => \VGA_Driver|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(2));

-- Location: LCCOMB_X27_Y21_N12
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

-- Location: LCCOMB_X27_Y21_N2
\VGA_Driver|VS_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VS_counter~1_combout\ = (\VGA_Driver|Add3~6_combout\ & (((\VGA_Driver|VS_counter\(5)) # (!\VGA_Driver|Equal7~0_combout\)) # (!\VGA_Driver|VS_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(9),
	datab => \VGA_Driver|VS_counter\(5),
	datac => \VGA_Driver|Add3~6_combout\,
	datad => \VGA_Driver|Equal7~0_combout\,
	combout => \VGA_Driver|VS_counter~1_combout\);

-- Location: FF_X27_Y21_N3
\VGA_Driver|VS_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VS_counter~1_combout\,
	ena => \VGA_Driver|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(3));

-- Location: LCCOMB_X27_Y21_N14
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

-- Location: FF_X27_Y21_N15
\VGA_Driver|VS_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add3~8_combout\,
	ena => \VGA_Driver|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(4));

-- Location: LCCOMB_X27_Y21_N16
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

-- Location: FF_X27_Y21_N17
\VGA_Driver|VS_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add3~10_combout\,
	ena => \VGA_Driver|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(5));

-- Location: LCCOMB_X27_Y21_N18
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

-- Location: FF_X27_Y21_N19
\VGA_Driver|VS_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add3~12_combout\,
	ena => \VGA_Driver|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(6));

-- Location: LCCOMB_X27_Y21_N20
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

-- Location: FF_X27_Y21_N21
\VGA_Driver|VS_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add3~14_combout\,
	ena => \VGA_Driver|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(7));

-- Location: LCCOMB_X27_Y21_N22
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

-- Location: FF_X27_Y21_N23
\VGA_Driver|VS_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add3~16_combout\,
	ena => \VGA_Driver|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(8));

-- Location: LCCOMB_X27_Y21_N24
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

-- Location: LCCOMB_X27_Y21_N26
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

-- Location: FF_X27_Y21_N27
\VGA_Driver|VS_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add3~20_combout\,
	ena => \VGA_Driver|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(10));

-- Location: LCCOMB_X27_Y21_N0
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

-- Location: LCCOMB_X26_Y21_N8
\VGA_Driver|Equal5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal5~1_combout\ = (\VGA_Driver|Equal5~0_combout\ & (!\VGA_Driver|VS_counter\(4) & \VGA_Driver|VS_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|Equal5~0_combout\,
	datac => \VGA_Driver|VS_counter\(4),
	datad => \VGA_Driver|VS_counter\(3),
	combout => \VGA_Driver|Equal5~1_combout\);

-- Location: LCCOMB_X28_Y21_N6
\VGA_Driver|Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal7~0_combout\ = (\VGA_Driver|Equal5~1_combout\ & (\VGA_Driver|VS_counter\(2) & (!\VGA_Driver|VS_counter\(1) & \VGA_Driver|VS_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal5~1_combout\,
	datab => \VGA_Driver|VS_counter\(2),
	datac => \VGA_Driver|VS_counter\(1),
	datad => \VGA_Driver|VS_counter\(0),
	combout => \VGA_Driver|Equal7~0_combout\);

-- Location: LCCOMB_X27_Y21_N30
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

-- Location: FF_X27_Y21_N31
\VGA_Driver|VS_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VS_counter~4_combout\,
	ena => \VGA_Driver|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(9));

-- Location: LCCOMB_X26_Y21_N10
\VGA_Driver|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~0_combout\ = \VGA_Driver|VS_counter\(0) $ (VCC)
-- \VGA_Driver|Add1~1\ = CARRY(\VGA_Driver|VS_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(0),
	datad => VCC,
	combout => \VGA_Driver|Add1~0_combout\,
	cout => \VGA_Driver|Add1~1\);

-- Location: LCCOMB_X26_Y21_N12
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

-- Location: LCCOMB_X26_Y21_N14
\VGA_Driver|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~4_combout\ = (\VGA_Driver|VS_counter\(2) & (\VGA_Driver|Add1~3\ $ (GND))) # (!\VGA_Driver|VS_counter\(2) & (!\VGA_Driver|Add1~3\ & VCC))
-- \VGA_Driver|Add1~5\ = CARRY((\VGA_Driver|VS_counter\(2) & !\VGA_Driver|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(2),
	datad => VCC,
	cin => \VGA_Driver|Add1~3\,
	combout => \VGA_Driver|Add1~4_combout\,
	cout => \VGA_Driver|Add1~5\);

-- Location: LCCOMB_X26_Y21_N16
\VGA_Driver|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~6_combout\ = (\VGA_Driver|VS_counter\(3) & (!\VGA_Driver|Add1~5\)) # (!\VGA_Driver|VS_counter\(3) & ((\VGA_Driver|Add1~5\) # (GND)))
-- \VGA_Driver|Add1~7\ = CARRY((!\VGA_Driver|Add1~5\) # (!\VGA_Driver|VS_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(3),
	datad => VCC,
	cin => \VGA_Driver|Add1~5\,
	combout => \VGA_Driver|Add1~6_combout\,
	cout => \VGA_Driver|Add1~7\);

-- Location: LCCOMB_X26_Y21_N18
\VGA_Driver|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~8_combout\ = (\VGA_Driver|VS_counter\(4) & ((GND) # (!\VGA_Driver|Add1~7\))) # (!\VGA_Driver|VS_counter\(4) & (\VGA_Driver|Add1~7\ $ (GND)))
-- \VGA_Driver|Add1~9\ = CARRY((\VGA_Driver|VS_counter\(4)) # (!\VGA_Driver|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(4),
	datad => VCC,
	cin => \VGA_Driver|Add1~7\,
	combout => \VGA_Driver|Add1~8_combout\,
	cout => \VGA_Driver|Add1~9\);

-- Location: LCCOMB_X26_Y21_N20
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

-- Location: LCCOMB_X26_Y21_N22
\VGA_Driver|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~12_combout\ = (\VGA_Driver|VS_counter\(6) & ((GND) # (!\VGA_Driver|Add1~11\))) # (!\VGA_Driver|VS_counter\(6) & (\VGA_Driver|Add1~11\ $ (GND)))
-- \VGA_Driver|Add1~13\ = CARRY((\VGA_Driver|VS_counter\(6)) # (!\VGA_Driver|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(6),
	datad => VCC,
	cin => \VGA_Driver|Add1~11\,
	combout => \VGA_Driver|Add1~12_combout\,
	cout => \VGA_Driver|Add1~13\);

-- Location: LCCOMB_X26_Y21_N24
\VGA_Driver|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~14_combout\ = (\VGA_Driver|VS_counter\(7) & (\VGA_Driver|Add1~13\ & VCC)) # (!\VGA_Driver|VS_counter\(7) & (!\VGA_Driver|Add1~13\))
-- \VGA_Driver|Add1~15\ = CARRY((!\VGA_Driver|VS_counter\(7) & !\VGA_Driver|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(7),
	datad => VCC,
	cin => \VGA_Driver|Add1~13\,
	combout => \VGA_Driver|Add1~14_combout\,
	cout => \VGA_Driver|Add1~15\);

-- Location: LCCOMB_X26_Y21_N26
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

-- Location: LCCOMB_X26_Y21_N28
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

-- Location: LCCOMB_X26_Y22_N6
\draw_player_1_paddle|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan3~1_cout\ = CARRY((player_1_paddle_Y_location(0) & !\VGA_Driver|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_1_paddle_Y_location(0),
	datab => \VGA_Driver|Add1~0_combout\,
	datad => VCC,
	cout => \draw_player_1_paddle|LessThan3~1_cout\);

-- Location: LCCOMB_X26_Y22_N8
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

-- Location: LCCOMB_X26_Y22_N10
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

-- Location: LCCOMB_X26_Y22_N12
\draw_player_1_paddle|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan3~7_cout\ = CARRY((\VGA_Driver|Add1~6_combout\ & ((!\draw_player_1_paddle|LessThan3~5_cout\) # (!\draw_player_1_paddle|Add1~2_combout\))) # (!\VGA_Driver|Add1~6_combout\ & (!\draw_player_1_paddle|Add1~2_combout\ & 
-- !\draw_player_1_paddle|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~6_combout\,
	datab => \draw_player_1_paddle|Add1~2_combout\,
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan3~5_cout\,
	cout => \draw_player_1_paddle|LessThan3~7_cout\);

-- Location: LCCOMB_X26_Y22_N14
\draw_player_1_paddle|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan3~9_cout\ = CARRY((\draw_player_1_paddle|Add1~4_combout\ & ((!\draw_player_1_paddle|LessThan3~7_cout\) # (!\VGA_Driver|Add1~8_combout\))) # (!\draw_player_1_paddle|Add1~4_combout\ & (!\VGA_Driver|Add1~8_combout\ & 
-- !\draw_player_1_paddle|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_player_1_paddle|Add1~4_combout\,
	datab => \VGA_Driver|Add1~8_combout\,
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan3~7_cout\,
	cout => \draw_player_1_paddle|LessThan3~9_cout\);

-- Location: LCCOMB_X26_Y22_N16
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

-- Location: LCCOMB_X26_Y22_N18
\draw_player_1_paddle|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan3~13_cout\ = CARRY((\draw_player_1_paddle|Add1~8_combout\ & ((!\draw_player_1_paddle|LessThan3~11_cout\) # (!\VGA_Driver|Add1~12_combout\))) # (!\draw_player_1_paddle|Add1~8_combout\ & (!\VGA_Driver|Add1~12_combout\ & 
-- !\draw_player_1_paddle|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_player_1_paddle|Add1~8_combout\,
	datab => \VGA_Driver|Add1~12_combout\,
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan3~11_cout\,
	cout => \draw_player_1_paddle|LessThan3~13_cout\);

-- Location: LCCOMB_X26_Y22_N20
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

-- Location: LCCOMB_X26_Y22_N22
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

-- Location: LCCOMB_X26_Y22_N24
\draw_player_1_paddle|LessThan3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan3~18_combout\ = (\draw_player_1_paddle|Add1~14_combout\ & ((\draw_player_1_paddle|LessThan3~17_cout\) # (!\VGA_Driver|Add1~18_combout\))) # (!\draw_player_1_paddle|Add1~14_combout\ & (\draw_player_1_paddle|LessThan3~17_cout\ 
-- & !\VGA_Driver|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_player_1_paddle|Add1~14_combout\,
	datad => \VGA_Driver|Add1~18_combout\,
	cin => \draw_player_1_paddle|LessThan3~17_cout\,
	combout => \draw_player_1_paddle|LessThan3~18_combout\);

-- Location: LCCOMB_X24_Y22_N0
\draw_player_1_paddle|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan2~1_cout\ = CARRY((!\VGA_Driver|Add1~0_combout\ & player_1_paddle_Y_location(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~0_combout\,
	datab => player_1_paddle_Y_location(0),
	datad => VCC,
	cout => \draw_player_1_paddle|LessThan2~1_cout\);

-- Location: LCCOMB_X24_Y22_N2
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

-- Location: LCCOMB_X24_Y22_N4
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

-- Location: LCCOMB_X24_Y22_N6
\draw_player_1_paddle|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan2~7_cout\ = CARRY((\VGA_Driver|Add1~6_combout\ & ((!\draw_player_1_paddle|LessThan2~5_cout\) # (!player_1_paddle_Y_location(3)))) # (!\VGA_Driver|Add1~6_combout\ & (!player_1_paddle_Y_location(3) & 
-- !\draw_player_1_paddle|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~6_combout\,
	datab => player_1_paddle_Y_location(3),
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan2~5_cout\,
	cout => \draw_player_1_paddle|LessThan2~7_cout\);

-- Location: LCCOMB_X24_Y22_N8
\draw_player_1_paddle|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan2~9_cout\ = CARRY((player_1_paddle_Y_location(4) & ((!\draw_player_1_paddle|LessThan2~7_cout\) # (!\VGA_Driver|Add1~8_combout\))) # (!player_1_paddle_Y_location(4) & (!\VGA_Driver|Add1~8_combout\ & 
-- !\draw_player_1_paddle|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_1_paddle_Y_location(4),
	datab => \VGA_Driver|Add1~8_combout\,
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan2~7_cout\,
	cout => \draw_player_1_paddle|LessThan2~9_cout\);

-- Location: LCCOMB_X24_Y22_N10
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

-- Location: LCCOMB_X24_Y22_N12
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

-- Location: LCCOMB_X24_Y22_N14
\draw_player_1_paddle|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan2~15_cout\ = CARRY((\VGA_Driver|Add1~14_combout\ & ((!\draw_player_1_paddle|LessThan2~13_cout\) # (!player_1_paddle_Y_location(7)))) # (!\VGA_Driver|Add1~14_combout\ & (!player_1_paddle_Y_location(7) & 
-- !\draw_player_1_paddle|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~14_combout\,
	datab => player_1_paddle_Y_location(7),
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan2~13_cout\,
	cout => \draw_player_1_paddle|LessThan2~15_cout\);

-- Location: LCCOMB_X24_Y22_N16
\draw_player_1_paddle|LessThan2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan2~16_combout\ = (\VGA_Driver|Add1~16_combout\ & (player_1_paddle_Y_location(8) & !\draw_player_1_paddle|LessThan2~15_cout\)) # (!\VGA_Driver|Add1~16_combout\ & ((player_1_paddle_Y_location(8)) # 
-- (!\draw_player_1_paddle|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~16_combout\,
	datab => player_1_paddle_Y_location(8),
	cin => \draw_player_1_paddle|LessThan2~15_cout\,
	combout => \draw_player_1_paddle|LessThan2~16_combout\);

-- Location: LCCOMB_X28_Y23_N22
\VGA_Driver|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add0~2_combout\ = \VGA_Driver|HS_counter\(6) $ (\VGA_Driver|HS_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(6),
	datad => \VGA_Driver|HS_counter\(5),
	combout => \VGA_Driver|Add0~2_combout\);

-- Location: LCCOMB_X26_Y23_N20
\VGA_Driver|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add0~3_combout\ = \VGA_Driver|HS_counter\(8) $ (((\VGA_Driver|HS_counter\(7) & ((\VGA_Driver|HS_counter\(6)) # (\VGA_Driver|HS_counter\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(8),
	datab => \VGA_Driver|HS_counter\(6),
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(7),
	combout => \VGA_Driver|Add0~3_combout\);

-- Location: LCCOMB_X26_Y23_N22
\VGA_Driver|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add0~4_combout\ = \VGA_Driver|HS_counter\(7) $ (((\VGA_Driver|HS_counter\(6)) # (\VGA_Driver|HS_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(7),
	datab => \VGA_Driver|HS_counter\(6),
	datac => \VGA_Driver|HS_counter\(5),
	combout => \VGA_Driver|Add0~4_combout\);

-- Location: LCCOMB_X26_Y22_N26
\draw_player_1_paddle|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|always0~0_combout\ = (\VGA_Driver|Add0~3_combout\ & (!\VGA_Driver|Add0~4_combout\ & (\VGA_Driver|HS_counter\(5) & !\VGA_Driver|HS_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~3_combout\,
	datab => \VGA_Driver|Add0~4_combout\,
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(4),
	combout => \draw_player_1_paddle|always0~0_combout\);

-- Location: LCCOMB_X26_Y22_N4
\draw_player_1_paddle|always0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|always0~1_combout\ = (\VGA_Driver|Add0~2_combout\ & (\draw_player_1_paddle|always0~0_combout\ & ((\VGA_Driver|Add1~18_combout\) # (!\draw_player_1_paddle|LessThan2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_player_1_paddle|LessThan2~16_combout\,
	datab => \VGA_Driver|Add0~2_combout\,
	datac => \draw_player_1_paddle|always0~0_combout\,
	datad => \VGA_Driver|Add1~18_combout\,
	combout => \draw_player_1_paddle|always0~1_combout\);

-- Location: LCCOMB_X27_Y23_N30
\draw_player_1_paddle|always0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|always0~2_combout\ = (!\VGA_Driver|HS_counter\(3) & (((!\VGA_Driver|HS_counter\(0) & !\VGA_Driver|HS_counter\(1))) # (!\VGA_Driver|HS_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(0),
	datab => \VGA_Driver|HS_counter\(1),
	datac => \VGA_Driver|HS_counter\(2),
	datad => \VGA_Driver|HS_counter\(3),
	combout => \draw_player_1_paddle|always0~2_combout\);

-- Location: LCCOMB_X26_Y23_N8
\VGA_Driver|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add0~0_combout\ = (\VGA_Driver|HS_counter\(8)) # ((\VGA_Driver|HS_counter\(7) & ((\VGA_Driver|HS_counter\(6)) # (\VGA_Driver|HS_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(8),
	datab => \VGA_Driver|HS_counter\(6),
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(7),
	combout => \VGA_Driver|Add0~0_combout\);

-- Location: LCCOMB_X26_Y23_N2
\VGA_Driver|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add0~1_combout\ = \VGA_Driver|HS_counter\(9) $ (\VGA_Driver|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(9),
	datac => \VGA_Driver|Add0~0_combout\,
	combout => \VGA_Driver|Add0~1_combout\);

-- Location: LCCOMB_X26_Y22_N0
\draw_player_1_paddle|always0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|always0~3_combout\ = (\draw_player_1_paddle|LessThan3~18_combout\ & (\draw_player_1_paddle|always0~1_combout\ & (\draw_player_1_paddle|always0~2_combout\ & \VGA_Driver|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_player_1_paddle|LessThan3~18_combout\,
	datab => \draw_player_1_paddle|always0~1_combout\,
	datac => \draw_player_1_paddle|always0~2_combout\,
	datad => \VGA_Driver|Add0~1_combout\,
	combout => \draw_player_1_paddle|always0~3_combout\);

-- Location: FF_X26_Y22_N1
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

-- Location: LCCOMB_X26_Y21_N4
\draw_player_2_paddle|always0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|always0~4_combout\ = ((!\VGA_Driver|Add1~2_combout\ & (!\VGA_Driver|Add1~4_combout\ & !\VGA_Driver|Add1~6_combout\))) # (!\VGA_Driver|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~2_combout\,
	datab => \VGA_Driver|Add1~8_combout\,
	datac => \VGA_Driver|Add1~4_combout\,
	datad => \VGA_Driver|Add1~6_combout\,
	combout => \draw_player_2_paddle|always0~4_combout\);

-- Location: LCCOMB_X27_Y23_N6
\draw_player_2_paddle|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|always0~0_combout\ = (!\VGA_Driver|HS_counter\(5) & ((\VGA_Driver|HS_counter\(2)) # ((\VGA_Driver|HS_counter\(1) & \VGA_Driver|HS_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(2),
	datab => \VGA_Driver|HS_counter\(1),
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(0),
	combout => \draw_player_2_paddle|always0~0_combout\);

-- Location: LCCOMB_X26_Y22_N2
\draw_player_2_paddle|always0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|always0~1_combout\ = (\VGA_Driver|Add0~3_combout\ & (\draw_player_2_paddle|always0~0_combout\ & (!\VGA_Driver|Add0~4_combout\ & !\VGA_Driver|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~3_combout\,
	datab => \draw_player_2_paddle|always0~0_combout\,
	datac => \VGA_Driver|Add0~4_combout\,
	datad => \VGA_Driver|Add0~2_combout\,
	combout => \draw_player_2_paddle|always0~1_combout\);

-- Location: LCCOMB_X26_Y22_N28
\draw_player_2_paddle|always0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|always0~2_combout\ = (!\VGA_Driver|Add1~18_combout\ & (!\VGA_Driver|Add1~12_combout\ & (\VGA_Driver|HS_counter\(3) & \VGA_Driver|HS_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~18_combout\,
	datab => \VGA_Driver|Add1~12_combout\,
	datac => \VGA_Driver|HS_counter\(3),
	datad => \VGA_Driver|HS_counter\(4),
	combout => \draw_player_2_paddle|always0~2_combout\);

-- Location: LCCOMB_X26_Y22_N30
\draw_player_2_paddle|always0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|always0~3_combout\ = (!\VGA_Driver|Add1~16_combout\ & (\draw_player_2_paddle|always0~1_combout\ & (!\VGA_Driver|Add1~14_combout\ & \draw_player_2_paddle|always0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~16_combout\,
	datab => \draw_player_2_paddle|always0~1_combout\,
	datac => \VGA_Driver|Add1~14_combout\,
	datad => \draw_player_2_paddle|always0~2_combout\,
	combout => \draw_player_2_paddle|always0~3_combout\);

-- Location: LCCOMB_X26_Y21_N2
\draw_player_2_paddle|always0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|always0~5_combout\ = (!\VGA_Driver|Add0~1_combout\ & (\draw_player_2_paddle|always0~3_combout\ & ((\draw_player_2_paddle|always0~4_combout\) # (!\VGA_Driver|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~1_combout\,
	datab => \draw_player_2_paddle|always0~4_combout\,
	datac => \draw_player_2_paddle|always0~3_combout\,
	datad => \VGA_Driver|Add1~10_combout\,
	combout => \draw_player_2_paddle|always0~5_combout\);

-- Location: FF_X26_Y21_N3
\draw_player_2_paddle|box\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \draw_player_2_paddle|always0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \draw_player_2_paddle|box~q\);

-- Location: LCCOMB_X26_Y26_N12
\Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = ball_X_location(0) $ (VCC)
-- \Add7~1\ = CARRY(ball_X_location(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(0),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X27_Y26_N12
\Add14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~0_combout\ = ball_X_location(0) $ (VCC)
-- \Add14~1\ = CARRY(ball_X_location(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(0),
	datad => VCC,
	combout => \Add14~0_combout\,
	cout => \Add14~1\);

-- Location: LCCOMB_X27_Y26_N8
\ball_X_location[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[0]~5_combout\ = (\LessThan1~2_combout\ & ((\Add14~0_combout\))) # (!\LessThan1~2_combout\ & (\Add7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => \Add7~0_combout\,
	datad => \Add14~0_combout\,
	combout => \ball_X_location[0]~5_combout\);

-- Location: LCCOMB_X28_Y26_N6
\Add5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~1_combout\ = ball_X_location(0) $ (VCC)
-- \Add5~2\ = CARRY(ball_X_location(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(0),
	datad => VCC,
	combout => \Add5~1_combout\,
	cout => \Add5~2\);

-- Location: LCCOMB_X28_Y20_N6
\Add15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~0_combout\ = ball_Y_location(0) $ (VCC)
-- \Add15~1\ = CARRY(ball_Y_location(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(0),
	datad => VCC,
	combout => \Add15~0_combout\,
	cout => \Add15~1\);

-- Location: LCCOMB_X30_Y20_N0
\Add12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = ball_Y_location(0) $ (VCC)
-- \Add12~1\ = CARRY(ball_Y_location(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(0),
	datad => VCC,
	combout => \Add12~0_combout\,
	cout => \Add12~1\);

-- Location: LCCOMB_X28_Y20_N2
\ball_Y_location[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_Y_location[0]~3_combout\ = (\LessThan3~3_combout\ & (\Add15~0_combout\)) # (!\LessThan3~3_combout\ & ((\Add12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~0_combout\,
	datab => \LessThan3~3_combout\,
	datad => \Add12~0_combout\,
	combout => \ball_Y_location[0]~3_combout\);

-- Location: LCCOMB_X29_Y20_N0
\Add10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = ball_Y_location(0) $ (VCC)
-- \Add10~1\ = CARRY(ball_Y_location(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(0),
	datad => VCC,
	combout => \Add10~0_combout\,
	cout => \Add10~1\);

-- Location: LCCOMB_X29_Y27_N12
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

-- Location: LCCOMB_X29_Y27_N8
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

-- Location: FF_X29_Y27_N9
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

-- Location: LCCOMB_X29_Y27_N14
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

-- Location: FF_X29_Y27_N15
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

-- Location: LCCOMB_X29_Y27_N16
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

-- Location: FF_X29_Y27_N17
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

-- Location: LCCOMB_X29_Y27_N18
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

-- Location: FF_X29_Y27_N19
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

-- Location: LCCOMB_X29_Y27_N10
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!ball_speed_counter(1) & (!ball_speed_counter(3) & (!ball_speed_counter(0) & !ball_speed_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_speed_counter(1),
	datab => ball_speed_counter(3),
	datac => ball_speed_counter(0),
	datad => ball_speed_counter(2),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X29_Y27_N20
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

-- Location: LCCOMB_X29_Y27_N4
\ball_speed_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_speed_counter~3_combout\ = (\Add0~8_combout\ & !\Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datad => \Equal1~6_combout\,
	combout => \ball_speed_counter~3_combout\);

-- Location: FF_X29_Y27_N5
\ball_speed_counter[4]\ : dffeas
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
	q => ball_speed_counter(4));

-- Location: LCCOMB_X29_Y27_N22
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

-- Location: FF_X29_Y27_N23
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

-- Location: LCCOMB_X29_Y27_N24
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

-- Location: FF_X29_Y27_N25
\ball_speed_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(6));

-- Location: LCCOMB_X29_Y27_N26
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

-- Location: LCCOMB_X29_Y27_N6
\ball_speed_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_speed_counter~4_combout\ = (\Add0~14_combout\ & !\Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	datad => \Equal1~6_combout\,
	combout => \ball_speed_counter~4_combout\);

-- Location: FF_X29_Y27_N7
\ball_speed_counter[7]\ : dffeas
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
	q => ball_speed_counter(7));

-- Location: LCCOMB_X29_Y27_N28
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

-- Location: FF_X29_Y27_N29
\ball_speed_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(8));

-- Location: LCCOMB_X29_Y27_N30
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

-- Location: FF_X29_Y27_N31
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

-- Location: LCCOMB_X29_Y26_N0
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (ball_speed_counter(10) & (\Add0~19\ $ (GND))) # (!ball_speed_counter(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((ball_speed_counter(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_speed_counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X29_Y26_N1
\ball_speed_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(10));

-- Location: LCCOMB_X29_Y26_N2
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (ball_speed_counter(11) & (!\Add0~21\)) # (!ball_speed_counter(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!ball_speed_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_speed_counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X29_Y26_N3
\ball_speed_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(11));

-- Location: LCCOMB_X29_Y26_N4
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (ball_speed_counter(12) & (\Add0~23\ $ (GND))) # (!ball_speed_counter(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((ball_speed_counter(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_speed_counter(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X29_Y26_N26
\ball_speed_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_speed_counter~5_combout\ = (\Add0~24_combout\ & !\Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~24_combout\,
	datad => \Equal1~6_combout\,
	combout => \ball_speed_counter~5_combout\);

-- Location: FF_X29_Y26_N27
\ball_speed_counter[12]\ : dffeas
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
	q => ball_speed_counter(12));

-- Location: LCCOMB_X29_Y26_N6
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

-- Location: FF_X29_Y26_N7
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

-- Location: LCCOMB_X29_Y26_N8
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

-- Location: LCCOMB_X28_Y26_N4
\ball_speed_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_speed_counter~6_combout\ = (\Add0~28_combout\ & !\Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~28_combout\,
	datad => \Equal1~6_combout\,
	combout => \ball_speed_counter~6_combout\);

-- Location: FF_X28_Y26_N5
\ball_speed_counter[14]\ : dffeas
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
	q => ball_speed_counter(14));

-- Location: LCCOMB_X29_Y26_N10
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (ball_speed_counter(15) & (!\Add0~29\)) # (!ball_speed_counter(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!ball_speed_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_speed_counter(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X29_Y26_N28
\ball_speed_counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_speed_counter~7_combout\ = (\Add0~30_combout\ & !\Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datad => \Equal1~6_combout\,
	combout => \ball_speed_counter~7_combout\);

-- Location: FF_X29_Y26_N29
\ball_speed_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_speed_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_speed_counter(15));

-- Location: LCCOMB_X29_Y26_N12
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

-- Location: LCCOMB_X29_Y26_N20
\ball_speed_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_speed_counter~0_combout\ = (\Add0~32_combout\ & !\Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~32_combout\,
	datad => \Equal1~6_combout\,
	combout => \ball_speed_counter~0_combout\);

-- Location: FF_X29_Y26_N21
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

-- Location: LCCOMB_X29_Y26_N14
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

-- Location: LCCOMB_X29_Y26_N30
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

-- Location: FF_X29_Y26_N31
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

-- Location: LCCOMB_X29_Y26_N16
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

-- Location: FF_X29_Y26_N17
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

-- Location: LCCOMB_X29_Y26_N18
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

-- Location: FF_X29_Y26_N19
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

-- Location: LCCOMB_X29_Y26_N24
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

-- Location: LCCOMB_X28_Y24_N0
\Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!ball_speed_counter(11) & (!ball_speed_counter(10) & (!ball_speed_counter(9) & !ball_speed_counter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_speed_counter(11),
	datab => ball_speed_counter(10),
	datac => ball_speed_counter(9),
	datad => ball_speed_counter(8),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X29_Y26_N22
\Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (!ball_speed_counter(13) & (ball_speed_counter(14) & (ball_speed_counter(12) & ball_speed_counter(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_speed_counter(13),
	datab => ball_speed_counter(14),
	datac => ball_speed_counter(12),
	datad => ball_speed_counter(15),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X28_Y24_N2
\Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (\Equal1~3_combout\ & \Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~3_combout\,
	datad => \Equal1~4_combout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X29_Y27_N0
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!ball_speed_counter(5) & (!ball_speed_counter(6) & (ball_speed_counter(4) & ball_speed_counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_speed_counter(5),
	datab => ball_speed_counter(6),
	datac => ball_speed_counter(4),
	datad => ball_speed_counter(7),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X29_Y27_N2
\Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (\Equal1~1_combout\ & (\Equal1~0_combout\ & (\Equal1~5_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal1~5_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X28_Y20_N30
\ball_Y_location[9]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_Y_location[9]~8_combout\ = (\Equal1~6_combout\ & (\LessThan1~2_combout\ & \LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~6_combout\,
	datab => \LessThan1~2_combout\,
	datad => \LessThan0~2_combout\,
	combout => \ball_Y_location[9]~8_combout\);

-- Location: FF_X28_Y20_N3
\ball_Y_location[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_Y_location[0]~3_combout\,
	asdata => \Add10~0_combout\,
	sload => \ALT_INV_LessThan2~2_combout\,
	ena => \ball_Y_location[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_Y_location(0));

-- Location: LCCOMB_X28_Y20_N8
\Add15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~2_combout\ = (ball_Y_location(1) & ((b_velocity_Y(4) & (\Add15~1\ & VCC)) # (!b_velocity_Y(4) & (!\Add15~1\)))) # (!ball_Y_location(1) & ((b_velocity_Y(4) & (!\Add15~1\)) # (!b_velocity_Y(4) & ((\Add15~1\) # (GND)))))
-- \Add15~3\ = CARRY((ball_Y_location(1) & (!b_velocity_Y(4) & !\Add15~1\)) # (!ball_Y_location(1) & ((!\Add15~1\) # (!b_velocity_Y(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(1),
	datab => b_velocity_Y(4),
	datad => VCC,
	cin => \Add15~1\,
	combout => \Add15~2_combout\,
	cout => \Add15~3\);

-- Location: LCCOMB_X28_Y20_N10
\Add15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~4_combout\ = ((ball_Y_location(2) $ (b_velocity_Y(4) $ (\Add15~3\)))) # (GND)
-- \Add15~5\ = CARRY((ball_Y_location(2) & (b_velocity_Y(4) & !\Add15~3\)) # (!ball_Y_location(2) & ((b_velocity_Y(4)) # (!\Add15~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(2),
	datab => b_velocity_Y(4),
	datad => VCC,
	cin => \Add15~3\,
	combout => \Add15~4_combout\,
	cout => \Add15~5\);

-- Location: LCCOMB_X30_Y20_N2
\Add12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~2_combout\ = (ball_Y_location(1) & (\Add12~1\ & VCC)) # (!ball_Y_location(1) & (!\Add12~1\))
-- \Add12~3\ = CARRY((!ball_Y_location(1) & !\Add12~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(1),
	datad => VCC,
	cin => \Add12~1\,
	combout => \Add12~2_combout\,
	cout => \Add12~3\);

-- Location: LCCOMB_X30_Y20_N4
\Add12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~4_combout\ = (ball_Y_location(2) & (!\Add12~3\ & VCC)) # (!ball_Y_location(2) & (\Add12~3\ $ (GND)))
-- \Add12~5\ = CARRY((!ball_Y_location(2) & !\Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(2),
	datad => VCC,
	cin => \Add12~3\,
	combout => \Add12~4_combout\,
	cout => \Add12~5\);

-- Location: LCCOMB_X29_Y20_N22
\Add10~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~22_combout\ = (\LessThan2~2_combout\ & ((\LessThan3~3_combout\ & (\Add15~4_combout\)) # (!\LessThan3~3_combout\ & ((\Add12~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~4_combout\,
	datab => \LessThan2~2_combout\,
	datac => \LessThan3~3_combout\,
	datad => \Add12~4_combout\,
	combout => \Add10~22_combout\);

-- Location: LCCOMB_X29_Y20_N2
\Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = (ball_Y_location(1) & (!\Add10~1\)) # (!ball_Y_location(1) & ((\Add10~1\) # (GND)))
-- \Add10~3\ = CARRY((!\Add10~1\) # (!ball_Y_location(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(1),
	datad => VCC,
	cin => \Add10~1\,
	combout => \Add10~2_combout\,
	cout => \Add10~3\);

-- Location: LCCOMB_X29_Y20_N4
\Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = (ball_Y_location(2) & (\Add10~3\ $ (GND))) # (!ball_Y_location(2) & ((GND) # (!\Add10~3\)))
-- \Add10~5\ = CARRY((!\Add10~3\) # (!ball_Y_location(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(2),
	datad => VCC,
	cin => \Add10~3\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: LCCOMB_X29_Y20_N26
\Add10~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~23_combout\ = (!\Add10~22_combout\ & ((\LessThan2~2_combout\) # (!\Add10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~22_combout\,
	datab => \LessThan2~2_combout\,
	datac => \Add10~4_combout\,
	combout => \Add10~23_combout\);

-- Location: FF_X29_Y20_N27
\ball_Y_location[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add10~23_combout\,
	ena => \ball_Y_location[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_Y_location(2));

-- Location: LCCOMB_X28_Y20_N12
\Add15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~6_combout\ = (ball_Y_location(3) & ((b_velocity_Y(4) & (\Add15~5\ & VCC)) # (!b_velocity_Y(4) & (!\Add15~5\)))) # (!ball_Y_location(3) & ((b_velocity_Y(4) & (!\Add15~5\)) # (!b_velocity_Y(4) & ((\Add15~5\) # (GND)))))
-- \Add15~7\ = CARRY((ball_Y_location(3) & (!b_velocity_Y(4) & !\Add15~5\)) # (!ball_Y_location(3) & ((!\Add15~5\) # (!b_velocity_Y(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(3),
	datab => b_velocity_Y(4),
	datad => VCC,
	cin => \Add15~5\,
	combout => \Add15~6_combout\,
	cout => \Add15~7\);

-- Location: LCCOMB_X30_Y20_N6
\Add12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~6_combout\ = (ball_Y_location(3) & (\Add12~5\ & VCC)) # (!ball_Y_location(3) & (!\Add12~5\))
-- \Add12~7\ = CARRY((!ball_Y_location(3) & !\Add12~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(3),
	datad => VCC,
	cin => \Add12~5\,
	combout => \Add12~6_combout\,
	cout => \Add12~7\);

-- Location: LCCOMB_X27_Y20_N2
\ball_Y_location[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_Y_location[3]~4_combout\ = (\LessThan3~3_combout\ & (\Add15~6_combout\)) # (!\LessThan3~3_combout\ & ((\Add12~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~3_combout\,
	datab => \Add15~6_combout\,
	datad => \Add12~6_combout\,
	combout => \ball_Y_location[3]~4_combout\);

-- Location: LCCOMB_X29_Y20_N6
\Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~6_combout\ = (ball_Y_location(3) & (!\Add10~5\)) # (!ball_Y_location(3) & ((\Add10~5\) # (GND)))
-- \Add10~7\ = CARRY((!\Add10~5\) # (!ball_Y_location(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(3),
	datad => VCC,
	cin => \Add10~5\,
	combout => \Add10~6_combout\,
	cout => \Add10~7\);

-- Location: FF_X27_Y20_N3
\ball_Y_location[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_Y_location[3]~4_combout\,
	asdata => \Add10~6_combout\,
	sload => \ALT_INV_LessThan2~2_combout\,
	ena => \ball_Y_location[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_Y_location(3));

-- Location: LCCOMB_X29_Y20_N8
\Add10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~8_combout\ = (ball_Y_location(4) & (!\Add10~7\ & VCC)) # (!ball_Y_location(4) & (\Add10~7\ $ (GND)))
-- \Add10~9\ = CARRY((!ball_Y_location(4) & !\Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(4),
	datad => VCC,
	cin => \Add10~7\,
	combout => \Add10~8_combout\,
	cout => \Add10~9\);

-- Location: LCCOMB_X28_Y20_N14
\Add15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~8_combout\ = ((ball_Y_location(4) $ (b_velocity_Y(4) $ (\Add15~7\)))) # (GND)
-- \Add15~9\ = CARRY((ball_Y_location(4) & (b_velocity_Y(4) & !\Add15~7\)) # (!ball_Y_location(4) & ((b_velocity_Y(4)) # (!\Add15~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(4),
	datab => b_velocity_Y(4),
	datad => VCC,
	cin => \Add15~7\,
	combout => \Add15~8_combout\,
	cout => \Add15~9\);

-- Location: LCCOMB_X30_Y20_N8
\Add12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~8_combout\ = (ball_Y_location(4) & (\Add12~7\ $ (GND))) # (!ball_Y_location(4) & ((GND) # (!\Add12~7\)))
-- \Add12~9\ = CARRY((!\Add12~7\) # (!ball_Y_location(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(4),
	datad => VCC,
	cin => \Add12~7\,
	combout => \Add12~8_combout\,
	cout => \Add12~9\);

-- Location: LCCOMB_X29_Y20_N20
\Add10~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~20_combout\ = (\LessThan2~2_combout\ & ((\LessThan3~3_combout\ & (\Add15~8_combout\)) # (!\LessThan3~3_combout\ & ((\Add12~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~8_combout\,
	datab => \LessThan3~3_combout\,
	datac => \Add12~8_combout\,
	datad => \LessThan2~2_combout\,
	combout => \Add10~20_combout\);

-- Location: LCCOMB_X29_Y20_N24
\Add10~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~21_combout\ = (!\Add10~20_combout\ & ((\LessThan2~2_combout\) # (!\Add10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~2_combout\,
	datac => \Add10~8_combout\,
	datad => \Add10~20_combout\,
	combout => \Add10~21_combout\);

-- Location: FF_X29_Y20_N25
\ball_Y_location[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add10~21_combout\,
	ena => \ball_Y_location[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_Y_location(4));

-- Location: LCCOMB_X28_Y20_N16
\Add15~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~10_combout\ = (ball_Y_location(5) & ((b_velocity_Y(4) & (\Add15~9\ & VCC)) # (!b_velocity_Y(4) & (!\Add15~9\)))) # (!ball_Y_location(5) & ((b_velocity_Y(4) & (!\Add15~9\)) # (!b_velocity_Y(4) & ((\Add15~9\) # (GND)))))
-- \Add15~11\ = CARRY((ball_Y_location(5) & (!b_velocity_Y(4) & !\Add15~9\)) # (!ball_Y_location(5) & ((!\Add15~9\) # (!b_velocity_Y(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(5),
	datab => b_velocity_Y(4),
	datad => VCC,
	cin => \Add15~9\,
	combout => \Add15~10_combout\,
	cout => \Add15~11\);

-- Location: LCCOMB_X30_Y20_N10
\Add12~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~10_combout\ = (ball_Y_location(5) & (\Add12~9\ & VCC)) # (!ball_Y_location(5) & (!\Add12~9\))
-- \Add12~11\ = CARRY((!ball_Y_location(5) & !\Add12~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(5),
	datad => VCC,
	cin => \Add12~9\,
	combout => \Add12~10_combout\,
	cout => \Add12~11\);

-- Location: LCCOMB_X27_Y20_N0
\ball_Y_location[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_Y_location[5]~5_combout\ = (\LessThan3~3_combout\ & (\Add15~10_combout\)) # (!\LessThan3~3_combout\ & ((\Add12~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~3_combout\,
	datab => \Add15~10_combout\,
	datad => \Add12~10_combout\,
	combout => \ball_Y_location[5]~5_combout\);

-- Location: LCCOMB_X29_Y20_N10
\Add10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~10_combout\ = (ball_Y_location(5) & (!\Add10~9\)) # (!ball_Y_location(5) & ((\Add10~9\) # (GND)))
-- \Add10~11\ = CARRY((!\Add10~9\) # (!ball_Y_location(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(5),
	datad => VCC,
	cin => \Add10~9\,
	combout => \Add10~10_combout\,
	cout => \Add10~11\);

-- Location: FF_X27_Y20_N1
\ball_Y_location[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_Y_location[5]~5_combout\,
	asdata => \Add10~10_combout\,
	sload => \ALT_INV_LessThan2~2_combout\,
	ena => \ball_Y_location[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_Y_location(5));

-- Location: LCCOMB_X30_Y20_N12
\Add12~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~12_combout\ = (ball_Y_location(6) & ((GND) # (!\Add12~11\))) # (!ball_Y_location(6) & (\Add12~11\ $ (GND)))
-- \Add12~13\ = CARRY((ball_Y_location(6)) # (!\Add12~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(6),
	datad => VCC,
	cin => \Add12~11\,
	combout => \Add12~12_combout\,
	cout => \Add12~13\);

-- Location: LCCOMB_X28_Y20_N18
\Add15~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~12_combout\ = ((ball_Y_location(6) $ (b_velocity_Y(4) $ (!\Add15~11\)))) # (GND)
-- \Add15~13\ = CARRY((ball_Y_location(6) & ((b_velocity_Y(4)) # (!\Add15~11\))) # (!ball_Y_location(6) & (b_velocity_Y(4) & !\Add15~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(6),
	datab => b_velocity_Y(4),
	datad => VCC,
	cin => \Add15~11\,
	combout => \Add15~12_combout\,
	cout => \Add15~13\);

-- Location: LCCOMB_X29_Y20_N30
\ball_Y_location[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_Y_location[6]~6_combout\ = (\LessThan3~3_combout\ & ((\Add15~12_combout\))) # (!\LessThan3~3_combout\ & (\Add12~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~12_combout\,
	datab => \LessThan3~3_combout\,
	datad => \Add15~12_combout\,
	combout => \ball_Y_location[6]~6_combout\);

-- Location: LCCOMB_X29_Y20_N12
\Add10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~12_combout\ = (ball_Y_location(6) & (\Add10~11\ $ (GND))) # (!ball_Y_location(6) & (!\Add10~11\ & VCC))
-- \Add10~13\ = CARRY((ball_Y_location(6) & !\Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(6),
	datad => VCC,
	cin => \Add10~11\,
	combout => \Add10~12_combout\,
	cout => \Add10~13\);

-- Location: FF_X29_Y20_N31
\ball_Y_location[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_Y_location[6]~6_combout\,
	asdata => \Add10~12_combout\,
	sload => \ALT_INV_LessThan2~2_combout\,
	ena => \ball_Y_location[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_Y_location(6));

-- Location: LCCOMB_X30_Y20_N14
\Add12~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~14_combout\ = (ball_Y_location(7) & (\Add12~13\ & VCC)) # (!ball_Y_location(7) & (!\Add12~13\))
-- \Add12~15\ = CARRY((!ball_Y_location(7) & !\Add12~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(7),
	datad => VCC,
	cin => \Add12~13\,
	combout => \Add12~14_combout\,
	cout => \Add12~15\);

-- Location: LCCOMB_X28_Y20_N20
\Add15~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~14_combout\ = (ball_Y_location(7) & ((b_velocity_Y(4) & (\Add15~13\ & VCC)) # (!b_velocity_Y(4) & (!\Add15~13\)))) # (!ball_Y_location(7) & ((b_velocity_Y(4) & (!\Add15~13\)) # (!b_velocity_Y(4) & ((\Add15~13\) # (GND)))))
-- \Add15~15\ = CARRY((ball_Y_location(7) & (!b_velocity_Y(4) & !\Add15~13\)) # (!ball_Y_location(7) & ((!\Add15~13\) # (!b_velocity_Y(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(7),
	datab => b_velocity_Y(4),
	datad => VCC,
	cin => \Add15~13\,
	combout => \Add15~14_combout\,
	cout => \Add15~15\);

-- Location: LCCOMB_X28_Y20_N26
\ball_Y_location[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_Y_location[7]~7_combout\ = (\LessThan3~3_combout\ & ((\Add15~14_combout\))) # (!\LessThan3~3_combout\ & (\Add12~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~14_combout\,
	datab => \LessThan3~3_combout\,
	datad => \Add15~14_combout\,
	combout => \ball_Y_location[7]~7_combout\);

-- Location: LCCOMB_X29_Y20_N14
\Add10~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~14_combout\ = (ball_Y_location(7) & (!\Add10~13\)) # (!ball_Y_location(7) & ((\Add10~13\) # (GND)))
-- \Add10~15\ = CARRY((!\Add10~13\) # (!ball_Y_location(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(7),
	datad => VCC,
	cin => \Add10~13\,
	combout => \Add10~14_combout\,
	cout => \Add10~15\);

-- Location: FF_X28_Y20_N27
\ball_Y_location[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_Y_location[7]~7_combout\,
	asdata => \Add10~14_combout\,
	sload => \ALT_INV_LessThan2~2_combout\,
	ena => \ball_Y_location[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_Y_location(7));

-- Location: LCCOMB_X28_Y20_N22
\Add15~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~16_combout\ = ((ball_Y_location(8) $ (b_velocity_Y(4) $ (!\Add15~15\)))) # (GND)
-- \Add15~17\ = CARRY((ball_Y_location(8) & ((b_velocity_Y(4)) # (!\Add15~15\))) # (!ball_Y_location(8) & (b_velocity_Y(4) & !\Add15~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(8),
	datab => b_velocity_Y(4),
	datad => VCC,
	cin => \Add15~15\,
	combout => \Add15~16_combout\,
	cout => \Add15~17\);

-- Location: LCCOMB_X30_Y20_N16
\Add12~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~16_combout\ = (ball_Y_location(8) & ((GND) # (!\Add12~15\))) # (!ball_Y_location(8) & (\Add12~15\ $ (GND)))
-- \Add12~17\ = CARRY((ball_Y_location(8)) # (!\Add12~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(8),
	datad => VCC,
	cin => \Add12~15\,
	combout => \Add12~16_combout\,
	cout => \Add12~17\);

-- Location: LCCOMB_X29_Y20_N28
\ball_Y_location[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_Y_location[8]~1_combout\ = (\LessThan3~3_combout\ & (\Add15~16_combout\)) # (!\LessThan3~3_combout\ & ((\Add12~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~16_combout\,
	datab => \LessThan3~3_combout\,
	datad => \Add12~16_combout\,
	combout => \ball_Y_location[8]~1_combout\);

-- Location: LCCOMB_X29_Y20_N16
\Add10~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~16_combout\ = (ball_Y_location(8) & (\Add10~15\ $ (GND))) # (!ball_Y_location(8) & (!\Add10~15\ & VCC))
-- \Add10~17\ = CARRY((ball_Y_location(8) & !\Add10~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(8),
	datad => VCC,
	cin => \Add10~15\,
	combout => \Add10~16_combout\,
	cout => \Add10~17\);

-- Location: FF_X29_Y20_N29
\ball_Y_location[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_Y_location[8]~1_combout\,
	asdata => \Add10~16_combout\,
	sload => \ALT_INV_LessThan2~2_combout\,
	ena => \ball_Y_location[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_Y_location(8));

-- Location: LCCOMB_X30_Y20_N18
\Add12~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~18_combout\ = \Add12~17\ $ (!ball_Y_location(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => ball_Y_location(9),
	cin => \Add12~17\,
	combout => \Add12~18_combout\);

-- Location: LCCOMB_X28_Y20_N24
\Add15~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~18_combout\ = b_velocity_Y(4) $ (\Add15~17\ $ (ball_Y_location(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => b_velocity_Y(4),
	datad => ball_Y_location(9),
	cin => \Add15~17\,
	combout => \Add15~18_combout\);

-- Location: LCCOMB_X28_Y20_N0
\ball_Y_location[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_Y_location[9]~0_combout\ = (\LessThan3~3_combout\ & ((\Add15~18_combout\))) # (!\LessThan3~3_combout\ & (\Add12~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~18_combout\,
	datab => \LessThan3~3_combout\,
	datad => \Add15~18_combout\,
	combout => \ball_Y_location[9]~0_combout\);

-- Location: LCCOMB_X29_Y20_N18
\Add10~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~18_combout\ = ball_Y_location(9) $ (\Add10~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(9),
	cin => \Add10~17\,
	combout => \Add10~18_combout\);

-- Location: FF_X28_Y20_N1
\ball_Y_location[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_Y_location[9]~0_combout\,
	asdata => \Add10~18_combout\,
	sload => \ALT_INV_LessThan2~2_combout\,
	ena => \ball_Y_location[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_Y_location(9));

-- Location: LCCOMB_X29_Y21_N0
\Add11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = (ball_Y_location(0) & (ball_Y_location(1) $ (VCC))) # (!ball_Y_location(0) & (ball_Y_location(1) & VCC))
-- \Add11~1\ = CARRY((ball_Y_location(0) & ball_Y_location(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(0),
	datab => ball_Y_location(1),
	datad => VCC,
	combout => \Add11~0_combout\,
	cout => \Add11~1\);

-- Location: LCCOMB_X29_Y21_N2
\Add11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (ball_Y_location(2) & ((\Add11~1\) # (GND))) # (!ball_Y_location(2) & (!\Add11~1\))
-- \Add11~3\ = CARRY((ball_Y_location(2)) # (!\Add11~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(2),
	datad => VCC,
	cin => \Add11~1\,
	combout => \Add11~2_combout\,
	cout => \Add11~3\);

-- Location: LCCOMB_X29_Y21_N4
\Add11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = (ball_Y_location(3) & (\Add11~3\ $ (GND))) # (!ball_Y_location(3) & (!\Add11~3\ & VCC))
-- \Add11~5\ = CARRY((ball_Y_location(3) & !\Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(3),
	datad => VCC,
	cin => \Add11~3\,
	combout => \Add11~4_combout\,
	cout => \Add11~5\);

-- Location: LCCOMB_X29_Y21_N6
\Add11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (ball_Y_location(4) & ((\Add11~5\) # (GND))) # (!ball_Y_location(4) & (!\Add11~5\))
-- \Add11~7\ = CARRY((ball_Y_location(4)) # (!\Add11~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(4),
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~6_combout\,
	cout => \Add11~7\);

-- Location: LCCOMB_X29_Y21_N8
\Add11~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~8_combout\ = (ball_Y_location(5) & (\Add11~7\ $ (GND))) # (!ball_Y_location(5) & (!\Add11~7\ & VCC))
-- \Add11~9\ = CARRY((ball_Y_location(5) & !\Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(5),
	datad => VCC,
	cin => \Add11~7\,
	combout => \Add11~8_combout\,
	cout => \Add11~9\);

-- Location: LCCOMB_X29_Y21_N10
\Add11~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~10_combout\ = (ball_Y_location(6) & (!\Add11~9\)) # (!ball_Y_location(6) & ((\Add11~9\) # (GND)))
-- \Add11~11\ = CARRY((!\Add11~9\) # (!ball_Y_location(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(6),
	datad => VCC,
	cin => \Add11~9\,
	combout => \Add11~10_combout\,
	cout => \Add11~11\);

-- Location: LCCOMB_X29_Y21_N12
\Add11~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~12_combout\ = (ball_Y_location(7) & (\Add11~11\ $ (GND))) # (!ball_Y_location(7) & (!\Add11~11\ & VCC))
-- \Add11~13\ = CARRY((ball_Y_location(7) & !\Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(7),
	datad => VCC,
	cin => \Add11~11\,
	combout => \Add11~12_combout\,
	cout => \Add11~13\);

-- Location: LCCOMB_X29_Y21_N14
\Add11~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~14_combout\ = (ball_Y_location(8) & (!\Add11~13\)) # (!ball_Y_location(8) & ((\Add11~13\) # (GND)))
-- \Add11~15\ = CARRY((!\Add11~13\) # (!ball_Y_location(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(8),
	datad => VCC,
	cin => \Add11~13\,
	combout => \Add11~14_combout\,
	cout => \Add11~15\);

-- Location: LCCOMB_X29_Y21_N16
\Add11~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~16_combout\ = (ball_Y_location(9) & (\Add11~15\ $ (GND))) # (!ball_Y_location(9) & (!\Add11~15\ & VCC))
-- \Add11~17\ = CARRY((ball_Y_location(9) & !\Add11~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(9),
	datad => VCC,
	cin => \Add11~15\,
	combout => \Add11~16_combout\,
	cout => \Add11~17\);

-- Location: LCCOMB_X29_Y21_N18
\Add11~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~18_combout\ = \Add11~17\ $ (ball_Y_location(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => ball_Y_location(9),
	cin => \Add11~17\,
	combout => \Add11~18_combout\);

-- Location: LCCOMB_X29_Y21_N20
\LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (((!\Add11~8_combout\ & !\Add11~6_combout\)) # (!\Add11~12_combout\)) # (!\Add11~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~10_combout\,
	datab => \Add11~12_combout\,
	datac => \Add11~8_combout\,
	datad => \Add11~6_combout\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X29_Y21_N22
\LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (\Add11~18_combout\) # ((!\Add11~16_combout\ & ((\LessThan3~0_combout\) # (!\Add11~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~18_combout\,
	datab => \LessThan3~0_combout\,
	datac => \Add11~14_combout\,
	datad => \Add11~16_combout\,
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X29_Y21_N24
\LessThan3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (!\Add11~4_combout\ & (!\Add11~8_combout\ & ((!\Add11~0_combout\) # (!\Add11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~4_combout\,
	datab => \Add11~2_combout\,
	datac => \Add11~8_combout\,
	datad => \Add11~0_combout\,
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X29_Y21_N28
\LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = (\LessThan3~1_combout\) # ((!\Add11~16_combout\ & \LessThan3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add11~16_combout\,
	datac => \LessThan3~1_combout\,
	datad => \LessThan3~2_combout\,
	combout => \LessThan3~3_combout\);

-- Location: LCCOMB_X28_Y20_N4
\b_velocity_Y~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b_velocity_Y~0_combout\ = b_velocity_Y(4) $ (((!\LessThan2~2_combout\) # (!\LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan3~3_combout\,
	datac => b_velocity_Y(4),
	datad => \LessThan2~2_combout\,
	combout => \b_velocity_Y~0_combout\);

-- Location: FF_X28_Y20_N5
\b_velocity_Y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b_velocity_Y~0_combout\,
	ena => \ball_Y_location[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_velocity_Y(4));

-- Location: LCCOMB_X28_Y20_N28
\ball_Y_location[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_Y_location[1]~2_combout\ = (\LessThan3~3_combout\ & (\Add15~2_combout\)) # (!\LessThan3~3_combout\ & ((\Add12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~2_combout\,
	datab => \LessThan3~3_combout\,
	datad => \Add12~2_combout\,
	combout => \ball_Y_location[1]~2_combout\);

-- Location: FF_X28_Y20_N29
\ball_Y_location[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_Y_location[1]~2_combout\,
	asdata => \Add10~2_combout\,
	sload => \ALT_INV_LessThan2~2_combout\,
	ena => \ball_Y_location[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_Y_location(1));

-- Location: LCCOMB_X27_Y20_N4
\Add9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~1_cout\ = CARRY(ball_Y_location(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(0),
	datad => VCC,
	cout => \Add9~1_cout\);

-- Location: LCCOMB_X27_Y20_N6
\Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (ball_Y_location(1) & (\Add9~1_cout\ & VCC)) # (!ball_Y_location(1) & (!\Add9~1_cout\))
-- \Add9~3\ = CARRY((!ball_Y_location(1) & !\Add9~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(1),
	datad => VCC,
	cin => \Add9~1_cout\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X27_Y20_N8
\Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (ball_Y_location(2) & (\Add9~3\ $ (GND))) # (!ball_Y_location(2) & ((GND) # (!\Add9~3\)))
-- \Add9~5\ = CARRY((!\Add9~3\) # (!ball_Y_location(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(2),
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X27_Y20_N10
\Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (ball_Y_location(3) & (\Add9~5\ & VCC)) # (!ball_Y_location(3) & (!\Add9~5\))
-- \Add9~7\ = CARRY((!ball_Y_location(3) & !\Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(3),
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X27_Y20_N12
\Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = (ball_Y_location(4) & (\Add9~7\ $ (GND))) # (!ball_Y_location(4) & ((GND) # (!\Add9~7\)))
-- \Add9~9\ = CARRY((!\Add9~7\) # (!ball_Y_location(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(4),
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X27_Y20_N26
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\Add9~6_combout\) # ((\Add9~8_combout\) # ((\Add9~2_combout\ & \Add9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datab => \Add9~6_combout\,
	datac => \Add9~4_combout\,
	datad => \Add9~8_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X27_Y20_N14
\Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (ball_Y_location(5) & (\Add9~9\ & VCC)) # (!ball_Y_location(5) & (!\Add9~9\))
-- \Add9~11\ = CARRY((!ball_Y_location(5) & !\Add9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(5),
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X27_Y20_N16
\Add9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = (ball_Y_location(6) & ((GND) # (!\Add9~11\))) # (!ball_Y_location(6) & (\Add9~11\ $ (GND)))
-- \Add9~13\ = CARRY((ball_Y_location(6)) # (!\Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(6),
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: LCCOMB_X27_Y20_N18
\Add9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = (ball_Y_location(7) & (\Add9~13\ & VCC)) # (!ball_Y_location(7) & (!\Add9~13\))
-- \Add9~15\ = CARRY((!ball_Y_location(7) & !\Add9~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(7),
	datad => VCC,
	cin => \Add9~13\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: LCCOMB_X27_Y20_N20
\Add9~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = (ball_Y_location(8) & ((GND) # (!\Add9~15\))) # (!ball_Y_location(8) & (\Add9~15\ $ (GND)))
-- \Add9~17\ = CARRY((ball_Y_location(8)) # (!\Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(8),
	datad => VCC,
	cin => \Add9~15\,
	combout => \Add9~16_combout\,
	cout => \Add9~17\);

-- Location: LCCOMB_X27_Y20_N22
\Add9~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~18_combout\ = (ball_Y_location(9) & (\Add9~17\ & VCC)) # (!ball_Y_location(9) & (!\Add9~17\))
-- \Add9~19\ = CARRY((!ball_Y_location(9) & !\Add9~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(9),
	datad => VCC,
	cin => \Add9~17\,
	combout => \Add9~18_combout\,
	cout => \Add9~19\);

-- Location: LCCOMB_X27_Y20_N24
\Add9~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~20_combout\ = ball_Y_location(9) $ (\Add9~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(9),
	cin => \Add9~19\,
	combout => \Add9~20_combout\);

-- Location: LCCOMB_X27_Y20_N28
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (\Add9~16_combout\) # ((\Add9~14_combout\) # ((\Add9~10_combout\) # (\Add9~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~16_combout\,
	datab => \Add9~14_combout\,
	datac => \Add9~10_combout\,
	datad => \Add9~12_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X27_Y20_N30
\LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (!\Add9~20_combout\ & ((\LessThan2~0_combout\) # ((\Add9~18_combout\) # (\LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \Add9~20_combout\,
	datac => \Add9~18_combout\,
	datad => \LessThan2~1_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X29_Y21_N26
\ball_X_location[9]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[9]~6_combout\ = (\LessThan2~2_combout\ & ((\LessThan3~1_combout\) # ((!\Add11~16_combout\ & \LessThan3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~2_combout\,
	datab => \Add11~16_combout\,
	datac => \LessThan3~1_combout\,
	datad => \LessThan3~2_combout\,
	combout => \ball_X_location[9]~6_combout\);

-- Location: LCCOMB_X28_Y26_N30
\ball_X_location[9]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[9]~7_combout\ = (\Equal1~6_combout\ & (((\ball_X_location[9]~6_combout\) # (!\LessThan0~2_combout\)) # (!\LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => \ball_X_location[9]~6_combout\,
	datac => \LessThan0~2_combout\,
	datad => \Equal1~6_combout\,
	combout => \ball_X_location[9]~7_combout\);

-- Location: FF_X27_Y26_N9
\ball_X_location[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_X_location[0]~5_combout\,
	asdata => \Add5~1_combout\,
	sload => \ALT_INV_LessThan0~2_combout\,
	ena => \ball_X_location[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(0));

-- Location: LCCOMB_X26_Y26_N14
\Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (ball_X_location(1) & (!\Add7~1\)) # (!ball_X_location(1) & ((\Add7~1\) # (GND)))
-- \Add7~3\ = CARRY((!\Add7~1\) # (!ball_X_location(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(1),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X27_Y26_N14
\Add14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~2_combout\ = (b_velocity_X(1) & ((ball_X_location(1) & (!\Add14~1\)) # (!ball_X_location(1) & ((\Add14~1\) # (GND))))) # (!b_velocity_X(1) & ((ball_X_location(1) & (\Add14~1\ & VCC)) # (!ball_X_location(1) & (!\Add14~1\))))
-- \Add14~3\ = CARRY((b_velocity_X(1) & ((!\Add14~1\) # (!ball_X_location(1)))) # (!b_velocity_X(1) & (!ball_X_location(1) & !\Add14~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_velocity_X(1),
	datab => ball_X_location(1),
	datad => VCC,
	cin => \Add14~1\,
	combout => \Add14~2_combout\,
	cout => \Add14~3\);

-- Location: LCCOMB_X28_Y26_N0
\ball_X_location[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[1]~1_combout\ = (\LessThan1~2_combout\ & ((\Add14~2_combout\))) # (!\LessThan1~2_combout\ & (\Add7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => \Add7~2_combout\,
	datad => \Add14~2_combout\,
	combout => \ball_X_location[1]~1_combout\);

-- Location: LCCOMB_X28_Y26_N8
\Add5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~3_combout\ = (ball_X_location(1) & (\Add5~2\ & VCC)) # (!ball_X_location(1) & (!\Add5~2\))
-- \Add5~4\ = CARRY((!ball_X_location(1) & !\Add5~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(1),
	datad => VCC,
	cin => \Add5~2\,
	combout => \Add5~3_combout\,
	cout => \Add5~4\);

-- Location: FF_X28_Y26_N1
\ball_X_location[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_X_location[1]~1_combout\,
	asdata => \Add5~3_combout\,
	sload => \ALT_INV_LessThan0~2_combout\,
	ena => \ball_X_location[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(1));

-- Location: LCCOMB_X26_Y26_N16
\Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (ball_X_location(2) & ((GND) # (!\Add7~3\))) # (!ball_X_location(2) & (\Add7~3\ $ (GND)))
-- \Add7~5\ = CARRY((ball_X_location(2)) # (!\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X27_Y26_N16
\Add14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~4_combout\ = ((ball_X_location(2) $ (b_velocity_X(1) $ (\Add14~3\)))) # (GND)
-- \Add14~5\ = CARRY((ball_X_location(2) & ((!\Add14~3\) # (!b_velocity_X(1)))) # (!ball_X_location(2) & (!b_velocity_X(1) & !\Add14~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(2),
	datab => b_velocity_X(1),
	datad => VCC,
	cin => \Add14~3\,
	combout => \Add14~4_combout\,
	cout => \Add14~5\);

-- Location: LCCOMB_X27_Y26_N6
\ball_X_location[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[2]~2_combout\ = (\LessThan1~2_combout\ & ((\Add14~4_combout\))) # (!\LessThan1~2_combout\ & (\Add7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datab => \Add14~4_combout\,
	datad => \LessThan1~2_combout\,
	combout => \ball_X_location[2]~2_combout\);

-- Location: LCCOMB_X28_Y26_N10
\Add5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~5_combout\ = (ball_X_location(2) & (\Add5~4\ $ (GND))) # (!ball_X_location(2) & (!\Add5~4\ & VCC))
-- \Add5~6\ = CARRY((ball_X_location(2) & !\Add5~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(2),
	datad => VCC,
	cin => \Add5~4\,
	combout => \Add5~5_combout\,
	cout => \Add5~6\);

-- Location: FF_X27_Y26_N7
\ball_X_location[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_X_location[2]~2_combout\,
	asdata => \Add5~5_combout\,
	sload => \ALT_INV_LessThan0~2_combout\,
	ena => \ball_X_location[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(2));

-- Location: LCCOMB_X27_Y26_N18
\Add14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~6_combout\ = (b_velocity_X(1) & ((ball_X_location(3) & ((\Add14~5\) # (GND))) # (!ball_X_location(3) & (!\Add14~5\)))) # (!b_velocity_X(1) & ((ball_X_location(3) & (!\Add14~5\)) # (!ball_X_location(3) & (\Add14~5\ & VCC))))
-- \Add14~7\ = CARRY((b_velocity_X(1) & ((ball_X_location(3)) # (!\Add14~5\))) # (!b_velocity_X(1) & (ball_X_location(3) & !\Add14~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_velocity_X(1),
	datab => ball_X_location(3),
	datad => VCC,
	cin => \Add14~5\,
	combout => \Add14~6_combout\,
	cout => \Add14~7\);

-- Location: LCCOMB_X26_Y26_N18
\Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (ball_X_location(3) & ((\Add7~5\) # (GND))) # (!ball_X_location(3) & (!\Add7~5\))
-- \Add7~7\ = CARRY((ball_X_location(3)) # (!\Add7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(3),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X26_Y26_N8
\Add5~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (\LessThan0~2_combout\ & ((\LessThan1~2_combout\ & (\Add14~6_combout\)) # (!\LessThan1~2_combout\ & ((\Add7~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => \Add14~6_combout\,
	datac => \Add7~6_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add5~26_combout\);

-- Location: LCCOMB_X28_Y26_N12
\Add5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~7_combout\ = (ball_X_location(3) & (!\Add5~6\)) # (!ball_X_location(3) & (\Add5~6\ & VCC))
-- \Add5~8\ = CARRY((ball_X_location(3) & !\Add5~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(3),
	datad => VCC,
	cin => \Add5~6\,
	combout => \Add5~7_combout\,
	cout => \Add5~8\);

-- Location: LCCOMB_X28_Y26_N2
\Add5~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~27_combout\ = (!\Add5~26_combout\ & ((\LessThan0~2_combout\) # (!\Add5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~26_combout\,
	datac => \LessThan0~2_combout\,
	datad => \Add5~7_combout\,
	combout => \Add5~27_combout\);

-- Location: FF_X28_Y26_N3
\ball_X_location[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add5~27_combout\,
	ena => \ball_X_location[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(3));

-- Location: LCCOMB_X26_Y26_N20
\Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (ball_X_location(4) & (!\Add7~7\ & VCC)) # (!ball_X_location(4) & (\Add7~7\ $ (GND)))
-- \Add7~9\ = CARRY((!ball_X_location(4) & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(4),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X27_Y26_N20
\Add14~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~8_combout\ = ((b_velocity_X(1) $ (ball_X_location(4) $ (!\Add14~7\)))) # (GND)
-- \Add14~9\ = CARRY((b_velocity_X(1) & (!ball_X_location(4) & !\Add14~7\)) # (!b_velocity_X(1) & ((!\Add14~7\) # (!ball_X_location(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_velocity_X(1),
	datab => ball_X_location(4),
	datad => VCC,
	cin => \Add14~7\,
	combout => \Add14~8_combout\,
	cout => \Add14~9\);

-- Location: LCCOMB_X26_Y26_N6
\Add5~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (\LessThan0~2_combout\ & ((\LessThan1~2_combout\ & ((\Add14~8_combout\))) # (!\LessThan1~2_combout\ & (\Add7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => \Add7~8_combout\,
	datac => \Add14~8_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add5~24_combout\);

-- Location: LCCOMB_X28_Y26_N14
\Add5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~9_combout\ = (ball_X_location(4) & (\Add5~8\ $ (GND))) # (!ball_X_location(4) & ((GND) # (!\Add5~8\)))
-- \Add5~10\ = CARRY((!\Add5~8\) # (!ball_X_location(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(4),
	datad => VCC,
	cin => \Add5~8\,
	combout => \Add5~9_combout\,
	cout => \Add5~10\);

-- Location: LCCOMB_X28_Y26_N28
\Add5~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~25_combout\ = (!\Add5~24_combout\ & ((\LessThan0~2_combout\) # (!\Add5~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~24_combout\,
	datab => \Add5~9_combout\,
	datac => \LessThan0~2_combout\,
	combout => \Add5~25_combout\);

-- Location: FF_X28_Y26_N29
\ball_X_location[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add5~25_combout\,
	ena => \ball_X_location[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(4));

-- Location: LCCOMB_X27_Y26_N22
\Add14~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~10_combout\ = (b_velocity_X(1) & ((ball_X_location(5) & (!\Add14~9\)) # (!ball_X_location(5) & ((\Add14~9\) # (GND))))) # (!b_velocity_X(1) & ((ball_X_location(5) & (\Add14~9\ & VCC)) # (!ball_X_location(5) & (!\Add14~9\))))
-- \Add14~11\ = CARRY((b_velocity_X(1) & ((!\Add14~9\) # (!ball_X_location(5)))) # (!b_velocity_X(1) & (!ball_X_location(5) & !\Add14~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_velocity_X(1),
	datab => ball_X_location(5),
	datad => VCC,
	cin => \Add14~9\,
	combout => \Add14~10_combout\,
	cout => \Add14~11\);

-- Location: LCCOMB_X27_Y26_N24
\Add14~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~12_combout\ = ((b_velocity_X(1) $ (ball_X_location(6) $ (!\Add14~11\)))) # (GND)
-- \Add14~13\ = CARRY((b_velocity_X(1) & (!ball_X_location(6) & !\Add14~11\)) # (!b_velocity_X(1) & ((!\Add14~11\) # (!ball_X_location(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_velocity_X(1),
	datab => ball_X_location(6),
	datad => VCC,
	cin => \Add14~11\,
	combout => \Add14~12_combout\,
	cout => \Add14~13\);

-- Location: LCCOMB_X26_Y26_N22
\Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (ball_X_location(5) & (!\Add7~9\)) # (!ball_X_location(5) & ((\Add7~9\) # (GND)))
-- \Add7~11\ = CARRY((!\Add7~9\) # (!ball_X_location(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(5),
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X26_Y26_N24
\Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (ball_X_location(6) & (!\Add7~11\ & VCC)) # (!ball_X_location(6) & (\Add7~11\ $ (GND)))
-- \Add7~13\ = CARRY((!ball_X_location(6) & !\Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(6),
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X26_Y26_N4
\Add5~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (\LessThan0~2_combout\ & ((\LessThan1~2_combout\ & (\Add14~12_combout\)) # (!\LessThan1~2_combout\ & ((\Add7~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => \Add14~12_combout\,
	datac => \LessThan0~2_combout\,
	datad => \Add7~12_combout\,
	combout => \Add5~22_combout\);

-- Location: LCCOMB_X28_Y26_N16
\Add5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~11_combout\ = (ball_X_location(5) & (\Add5~10\ & VCC)) # (!ball_X_location(5) & (!\Add5~10\))
-- \Add5~12\ = CARRY((!ball_X_location(5) & !\Add5~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(5),
	datad => VCC,
	cin => \Add5~10\,
	combout => \Add5~11_combout\,
	cout => \Add5~12\);

-- Location: LCCOMB_X28_Y26_N18
\Add5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~13_combout\ = (ball_X_location(6) & (\Add5~12\ $ (GND))) # (!ball_X_location(6) & ((GND) # (!\Add5~12\)))
-- \Add5~14\ = CARRY((!\Add5~12\) # (!ball_X_location(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(6),
	datad => VCC,
	cin => \Add5~12\,
	combout => \Add5~13_combout\,
	cout => \Add5~14\);

-- Location: LCCOMB_X28_Y26_N26
\Add5~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~23_combout\ = (!\Add5~22_combout\ & ((\LessThan0~2_combout\) # (!\Add5~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~22_combout\,
	datac => \LessThan0~2_combout\,
	datad => \Add5~13_combout\,
	combout => \Add5~23_combout\);

-- Location: FF_X28_Y26_N27
\ball_X_location[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add5~23_combout\,
	ena => \ball_X_location[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(6));

-- Location: LCCOMB_X28_Y25_N0
\Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (ball_X_location(1) & (ball_X_location(0) $ (VCC))) # (!ball_X_location(1) & (ball_X_location(0) & VCC))
-- \Add4~1\ = CARRY((ball_X_location(1) & ball_X_location(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(1),
	datab => ball_X_location(0),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X28_Y25_N2
\Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (ball_X_location(2) & (!\Add4~1\)) # (!ball_X_location(2) & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!ball_X_location(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(2),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X28_Y25_N4
\Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (ball_X_location(3) & (!\Add4~3\ & VCC)) # (!ball_X_location(3) & (\Add4~3\ $ (GND)))
-- \Add4~5\ = CARRY((!ball_X_location(3) & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(3),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X28_Y25_N6
\Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (ball_X_location(4) & ((\Add4~5\) # (GND))) # (!ball_X_location(4) & (!\Add4~5\))
-- \Add4~7\ = CARRY((ball_X_location(4)) # (!\Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(4),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X28_Y25_N8
\Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (ball_X_location(5) & (\Add4~7\ $ (GND))) # (!ball_X_location(5) & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((ball_X_location(5) & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(5),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X28_Y25_N10
\Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (ball_X_location(6) & ((\Add4~9\) # (GND))) # (!ball_X_location(6) & (!\Add4~9\))
-- \Add4~11\ = CARRY((ball_X_location(6)) # (!\Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(6),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X28_Y25_N28
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!\Add4~4_combout\ & ((!\Add4~0_combout\) # (!\Add4~2_combout\)))) # (!\Add4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~6_combout\,
	datab => \Add4~2_combout\,
	datac => \Add4~4_combout\,
	datad => \Add4~0_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X27_Y26_N26
\Add14~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~14_combout\ = (b_velocity_X(1) & ((ball_X_location(7) & (!\Add14~13\)) # (!ball_X_location(7) & ((\Add14~13\) # (GND))))) # (!b_velocity_X(1) & ((ball_X_location(7) & (\Add14~13\ & VCC)) # (!ball_X_location(7) & (!\Add14~13\))))
-- \Add14~15\ = CARRY((b_velocity_X(1) & ((!\Add14~13\) # (!ball_X_location(7)))) # (!b_velocity_X(1) & (!ball_X_location(7) & !\Add14~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_velocity_X(1),
	datab => ball_X_location(7),
	datad => VCC,
	cin => \Add14~13\,
	combout => \Add14~14_combout\,
	cout => \Add14~15\);

-- Location: LCCOMB_X26_Y26_N26
\Add7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (ball_X_location(7) & (!\Add7~13\)) # (!ball_X_location(7) & ((\Add7~13\) # (GND)))
-- \Add7~15\ = CARRY((!\Add7~13\) # (!ball_X_location(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(7),
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: LCCOMB_X27_Y26_N2
\ball_X_location[7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[7]~4_combout\ = (\LessThan1~2_combout\ & (\Add14~14_combout\)) # (!\LessThan1~2_combout\ & ((\Add7~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~14_combout\,
	datab => \Add7~14_combout\,
	datad => \LessThan1~2_combout\,
	combout => \ball_X_location[7]~4_combout\);

-- Location: LCCOMB_X28_Y26_N20
\Add5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~15_combout\ = (ball_X_location(7) & (\Add5~14\ & VCC)) # (!ball_X_location(7) & (!\Add5~14\))
-- \Add5~16\ = CARRY((!ball_X_location(7) & !\Add5~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(7),
	datad => VCC,
	cin => \Add5~14\,
	combout => \Add5~15_combout\,
	cout => \Add5~16\);

-- Location: FF_X27_Y26_N3
\ball_X_location[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_X_location[7]~4_combout\,
	asdata => \Add5~15_combout\,
	sload => \ALT_INV_LessThan0~2_combout\,
	ena => \ball_X_location[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(7));

-- Location: LCCOMB_X28_Y25_N12
\Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (ball_X_location(7) & (\Add4~11\ $ (GND))) # (!ball_X_location(7) & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((ball_X_location(7) & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(7),
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X28_Y25_N30
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\Add4~12_combout\ & (((\LessThan0~0_combout\) # (!\Add4~8_combout\)) # (!\Add4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datab => \LessThan0~0_combout\,
	datac => \Add4~8_combout\,
	datad => \Add4~12_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X28_Y25_N14
\Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (ball_X_location(8) & (!\Add4~13\)) # (!ball_X_location(8) & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!ball_X_location(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(8),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X28_Y25_N16
\Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (ball_X_location(9) & (!\Add4~15\ & VCC)) # (!ball_X_location(9) & (\Add4~15\ $ (GND)))
-- \Add4~17\ = CARRY((!ball_X_location(9) & !\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(9),
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X28_Y25_N18
\Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = \Add4~17\ $ (!ball_X_location(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => ball_X_location(9),
	cin => \Add4~17\,
	combout => \Add4~18_combout\);

-- Location: LCCOMB_X28_Y25_N24
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((\Add4~18_combout\) # ((\LessThan0~1_combout\ & !\Add4~14_combout\))) # (!\Add4~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \Add4~16_combout\,
	datac => \Add4~14_combout\,
	datad => \Add4~18_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X27_Y26_N10
\b_velocity_X[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b_velocity_X[1]~0_combout\ = b_velocity_X(1) $ (((\Equal1~6_combout\ & ((!\LessThan0~2_combout\) # (!\LessThan1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => \LessThan0~2_combout\,
	datac => b_velocity_X(1),
	datad => \Equal1~6_combout\,
	combout => \b_velocity_X[1]~0_combout\);

-- Location: FF_X27_Y26_N11
\b_velocity_X[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b_velocity_X[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_velocity_X(1));

-- Location: LCCOMB_X27_Y26_N4
\ball_X_location[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[5]~3_combout\ = (\LessThan1~2_combout\ & (\Add14~10_combout\)) # (!\LessThan1~2_combout\ & ((\Add7~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~10_combout\,
	datab => \Add7~10_combout\,
	datad => \LessThan1~2_combout\,
	combout => \ball_X_location[5]~3_combout\);

-- Location: FF_X27_Y26_N5
\ball_X_location[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_X_location[5]~3_combout\,
	asdata => \Add5~11_combout\,
	sload => \ALT_INV_LessThan0~2_combout\,
	ena => \ball_X_location[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(5));

-- Location: LCCOMB_X27_Y25_N2
\Add6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~1_cout\ = CARRY(ball_X_location(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(0),
	datad => VCC,
	cout => \Add6~1_cout\);

-- Location: LCCOMB_X27_Y25_N4
\Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (ball_X_location(1) & (\Add6~1_cout\ & VCC)) # (!ball_X_location(1) & (!\Add6~1_cout\))
-- \Add6~3\ = CARRY((!ball_X_location(1) & !\Add6~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(1),
	datad => VCC,
	cin => \Add6~1_cout\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X27_Y25_N6
\Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (ball_X_location(2) & ((GND) # (!\Add6~3\))) # (!ball_X_location(2) & (\Add6~3\ $ (GND)))
-- \Add6~5\ = CARRY((ball_X_location(2)) # (!\Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(2),
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X27_Y25_N8
\Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (ball_X_location(3) & (!\Add6~5\)) # (!ball_X_location(3) & (\Add6~5\ & VCC))
-- \Add6~7\ = CARRY((ball_X_location(3) & !\Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(3),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X27_Y25_N10
\Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (ball_X_location(4) & (\Add6~7\ $ (GND))) # (!ball_X_location(4) & ((GND) # (!\Add6~7\)))
-- \Add6~9\ = CARRY((!\Add6~7\) # (!ball_X_location(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(4),
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X27_Y25_N12
\Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (ball_X_location(5) & (\Add6~9\ & VCC)) # (!ball_X_location(5) & (!\Add6~9\))
-- \Add6~11\ = CARRY((!ball_X_location(5) & !\Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(5),
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X27_Y25_N14
\Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = (ball_X_location(6) & (\Add6~11\ $ (GND))) # (!ball_X_location(6) & ((GND) # (!\Add6~11\)))
-- \Add6~13\ = CARRY((!\Add6~11\) # (!ball_X_location(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(6),
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: LCCOMB_X27_Y25_N16
\Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (ball_X_location(7) & (\Add6~13\ & VCC)) # (!ball_X_location(7) & (!\Add6~13\))
-- \Add6~15\ = CARRY((!ball_X_location(7) & !\Add6~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(7),
	datad => VCC,
	cin => \Add6~13\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

-- Location: LCCOMB_X27_Y25_N18
\Add6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = (ball_X_location(8) & ((GND) # (!\Add6~15\))) # (!ball_X_location(8) & (\Add6~15\ $ (GND)))
-- \Add6~17\ = CARRY((ball_X_location(8)) # (!\Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(8),
	datad => VCC,
	cin => \Add6~15\,
	combout => \Add6~16_combout\,
	cout => \Add6~17\);

-- Location: LCCOMB_X27_Y25_N24
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\Add6~10_combout\) # ((\Add6~16_combout\) # ((\Add6~12_combout\) # (\Add6~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~10_combout\,
	datab => \Add6~16_combout\,
	datac => \Add6~12_combout\,
	datad => \Add6~14_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X27_Y25_N0
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\Add6~6_combout\) # ((\Add6~8_combout\) # ((\Add6~4_combout\ & \Add6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~4_combout\,
	datab => \Add6~2_combout\,
	datac => \Add6~6_combout\,
	datad => \Add6~8_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X27_Y25_N20
\Add6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~18_combout\ = (ball_X_location(9) & (!\Add6~17\)) # (!ball_X_location(9) & (\Add6~17\ & VCC))
-- \Add6~19\ = CARRY((ball_X_location(9) & !\Add6~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(9),
	datad => VCC,
	cin => \Add6~17\,
	combout => \Add6~18_combout\,
	cout => \Add6~19\);

-- Location: LCCOMB_X27_Y25_N22
\Add6~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~20_combout\ = ball_X_location(9) $ (!\Add6~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(9),
	cin => \Add6~19\,
	combout => \Add6~20_combout\);

-- Location: LCCOMB_X27_Y25_N26
\LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!\Add6~20_combout\ & ((\LessThan1~1_combout\) # ((\LessThan1~0_combout\) # (\Add6~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => \LessThan1~0_combout\,
	datac => \Add6~20_combout\,
	datad => \Add6~18_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X26_Y26_N28
\Add7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = (ball_X_location(8) & (\Add7~15\ $ (GND))) # (!ball_X_location(8) & (!\Add7~15\ & VCC))
-- \Add7~17\ = CARRY((ball_X_location(8) & !\Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(8),
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~16_combout\,
	cout => \Add7~17\);

-- Location: LCCOMB_X27_Y26_N28
\Add14~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~16_combout\ = ((b_velocity_X(1) $ (ball_X_location(8) $ (\Add14~15\)))) # (GND)
-- \Add14~17\ = CARRY((b_velocity_X(1) & (ball_X_location(8) & !\Add14~15\)) # (!b_velocity_X(1) & ((ball_X_location(8)) # (!\Add14~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_velocity_X(1),
	datab => ball_X_location(8),
	datad => VCC,
	cin => \Add14~15\,
	combout => \Add14~16_combout\,
	cout => \Add14~17\);

-- Location: LCCOMB_X27_Y26_N0
\ball_X_location[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[8]~0_combout\ = (\LessThan1~2_combout\ & ((\Add14~16_combout\))) # (!\LessThan1~2_combout\ & (\Add7~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => \Add7~16_combout\,
	datad => \Add14~16_combout\,
	combout => \ball_X_location[8]~0_combout\);

-- Location: LCCOMB_X28_Y26_N22
\Add5~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~17_combout\ = (ball_X_location(8) & ((GND) # (!\Add5~16\))) # (!ball_X_location(8) & (\Add5~16\ $ (GND)))
-- \Add5~18\ = CARRY((ball_X_location(8)) # (!\Add5~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(8),
	datad => VCC,
	cin => \Add5~16\,
	combout => \Add5~17_combout\,
	cout => \Add5~18\);

-- Location: FF_X27_Y26_N1
\ball_X_location[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_X_location[8]~0_combout\,
	asdata => \Add5~17_combout\,
	sload => \ALT_INV_LessThan0~2_combout\,
	ena => \ball_X_location[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(8));

-- Location: LCCOMB_X26_Y26_N30
\Add7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = \Add7~17\ $ (!ball_X_location(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => ball_X_location(9),
	cin => \Add7~17\,
	combout => \Add7~18_combout\);

-- Location: LCCOMB_X27_Y26_N30
\Add14~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~18_combout\ = ball_X_location(9) $ (\Add14~17\ $ (b_velocity_X(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(9),
	datad => b_velocity_X(1),
	cin => \Add14~17\,
	combout => \Add14~18_combout\);

-- Location: LCCOMB_X26_Y26_N10
\Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (\LessThan0~2_combout\ & ((\LessThan1~2_combout\ & ((\Add14~18_combout\))) # (!\LessThan1~2_combout\ & (\Add7~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~18_combout\,
	datab => \LessThan0~2_combout\,
	datac => \Add14~18_combout\,
	datad => \LessThan1~2_combout\,
	combout => \Add5~0_combout\);

-- Location: LCCOMB_X28_Y26_N24
\Add5~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~19_combout\ = ball_X_location(9) $ (\Add5~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(9),
	cin => \Add5~18\,
	combout => \Add5~19_combout\);

-- Location: LCCOMB_X26_Y26_N0
\Add5~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~21_combout\ = (!\Add5~0_combout\ & ((\LessThan0~2_combout\) # (!\Add5~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => \LessThan0~2_combout\,
	datad => \Add5~19_combout\,
	combout => \Add5~21_combout\);

-- Location: FF_X26_Y26_N1
\ball_X_location[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add5~21_combout\,
	ena => \ball_X_location[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(9));

-- Location: LCCOMB_X26_Y24_N10
\draw_ball|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~1_cout\ = CARRY((!\VGA_Driver|HS_counter\(0) & ball_X_location(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(0),
	datab => ball_X_location(0),
	datad => VCC,
	cout => \draw_ball|LessThan0~1_cout\);

-- Location: LCCOMB_X26_Y24_N12
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

-- Location: LCCOMB_X26_Y24_N14
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

-- Location: LCCOMB_X26_Y24_N16
\draw_ball|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~7_cout\ = CARRY((\VGA_Driver|HS_counter\(3) & ((ball_X_location(3)) # (!\draw_ball|LessThan0~5_cout\))) # (!\VGA_Driver|HS_counter\(3) & (ball_X_location(3) & !\draw_ball|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(3),
	datab => ball_X_location(3),
	datad => VCC,
	cin => \draw_ball|LessThan0~5_cout\,
	cout => \draw_ball|LessThan0~7_cout\);

-- Location: LCCOMB_X26_Y24_N18
\draw_ball|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~9_cout\ = CARRY((\VGA_Driver|HS_counter\(4) & (!ball_X_location(4) & !\draw_ball|LessThan0~7_cout\)) # (!\VGA_Driver|HS_counter\(4) & ((!\draw_ball|LessThan0~7_cout\) # (!ball_X_location(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(4),
	datab => ball_X_location(4),
	datad => VCC,
	cin => \draw_ball|LessThan0~7_cout\,
	cout => \draw_ball|LessThan0~9_cout\);

-- Location: LCCOMB_X26_Y24_N20
\draw_ball|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~11_cout\ = CARRY((\VGA_Driver|HS_counter\(5) & (!ball_X_location(5) & !\draw_ball|LessThan0~9_cout\)) # (!\VGA_Driver|HS_counter\(5) & ((!\draw_ball|LessThan0~9_cout\) # (!ball_X_location(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(5),
	datab => ball_X_location(5),
	datad => VCC,
	cin => \draw_ball|LessThan0~9_cout\,
	cout => \draw_ball|LessThan0~11_cout\);

-- Location: LCCOMB_X26_Y24_N22
\draw_ball|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~13_cout\ = CARRY((\VGA_Driver|Add0~2_combout\ & ((!\draw_ball|LessThan0~11_cout\) # (!ball_X_location(6)))) # (!\VGA_Driver|Add0~2_combout\ & (!ball_X_location(6) & !\draw_ball|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~2_combout\,
	datab => ball_X_location(6),
	datad => VCC,
	cin => \draw_ball|LessThan0~11_cout\,
	cout => \draw_ball|LessThan0~13_cout\);

-- Location: LCCOMB_X26_Y24_N24
\draw_ball|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~15_cout\ = CARRY((ball_X_location(7) & (\VGA_Driver|Add0~4_combout\ & !\draw_ball|LessThan0~13_cout\)) # (!ball_X_location(7) & ((\VGA_Driver|Add0~4_combout\) # (!\draw_ball|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(7),
	datab => \VGA_Driver|Add0~4_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan0~13_cout\,
	cout => \draw_ball|LessThan0~15_cout\);

-- Location: LCCOMB_X26_Y24_N26
\draw_ball|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~17_cout\ = CARRY((\VGA_Driver|Add0~3_combout\ & ((ball_X_location(8)) # (!\draw_ball|LessThan0~15_cout\))) # (!\VGA_Driver|Add0~3_combout\ & (ball_X_location(8) & !\draw_ball|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~3_combout\,
	datab => ball_X_location(8),
	datad => VCC,
	cin => \draw_ball|LessThan0~15_cout\,
	cout => \draw_ball|LessThan0~17_cout\);

-- Location: LCCOMB_X26_Y24_N28
\draw_ball|LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~18_combout\ = (\VGA_Driver|Add0~1_combout\ & ((\draw_ball|LessThan0~17_cout\) # (!ball_X_location(9)))) # (!\VGA_Driver|Add0~1_combout\ & (\draw_ball|LessThan0~17_cout\ & !ball_X_location(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~1_combout\,
	datad => ball_X_location(9),
	cin => \draw_ball|LessThan0~17_cout\,
	combout => \draw_ball|LessThan0~18_combout\);

-- Location: LCCOMB_X27_Y22_N4
\draw_ball|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan2~1_cout\ = CARRY((!\VGA_Driver|Add1~0_combout\ & ball_Y_location(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~0_combout\,
	datab => ball_Y_location(0),
	datad => VCC,
	cout => \draw_ball|LessThan2~1_cout\);

-- Location: LCCOMB_X27_Y22_N6
\draw_ball|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan2~3_cout\ = CARRY((ball_Y_location(1) & (\VGA_Driver|Add1~2_combout\ & !\draw_ball|LessThan2~1_cout\)) # (!ball_Y_location(1) & ((\VGA_Driver|Add1~2_combout\) # (!\draw_ball|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(1),
	datab => \VGA_Driver|Add1~2_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan2~1_cout\,
	cout => \draw_ball|LessThan2~3_cout\);

-- Location: LCCOMB_X27_Y22_N8
\draw_ball|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan2~5_cout\ = CARRY((\VGA_Driver|Add1~4_combout\ & (!ball_Y_location(2) & !\draw_ball|LessThan2~3_cout\)) # (!\VGA_Driver|Add1~4_combout\ & ((!\draw_ball|LessThan2~3_cout\) # (!ball_Y_location(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~4_combout\,
	datab => ball_Y_location(2),
	datad => VCC,
	cin => \draw_ball|LessThan2~3_cout\,
	cout => \draw_ball|LessThan2~5_cout\);

-- Location: LCCOMB_X27_Y22_N10
\draw_ball|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan2~7_cout\ = CARRY((\VGA_Driver|Add1~6_combout\ & ((!\draw_ball|LessThan2~5_cout\) # (!ball_Y_location(3)))) # (!\VGA_Driver|Add1~6_combout\ & (!ball_Y_location(3) & !\draw_ball|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~6_combout\,
	datab => ball_Y_location(3),
	datad => VCC,
	cin => \draw_ball|LessThan2~5_cout\,
	cout => \draw_ball|LessThan2~7_cout\);

-- Location: LCCOMB_X27_Y22_N12
\draw_ball|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan2~9_cout\ = CARRY((\VGA_Driver|Add1~8_combout\ & (!ball_Y_location(4) & !\draw_ball|LessThan2~7_cout\)) # (!\VGA_Driver|Add1~8_combout\ & ((!\draw_ball|LessThan2~7_cout\) # (!ball_Y_location(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~8_combout\,
	datab => ball_Y_location(4),
	datad => VCC,
	cin => \draw_ball|LessThan2~7_cout\,
	cout => \draw_ball|LessThan2~9_cout\);

-- Location: LCCOMB_X27_Y22_N14
\draw_ball|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan2~11_cout\ = CARRY((\VGA_Driver|Add1~10_combout\ & ((!\draw_ball|LessThan2~9_cout\) # (!ball_Y_location(5)))) # (!\VGA_Driver|Add1~10_combout\ & (!ball_Y_location(5) & !\draw_ball|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~10_combout\,
	datab => ball_Y_location(5),
	datad => VCC,
	cin => \draw_ball|LessThan2~9_cout\,
	cout => \draw_ball|LessThan2~11_cout\);

-- Location: LCCOMB_X27_Y22_N16
\draw_ball|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan2~13_cout\ = CARRY((\VGA_Driver|Add1~12_combout\ & (ball_Y_location(6) & !\draw_ball|LessThan2~11_cout\)) # (!\VGA_Driver|Add1~12_combout\ & ((ball_Y_location(6)) # (!\draw_ball|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~12_combout\,
	datab => ball_Y_location(6),
	datad => VCC,
	cin => \draw_ball|LessThan2~11_cout\,
	cout => \draw_ball|LessThan2~13_cout\);

-- Location: LCCOMB_X27_Y22_N18
\draw_ball|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan2~15_cout\ = CARRY((\VGA_Driver|Add1~14_combout\ & ((!\draw_ball|LessThan2~13_cout\) # (!ball_Y_location(7)))) # (!\VGA_Driver|Add1~14_combout\ & (!ball_Y_location(7) & !\draw_ball|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~14_combout\,
	datab => ball_Y_location(7),
	datad => VCC,
	cin => \draw_ball|LessThan2~13_cout\,
	cout => \draw_ball|LessThan2~15_cout\);

-- Location: LCCOMB_X27_Y22_N20
\draw_ball|LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan2~17_cout\ = CARRY((\VGA_Driver|Add1~16_combout\ & (ball_Y_location(8) & !\draw_ball|LessThan2~15_cout\)) # (!\VGA_Driver|Add1~16_combout\ & ((ball_Y_location(8)) # (!\draw_ball|LessThan2~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~16_combout\,
	datab => ball_Y_location(8),
	datad => VCC,
	cin => \draw_ball|LessThan2~15_cout\,
	cout => \draw_ball|LessThan2~17_cout\);

-- Location: LCCOMB_X27_Y22_N22
\draw_ball|LessThan2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan2~18_combout\ = (\VGA_Driver|Add1~18_combout\ & (\draw_ball|LessThan2~17_cout\ & ball_Y_location(9))) # (!\VGA_Driver|Add1~18_combout\ & ((\draw_ball|LessThan2~17_cout\) # (ball_Y_location(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~18_combout\,
	datad => ball_Y_location(9),
	cin => \draw_ball|LessThan2~17_cout\,
	combout => \draw_ball|LessThan2~18_combout\);

-- Location: LCCOMB_X29_Y22_N6
\draw_ball|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add1~0_combout\ = (ball_Y_location(2) & (ball_Y_location(3) & VCC)) # (!ball_Y_location(2) & (ball_Y_location(3) $ (VCC)))
-- \draw_ball|Add1~1\ = CARRY((!ball_Y_location(2) & ball_Y_location(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(2),
	datab => ball_Y_location(3),
	datad => VCC,
	combout => \draw_ball|Add1~0_combout\,
	cout => \draw_ball|Add1~1\);

-- Location: LCCOMB_X29_Y22_N8
\draw_ball|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add1~2_combout\ = (ball_Y_location(4) & ((\draw_ball|Add1~1\) # (GND))) # (!ball_Y_location(4) & (!\draw_ball|Add1~1\))
-- \draw_ball|Add1~3\ = CARRY((ball_Y_location(4)) # (!\draw_ball|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(4),
	datad => VCC,
	cin => \draw_ball|Add1~1\,
	combout => \draw_ball|Add1~2_combout\,
	cout => \draw_ball|Add1~3\);

-- Location: LCCOMB_X29_Y22_N10
\draw_ball|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add1~4_combout\ = (ball_Y_location(5) & (\draw_ball|Add1~3\ $ (GND))) # (!ball_Y_location(5) & (!\draw_ball|Add1~3\ & VCC))
-- \draw_ball|Add1~5\ = CARRY((ball_Y_location(5) & !\draw_ball|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(5),
	datad => VCC,
	cin => \draw_ball|Add1~3\,
	combout => \draw_ball|Add1~4_combout\,
	cout => \draw_ball|Add1~5\);

-- Location: LCCOMB_X29_Y22_N12
\draw_ball|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add1~6_combout\ = (ball_Y_location(6) & (!\draw_ball|Add1~5\)) # (!ball_Y_location(6) & ((\draw_ball|Add1~5\) # (GND)))
-- \draw_ball|Add1~7\ = CARRY((!\draw_ball|Add1~5\) # (!ball_Y_location(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(6),
	datad => VCC,
	cin => \draw_ball|Add1~5\,
	combout => \draw_ball|Add1~6_combout\,
	cout => \draw_ball|Add1~7\);

-- Location: LCCOMB_X29_Y22_N14
\draw_ball|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add1~8_combout\ = (ball_Y_location(7) & (\draw_ball|Add1~7\ $ (GND))) # (!ball_Y_location(7) & (!\draw_ball|Add1~7\ & VCC))
-- \draw_ball|Add1~9\ = CARRY((ball_Y_location(7) & !\draw_ball|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(7),
	datad => VCC,
	cin => \draw_ball|Add1~7\,
	combout => \draw_ball|Add1~8_combout\,
	cout => \draw_ball|Add1~9\);

-- Location: LCCOMB_X29_Y22_N16
\draw_ball|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add1~10_combout\ = (ball_Y_location(8) & (!\draw_ball|Add1~9\)) # (!ball_Y_location(8) & ((\draw_ball|Add1~9\) # (GND)))
-- \draw_ball|Add1~11\ = CARRY((!\draw_ball|Add1~9\) # (!ball_Y_location(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(8),
	datad => VCC,
	cin => \draw_ball|Add1~9\,
	combout => \draw_ball|Add1~10_combout\,
	cout => \draw_ball|Add1~11\);

-- Location: LCCOMB_X29_Y22_N18
\draw_ball|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add1~12_combout\ = \draw_ball|Add1~11\ $ (!ball_Y_location(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => ball_Y_location(9),
	cin => \draw_ball|Add1~11\,
	combout => \draw_ball|Add1~12_combout\);

-- Location: LCCOMB_X28_Y22_N8
\draw_ball|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan3~1_cout\ = CARRY((ball_Y_location(0) & !\VGA_Driver|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(0),
	datab => \VGA_Driver|Add1~0_combout\,
	datad => VCC,
	cout => \draw_ball|LessThan3~1_cout\);

-- Location: LCCOMB_X28_Y22_N10
\draw_ball|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan3~3_cout\ = CARRY((\VGA_Driver|Add1~2_combout\ & ((!\draw_ball|LessThan3~1_cout\) # (!ball_Y_location(1)))) # (!\VGA_Driver|Add1~2_combout\ & (!ball_Y_location(1) & !\draw_ball|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~2_combout\,
	datab => ball_Y_location(1),
	datad => VCC,
	cin => \draw_ball|LessThan3~1_cout\,
	cout => \draw_ball|LessThan3~3_cout\);

-- Location: LCCOMB_X28_Y22_N12
\draw_ball|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan3~5_cout\ = CARRY((ball_Y_location(2) & ((!\draw_ball|LessThan3~3_cout\) # (!\VGA_Driver|Add1~4_combout\))) # (!ball_Y_location(2) & (!\VGA_Driver|Add1~4_combout\ & !\draw_ball|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(2),
	datab => \VGA_Driver|Add1~4_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan3~3_cout\,
	cout => \draw_ball|LessThan3~5_cout\);

-- Location: LCCOMB_X28_Y22_N14
\draw_ball|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan3~7_cout\ = CARRY((\draw_ball|Add1~0_combout\ & (\VGA_Driver|Add1~6_combout\ & !\draw_ball|LessThan3~5_cout\)) # (!\draw_ball|Add1~0_combout\ & ((\VGA_Driver|Add1~6_combout\) # (!\draw_ball|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_ball|Add1~0_combout\,
	datab => \VGA_Driver|Add1~6_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan3~5_cout\,
	cout => \draw_ball|LessThan3~7_cout\);

-- Location: LCCOMB_X28_Y22_N16
\draw_ball|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan3~9_cout\ = CARRY((\VGA_Driver|Add1~8_combout\ & (\draw_ball|Add1~2_combout\ & !\draw_ball|LessThan3~7_cout\)) # (!\VGA_Driver|Add1~8_combout\ & ((\draw_ball|Add1~2_combout\) # (!\draw_ball|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~8_combout\,
	datab => \draw_ball|Add1~2_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan3~7_cout\,
	cout => \draw_ball|LessThan3~9_cout\);

-- Location: LCCOMB_X28_Y22_N18
\draw_ball|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan3~11_cout\ = CARRY((\VGA_Driver|Add1~10_combout\ & ((!\draw_ball|LessThan3~9_cout\) # (!\draw_ball|Add1~4_combout\))) # (!\VGA_Driver|Add1~10_combout\ & (!\draw_ball|Add1~4_combout\ & !\draw_ball|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~10_combout\,
	datab => \draw_ball|Add1~4_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan3~9_cout\,
	cout => \draw_ball|LessThan3~11_cout\);

-- Location: LCCOMB_X28_Y22_N20
\draw_ball|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan3~13_cout\ = CARRY((\VGA_Driver|Add1~12_combout\ & (\draw_ball|Add1~6_combout\ & !\draw_ball|LessThan3~11_cout\)) # (!\VGA_Driver|Add1~12_combout\ & ((\draw_ball|Add1~6_combout\) # (!\draw_ball|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~12_combout\,
	datab => \draw_ball|Add1~6_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan3~11_cout\,
	cout => \draw_ball|LessThan3~13_cout\);

-- Location: LCCOMB_X28_Y22_N22
\draw_ball|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan3~15_cout\ = CARRY((\VGA_Driver|Add1~14_combout\ & ((!\draw_ball|LessThan3~13_cout\) # (!\draw_ball|Add1~8_combout\))) # (!\VGA_Driver|Add1~14_combout\ & (!\draw_ball|Add1~8_combout\ & !\draw_ball|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~14_combout\,
	datab => \draw_ball|Add1~8_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan3~13_cout\,
	cout => \draw_ball|LessThan3~15_cout\);

-- Location: LCCOMB_X28_Y22_N24
\draw_ball|LessThan3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan3~17_cout\ = CARRY((\VGA_Driver|Add1~16_combout\ & (\draw_ball|Add1~10_combout\ & !\draw_ball|LessThan3~15_cout\)) # (!\VGA_Driver|Add1~16_combout\ & ((\draw_ball|Add1~10_combout\) # (!\draw_ball|LessThan3~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~16_combout\,
	datab => \draw_ball|Add1~10_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan3~15_cout\,
	cout => \draw_ball|LessThan3~17_cout\);

-- Location: LCCOMB_X28_Y22_N26
\draw_ball|LessThan3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan3~18_combout\ = (\VGA_Driver|Add1~18_combout\ & (\draw_ball|LessThan3~17_cout\ & \draw_ball|Add1~12_combout\)) # (!\VGA_Driver|Add1~18_combout\ & ((\draw_ball|LessThan3~17_cout\) # (\draw_ball|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|Add1~18_combout\,
	datad => \draw_ball|Add1~12_combout\,
	cin => \draw_ball|LessThan3~17_cout\,
	combout => \draw_ball|LessThan3~18_combout\);

-- Location: LCCOMB_X27_Y24_N14
\draw_ball|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add0~0_combout\ = (ball_X_location(3) & (ball_X_location(2) & VCC)) # (!ball_X_location(3) & (ball_X_location(2) $ (VCC)))
-- \draw_ball|Add0~1\ = CARRY((!ball_X_location(3) & ball_X_location(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(3),
	datab => ball_X_location(2),
	datad => VCC,
	combout => \draw_ball|Add0~0_combout\,
	cout => \draw_ball|Add0~1\);

-- Location: LCCOMB_X27_Y24_N16
\draw_ball|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add0~2_combout\ = (ball_X_location(4) & ((\draw_ball|Add0~1\) # (GND))) # (!ball_X_location(4) & (!\draw_ball|Add0~1\))
-- \draw_ball|Add0~3\ = CARRY((ball_X_location(4)) # (!\draw_ball|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(4),
	datad => VCC,
	cin => \draw_ball|Add0~1\,
	combout => \draw_ball|Add0~2_combout\,
	cout => \draw_ball|Add0~3\);

-- Location: LCCOMB_X27_Y24_N18
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

-- Location: LCCOMB_X27_Y24_N20
\draw_ball|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add0~6_combout\ = (ball_X_location(6) & ((\draw_ball|Add0~5\) # (GND))) # (!ball_X_location(6) & (!\draw_ball|Add0~5\))
-- \draw_ball|Add0~7\ = CARRY((ball_X_location(6)) # (!\draw_ball|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(6),
	datad => VCC,
	cin => \draw_ball|Add0~5\,
	combout => \draw_ball|Add0~6_combout\,
	cout => \draw_ball|Add0~7\);

-- Location: LCCOMB_X27_Y24_N22
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

-- Location: LCCOMB_X27_Y24_N24
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

-- Location: LCCOMB_X27_Y24_N26
\draw_ball|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add0~12_combout\ = ball_X_location(9) $ (\draw_ball|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(9),
	cin => \draw_ball|Add0~11\,
	combout => \draw_ball|Add0~12_combout\);

-- Location: LCCOMB_X28_Y24_N10
\draw_ball|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~1_cout\ = CARRY((!\VGA_Driver|HS_counter\(0) & ball_X_location(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(0),
	datab => ball_X_location(0),
	datad => VCC,
	cout => \draw_ball|LessThan1~1_cout\);

-- Location: LCCOMB_X28_Y24_N12
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

-- Location: LCCOMB_X28_Y24_N14
\draw_ball|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~5_cout\ = CARRY((\VGA_Driver|HS_counter\(2) & (!ball_X_location(2) & !\draw_ball|LessThan1~3_cout\)) # (!\VGA_Driver|HS_counter\(2) & ((!\draw_ball|LessThan1~3_cout\) # (!ball_X_location(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(2),
	datab => ball_X_location(2),
	datad => VCC,
	cin => \draw_ball|LessThan1~3_cout\,
	cout => \draw_ball|LessThan1~5_cout\);

-- Location: LCCOMB_X28_Y24_N16
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

-- Location: LCCOMB_X28_Y24_N18
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

-- Location: LCCOMB_X28_Y24_N20
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

-- Location: LCCOMB_X28_Y24_N22
\draw_ball|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~13_cout\ = CARRY((\VGA_Driver|Add0~2_combout\ & ((\draw_ball|Add0~6_combout\) # (!\draw_ball|LessThan1~11_cout\))) # (!\VGA_Driver|Add0~2_combout\ & (\draw_ball|Add0~6_combout\ & !\draw_ball|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~2_combout\,
	datab => \draw_ball|Add0~6_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan1~11_cout\,
	cout => \draw_ball|LessThan1~13_cout\);

-- Location: LCCOMB_X28_Y24_N24
\draw_ball|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~15_cout\ = CARRY((\VGA_Driver|Add0~4_combout\ & ((!\draw_ball|LessThan1~13_cout\) # (!\draw_ball|Add0~8_combout\))) # (!\VGA_Driver|Add0~4_combout\ & (!\draw_ball|Add0~8_combout\ & !\draw_ball|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~4_combout\,
	datab => \draw_ball|Add0~8_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan1~13_cout\,
	cout => \draw_ball|LessThan1~15_cout\);

-- Location: LCCOMB_X28_Y24_N26
\draw_ball|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~17_cout\ = CARRY((\VGA_Driver|Add0~3_combout\ & ((\draw_ball|Add0~10_combout\) # (!\draw_ball|LessThan1~15_cout\))) # (!\VGA_Driver|Add0~3_combout\ & (\draw_ball|Add0~10_combout\ & !\draw_ball|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~3_combout\,
	datab => \draw_ball|Add0~10_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan1~15_cout\,
	cout => \draw_ball|LessThan1~17_cout\);

-- Location: LCCOMB_X28_Y24_N28
\draw_ball|LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~18_combout\ = (\draw_ball|Add0~12_combout\ & ((\draw_ball|LessThan1~17_cout\) # (\VGA_Driver|Add0~1_combout\))) # (!\draw_ball|Add0~12_combout\ & (\draw_ball|LessThan1~17_cout\ & \VGA_Driver|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_ball|Add0~12_combout\,
	datad => \VGA_Driver|Add0~1_combout\,
	cin => \draw_ball|LessThan1~17_cout\,
	combout => \draw_ball|LessThan1~18_combout\);

-- Location: LCCOMB_X28_Y22_N6
\draw_ball|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|always0~0_combout\ = (!\draw_ball|LessThan0~18_combout\ & (!\draw_ball|LessThan2~18_combout\ & (\draw_ball|LessThan3~18_combout\ & \draw_ball|LessThan1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_ball|LessThan0~18_combout\,
	datab => \draw_ball|LessThan2~18_combout\,
	datac => \draw_ball|LessThan3~18_combout\,
	datad => \draw_ball|LessThan1~18_combout\,
	combout => \draw_ball|always0~0_combout\);

-- Location: FF_X28_Y22_N7
\draw_ball|box\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \draw_ball|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \draw_ball|box~q\);

-- Location: LCCOMB_X28_Y22_N0
\pixel_color~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_color~0_combout\ = (\draw_player_1_paddle|box~q\) # ((!\draw_player_2_paddle|box~q\ & \draw_ball|box~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draw_player_1_paddle|box~q\,
	datac => \draw_player_2_paddle|box~q\,
	datad => \draw_ball|box~q\,
	combout => \pixel_color~0_combout\);

-- Location: FF_X28_Y22_N1
\pixel_color[3]\ : dffeas
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
	q => pixel_color(3));

-- Location: LCCOMB_X28_Y21_N2
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

-- Location: LCCOMB_X28_Y21_N22
\VGA_Driver|Equal5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal5~3_combout\ = (\VGA_Driver|Equal5~1_combout\ & (!\VGA_Driver|VS_counter\(2) & (\VGA_Driver|VS_counter\(1) & \VGA_Driver|Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal5~1_combout\,
	datab => \VGA_Driver|VS_counter\(2),
	datac => \VGA_Driver|VS_counter\(1),
	datad => \VGA_Driver|Equal5~2_combout\,
	combout => \VGA_Driver|Equal5~3_combout\);

-- Location: LCCOMB_X28_Y21_N28
\VGA_Driver|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal6~0_combout\ = (\VGA_Driver|Equal5~1_combout\ & (\VGA_Driver|VS_counter\(2) & (!\VGA_Driver|VS_counter\(1) & \VGA_Driver|Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal5~1_combout\,
	datab => \VGA_Driver|VS_counter\(2),
	datac => \VGA_Driver|VS_counter\(1),
	datad => \VGA_Driver|Equal5~2_combout\,
	combout => \VGA_Driver|Equal6~0_combout\);

-- Location: LCCOMB_X28_Y21_N16
\VGA_Driver|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector7~0_combout\ = (\VGA_Driver|Equal7~0_combout\ & ((\VGA_Driver|VS_counter\(5)) # ((!\VGA_Driver|Equal5~3_combout\ & !\VGA_Driver|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal5~3_combout\,
	datab => \VGA_Driver|Equal6~0_combout\,
	datac => \VGA_Driver|VS_counter\(5),
	datad => \VGA_Driver|Equal7~0_combout\,
	combout => \VGA_Driver|Selector7~0_combout\);

-- Location: LCCOMB_X28_Y21_N26
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

-- Location: FF_X28_Y21_N27
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

-- Location: LCCOMB_X28_Y23_N28
\VGA_Driver|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector1~0_combout\ = (\VGA_Driver|H_visible\(0) & (\VGA_Driver|Equal1~3_combout\ & (\VGA_Driver|HS_counter\(6) $ (!\VGA_Driver|HS_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|H_visible\(0),
	datab => \VGA_Driver|HS_counter\(6),
	datac => \VGA_Driver|Equal1~3_combout\,
	datad => \VGA_Driver|HS_counter\(5),
	combout => \VGA_Driver|Selector1~0_combout\);

-- Location: LCCOMB_X28_Y23_N10
\VGA_Driver|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector1~1_combout\ = (\VGA_Driver|Selector1~0_combout\) # ((\VGA_Driver|Equal3~1_combout\) # ((!\VGA_Driver|WideNor0~combout\ & \VGA_Driver|H_visible\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|WideNor0~combout\,
	datab => \VGA_Driver|Selector1~0_combout\,
	datac => \VGA_Driver|H_visible\(0),
	datad => \VGA_Driver|Equal3~1_combout\,
	combout => \VGA_Driver|Selector1~1_combout\);

-- Location: FF_X28_Y23_N11
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

-- Location: LCCOMB_X40_Y22_N22
\VGA_Driver|VGA_BUS_R~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_R~0_combout\ = (pixel_color(3) & (\VGA_Driver|V_visible\(0) & \VGA_Driver|H_visible\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_color(3),
	datac => \VGA_Driver|V_visible\(0),
	datad => \VGA_Driver|H_visible\(0),
	combout => \VGA_Driver|VGA_BUS_R~0_combout\);

-- Location: FF_X40_Y22_N17
\VGA_Driver|VGA_BUS_R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_Driver|VGA_BUS_R~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_R\(0));

-- Location: FF_X40_Y22_N27
\VGA_Driver|VGA_BUS_R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_Driver|VGA_BUS_R~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_R\(1));

-- Location: FF_X40_Y22_N13
\VGA_Driver|VGA_BUS_R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_Driver|VGA_BUS_R~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_R\(2));

-- Location: FF_X40_Y22_N23
\VGA_Driver|VGA_BUS_R[3]\ : dffeas
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
	q => \VGA_Driver|VGA_BUS_R\(3));

-- Location: LCCOMB_X28_Y22_N2
\pixel_color~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_color~1_combout\ = (!\draw_player_1_paddle|box~q\ & (!\draw_player_2_paddle|box~q\ & \draw_ball|box~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draw_player_1_paddle|box~q\,
	datac => \draw_player_2_paddle|box~q\,
	datad => \draw_ball|box~q\,
	combout => \pixel_color~1_combout\);

-- Location: FF_X28_Y22_N3
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

-- Location: LCCOMB_X40_Y22_N14
\VGA_Driver|VGA_BUS_G~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_G~0_combout\ = (pixel_color(7) & (\VGA_Driver|V_visible\(0) & \VGA_Driver|H_visible\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pixel_color(7),
	datac => \VGA_Driver|V_visible\(0),
	datad => \VGA_Driver|H_visible\(0),
	combout => \VGA_Driver|VGA_BUS_G~0_combout\);

-- Location: FF_X40_Y22_N25
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

-- Location: FF_X40_Y22_N11
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

-- Location: FF_X40_Y22_N29
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

-- Location: FF_X40_Y22_N15
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

-- Location: LCCOMB_X28_Y22_N4
\pixel_color~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_color~2_combout\ = (!\draw_player_1_paddle|box~q\ & ((\draw_player_2_paddle|box~q\) # (\draw_ball|box~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draw_player_1_paddle|box~q\,
	datac => \draw_player_2_paddle|box~q\,
	datad => \draw_ball|box~q\,
	combout => \pixel_color~2_combout\);

-- Location: FF_X28_Y22_N5
\pixel_color[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \pixel_color~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_color(11));

-- Location: LCCOMB_X40_Y22_N30
\VGA_Driver|VGA_BUS_B~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_B~0_combout\ = (pixel_color(11) & (\VGA_Driver|V_visible\(0) & \VGA_Driver|H_visible\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_color(11),
	datac => \VGA_Driver|V_visible\(0),
	datad => \VGA_Driver|H_visible\(0),
	combout => \VGA_Driver|VGA_BUS_B~0_combout\);

-- Location: FF_X40_Y22_N9
\VGA_Driver|VGA_BUS_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_Driver|VGA_BUS_B~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_B\(0));

-- Location: FF_X40_Y22_N19
\VGA_Driver|VGA_BUS_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_Driver|VGA_BUS_B~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_B\(1));

-- Location: FF_X40_Y22_N21
\VGA_Driver|VGA_BUS_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_Driver|VGA_BUS_B~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_B\(2));

-- Location: FF_X40_Y22_N31
\VGA_Driver|VGA_BUS_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VGA_BUS_B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_B\(3));

-- Location: LCCOMB_X28_Y23_N30
\VGA_Driver|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector0~0_combout\ = (!\VGA_Driver|VGA_HS\(0) & ((\VGA_Driver|Equal3~1_combout\) # (\VGA_Driver|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|VGA_HS\(0),
	datac => \VGA_Driver|Equal4~1_combout\,
	combout => \VGA_Driver|Selector0~0_combout\);

-- Location: LCCOMB_X28_Y23_N8
\VGA_Driver|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector0~1_combout\ = (!\VGA_Driver|Selector0~0_combout\ & (!\VGA_Driver|Equal2~0_combout\ & ((\VGA_Driver|WideNor0~combout\) # (\VGA_Driver|VGA_HS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|WideNor0~combout\,
	datab => \VGA_Driver|Selector0~0_combout\,
	datac => \VGA_Driver|VGA_HS\(0),
	datad => \VGA_Driver|Equal2~0_combout\,
	combout => \VGA_Driver|Selector0~1_combout\);

-- Location: FF_X28_Y23_N9
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

-- Location: LCCOMB_X28_Y21_N0
\VGA_Driver|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector6~0_combout\ = (\VGA_Driver|Equal7~0_combout\ & (!\VGA_Driver|VGA_VS\(0) & (\VGA_Driver|VS_counter\(9) $ (\VGA_Driver|VS_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal7~0_combout\,
	datab => \VGA_Driver|VS_counter\(9),
	datac => \VGA_Driver|VS_counter\(5),
	datad => \VGA_Driver|VGA_VS\(0),
	combout => \VGA_Driver|Selector6~0_combout\);

-- Location: LCCOMB_X28_Y21_N24
\VGA_Driver|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector6~1_combout\ = (!\VGA_Driver|Selector6~0_combout\ & (!\VGA_Driver|Equal6~0_combout\ & ((\VGA_Driver|Equal5~3_combout\) # (\VGA_Driver|VGA_VS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal5~3_combout\,
	datab => \VGA_Driver|Selector6~0_combout\,
	datac => \VGA_Driver|VGA_VS\(0),
	datad => \VGA_Driver|Equal6~0_combout\,
	combout => \VGA_Driver|Selector6~1_combout\);

-- Location: FF_X28_Y21_N25
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


