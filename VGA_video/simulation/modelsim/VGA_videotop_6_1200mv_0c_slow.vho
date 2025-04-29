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

-- DATE "04/29/2025 18:33:23"

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
SIGNAL ww_ORG_BUTTON : std_logic_vector(2 DOWNTO 1);
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \VGA_Driver|Add4~1\ : std_logic;
SIGNAL \VGA_Driver|Add4~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~14_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~3\ : std_logic;
SIGNAL \VGA_Driver|Add4~4_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~26_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal1~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~5\ : std_logic;
SIGNAL \VGA_Driver|Add4~6_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~25_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~7\ : std_logic;
SIGNAL \VGA_Driver|Add4~8_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector5~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal1~3_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~9\ : std_logic;
SIGNAL \VGA_Driver|Add4~10_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~11\ : std_logic;
SIGNAL \VGA_Driver|Add4~12_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal2~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector3~0_combout\ : std_logic;
SIGNAL \VGA_Driver|WideNor0~combout\ : std_logic;
SIGNAL \VGA_Driver|Selector4~0_combout\ : std_logic;
SIGNAL \VGA_Driver|WideNor0~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~13\ : std_logic;
SIGNAL \VGA_Driver|Add4~16_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector2~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~17\ : std_logic;
SIGNAL \VGA_Driver|Add4~18_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~28_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~19\ : std_logic;
SIGNAL \VGA_Driver|Add4~20_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~27_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal1~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal4~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal4~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal3~0_combout\ : std_logic;
SIGNAL \VGA_Driver|WideNor0~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~15_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~21\ : std_logic;
SIGNAL \VGA_Driver|Add4~22_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~24_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal1~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal3~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector1~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~9\ : std_logic;
SIGNAL \VGA_Driver|Add3~10_combout\ : std_logic;
SIGNAL \VGA_Driver|VS_counter~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~1\ : std_logic;
SIGNAL \VGA_Driver|Add3~2_combout\ : std_logic;
SIGNAL \VGA_Driver|VS_counter~3_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~3\ : std_logic;
SIGNAL \VGA_Driver|Add3~4_combout\ : std_logic;
SIGNAL \VGA_Driver|VS_counter~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal7~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~11\ : std_logic;
SIGNAL \VGA_Driver|Add3~12_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~13\ : std_logic;
SIGNAL \VGA_Driver|Add3~14_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~15\ : std_logic;
SIGNAL \VGA_Driver|Add3~16_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~17\ : std_logic;
SIGNAL \VGA_Driver|Add3~18_combout\ : std_logic;
SIGNAL \VGA_Driver|VS_counter~4_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~5\ : std_logic;
SIGNAL \VGA_Driver|Add3~6_combout\ : std_logic;
SIGNAL \VGA_Driver|VS_counter~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~7\ : std_logic;
SIGNAL \VGA_Driver|Add3~8_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~19\ : std_logic;
SIGNAL \VGA_Driver|Add3~20_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal5~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal5~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal5~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector7~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector7~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector7~2_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|always0~2_combout\ : std_logic;
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
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \paddle_speed_counter~6_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
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
SIGNAL \ORG_BUTTON[1]~input_o\ : std_logic;
SIGNAL \ORG_BUTTON[2]~input_o\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add4~25_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~23_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~21_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add4~19_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~1\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~3\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~5\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~7\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~9\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~11\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~13\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~14_combout\ : std_logic;
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
SIGNAL \draw_player_1_paddle|Add1~12_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~16_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~10_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~14_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~8_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~12_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~6_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~10_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~4_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~8_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~6_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~4_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~0_combout\ : std_logic;
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
SIGNAL \VGA_Driver|Add0~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add0~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Add0~4_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~1_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~3_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~5_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~7_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~9_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~11_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~13_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~15_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~16_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|always0~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add0~3_combout\ : std_logic;
SIGNAL \VGA_Driver|Add0~2_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|always0~1_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|always0~3_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|box~q\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \AI_counter~1_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \AI_counter~2_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \AI_counter~3_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \AI_counter~4_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \AI_counter~5_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \AI_counter~6_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \AI_counter~7_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \AI_counter~8_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \AI_counter~0_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Add22~0_combout\ : std_logic;
SIGNAL \Add19~0_combout\ : std_logic;
SIGNAL \Add17~38_combout\ : std_logic;
SIGNAL \Add17~1_combout\ : std_logic;
SIGNAL \Add17~39_combout\ : std_logic;
SIGNAL \b_velocity_X[1]~0_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add21~0_combout\ : std_logic;
SIGNAL \ball_X_location[0]~2_combout\ : std_logic;
SIGNAL \ball_X_location[0]~4_combout\ : std_logic;
SIGNAL \Add21~1\ : std_logic;
SIGNAL \Add21~2_combout\ : std_logic;
SIGNAL \Add9~26_combout\ : std_logic;
SIGNAL \ball_X_location[9]~1_combout\ : std_logic;
SIGNAL \Add21~3\ : std_logic;
SIGNAL \Add21~4_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Add9~25_combout\ : std_logic;
SIGNAL \Add21~5\ : std_logic;
SIGNAL \Add21~6_combout\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Add9~24_combout\ : std_logic;
SIGNAL \Add21~7\ : std_logic;
SIGNAL \Add21~8_combout\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add9~23_combout\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add21~9\ : std_logic;
SIGNAL \Add21~10_combout\ : std_logic;
SIGNAL \Add9~22_combout\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add21~11\ : std_logic;
SIGNAL \Add21~12_combout\ : std_logic;
SIGNAL \Add9~21_combout\ : std_logic;
SIGNAL \Add21~13\ : std_logic;
SIGNAL \Add21~14_combout\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \Add9~20_combout\ : std_logic;
SIGNAL \Add9~13\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~17\ : std_logic;
SIGNAL \Add9~27_combout\ : std_logic;
SIGNAL \Add21~15\ : std_logic;
SIGNAL \Add21~17\ : std_logic;
SIGNAL \Add21~19\ : std_logic;
SIGNAL \Add21~20_combout\ : std_logic;
SIGNAL \Add9~29_combout\ : std_logic;
SIGNAL \Add10~1\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~5\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~9\ : std_logic;
SIGNAL \Add10~11\ : std_logic;
SIGNAL \Add10~13\ : std_logic;
SIGNAL \Add10~15\ : std_logic;
SIGNAL \Add10~17\ : std_logic;
SIGNAL \Add10~19\ : std_logic;
SIGNAL \Add10~20_combout\ : std_logic;
SIGNAL \Add10~18_combout\ : std_logic;
SIGNAL \Add10~16_combout\ : std_logic;
SIGNAL \Add10~14_combout\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \Add10~12_combout\ : std_logic;
SIGNAL \always0~7_combout\ : std_logic;
SIGNAL \always0~8_combout\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \always0~6_combout\ : std_logic;
SIGNAL \player_2_paddle_Y_location~11_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add5~32_combout\ : std_logic;
SIGNAL \player_2_paddle_Y_location~10_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add5~31_combout\ : std_logic;
SIGNAL \player_2_paddle_Y_location~9_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \player_2_paddle_Y_location~8_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add5~29_combout\ : std_logic;
SIGNAL \player_2_paddle_Y_location~7_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \player_2_paddle_Y_location~6_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add5~27_combout\ : std_logic;
SIGNAL \player_2_paddle_Y_location~5_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \player_2_paddle_Y_location~4_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add5~25_combout\ : std_logic;
SIGNAL \player_2_paddle_Y_location~3_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \player_2_paddle_Y_location~2_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \Add5~23_combout\ : std_logic;
SIGNAL \player_2_paddle_Y_location~1_combout\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~11\ : std_logic;
SIGNAL \Add11~13\ : std_logic;
SIGNAL \Add11~15\ : std_logic;
SIGNAL \Add11~16_combout\ : std_logic;
SIGNAL \Add11~14_combout\ : std_logic;
SIGNAL \Add11~12_combout\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \LessThan3~1_cout\ : std_logic;
SIGNAL \LessThan3~3_cout\ : std_logic;
SIGNAL \LessThan3~5_cout\ : std_logic;
SIGNAL \LessThan3~7_cout\ : std_logic;
SIGNAL \LessThan3~9_cout\ : std_logic;
SIGNAL \LessThan3~11_cout\ : std_logic;
SIGNAL \LessThan3~13_cout\ : std_logic;
SIGNAL \LessThan3~15_cout\ : std_logic;
SIGNAL \LessThan3~17_cout\ : std_logic;
SIGNAL \LessThan3~19_cout\ : std_logic;
SIGNAL \LessThan3~20_combout\ : std_logic;
SIGNAL \LessThan2~1_cout\ : std_logic;
SIGNAL \LessThan2~3_cout\ : std_logic;
SIGNAL \LessThan2~5_cout\ : std_logic;
SIGNAL \LessThan2~7_cout\ : std_logic;
SIGNAL \LessThan2~9_cout\ : std_logic;
SIGNAL \LessThan2~11_cout\ : std_logic;
SIGNAL \LessThan2~13_cout\ : std_logic;
SIGNAL \LessThan2~15_cout\ : std_logic;
SIGNAL \LessThan2~17_cout\ : std_logic;
SIGNAL \LessThan2~19_cout\ : std_logic;
SIGNAL \LessThan2~20_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \always0~5_combout\ : std_logic;
SIGNAL \player_2_paddle_Y_location[3]~0_combout\ : std_logic;
SIGNAL \ball_X_location[0]~3_combout\ : std_logic;
SIGNAL \Add22~1\ : std_logic;
SIGNAL \Add22~2_combout\ : std_logic;
SIGNAL \Add19~1\ : std_logic;
SIGNAL \Add19~2_combout\ : std_logic;
SIGNAL \Add17~36_combout\ : std_logic;
SIGNAL \Add17~2\ : std_logic;
SIGNAL \Add17~3_combout\ : std_logic;
SIGNAL \Add17~37_combout\ : std_logic;
SIGNAL \Add17~4\ : std_logic;
SIGNAL \Add17~5_combout\ : std_logic;
SIGNAL \Add19~3\ : std_logic;
SIGNAL \Add19~4_combout\ : std_logic;
SIGNAL \Add22~3\ : std_logic;
SIGNAL \Add22~4_combout\ : std_logic;
SIGNAL \Add17~34_combout\ : std_logic;
SIGNAL \Add17~35_combout\ : std_logic;
SIGNAL \Add19~5\ : std_logic;
SIGNAL \Add19~6_combout\ : std_logic;
SIGNAL \Add22~5\ : std_logic;
SIGNAL \Add22~6_combout\ : std_logic;
SIGNAL \Add17~32_combout\ : std_logic;
SIGNAL \Add17~6\ : std_logic;
SIGNAL \Add17~7_combout\ : std_logic;
SIGNAL \Add17~33_combout\ : std_logic;
SIGNAL \Add19~7\ : std_logic;
SIGNAL \Add19~8_combout\ : std_logic;
SIGNAL \Add22~7\ : std_logic;
SIGNAL \Add22~8_combout\ : std_logic;
SIGNAL \Add17~30_combout\ : std_logic;
SIGNAL \Add17~8\ : std_logic;
SIGNAL \Add17~9_combout\ : std_logic;
SIGNAL \Add17~31_combout\ : std_logic;
SIGNAL \Add19~9\ : std_logic;
SIGNAL \Add19~10_combout\ : std_logic;
SIGNAL \Add22~9\ : std_logic;
SIGNAL \Add22~10_combout\ : std_logic;
SIGNAL \Add17~28_combout\ : std_logic;
SIGNAL \Add17~10\ : std_logic;
SIGNAL \Add17~11_combout\ : std_logic;
SIGNAL \Add17~29_combout\ : std_logic;
SIGNAL \Add17~12\ : std_logic;
SIGNAL \Add17~13_combout\ : std_logic;
SIGNAL \Add19~11\ : std_logic;
SIGNAL \Add19~12_combout\ : std_logic;
SIGNAL \Add22~11\ : std_logic;
SIGNAL \Add22~12_combout\ : std_logic;
SIGNAL \Add17~26_combout\ : std_logic;
SIGNAL \Add17~27_combout\ : std_logic;
SIGNAL \Add18~1_cout\ : std_logic;
SIGNAL \Add18~3\ : std_logic;
SIGNAL \Add18~5\ : std_logic;
SIGNAL \Add18~7\ : std_logic;
SIGNAL \Add18~9\ : std_logic;
SIGNAL \Add18~11\ : std_logic;
SIGNAL \Add18~13\ : std_logic;
SIGNAL \Add18~15\ : std_logic;
SIGNAL \Add18~17\ : std_logic;
SIGNAL \Add18~18_combout\ : std_logic;
SIGNAL \Add18~16_combout\ : std_logic;
SIGNAL \Add18~4_combout\ : std_logic;
SIGNAL \Add18~8_combout\ : std_logic;
SIGNAL \Add18~6_combout\ : std_logic;
SIGNAL \Add18~2_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \Add18~12_combout\ : std_logic;
SIGNAL \Add18~14_combout\ : std_logic;
SIGNAL \Add18~10_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \Add18~19\ : std_logic;
SIGNAL \Add18~20_combout\ : std_logic;
SIGNAL \LessThan7~2_combout\ : std_logic;
SIGNAL \b_velocity_Y[4]~0_combout\ : std_logic;
SIGNAL \b_velocity_Y[1]~1_combout\ : std_logic;
SIGNAL \Add22~13\ : std_logic;
SIGNAL \Add22~14_combout\ : std_logic;
SIGNAL \Add19~13\ : std_logic;
SIGNAL \Add19~14_combout\ : std_logic;
SIGNAL \Add17~24_combout\ : std_logic;
SIGNAL \Add17~14\ : std_logic;
SIGNAL \Add17~15_combout\ : std_logic;
SIGNAL \Add17~25_combout\ : std_logic;
SIGNAL \Add17~16\ : std_logic;
SIGNAL \Add17~18\ : std_logic;
SIGNAL \Add17~20\ : std_logic;
SIGNAL \Add17~41_combout\ : std_logic;
SIGNAL \Add22~15\ : std_logic;
SIGNAL \Add22~17\ : std_logic;
SIGNAL \Add22~19\ : std_logic;
SIGNAL \Add22~20_combout\ : std_logic;
SIGNAL \Add19~19\ : std_logic;
SIGNAL \Add19~20_combout\ : std_logic;
SIGNAL \Add17~40_combout\ : std_logic;
SIGNAL \Add17~43_combout\ : std_logic;
SIGNAL \Add16~1\ : std_logic;
SIGNAL \Add16~3\ : std_logic;
SIGNAL \Add16~5\ : std_logic;
SIGNAL \Add16~7\ : std_logic;
SIGNAL \Add16~9\ : std_logic;
SIGNAL \Add16~11\ : std_logic;
SIGNAL \Add16~13\ : std_logic;
SIGNAL \Add16~15\ : std_logic;
SIGNAL \Add16~17\ : std_logic;
SIGNAL \Add16~19\ : std_logic;
SIGNAL \Add16~21\ : std_logic;
SIGNAL \Add16~22_combout\ : std_logic;
SIGNAL \Add16~10_combout\ : std_logic;
SIGNAL \Add16~12_combout\ : std_logic;
SIGNAL \Add16~14_combout\ : std_logic;
SIGNAL \Add16~8_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \Add16~20_combout\ : std_logic;
SIGNAL \Add16~18_combout\ : std_logic;
SIGNAL \Add16~16_combout\ : std_logic;
SIGNAL \LessThan6~2_combout\ : std_logic;
SIGNAL \Add16~2_combout\ : std_logic;
SIGNAL \Add16~0_combout\ : std_logic;
SIGNAL \Add16~6_combout\ : std_logic;
SIGNAL \Add16~4_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \LessThan6~3_combout\ : std_logic;
SIGNAL \Add17~17_combout\ : std_logic;
SIGNAL \Add19~15\ : std_logic;
SIGNAL \Add19~16_combout\ : std_logic;
SIGNAL \Add22~16_combout\ : std_logic;
SIGNAL \Add17~22_combout\ : std_logic;
SIGNAL \Add17~23_combout\ : std_logic;
SIGNAL \Add19~17\ : std_logic;
SIGNAL \Add19~18_combout\ : std_logic;
SIGNAL \Add22~18_combout\ : std_logic;
SIGNAL \Add17~0_combout\ : std_logic;
SIGNAL \Add17~19_combout\ : std_logic;
SIGNAL \Add17~21_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~16_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~13\ : std_logic;
SIGNAL \Add8~14_combout\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~15_cout\ : std_logic;
SIGNAL \LessThan1~17_cout\ : std_logic;
SIGNAL \LessThan1~18_combout\ : std_logic;
SIGNAL \Add6~1_cout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~19\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \Add6~18_combout\ : std_logic;
SIGNAL \Add6~21\ : std_logic;
SIGNAL \Add6~22_combout\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \always0~1_combout\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \always0~2_combout\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \always0~3_combout\ : std_logic;
SIGNAL \always0~4_combout\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Add21~16_combout\ : std_logic;
SIGNAL \Add9~19_combout\ : std_logic;
SIGNAL \Add14~1_cout\ : std_logic;
SIGNAL \Add14~3_cout\ : std_logic;
SIGNAL \Add14~5_cout\ : std_logic;
SIGNAL \Add14~7_cout\ : std_logic;
SIGNAL \Add14~9_cout\ : std_logic;
SIGNAL \Add14~11_cout\ : std_logic;
SIGNAL \Add14~13\ : std_logic;
SIGNAL \Add14~15\ : std_logic;
SIGNAL \Add14~16_combout\ : std_logic;
SIGNAL \Add14~14_combout\ : std_logic;
SIGNAL \Add14~12_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \Add14~17\ : std_logic;
SIGNAL \Add14~18_combout\ : std_logic;
SIGNAL \Add14~19\ : std_logic;
SIGNAL \Add14~20_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \Add15~1\ : std_logic;
SIGNAL \Add15~3\ : std_logic;
SIGNAL \Add15~5\ : std_logic;
SIGNAL \Add15~7\ : std_logic;
SIGNAL \Add15~9\ : std_logic;
SIGNAL \Add15~10_combout\ : std_logic;
SIGNAL \Add15~11\ : std_logic;
SIGNAL \Add15~13\ : std_logic;
SIGNAL \Add15~14_combout\ : std_logic;
SIGNAL \Add15~12_combout\ : std_logic;
SIGNAL \Add15~8_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \Add15~15\ : std_logic;
SIGNAL \Add15~17\ : std_logic;
SIGNAL \Add15~18_combout\ : std_logic;
SIGNAL \Add15~19\ : std_logic;
SIGNAL \Add15~20_combout\ : std_logic;
SIGNAL \Add15~16_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \Add15~21\ : std_logic;
SIGNAL \Add15~22_combout\ : std_logic;
SIGNAL \Add15~4_combout\ : std_logic;
SIGNAL \Add15~6_combout\ : std_logic;
SIGNAL \Add15~2_combout\ : std_logic;
SIGNAL \Add15~0_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \ball_X_location[4]~0_combout\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \Add21~18_combout\ : std_logic;
SIGNAL \Add9~18_combout\ : std_logic;
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
SIGNAL \draw_player_2_paddle|always0~3_combout\ : std_logic;
SIGNAL \draw_player_2_paddle|always0~4_combout\ : std_logic;
SIGNAL \draw_player_2_paddle|LessThan2~1_cout\ : std_logic;
SIGNAL \draw_player_2_paddle|LessThan2~3_cout\ : std_logic;
SIGNAL \draw_player_2_paddle|LessThan2~5_cout\ : std_logic;
SIGNAL \draw_player_2_paddle|LessThan2~7_cout\ : std_logic;
SIGNAL \draw_player_2_paddle|LessThan2~9_cout\ : std_logic;
SIGNAL \draw_player_2_paddle|LessThan2~11_cout\ : std_logic;
SIGNAL \draw_player_2_paddle|LessThan2~13_cout\ : std_logic;
SIGNAL \draw_player_2_paddle|LessThan2~15_cout\ : std_logic;
SIGNAL \draw_player_2_paddle|LessThan2~17_cout\ : std_logic;
SIGNAL \draw_player_2_paddle|LessThan2~18_combout\ : std_logic;
SIGNAL \draw_player_2_paddle|Add1~1\ : std_logic;
SIGNAL \draw_player_2_paddle|Add1~3\ : std_logic;
SIGNAL \draw_player_2_paddle|Add1~5\ : std_logic;
SIGNAL \draw_player_2_paddle|Add1~7\ : std_logic;
SIGNAL \draw_player_2_paddle|Add1~9\ : std_logic;
SIGNAL \draw_player_2_paddle|Add1~11\ : std_logic;
SIGNAL \draw_player_2_paddle|Add1~13\ : std_logic;
SIGNAL \draw_player_2_paddle|Add1~14_combout\ : std_logic;
SIGNAL \draw_player_2_paddle|Add1~12_combout\ : std_logic;
SIGNAL \draw_player_2_paddle|Add1~10_combout\ : std_logic;
SIGNAL \draw_player_2_paddle|Add1~8_combout\ : std_logic;
SIGNAL \draw_player_2_paddle|Add1~6_combout\ : std_logic;
SIGNAL \draw_player_2_paddle|Add1~4_combout\ : std_logic;
SIGNAL \draw_player_2_paddle|Add1~2_combout\ : std_logic;
SIGNAL \draw_player_2_paddle|Add1~0_combout\ : std_logic;
SIGNAL \draw_player_2_paddle|LessThan3~1_cout\ : std_logic;
SIGNAL \draw_player_2_paddle|LessThan3~3_cout\ : std_logic;
SIGNAL \draw_player_2_paddle|LessThan3~5_cout\ : std_logic;
SIGNAL \draw_player_2_paddle|LessThan3~7_cout\ : std_logic;
SIGNAL \draw_player_2_paddle|LessThan3~9_cout\ : std_logic;
SIGNAL \draw_player_2_paddle|LessThan3~11_cout\ : std_logic;
SIGNAL \draw_player_2_paddle|LessThan3~13_cout\ : std_logic;
SIGNAL \draw_player_2_paddle|LessThan3~15_cout\ : std_logic;
SIGNAL \draw_player_2_paddle|LessThan3~17_cout\ : std_logic;
SIGNAL \draw_player_2_paddle|LessThan3~18_combout\ : std_logic;
SIGNAL \draw_player_2_paddle|always0~2_combout\ : std_logic;
SIGNAL \draw_player_2_paddle|always0~5_combout\ : std_logic;
SIGNAL \draw_player_2_paddle|box~q\ : std_logic;
SIGNAL \pixel_color~0_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_R~0_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_R[0]~feeder_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_R[1]~feeder_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_R[2]~feeder_combout\ : std_logic;
SIGNAL \pixel_color~1_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_G~0_combout\ : std_logic;
SIGNAL \pixel_color~2_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_B~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector0~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector6~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector6~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector6~2_combout\ : std_logic;
SIGNAL \VGA_Driver|HS_counter\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \VGA_Driver|VGA_HS\ : std_logic_vector(0 DOWNTO 0);
SIGNAL AI_counter : std_logic_vector(19 DOWNTO 0);
SIGNAL \VGA_Driver|V_visible\ : std_logic_vector(0 DOWNTO 0);
SIGNAL ball_Y_location : std_logic_vector(10 DOWNTO 0);
SIGNAL \VGA_Driver|VGA_BUS_G\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_Driver|VGA_BUS_R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_Driver|H_visible\ : std_logic_vector(0 DOWNTO 0);
SIGNAL b_velocity_X : std_logic_vector(4 DOWNTO 0);
SIGNAL pixel_color : std_logic_vector(11 DOWNTO 0);
SIGNAL paddle_speed_counter : std_logic_vector(19 DOWNTO 0);
SIGNAL \VGA_Driver|VGA_VS\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA_Driver|VGA_BUS_B\ : std_logic_vector(3 DOWNTO 0);
SIGNAL b_velocity_Y : std_logic_vector(4 DOWNTO 0);
SIGNAL player_2_paddle_Y_location : std_logic_vector(10 DOWNTO 0);
SIGNAL ball_X_location : std_logic_vector(10 DOWNTO 0);
SIGNAL \VGA_Driver|VS_counter\ : std_logic_vector(10 DOWNTO 0);
SIGNAL player_1_paddle_Y_location : std_logic_vector(8 DOWNTO 0);
SIGNAL \VGA_Driver|ALT_INV_VGA_VS\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA_Driver|ALT_INV_VGA_HS\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
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

-- Location: LCCOMB_X28_Y25_N8
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

-- Location: LCCOMB_X28_Y25_N10
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

-- Location: LCCOMB_X28_Y25_N0
\VGA_Driver|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~14_combout\ = (\VGA_Driver|Add4~2_combout\ & (\VGA_Driver|WideNor0~1_combout\ & \VGA_Driver|WideNor0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add4~2_combout\,
	datac => \VGA_Driver|WideNor0~1_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Add4~14_combout\);

-- Location: FF_X28_Y25_N1
\VGA_Driver|HS_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add4~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(1));

-- Location: LCCOMB_X28_Y25_N12
\VGA_Driver|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~4_combout\ = (\VGA_Driver|HS_counter\(2) & (\VGA_Driver|Add4~3\ $ (GND))) # (!\VGA_Driver|HS_counter\(2) & (!\VGA_Driver|Add4~3\ & VCC))
-- \VGA_Driver|Add4~5\ = CARRY((\VGA_Driver|HS_counter\(2) & !\VGA_Driver|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(2),
	datad => VCC,
	cin => \VGA_Driver|Add4~3\,
	combout => \VGA_Driver|Add4~4_combout\,
	cout => \VGA_Driver|Add4~5\);

-- Location: LCCOMB_X28_Y25_N30
\VGA_Driver|Add4~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~26_combout\ = (\VGA_Driver|Add4~4_combout\ & (\VGA_Driver|WideNor0~1_combout\ & \VGA_Driver|WideNor0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add4~4_combout\,
	datac => \VGA_Driver|WideNor0~1_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Add4~26_combout\);

-- Location: FF_X28_Y25_N31
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

-- Location: LCCOMB_X27_Y25_N0
\VGA_Driver|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal1~1_combout\ = (\VGA_Driver|Equal1~0_combout\ & !\VGA_Driver|HS_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal1~0_combout\,
	datac => \VGA_Driver|HS_counter\(2),
	combout => \VGA_Driver|Equal1~1_combout\);

-- Location: LCCOMB_X28_Y25_N14
\VGA_Driver|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~6_combout\ = (\VGA_Driver|HS_counter\(3) & (!\VGA_Driver|Add4~5\)) # (!\VGA_Driver|HS_counter\(3) & ((\VGA_Driver|Add4~5\) # (GND)))
-- \VGA_Driver|Add4~7\ = CARRY((!\VGA_Driver|Add4~5\) # (!\VGA_Driver|HS_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(3),
	datad => VCC,
	cin => \VGA_Driver|Add4~5\,
	combout => \VGA_Driver|Add4~6_combout\,
	cout => \VGA_Driver|Add4~7\);

-- Location: LCCOMB_X28_Y25_N6
\VGA_Driver|Add4~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~25_combout\ = (\VGA_Driver|WideNor0~1_combout\ & (\VGA_Driver|Add4~6_combout\ & \VGA_Driver|WideNor0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|WideNor0~1_combout\,
	datac => \VGA_Driver|Add4~6_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Add4~25_combout\);

-- Location: FF_X28_Y25_N7
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

-- Location: LCCOMB_X28_Y25_N16
\VGA_Driver|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~8_combout\ = (\VGA_Driver|HS_counter\(4) & (\VGA_Driver|Add4~7\ $ (GND))) # (!\VGA_Driver|HS_counter\(4) & (!\VGA_Driver|Add4~7\ & VCC))
-- \VGA_Driver|Add4~9\ = CARRY((\VGA_Driver|HS_counter\(4) & !\VGA_Driver|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(4),
	datad => VCC,
	cin => \VGA_Driver|Add4~7\,
	combout => \VGA_Driver|Add4~8_combout\,
	cout => \VGA_Driver|Add4~9\);

-- Location: LCCOMB_X27_Y25_N16
\VGA_Driver|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector5~0_combout\ = ((\VGA_Driver|Add4~8_combout\ & \VGA_Driver|WideNor0~1_combout\)) # (!\VGA_Driver|WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|Add4~8_combout\,
	datac => \VGA_Driver|WideNor0~1_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Selector5~0_combout\);

-- Location: FF_X27_Y25_N17
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

-- Location: LCCOMB_X27_Y25_N2
\VGA_Driver|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal1~3_combout\ = (\VGA_Driver|Equal1~2_combout\ & (\VGA_Driver|Equal1~1_combout\ & (!\VGA_Driver|HS_counter\(7) & \VGA_Driver|HS_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal1~2_combout\,
	datab => \VGA_Driver|Equal1~1_combout\,
	datac => \VGA_Driver|HS_counter\(7),
	datad => \VGA_Driver|HS_counter\(4),
	combout => \VGA_Driver|Equal1~3_combout\);

-- Location: LCCOMB_X28_Y25_N18
\VGA_Driver|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~10_combout\ = (\VGA_Driver|HS_counter\(5) & (!\VGA_Driver|Add4~9\)) # (!\VGA_Driver|HS_counter\(5) & ((\VGA_Driver|Add4~9\) # (GND)))
-- \VGA_Driver|Add4~11\ = CARRY((!\VGA_Driver|Add4~9\) # (!\VGA_Driver|HS_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(5),
	datad => VCC,
	cin => \VGA_Driver|Add4~9\,
	combout => \VGA_Driver|Add4~10_combout\,
	cout => \VGA_Driver|Add4~11\);

-- Location: LCCOMB_X28_Y25_N20
\VGA_Driver|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~12_combout\ = (\VGA_Driver|HS_counter\(6) & (\VGA_Driver|Add4~11\ $ (GND))) # (!\VGA_Driver|HS_counter\(6) & (!\VGA_Driver|Add4~11\ & VCC))
-- \VGA_Driver|Add4~13\ = CARRY((\VGA_Driver|HS_counter\(6) & !\VGA_Driver|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(6),
	datad => VCC,
	cin => \VGA_Driver|Add4~11\,
	combout => \VGA_Driver|Add4~12_combout\,
	cout => \VGA_Driver|Add4~13\);

-- Location: LCCOMB_X29_Y25_N2
\VGA_Driver|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal2~0_combout\ = (\VGA_Driver|Equal1~3_combout\ & (\VGA_Driver|HS_counter\(5) & \VGA_Driver|HS_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal1~3_combout\,
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|Equal2~0_combout\);

-- Location: LCCOMB_X29_Y25_N12
\VGA_Driver|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector3~0_combout\ = (\VGA_Driver|Equal2~0_combout\) # ((\VGA_Driver|WideNor0~0_combout\ & (\VGA_Driver|WideNor0~1_combout\ & \VGA_Driver|Add4~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|WideNor0~0_combout\,
	datab => \VGA_Driver|WideNor0~1_combout\,
	datac => \VGA_Driver|Add4~12_combout\,
	datad => \VGA_Driver|Equal2~0_combout\,
	combout => \VGA_Driver|Selector3~0_combout\);

-- Location: FF_X29_Y25_N13
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

-- Location: LCCOMB_X29_Y25_N14
\VGA_Driver|WideNor0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|WideNor0~combout\ = ((\VGA_Driver|Equal1~3_combout\ & (\VGA_Driver|HS_counter\(5) $ (!\VGA_Driver|HS_counter\(6))))) # (!\VGA_Driver|WideNor0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal1~3_combout\,
	datab => \VGA_Driver|WideNor0~1_combout\,
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|WideNor0~combout\);

-- Location: LCCOMB_X29_Y25_N6
\VGA_Driver|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector4~0_combout\ = (\VGA_Driver|Equal3~1_combout\) # ((\VGA_Driver|Equal2~0_combout\) # ((\VGA_Driver|Add4~10_combout\ & !\VGA_Driver|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|Add4~10_combout\,
	datac => \VGA_Driver|WideNor0~combout\,
	datad => \VGA_Driver|Equal2~0_combout\,
	combout => \VGA_Driver|Selector4~0_combout\);

-- Location: FF_X29_Y25_N7
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

-- Location: LCCOMB_X29_Y25_N20
\VGA_Driver|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|WideNor0~0_combout\ = (\VGA_Driver|HS_counter\(5) $ (\VGA_Driver|HS_counter\(6))) # (!\VGA_Driver|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal1~3_combout\,
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|WideNor0~0_combout\);

-- Location: LCCOMB_X28_Y25_N22
\VGA_Driver|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~16_combout\ = (\VGA_Driver|HS_counter\(7) & (!\VGA_Driver|Add4~13\)) # (!\VGA_Driver|HS_counter\(7) & ((\VGA_Driver|Add4~13\) # (GND)))
-- \VGA_Driver|Add4~17\ = CARRY((!\VGA_Driver|Add4~13\) # (!\VGA_Driver|HS_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(7),
	datad => VCC,
	cin => \VGA_Driver|Add4~13\,
	combout => \VGA_Driver|Add4~16_combout\,
	cout => \VGA_Driver|Add4~17\);

-- Location: LCCOMB_X29_Y25_N24
\VGA_Driver|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector2~0_combout\ = (\VGA_Driver|Equal3~1_combout\) # ((\VGA_Driver|WideNor0~1_combout\ & (\VGA_Driver|WideNor0~0_combout\ & \VGA_Driver|Add4~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|WideNor0~1_combout\,
	datac => \VGA_Driver|WideNor0~0_combout\,
	datad => \VGA_Driver|Add4~16_combout\,
	combout => \VGA_Driver|Selector2~0_combout\);

-- Location: FF_X29_Y25_N25
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

-- Location: LCCOMB_X28_Y25_N24
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

-- Location: LCCOMB_X27_Y25_N12
\VGA_Driver|Add4~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~28_combout\ = (\VGA_Driver|Add4~18_combout\ & (\VGA_Driver|WideNor0~1_combout\ & \VGA_Driver|WideNor0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|Add4~18_combout\,
	datac => \VGA_Driver|WideNor0~1_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Add4~28_combout\);

-- Location: FF_X27_Y25_N13
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

-- Location: LCCOMB_X28_Y25_N26
\VGA_Driver|Add4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~20_combout\ = (\VGA_Driver|HS_counter\(9) & (!\VGA_Driver|Add4~19\)) # (!\VGA_Driver|HS_counter\(9) & ((\VGA_Driver|Add4~19\) # (GND)))
-- \VGA_Driver|Add4~21\ = CARRY((!\VGA_Driver|Add4~19\) # (!\VGA_Driver|HS_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(9),
	datad => VCC,
	cin => \VGA_Driver|Add4~19\,
	combout => \VGA_Driver|Add4~20_combout\,
	cout => \VGA_Driver|Add4~21\);

-- Location: LCCOMB_X27_Y25_N10
\VGA_Driver|Add4~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~27_combout\ = (\VGA_Driver|Add4~20_combout\ & (\VGA_Driver|WideNor0~1_combout\ & \VGA_Driver|WideNor0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add4~20_combout\,
	datac => \VGA_Driver|WideNor0~1_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Add4~27_combout\);

-- Location: FF_X27_Y25_N11
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

-- Location: LCCOMB_X27_Y25_N6
\VGA_Driver|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal1~2_combout\ = (!\VGA_Driver|HS_counter\(8) & !\VGA_Driver|HS_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(8),
	datad => \VGA_Driver|HS_counter\(9),
	combout => \VGA_Driver|Equal1~2_combout\);

-- Location: LCCOMB_X27_Y25_N22
\VGA_Driver|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal4~0_combout\ = (\VGA_Driver|HS_counter\(9) & (!\VGA_Driver|HS_counter\(4) & (\VGA_Driver|HS_counter\(5) & !\VGA_Driver|HS_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(9),
	datab => \VGA_Driver|HS_counter\(4),
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|Equal4~0_combout\);

-- Location: LCCOMB_X27_Y25_N24
\VGA_Driver|Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal4~1_combout\ = (\VGA_Driver|Equal4~0_combout\ & (\VGA_Driver|Equal1~1_combout\ & (!\VGA_Driver|HS_counter\(7) & \VGA_Driver|HS_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal4~0_combout\,
	datab => \VGA_Driver|Equal1~1_combout\,
	datac => \VGA_Driver|HS_counter\(7),
	datad => \VGA_Driver|HS_counter\(8),
	combout => \VGA_Driver|Equal4~1_combout\);

-- Location: LCCOMB_X27_Y25_N28
\VGA_Driver|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal3~0_combout\ = (\VGA_Driver|HS_counter\(7) & (!\VGA_Driver|HS_counter\(4) & (\VGA_Driver|HS_counter\(5) & !\VGA_Driver|HS_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(7),
	datab => \VGA_Driver|HS_counter\(4),
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|Equal3~0_combout\);

-- Location: LCCOMB_X27_Y25_N26
\VGA_Driver|WideNor0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|WideNor0~1_combout\ = (!\VGA_Driver|Equal4~1_combout\ & (((!\VGA_Driver|Equal3~0_combout\) # (!\VGA_Driver|Equal1~1_combout\)) # (!\VGA_Driver|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal1~2_combout\,
	datab => \VGA_Driver|Equal1~1_combout\,
	datac => \VGA_Driver|Equal4~1_combout\,
	datad => \VGA_Driver|Equal3~0_combout\,
	combout => \VGA_Driver|WideNor0~1_combout\);

-- Location: LCCOMB_X28_Y25_N2
\VGA_Driver|Add4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~15_combout\ = ((\VGA_Driver|Add4~0_combout\) # (!\VGA_Driver|WideNor0~0_combout\)) # (!\VGA_Driver|WideNor0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|WideNor0~1_combout\,
	datac => \VGA_Driver|Add4~0_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Add4~15_combout\);

-- Location: FF_X28_Y25_N3
\VGA_Driver|HS_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add4~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(0));

-- Location: LCCOMB_X28_Y25_N28
\VGA_Driver|Add4~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~22_combout\ = \VGA_Driver|HS_counter\(10) $ (!\VGA_Driver|Add4~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(10),
	cin => \VGA_Driver|Add4~21\,
	combout => \VGA_Driver|Add4~22_combout\);

-- Location: LCCOMB_X28_Y25_N4
\VGA_Driver|Add4~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~24_combout\ = (\VGA_Driver|Add4~22_combout\ & (\VGA_Driver|WideNor0~1_combout\ & \VGA_Driver|WideNor0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|Add4~22_combout\,
	datac => \VGA_Driver|WideNor0~1_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Add4~24_combout\);

-- Location: FF_X28_Y25_N5
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

-- Location: LCCOMB_X26_Y25_N8
\VGA_Driver|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal1~0_combout\ = (!\VGA_Driver|HS_counter\(0) & (!\VGA_Driver|HS_counter\(3) & (!\VGA_Driver|HS_counter\(1) & !\VGA_Driver|HS_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(0),
	datab => \VGA_Driver|HS_counter\(3),
	datac => \VGA_Driver|HS_counter\(1),
	datad => \VGA_Driver|HS_counter\(10),
	combout => \VGA_Driver|Equal1~0_combout\);

-- Location: LCCOMB_X27_Y25_N14
\VGA_Driver|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal3~1_combout\ = (\VGA_Driver|Equal1~0_combout\ & (\VGA_Driver|Equal3~0_combout\ & (!\VGA_Driver|HS_counter\(2) & \VGA_Driver|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal1~0_combout\,
	datab => \VGA_Driver|Equal3~0_combout\,
	datac => \VGA_Driver|HS_counter\(2),
	datad => \VGA_Driver|Equal1~2_combout\,
	combout => \VGA_Driver|Equal3~1_combout\);

-- Location: LCCOMB_X29_Y25_N26
\VGA_Driver|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector1~0_combout\ = (\VGA_Driver|Equal3~1_combout\) # ((\VGA_Driver|H_visible\(0) & ((\VGA_Driver|WideNor0~1_combout\) # (!\VGA_Driver|WideNor0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|WideNor0~1_combout\,
	datac => \VGA_Driver|H_visible\(0),
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Selector1~0_combout\);

-- Location: FF_X29_Y25_N27
\VGA_Driver|H_visible[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|H_visible\(0));

-- Location: LCCOMB_X23_Y23_N6
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

-- Location: LCCOMB_X23_Y23_N14
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

-- Location: LCCOMB_X23_Y23_N16
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

-- Location: FF_X23_Y23_N17
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

-- Location: LCCOMB_X23_Y23_N4
\VGA_Driver|VS_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VS_counter~2_combout\ = (\VGA_Driver|Add3~0_combout\) # ((\VGA_Driver|Equal7~0_combout\ & (\VGA_Driver|VS_counter\(9) & !\VGA_Driver|VS_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add3~0_combout\,
	datab => \VGA_Driver|Equal7~0_combout\,
	datac => \VGA_Driver|VS_counter\(9),
	datad => \VGA_Driver|VS_counter\(5),
	combout => \VGA_Driver|VS_counter~2_combout\);

-- Location: FF_X23_Y23_N5
\VGA_Driver|VS_counter[0]\ : dffeas
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
	q => \VGA_Driver|VS_counter\(0));

-- Location: LCCOMB_X23_Y23_N8
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

-- Location: LCCOMB_X23_Y23_N28
\VGA_Driver|VS_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VS_counter~3_combout\ = (\VGA_Driver|Add3~2_combout\ & (((\VGA_Driver|VS_counter\(5)) # (!\VGA_Driver|Equal7~0_combout\)) # (!\VGA_Driver|VS_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(9),
	datab => \VGA_Driver|Equal7~0_combout\,
	datac => \VGA_Driver|Add3~2_combout\,
	datad => \VGA_Driver|VS_counter\(5),
	combout => \VGA_Driver|VS_counter~3_combout\);

-- Location: FF_X23_Y23_N29
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

-- Location: LCCOMB_X23_Y23_N10
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

-- Location: LCCOMB_X23_Y23_N2
\VGA_Driver|VS_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VS_counter~1_combout\ = (\VGA_Driver|Add3~4_combout\ & (((\VGA_Driver|VS_counter\(5)) # (!\VGA_Driver|VS_counter\(9))) # (!\VGA_Driver|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add3~4_combout\,
	datab => \VGA_Driver|Equal7~0_combout\,
	datac => \VGA_Driver|VS_counter\(9),
	datad => \VGA_Driver|VS_counter\(5),
	combout => \VGA_Driver|VS_counter~1_combout\);

-- Location: FF_X23_Y23_N3
\VGA_Driver|VS_counter[2]\ : dffeas
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
	q => \VGA_Driver|VS_counter\(2));

-- Location: LCCOMB_X21_Y23_N20
\VGA_Driver|Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal7~0_combout\ = (\VGA_Driver|Equal5~1_combout\ & (!\VGA_Driver|VS_counter\(1) & (\VGA_Driver|VS_counter\(2) & \VGA_Driver|VS_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal5~1_combout\,
	datab => \VGA_Driver|VS_counter\(1),
	datac => \VGA_Driver|VS_counter\(2),
	datad => \VGA_Driver|VS_counter\(0),
	combout => \VGA_Driver|Equal7~0_combout\);

-- Location: LCCOMB_X23_Y23_N18
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

-- Location: FF_X23_Y23_N19
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

-- Location: LCCOMB_X23_Y23_N20
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

-- Location: FF_X23_Y23_N21
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

-- Location: LCCOMB_X23_Y23_N22
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

-- Location: FF_X23_Y23_N23
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

-- Location: LCCOMB_X23_Y23_N24
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

-- Location: LCCOMB_X23_Y23_N30
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

-- Location: FF_X23_Y23_N31
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

-- Location: LCCOMB_X23_Y23_N12
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

-- Location: LCCOMB_X23_Y23_N0
\VGA_Driver|VS_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VS_counter~0_combout\ = (\VGA_Driver|Add3~6_combout\ & (((\VGA_Driver|VS_counter\(5)) # (!\VGA_Driver|Equal7~0_combout\)) # (!\VGA_Driver|VS_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(9),
	datab => \VGA_Driver|Equal7~0_combout\,
	datac => \VGA_Driver|Add3~6_combout\,
	datad => \VGA_Driver|VS_counter\(5),
	combout => \VGA_Driver|VS_counter~0_combout\);

-- Location: FF_X23_Y23_N1
\VGA_Driver|VS_counter[3]\ : dffeas
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
	q => \VGA_Driver|VS_counter\(3));

-- Location: FF_X23_Y23_N15
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

-- Location: LCCOMB_X23_Y23_N26
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

-- Location: FF_X23_Y23_N27
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

-- Location: LCCOMB_X22_Y23_N0
\VGA_Driver|Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal5~0_combout\ = (!\VGA_Driver|VS_counter\(6) & (!\VGA_Driver|VS_counter\(8) & (!\VGA_Driver|VS_counter\(7) & !\VGA_Driver|VS_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(6),
	datab => \VGA_Driver|VS_counter\(8),
	datac => \VGA_Driver|VS_counter\(7),
	datad => \VGA_Driver|VS_counter\(10),
	combout => \VGA_Driver|Equal5~0_combout\);

-- Location: LCCOMB_X22_Y23_N2
\VGA_Driver|Equal5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal5~1_combout\ = (!\VGA_Driver|VS_counter\(4) & (\VGA_Driver|VS_counter\(3) & \VGA_Driver|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(4),
	datac => \VGA_Driver|VS_counter\(3),
	datad => \VGA_Driver|Equal5~0_combout\,
	combout => \VGA_Driver|Equal5~1_combout\);

-- Location: LCCOMB_X21_Y23_N0
\VGA_Driver|Equal5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal5~2_combout\ = (!\VGA_Driver|VS_counter\(5) & (!\VGA_Driver|VS_counter\(9) & !\VGA_Driver|VS_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(5),
	datac => \VGA_Driver|VS_counter\(9),
	datad => \VGA_Driver|VS_counter\(0),
	combout => \VGA_Driver|Equal5~2_combout\);

-- Location: LCCOMB_X21_Y23_N12
\VGA_Driver|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector7~0_combout\ = (\VGA_Driver|Equal5~1_combout\ & (\VGA_Driver|Equal5~2_combout\ & (\VGA_Driver|VS_counter\(2) $ (\VGA_Driver|VS_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal5~1_combout\,
	datab => \VGA_Driver|Equal5~2_combout\,
	datac => \VGA_Driver|VS_counter\(2),
	datad => \VGA_Driver|VS_counter\(1),
	combout => \VGA_Driver|Selector7~0_combout\);

-- Location: LCCOMB_X21_Y23_N14
\VGA_Driver|Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector7~1_combout\ = (\VGA_Driver|VS_counter\(9) & (\VGA_Driver|V_visible\(0) & !\VGA_Driver|VS_counter\(5))) # (!\VGA_Driver|VS_counter\(9) & (!\VGA_Driver|V_visible\(0) & \VGA_Driver|VS_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(9),
	datac => \VGA_Driver|V_visible\(0),
	datad => \VGA_Driver|VS_counter\(5),
	combout => \VGA_Driver|Selector7~1_combout\);

-- Location: LCCOMB_X21_Y23_N26
\VGA_Driver|Selector7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector7~2_combout\ = (\VGA_Driver|Selector7~1_combout\ & ((\VGA_Driver|V_visible\(0) & ((\VGA_Driver|Selector7~0_combout\) # (!\VGA_Driver|Equal7~0_combout\))) # (!\VGA_Driver|V_visible\(0) & ((\VGA_Driver|Equal7~0_combout\))))) # 
-- (!\VGA_Driver|Selector7~1_combout\ & (((\VGA_Driver|V_visible\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Selector7~0_combout\,
	datab => \VGA_Driver|Selector7~1_combout\,
	datac => \VGA_Driver|V_visible\(0),
	datad => \VGA_Driver|Equal7~0_combout\,
	combout => \VGA_Driver|Selector7~2_combout\);

-- Location: FF_X21_Y23_N27
\VGA_Driver|V_visible[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Selector7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|V_visible\(0));

-- Location: LCCOMB_X26_Y25_N6
\draw_player_1_paddle|always0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|always0~2_combout\ = (!\VGA_Driver|HS_counter\(3) & (((!\VGA_Driver|HS_counter\(0) & !\VGA_Driver|HS_counter\(1))) # (!\VGA_Driver|HS_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(0),
	datab => \VGA_Driver|HS_counter\(3),
	datac => \VGA_Driver|HS_counter\(1),
	datad => \VGA_Driver|HS_counter\(2),
	combout => \draw_player_1_paddle|always0~2_combout\);

-- Location: LCCOMB_X22_Y27_N12
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

-- Location: LCCOMB_X22_Y27_N0
\paddle_speed_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \paddle_speed_counter~1_combout\ = (\Add1~0_combout\ & ((!\Equal0~5_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \Equal0~5_combout\,
	datad => \Add1~0_combout\,
	combout => \paddle_speed_counter~1_combout\);

-- Location: FF_X22_Y27_N1
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

-- Location: LCCOMB_X22_Y27_N14
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

-- Location: FF_X22_Y27_N15
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

-- Location: LCCOMB_X22_Y27_N16
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

-- Location: FF_X22_Y27_N17
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

-- Location: LCCOMB_X22_Y27_N18
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

-- Location: FF_X22_Y27_N19
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

-- Location: LCCOMB_X22_Y27_N20
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

-- Location: FF_X22_Y27_N21
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

-- Location: LCCOMB_X22_Y27_N22
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

-- Location: LCCOMB_X22_Y27_N4
\paddle_speed_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \paddle_speed_counter~2_combout\ = (\Add1~10_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~0_combout\,
	datac => \Add1~10_combout\,
	combout => \paddle_speed_counter~2_combout\);

-- Location: FF_X22_Y27_N5
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

-- Location: LCCOMB_X22_Y27_N24
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

-- Location: FF_X22_Y27_N25
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

-- Location: LCCOMB_X22_Y27_N26
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

-- Location: LCCOMB_X22_Y27_N6
\paddle_speed_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \paddle_speed_counter~3_combout\ = (\Add1~14_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~0_combout\,
	datac => \Add1~14_combout\,
	combout => \paddle_speed_counter~3_combout\);

-- Location: FF_X22_Y27_N7
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

-- Location: LCCOMB_X22_Y27_N28
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

-- Location: FF_X22_Y27_N29
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

-- Location: LCCOMB_X22_Y27_N30
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

-- Location: LCCOMB_X22_Y27_N10
\paddle_speed_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \paddle_speed_counter~4_combout\ = (\Add1~18_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~0_combout\,
	datac => \Add1~18_combout\,
	combout => \paddle_speed_counter~4_combout\);

-- Location: FF_X22_Y27_N11
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

-- Location: LCCOMB_X22_Y26_N0
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

-- Location: LCCOMB_X23_Y22_N30
\paddle_speed_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \paddle_speed_counter~5_combout\ = (\Add1~20_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \Equal0~5_combout\,
	datad => \Equal0~0_combout\,
	combout => \paddle_speed_counter~5_combout\);

-- Location: FF_X23_Y22_N31
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

-- Location: LCCOMB_X22_Y26_N2
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

-- Location: FF_X22_Y26_N3
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

-- Location: LCCOMB_X22_Y26_N4
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

-- Location: FF_X22_Y26_N5
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

-- Location: LCCOMB_X22_Y26_N6
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

-- Location: FF_X22_Y26_N7
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

-- Location: LCCOMB_X22_Y26_N8
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

-- Location: FF_X22_Y26_N9
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

-- Location: LCCOMB_X22_Y26_N10
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

-- Location: LCCOMB_X22_Y26_N26
\paddle_speed_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \paddle_speed_counter~6_combout\ = (\Add1~30_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datac => \Equal0~0_combout\,
	datad => \Add1~30_combout\,
	combout => \paddle_speed_counter~6_combout\);

-- Location: FF_X22_Y26_N27
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

-- Location: LCCOMB_X22_Y26_N28
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (paddle_speed_counter(15) & (!paddle_speed_counter(14) & (!paddle_speed_counter(12) & !paddle_speed_counter(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => paddle_speed_counter(15),
	datab => paddle_speed_counter(14),
	datac => paddle_speed_counter(12),
	datad => paddle_speed_counter(13),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X22_Y26_N24
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!paddle_speed_counter(8) & (!paddle_speed_counter(11) & (paddle_speed_counter(9) & paddle_speed_counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => paddle_speed_counter(8),
	datab => paddle_speed_counter(11),
	datac => paddle_speed_counter(9),
	datad => paddle_speed_counter(10),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X22_Y27_N2
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

-- Location: LCCOMB_X22_Y27_N8
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (paddle_speed_counter(7) & (!paddle_speed_counter(6) & (paddle_speed_counter(5) & !paddle_speed_counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => paddle_speed_counter(7),
	datab => paddle_speed_counter(6),
	datac => paddle_speed_counter(5),
	datad => paddle_speed_counter(4),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X22_Y26_N22
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~4_combout\ & (\Equal0~3_combout\ & (\Equal0~1_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X22_Y26_N12
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

-- Location: LCCOMB_X22_Y26_N20
\paddle_speed_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \paddle_speed_counter~0_combout\ = (\Add1~32_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datac => \Equal0~0_combout\,
	datad => \Add1~32_combout\,
	combout => \paddle_speed_counter~0_combout\);

-- Location: FF_X22_Y26_N21
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

-- Location: LCCOMB_X22_Y26_N14
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

-- Location: FF_X22_Y26_N15
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

-- Location: LCCOMB_X22_Y26_N16
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

-- Location: FF_X22_Y26_N17
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

-- Location: LCCOMB_X22_Y26_N18
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

-- Location: FF_X22_Y26_N19
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

-- Location: LCCOMB_X22_Y26_N30
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

-- Location: LCCOMB_X24_Y22_N10
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (player_1_paddle_Y_location(0) & (\ORG_BUTTON[1]~input_o\ $ (VCC))) # (!player_1_paddle_Y_location(0) & (\ORG_BUTTON[1]~input_o\ & VCC))
-- \Add3~1\ = CARRY((player_1_paddle_Y_location(0) & \ORG_BUTTON[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player_1_paddle_Y_location(0),
	datab => \ORG_BUTTON[1]~input_o\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X23_Y22_N12
\Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (\ORG_BUTTON[2]~input_o\ & (\Add3~0_combout\ $ (VCC))) # (!\ORG_BUTTON[2]~input_o\ & (\Add3~0_combout\ & VCC))
-- \Add4~1\ = CARRY((\ORG_BUTTON[2]~input_o\ & \Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ORG_BUTTON[2]~input_o\,
	datab => \Add3~0_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X23_Y22_N10
\Add4~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (\Equal0~5_combout\ & ((\Equal0~0_combout\ & (\Add4~0_combout\)) # (!\Equal0~0_combout\ & ((player_1_paddle_Y_location(0)))))) # (!\Equal0~5_combout\ & (((player_1_paddle_Y_location(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \Equal0~5_combout\,
	datac => player_1_paddle_Y_location(0),
	datad => \Equal0~0_combout\,
	combout => \Add4~26_combout\);

-- Location: FF_X23_Y22_N11
\player_1_paddle_Y_location[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add4~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_1_paddle_Y_location(0));

-- Location: LCCOMB_X24_Y22_N12
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\ORG_BUTTON[1]~input_o\ & ((player_1_paddle_Y_location(1) & (\Add3~1\ & VCC)) # (!player_1_paddle_Y_location(1) & (!\Add3~1\)))) # (!\ORG_BUTTON[1]~input_o\ & ((player_1_paddle_Y_location(1) & (!\Add3~1\)) # 
-- (!player_1_paddle_Y_location(1) & ((\Add3~1\) # (GND)))))
-- \Add3~3\ = CARRY((\ORG_BUTTON[1]~input_o\ & (!player_1_paddle_Y_location(1) & !\Add3~1\)) # (!\ORG_BUTTON[1]~input_o\ & ((!\Add3~1\) # (!player_1_paddle_Y_location(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ORG_BUTTON[1]~input_o\,
	datab => player_1_paddle_Y_location(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X23_Y22_N14
\Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\Add3~2_combout\ & (!\Add4~1\)) # (!\Add3~2_combout\ & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!\Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~2_combout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X23_Y22_N8
\Add4~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~25_combout\ = (\Equal0~5_combout\ & ((\Equal0~0_combout\ & (\Add4~2_combout\)) # (!\Equal0~0_combout\ & ((player_1_paddle_Y_location(1)))))) # (!\Equal0~5_combout\ & (((player_1_paddle_Y_location(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Add4~2_combout\,
	datac => player_1_paddle_Y_location(1),
	datad => \Equal0~0_combout\,
	combout => \Add4~25_combout\);

-- Location: FF_X23_Y22_N9
\player_1_paddle_Y_location[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add4~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_1_paddle_Y_location(1));

-- Location: LCCOMB_X24_Y22_N14
\Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((\ORG_BUTTON[1]~input_o\ $ (player_1_paddle_Y_location(2) $ (!\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((\ORG_BUTTON[1]~input_o\ & ((player_1_paddle_Y_location(2)) # (!\Add3~3\))) # (!\ORG_BUTTON[1]~input_o\ & (player_1_paddle_Y_location(2) & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ORG_BUTTON[1]~input_o\,
	datab => player_1_paddle_Y_location(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X23_Y22_N16
\Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (\Add3~4_combout\ & (\Add4~3\ $ (GND))) # (!\Add3~4_combout\ & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((\Add3~4_combout\ & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~4_combout\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X23_Y22_N6
\Add4~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (\Equal0~5_combout\ & ((\Equal0~0_combout\ & ((\Add4~4_combout\))) # (!\Equal0~0_combout\ & (player_1_paddle_Y_location(2))))) # (!\Equal0~5_combout\ & (((player_1_paddle_Y_location(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~0_combout\,
	datac => player_1_paddle_Y_location(2),
	datad => \Add4~4_combout\,
	combout => \Add4~24_combout\);

-- Location: FF_X23_Y22_N7
\player_1_paddle_Y_location[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add4~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_1_paddle_Y_location(2));

-- Location: LCCOMB_X24_Y22_N16
\Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\ORG_BUTTON[1]~input_o\ & ((player_1_paddle_Y_location(3) & (\Add3~5\ & VCC)) # (!player_1_paddle_Y_location(3) & (!\Add3~5\)))) # (!\ORG_BUTTON[1]~input_o\ & ((player_1_paddle_Y_location(3) & (!\Add3~5\)) # 
-- (!player_1_paddle_Y_location(3) & ((\Add3~5\) # (GND)))))
-- \Add3~7\ = CARRY((\ORG_BUTTON[1]~input_o\ & (!player_1_paddle_Y_location(3) & !\Add3~5\)) # (!\ORG_BUTTON[1]~input_o\ & ((!\Add3~5\) # (!player_1_paddle_Y_location(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ORG_BUTTON[1]~input_o\,
	datab => player_1_paddle_Y_location(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X23_Y22_N18
\Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\Add3~6_combout\ & (!\Add4~5\)) # (!\Add3~6_combout\ & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!\Add3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~6_combout\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X23_Y22_N4
\Add4~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~23_combout\ = (\Equal0~5_combout\ & ((\Equal0~0_combout\ & ((\Add4~6_combout\))) # (!\Equal0~0_combout\ & (player_1_paddle_Y_location(3))))) # (!\Equal0~5_combout\ & (((player_1_paddle_Y_location(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~0_combout\,
	datac => player_1_paddle_Y_location(3),
	datad => \Add4~6_combout\,
	combout => \Add4~23_combout\);

-- Location: FF_X23_Y22_N5
\player_1_paddle_Y_location[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add4~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_1_paddle_Y_location(3));

-- Location: LCCOMB_X24_Y22_N18
\Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = ((\ORG_BUTTON[1]~input_o\ $ (player_1_paddle_Y_location(4) $ (!\Add3~7\)))) # (GND)
-- \Add3~9\ = CARRY((\ORG_BUTTON[1]~input_o\ & ((player_1_paddle_Y_location(4)) # (!\Add3~7\))) # (!\ORG_BUTTON[1]~input_o\ & (player_1_paddle_Y_location(4) & !\Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ORG_BUTTON[1]~input_o\,
	datab => player_1_paddle_Y_location(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X23_Y22_N20
\Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (\Add3~8_combout\ & (\Add4~7\ $ (GND))) # (!\Add3~8_combout\ & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((\Add3~8_combout\ & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~8_combout\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X22_Y22_N12
\Add4~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (\Equal0~0_combout\ & ((\Equal0~5_combout\ & ((\Add4~8_combout\))) # (!\Equal0~5_combout\ & (player_1_paddle_Y_location(4))))) # (!\Equal0~0_combout\ & (((player_1_paddle_Y_location(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~5_combout\,
	datac => player_1_paddle_Y_location(4),
	datad => \Add4~8_combout\,
	combout => \Add4~22_combout\);

-- Location: FF_X22_Y22_N13
\player_1_paddle_Y_location[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add4~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_1_paddle_Y_location(4));

-- Location: LCCOMB_X24_Y22_N20
\Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\ORG_BUTTON[1]~input_o\ & ((player_1_paddle_Y_location(5) & (\Add3~9\ & VCC)) # (!player_1_paddle_Y_location(5) & (!\Add3~9\)))) # (!\ORG_BUTTON[1]~input_o\ & ((player_1_paddle_Y_location(5) & (!\Add3~9\)) # 
-- (!player_1_paddle_Y_location(5) & ((\Add3~9\) # (GND)))))
-- \Add3~11\ = CARRY((\ORG_BUTTON[1]~input_o\ & (!player_1_paddle_Y_location(5) & !\Add3~9\)) # (!\ORG_BUTTON[1]~input_o\ & ((!\Add3~9\) # (!player_1_paddle_Y_location(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ORG_BUTTON[1]~input_o\,
	datab => player_1_paddle_Y_location(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X23_Y22_N22
\Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\Add3~10_combout\ & (!\Add4~9\)) # (!\Add3~10_combout\ & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!\Add3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X23_Y22_N2
\Add4~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~21_combout\ = (\Equal0~5_combout\ & ((\Equal0~0_combout\ & (\Add4~10_combout\)) # (!\Equal0~0_combout\ & ((player_1_paddle_Y_location(5)))))) # (!\Equal0~5_combout\ & (((player_1_paddle_Y_location(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datab => \Equal0~5_combout\,
	datac => player_1_paddle_Y_location(5),
	datad => \Equal0~0_combout\,
	combout => \Add4~21_combout\);

-- Location: FF_X23_Y22_N3
\player_1_paddle_Y_location[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add4~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_1_paddle_Y_location(5));

-- Location: LCCOMB_X24_Y22_N22
\Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = ((player_1_paddle_Y_location(6) $ (\ORG_BUTTON[1]~input_o\ $ (!\Add3~11\)))) # (GND)
-- \Add3~13\ = CARRY((player_1_paddle_Y_location(6) & ((\ORG_BUTTON[1]~input_o\) # (!\Add3~11\))) # (!player_1_paddle_Y_location(6) & (\ORG_BUTTON[1]~input_o\ & !\Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_1_paddle_Y_location(6),
	datab => \ORG_BUTTON[1]~input_o\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X23_Y22_N24
\Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (\Add3~12_combout\ & (\Add4~11\ $ (GND))) # (!\Add3~12_combout\ & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((\Add3~12_combout\ & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~12_combout\,
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X23_Y22_N0
\Add4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (\Equal0~5_combout\ & ((\Equal0~0_combout\ & ((\Add4~12_combout\))) # (!\Equal0~0_combout\ & (player_1_paddle_Y_location(6))))) # (!\Equal0~5_combout\ & (((player_1_paddle_Y_location(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~0_combout\,
	datac => player_1_paddle_Y_location(6),
	datad => \Add4~12_combout\,
	combout => \Add4~20_combout\);

-- Location: FF_X23_Y22_N1
\player_1_paddle_Y_location[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add4~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_1_paddle_Y_location(6));

-- Location: LCCOMB_X24_Y22_N24
\Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\ORG_BUTTON[1]~input_o\ & ((player_1_paddle_Y_location(7) & (\Add3~13\ & VCC)) # (!player_1_paddle_Y_location(7) & (!\Add3~13\)))) # (!\ORG_BUTTON[1]~input_o\ & ((player_1_paddle_Y_location(7) & (!\Add3~13\)) # 
-- (!player_1_paddle_Y_location(7) & ((\Add3~13\) # (GND)))))
-- \Add3~15\ = CARRY((\ORG_BUTTON[1]~input_o\ & (!player_1_paddle_Y_location(7) & !\Add3~13\)) # (!\ORG_BUTTON[1]~input_o\ & ((!\Add3~13\) # (!player_1_paddle_Y_location(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ORG_BUTTON[1]~input_o\,
	datab => player_1_paddle_Y_location(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X23_Y22_N26
\Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (\Add3~14_combout\ & (!\Add4~13\)) # (!\Add3~14_combout\ & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!\Add3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~14_combout\,
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X22_Y22_N10
\Add4~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~19_combout\ = (\Equal0~0_combout\ & ((\Equal0~5_combout\ & ((\Add4~14_combout\))) # (!\Equal0~5_combout\ & (player_1_paddle_Y_location(7))))) # (!\Equal0~0_combout\ & (((player_1_paddle_Y_location(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~5_combout\,
	datac => player_1_paddle_Y_location(7),
	datad => \Add4~14_combout\,
	combout => \Add4~19_combout\);

-- Location: FF_X22_Y22_N11
\player_1_paddle_Y_location[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add4~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_1_paddle_Y_location(7));

-- Location: LCCOMB_X24_Y22_N26
\Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = \ORG_BUTTON[1]~input_o\ $ (player_1_paddle_Y_location(8) $ (!\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ORG_BUTTON[1]~input_o\,
	datab => player_1_paddle_Y_location(8),
	cin => \Add3~15\,
	combout => \Add3~16_combout\);

-- Location: LCCOMB_X23_Y22_N28
\Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = \Add4~15\ $ (!\Add3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add3~16_combout\,
	cin => \Add4~15\,
	combout => \Add4~16_combout\);

-- Location: LCCOMB_X22_Y22_N8
\Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (\Equal0~0_combout\ & ((\Equal0~5_combout\ & ((\Add4~16_combout\))) # (!\Equal0~5_combout\ & (player_1_paddle_Y_location(8))))) # (!\Equal0~0_combout\ & (((player_1_paddle_Y_location(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~5_combout\,
	datac => player_1_paddle_Y_location(8),
	datad => \Add4~16_combout\,
	combout => \Add4~18_combout\);

-- Location: FF_X22_Y22_N9
\player_1_paddle_Y_location[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add4~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_1_paddle_Y_location(8));

-- Location: LCCOMB_X22_Y21_N0
\draw_player_1_paddle|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|Add1~0_combout\ = (player_1_paddle_Y_location(2) & (player_1_paddle_Y_location(1) $ (VCC))) # (!player_1_paddle_Y_location(2) & (player_1_paddle_Y_location(1) & VCC))
-- \draw_player_1_paddle|Add1~1\ = CARRY((player_1_paddle_Y_location(2) & player_1_paddle_Y_location(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player_1_paddle_Y_location(2),
	datab => player_1_paddle_Y_location(1),
	datad => VCC,
	combout => \draw_player_1_paddle|Add1~0_combout\,
	cout => \draw_player_1_paddle|Add1~1\);

-- Location: LCCOMB_X22_Y21_N2
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

-- Location: LCCOMB_X22_Y21_N4
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

-- Location: LCCOMB_X22_Y21_N6
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

-- Location: LCCOMB_X22_Y21_N8
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

-- Location: LCCOMB_X22_Y21_N10
\draw_player_1_paddle|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|Add1~10_combout\ = (player_1_paddle_Y_location(7) & (!\draw_player_1_paddle|Add1~9\)) # (!player_1_paddle_Y_location(7) & ((\draw_player_1_paddle|Add1~9\) # (GND)))
-- \draw_player_1_paddle|Add1~11\ = CARRY((!\draw_player_1_paddle|Add1~9\) # (!player_1_paddle_Y_location(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player_1_paddle_Y_location(7),
	datad => VCC,
	cin => \draw_player_1_paddle|Add1~9\,
	combout => \draw_player_1_paddle|Add1~10_combout\,
	cout => \draw_player_1_paddle|Add1~11\);

-- Location: LCCOMB_X22_Y21_N12
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

-- Location: LCCOMB_X22_Y21_N14
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

-- Location: LCCOMB_X22_Y23_N10
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

-- Location: LCCOMB_X22_Y23_N12
\VGA_Driver|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~2_combout\ = (\VGA_Driver|VS_counter\(1) & (\VGA_Driver|Add1~1\ & VCC)) # (!\VGA_Driver|VS_counter\(1) & (!\VGA_Driver|Add1~1\))
-- \VGA_Driver|Add1~3\ = CARRY((!\VGA_Driver|VS_counter\(1) & !\VGA_Driver|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(1),
	datad => VCC,
	cin => \VGA_Driver|Add1~1\,
	combout => \VGA_Driver|Add1~2_combout\,
	cout => \VGA_Driver|Add1~3\);

-- Location: LCCOMB_X22_Y23_N14
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

-- Location: LCCOMB_X22_Y23_N16
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

-- Location: LCCOMB_X22_Y23_N18
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

-- Location: LCCOMB_X22_Y23_N20
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

-- Location: LCCOMB_X22_Y23_N22
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

-- Location: LCCOMB_X22_Y23_N24
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

-- Location: LCCOMB_X22_Y23_N26
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

-- Location: LCCOMB_X22_Y23_N28
\VGA_Driver|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~18_combout\ = \VGA_Driver|Add1~17\ $ (!\VGA_Driver|VS_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Driver|VS_counter\(9),
	cin => \VGA_Driver|Add1~17\,
	combout => \VGA_Driver|Add1~18_combout\);

-- Location: LCCOMB_X21_Y21_N4
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

-- Location: LCCOMB_X21_Y21_N6
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

-- Location: LCCOMB_X21_Y21_N8
\draw_player_1_paddle|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan3~5_cout\ = CARRY((\VGA_Driver|Add1~4_combout\ & (\draw_player_1_paddle|Add1~0_combout\ & !\draw_player_1_paddle|LessThan3~3_cout\)) # (!\VGA_Driver|Add1~4_combout\ & ((\draw_player_1_paddle|Add1~0_combout\) # 
-- (!\draw_player_1_paddle|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~4_combout\,
	datab => \draw_player_1_paddle|Add1~0_combout\,
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan3~3_cout\,
	cout => \draw_player_1_paddle|LessThan3~5_cout\);

-- Location: LCCOMB_X21_Y21_N10
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

-- Location: LCCOMB_X21_Y21_N12
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

-- Location: LCCOMB_X21_Y21_N14
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

-- Location: LCCOMB_X21_Y21_N16
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

-- Location: LCCOMB_X21_Y21_N18
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

-- Location: LCCOMB_X21_Y21_N20
\draw_player_1_paddle|LessThan3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan3~17_cout\ = CARRY((\draw_player_1_paddle|Add1~12_combout\ & ((!\draw_player_1_paddle|LessThan3~15_cout\) # (!\VGA_Driver|Add1~16_combout\))) # (!\draw_player_1_paddle|Add1~12_combout\ & (!\VGA_Driver|Add1~16_combout\ & 
-- !\draw_player_1_paddle|LessThan3~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_player_1_paddle|Add1~12_combout\,
	datab => \VGA_Driver|Add1~16_combout\,
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan3~15_cout\,
	cout => \draw_player_1_paddle|LessThan3~17_cout\);

-- Location: LCCOMB_X21_Y21_N22
\draw_player_1_paddle|LessThan3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan3~18_combout\ = (\draw_player_1_paddle|Add1~14_combout\ & ((\draw_player_1_paddle|LessThan3~17_cout\) # (!\VGA_Driver|Add1~18_combout\))) # (!\draw_player_1_paddle|Add1~14_combout\ & (\draw_player_1_paddle|LessThan3~17_cout\ 
-- & !\VGA_Driver|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \draw_player_1_paddle|Add1~14_combout\,
	datad => \VGA_Driver|Add1~18_combout\,
	cin => \draw_player_1_paddle|LessThan3~17_cout\,
	combout => \draw_player_1_paddle|LessThan3~18_combout\);

-- Location: LCCOMB_X27_Y25_N8
\VGA_Driver|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add0~0_combout\ = (\VGA_Driver|HS_counter\(8)) # ((\VGA_Driver|HS_counter\(7) & ((\VGA_Driver|HS_counter\(5)) # (\VGA_Driver|HS_counter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(8),
	datab => \VGA_Driver|HS_counter\(5),
	datac => \VGA_Driver|HS_counter\(7),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|Add0~0_combout\);

-- Location: LCCOMB_X27_Y25_N18
\VGA_Driver|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add0~1_combout\ = \VGA_Driver|Add0~0_combout\ $ (\VGA_Driver|HS_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Driver|Add0~0_combout\,
	datad => \VGA_Driver|HS_counter\(9),
	combout => \VGA_Driver|Add0~1_combout\);

-- Location: LCCOMB_X29_Y25_N10
\VGA_Driver|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add0~4_combout\ = \VGA_Driver|HS_counter\(7) $ (((\VGA_Driver|HS_counter\(5)) # (\VGA_Driver|HS_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(7),
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|Add0~4_combout\);

-- Location: LCCOMB_X23_Y21_N6
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

-- Location: LCCOMB_X23_Y21_N8
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

-- Location: LCCOMB_X23_Y21_N10
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

-- Location: LCCOMB_X23_Y21_N12
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

-- Location: LCCOMB_X23_Y21_N14
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

-- Location: LCCOMB_X23_Y21_N16
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

-- Location: LCCOMB_X23_Y21_N18
\draw_player_1_paddle|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan2~13_cout\ = CARRY((\VGA_Driver|Add1~12_combout\ & (player_1_paddle_Y_location(6) & !\draw_player_1_paddle|LessThan2~11_cout\)) # (!\VGA_Driver|Add1~12_combout\ & ((player_1_paddle_Y_location(6)) # 
-- (!\draw_player_1_paddle|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~12_combout\,
	datab => player_1_paddle_Y_location(6),
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan2~11_cout\,
	cout => \draw_player_1_paddle|LessThan2~13_cout\);

-- Location: LCCOMB_X23_Y21_N20
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

-- Location: LCCOMB_X23_Y21_N22
\draw_player_1_paddle|LessThan2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan2~16_combout\ = (player_1_paddle_Y_location(8) & ((!\VGA_Driver|Add1~16_combout\) # (!\draw_player_1_paddle|LessThan2~15_cout\))) # (!player_1_paddle_Y_location(8) & (!\draw_player_1_paddle|LessThan2~15_cout\ & 
-- !\VGA_Driver|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player_1_paddle_Y_location(8),
	datad => \VGA_Driver|Add1~16_combout\,
	cin => \draw_player_1_paddle|LessThan2~15_cout\,
	combout => \draw_player_1_paddle|LessThan2~16_combout\);

-- Location: LCCOMB_X26_Y25_N2
\draw_player_1_paddle|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|always0~0_combout\ = (!\VGA_Driver|HS_counter\(4) & (\VGA_Driver|HS_counter\(5) & ((\VGA_Driver|Add1~18_combout\) # (!\draw_player_1_paddle|LessThan2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(4),
	datab => \draw_player_1_paddle|LessThan2~16_combout\,
	datac => \VGA_Driver|Add1~18_combout\,
	datad => \VGA_Driver|HS_counter\(5),
	combout => \draw_player_1_paddle|always0~0_combout\);

-- Location: LCCOMB_X27_Y25_N4
\VGA_Driver|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add0~3_combout\ = \VGA_Driver|HS_counter\(8) $ (((\VGA_Driver|HS_counter\(7) & ((\VGA_Driver|HS_counter\(5)) # (\VGA_Driver|HS_counter\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(8),
	datab => \VGA_Driver|HS_counter\(5),
	datac => \VGA_Driver|HS_counter\(7),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|Add0~3_combout\);

-- Location: LCCOMB_X29_Y25_N16
\VGA_Driver|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add0~2_combout\ = \VGA_Driver|HS_counter\(5) $ (\VGA_Driver|HS_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|Add0~2_combout\);

-- Location: LCCOMB_X26_Y25_N4
\draw_player_1_paddle|always0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|always0~1_combout\ = (!\VGA_Driver|Add0~4_combout\ & (\draw_player_1_paddle|always0~0_combout\ & (\VGA_Driver|Add0~3_combout\ & \VGA_Driver|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~4_combout\,
	datab => \draw_player_1_paddle|always0~0_combout\,
	datac => \VGA_Driver|Add0~3_combout\,
	datad => \VGA_Driver|Add0~2_combout\,
	combout => \draw_player_1_paddle|always0~1_combout\);

-- Location: LCCOMB_X40_Y21_N22
\draw_player_1_paddle|always0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|always0~3_combout\ = (\draw_player_1_paddle|always0~2_combout\ & (\draw_player_1_paddle|LessThan3~18_combout\ & (\VGA_Driver|Add0~1_combout\ & \draw_player_1_paddle|always0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_player_1_paddle|always0~2_combout\,
	datab => \draw_player_1_paddle|LessThan3~18_combout\,
	datac => \VGA_Driver|Add0~1_combout\,
	datad => \draw_player_1_paddle|always0~1_combout\,
	combout => \draw_player_1_paddle|always0~3_combout\);

-- Location: FF_X40_Y21_N23
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

-- Location: LCCOMB_X21_Y27_N12
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = AI_counter(0) $ (VCC)
-- \Add2~1\ = CARRY(AI_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AI_counter(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X21_Y27_N0
\AI_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AI_counter~1_combout\ = (!\Equal1~6_combout\ & \Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~6_combout\,
	datad => \Add2~0_combout\,
	combout => \AI_counter~1_combout\);

-- Location: FF_X21_Y27_N1
\AI_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \AI_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AI_counter(0));

-- Location: LCCOMB_X21_Y27_N14
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (AI_counter(1) & (!\Add2~1\)) # (!AI_counter(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!AI_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => AI_counter(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: FF_X21_Y27_N15
\AI_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AI_counter(1));

-- Location: LCCOMB_X21_Y27_N16
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (AI_counter(2) & (\Add2~3\ $ (GND))) # (!AI_counter(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((AI_counter(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => AI_counter(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: FF_X21_Y27_N17
\AI_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AI_counter(2));

-- Location: LCCOMB_X21_Y27_N18
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (AI_counter(3) & (!\Add2~5\)) # (!AI_counter(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!AI_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => AI_counter(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: FF_X21_Y27_N19
\AI_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AI_counter(3));

-- Location: LCCOMB_X21_Y27_N20
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (AI_counter(4) & (\Add2~7\ $ (GND))) # (!AI_counter(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((AI_counter(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => AI_counter(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X21_Y25_N24
\AI_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AI_counter~2_combout\ = (!\Equal1~6_combout\ & \Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~6_combout\,
	datad => \Add2~8_combout\,
	combout => \AI_counter~2_combout\);

-- Location: FF_X21_Y25_N25
\AI_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \AI_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AI_counter(4));

-- Location: LCCOMB_X21_Y27_N22
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (AI_counter(5) & (!\Add2~9\)) # (!AI_counter(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!AI_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AI_counter(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X21_Y25_N26
\AI_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AI_counter~3_combout\ = (\Add2~10_combout\ & !\Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datac => \Equal1~6_combout\,
	combout => \AI_counter~3_combout\);

-- Location: FF_X21_Y25_N27
\AI_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \AI_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AI_counter(5));

-- Location: LCCOMB_X21_Y27_N24
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (AI_counter(6) & (\Add2~11\ $ (GND))) # (!AI_counter(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((AI_counter(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => AI_counter(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X21_Y27_N4
\AI_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AI_counter~4_combout\ = (!\Equal1~6_combout\ & \Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~6_combout\,
	datad => \Add2~12_combout\,
	combout => \AI_counter~4_combout\);

-- Location: FF_X21_Y27_N5
\AI_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \AI_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AI_counter(6));

-- Location: LCCOMB_X21_Y27_N26
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (AI_counter(7) & (!\Add2~13\)) # (!AI_counter(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!AI_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AI_counter(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X21_Y27_N6
\AI_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AI_counter~5_combout\ = (!\Equal1~6_combout\ & \Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~6_combout\,
	datac => \Add2~14_combout\,
	combout => \AI_counter~5_combout\);

-- Location: FF_X21_Y27_N7
\AI_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \AI_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AI_counter(7));

-- Location: LCCOMB_X21_Y27_N28
\Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (AI_counter(8) & (\Add2~15\ $ (GND))) # (!AI_counter(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((AI_counter(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AI_counter(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X21_Y25_N28
\AI_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AI_counter~6_combout\ = (\Add2~16_combout\ & !\Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datac => \Equal1~6_combout\,
	combout => \AI_counter~6_combout\);

-- Location: FF_X21_Y25_N29
\AI_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \AI_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AI_counter(8));

-- Location: LCCOMB_X21_Y27_N30
\Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (AI_counter(9) & (!\Add2~17\)) # (!AI_counter(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!AI_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AI_counter(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: FF_X21_Y27_N31
\AI_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AI_counter(9));

-- Location: LCCOMB_X21_Y26_N0
\Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (AI_counter(10) & (\Add2~19\ $ (GND))) # (!AI_counter(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((AI_counter(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => AI_counter(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: FF_X21_Y26_N1
\AI_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AI_counter(10));

-- Location: LCCOMB_X21_Y26_N2
\Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (AI_counter(11) & (!\Add2~21\)) # (!AI_counter(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!AI_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => AI_counter(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X21_Y26_N24
\AI_counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AI_counter~7_combout\ = (\Add2~22_combout\ & !\Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~22_combout\,
	datac => \Equal1~6_combout\,
	combout => \AI_counter~7_combout\);

-- Location: FF_X21_Y26_N25
\AI_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \AI_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AI_counter(11));

-- Location: LCCOMB_X21_Y26_N26
\Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (AI_counter(8) & (AI_counter(11) & (!AI_counter(9) & !AI_counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AI_counter(8),
	datab => AI_counter(11),
	datac => AI_counter(9),
	datad => AI_counter(10),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X21_Y26_N4
\Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (AI_counter(12) & (\Add2~23\ $ (GND))) # (!AI_counter(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((AI_counter(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => AI_counter(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: FF_X21_Y26_N5
\AI_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add2~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AI_counter(12));

-- Location: LCCOMB_X21_Y26_N6
\Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (AI_counter(13) & (!\Add2~25\)) # (!AI_counter(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!AI_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => AI_counter(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: FF_X21_Y26_N7
\AI_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add2~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AI_counter(13));

-- Location: LCCOMB_X21_Y26_N8
\Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (AI_counter(14) & (\Add2~27\ $ (GND))) # (!AI_counter(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((AI_counter(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AI_counter(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X21_Y25_N22
\AI_counter~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AI_counter~8_combout\ = (\Add2~28_combout\ & !\Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~28_combout\,
	datac => \Equal1~6_combout\,
	combout => \AI_counter~8_combout\);

-- Location: FF_X21_Y25_N23
\AI_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \AI_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AI_counter(14));

-- Location: LCCOMB_X21_Y26_N10
\Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (AI_counter(15) & (!\Add2~29\)) # (!AI_counter(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!AI_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AI_counter(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: FF_X21_Y26_N11
\AI_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add2~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AI_counter(15));

-- Location: LCCOMB_X21_Y26_N28
\Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (AI_counter(14) & (!AI_counter(13) & (!AI_counter(12) & !AI_counter(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AI_counter(14),
	datab => AI_counter(13),
	datac => AI_counter(12),
	datad => AI_counter(15),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X21_Y26_N12
\Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (AI_counter(16) & (\Add2~31\ $ (GND))) # (!AI_counter(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((AI_counter(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AI_counter(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: FF_X21_Y26_N13
\AI_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add2~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AI_counter(16));

-- Location: LCCOMB_X21_Y26_N14
\Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (AI_counter(17) & (!\Add2~33\)) # (!AI_counter(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!AI_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => AI_counter(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X21_Y26_N20
\AI_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AI_counter~0_combout\ = (!\Equal1~6_combout\ & \Add2~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~6_combout\,
	datac => \Add2~34_combout\,
	combout => \AI_counter~0_combout\);

-- Location: FF_X21_Y26_N21
\AI_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \AI_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AI_counter(17));

-- Location: LCCOMB_X21_Y26_N16
\Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (AI_counter(18) & (\Add2~35\ $ (GND))) # (!AI_counter(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((AI_counter(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => AI_counter(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: FF_X21_Y26_N17
\AI_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add2~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AI_counter(18));

-- Location: LCCOMB_X21_Y26_N18
\Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = \Add2~37\ $ (AI_counter(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => AI_counter(19),
	cin => \Add2~37\,
	combout => \Add2~38_combout\);

-- Location: FF_X21_Y26_N19
\AI_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add2~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AI_counter(19));

-- Location: LCCOMB_X21_Y26_N22
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!AI_counter(16) & (!AI_counter(19) & (AI_counter(17) & !AI_counter(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AI_counter(16),
	datab => AI_counter(19),
	datac => AI_counter(17),
	datad => AI_counter(18),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X21_Y27_N10
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!AI_counter(1) & !AI_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => AI_counter(1),
	datad => AI_counter(0),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X21_Y27_N8
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (AI_counter(5) & (AI_counter(4) & (AI_counter(6) & AI_counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AI_counter(5),
	datab => AI_counter(4),
	datac => AI_counter(6),
	datad => AI_counter(7),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X21_Y27_N2
\Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\Equal1~1_combout\ & (!AI_counter(3) & (\Equal1~2_combout\ & !AI_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => AI_counter(3),
	datac => \Equal1~2_combout\,
	datad => AI_counter(2),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X21_Y26_N30
\Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (\Equal1~4_combout\ & (\Equal1~5_combout\ & (\Equal1~0_combout\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Equal1~5_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X17_Y23_N10
\Add22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add22~0_combout\ = ball_Y_location(0) $ (VCC)
-- \Add22~1\ = CARRY(ball_Y_location(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(0),
	datad => VCC,
	combout => \Add22~0_combout\,
	cout => \Add22~1\);

-- Location: LCCOMB_X16_Y23_N2
\Add19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~0_combout\ = ball_Y_location(0) $ (VCC)
-- \Add19~1\ = CARRY(ball_Y_location(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(0),
	datad => VCC,
	combout => \Add19~0_combout\,
	cout => \Add19~1\);

-- Location: LCCOMB_X17_Y23_N6
\Add17~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~38_combout\ = (\LessThan7~2_combout\ & (\Add22~0_combout\)) # (!\LessThan7~2_combout\ & ((\Add19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add22~0_combout\,
	datab => \Add19~0_combout\,
	datac => \LessThan7~2_combout\,
	combout => \Add17~38_combout\);

-- Location: LCCOMB_X19_Y23_N8
\Add17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~1_combout\ = ball_Y_location(0) $ (VCC)
-- \Add17~2\ = CARRY(ball_Y_location(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(0),
	datad => VCC,
	combout => \Add17~1_combout\,
	cout => \Add17~2\);

-- Location: LCCOMB_X19_Y22_N26
\Add17~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~39_combout\ = (\ball_X_location[4]~0_combout\ & ((\LessThan6~3_combout\ & (\Add17~38_combout\)) # (!\LessThan6~3_combout\ & ((\Add17~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~38_combout\,
	datab => \Add17~1_combout\,
	datac => \LessThan6~3_combout\,
	datad => \ball_X_location[4]~0_combout\,
	combout => \Add17~39_combout\);

-- Location: LCCOMB_X21_Y25_N30
\b_velocity_X[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b_velocity_X[1]~0_combout\ = b_velocity_X(1) $ (((\Equal1~6_combout\ & !\player_2_paddle_Y_location[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~6_combout\,
	datac => b_velocity_X(1),
	datad => \player_2_paddle_Y_location[3]~0_combout\,
	combout => \b_velocity_X[1]~0_combout\);

-- Location: FF_X21_Y25_N31
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

-- Location: LCCOMB_X23_Y25_N0
\Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = ball_X_location(1) $ (VCC)
-- \Add9~1\ = CARRY(ball_X_location(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(1),
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X21_Y25_N0
\Add21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add21~0_combout\ = ball_X_location(0) $ (VCC)
-- \Add21~1\ = CARRY(ball_X_location(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(0),
	datad => VCC,
	combout => \Add21~0_combout\,
	cout => \Add21~1\);

-- Location: LCCOMB_X22_Y25_N6
\ball_X_location[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[0]~2_combout\ = (\LessThan7~2_combout\ & (\Add21~0_combout\ & (\ball_X_location[4]~0_combout\ & \LessThan6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~2_combout\,
	datab => \Add21~0_combout\,
	datac => \ball_X_location[4]~0_combout\,
	datad => \LessThan6~3_combout\,
	combout => \ball_X_location[0]~2_combout\);

-- Location: LCCOMB_X22_Y25_N8
\ball_X_location[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[0]~4_combout\ = (\ball_X_location[0]~3_combout\ & ((\ball_X_location[0]~2_combout\) # ((\b_velocity_Y[4]~0_combout\ & ball_X_location(0))))) # (!\ball_X_location[0]~3_combout\ & (((ball_X_location(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_X_location[0]~2_combout\,
	datab => \b_velocity_Y[4]~0_combout\,
	datac => ball_X_location(0),
	datad => \ball_X_location[0]~3_combout\,
	combout => \ball_X_location[0]~4_combout\);

-- Location: FF_X22_Y25_N9
\ball_X_location[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ball_X_location[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(0));

-- Location: LCCOMB_X21_Y25_N2
\Add21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add21~2_combout\ = (b_velocity_X(1) & ((ball_X_location(1) & (!\Add21~1\)) # (!ball_X_location(1) & ((\Add21~1\) # (GND))))) # (!b_velocity_X(1) & ((ball_X_location(1) & (\Add21~1\ & VCC)) # (!ball_X_location(1) & (!\Add21~1\))))
-- \Add21~3\ = CARRY((b_velocity_X(1) & ((!\Add21~1\) # (!ball_X_location(1)))) # (!b_velocity_X(1) & (!ball_X_location(1) & !\Add21~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_velocity_X(1),
	datab => ball_X_location(1),
	datad => VCC,
	cin => \Add21~1\,
	combout => \Add21~2_combout\,
	cout => \Add21~3\);

-- Location: LCCOMB_X22_Y25_N24
\Add9~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~26_combout\ = (\player_2_paddle_Y_location[3]~0_combout\ & (((\ball_X_location[4]~0_combout\ & \Add21~2_combout\)))) # (!\player_2_paddle_Y_location[3]~0_combout\ & (\Add9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player_2_paddle_Y_location[3]~0_combout\,
	datab => \Add9~0_combout\,
	datac => \ball_X_location[4]~0_combout\,
	datad => \Add21~2_combout\,
	combout => \Add9~26_combout\);

-- Location: LCCOMB_X22_Y25_N4
\ball_X_location[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[9]~1_combout\ = (\Equal1~6_combout\ & ((!\b_velocity_Y[4]~0_combout\) # (!\player_2_paddle_Y_location[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~6_combout\,
	datac => \player_2_paddle_Y_location[3]~0_combout\,
	datad => \b_velocity_Y[4]~0_combout\,
	combout => \ball_X_location[9]~1_combout\);

-- Location: FF_X22_Y25_N25
\ball_X_location[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add9~26_combout\,
	ena => \ball_X_location[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(1));

-- Location: LCCOMB_X21_Y25_N4
\Add21~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add21~4_combout\ = ((b_velocity_X(1) $ (ball_X_location(2) $ (\Add21~3\)))) # (GND)
-- \Add21~5\ = CARRY((b_velocity_X(1) & (ball_X_location(2) & !\Add21~3\)) # (!b_velocity_X(1) & ((ball_X_location(2)) # (!\Add21~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_velocity_X(1),
	datab => ball_X_location(2),
	datad => VCC,
	cin => \Add21~3\,
	combout => \Add21~4_combout\,
	cout => \Add21~5\);

-- Location: LCCOMB_X23_Y25_N2
\Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (ball_X_location(2) & ((\always0~4_combout\ & (!\Add9~1\)) # (!\always0~4_combout\ & (\Add9~1\ & VCC)))) # (!ball_X_location(2) & ((\always0~4_combout\ & ((\Add9~1\) # (GND))) # (!\always0~4_combout\ & (!\Add9~1\))))
-- \Add9~3\ = CARRY((ball_X_location(2) & (\always0~4_combout\ & !\Add9~1\)) # (!ball_X_location(2) & ((\always0~4_combout\) # (!\Add9~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(2),
	datab => \always0~4_combout\,
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X22_Y25_N30
\Add9~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~25_combout\ = (\player_2_paddle_Y_location[3]~0_combout\ & (\Add21~4_combout\ & (\ball_X_location[4]~0_combout\))) # (!\player_2_paddle_Y_location[3]~0_combout\ & (((\Add9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player_2_paddle_Y_location[3]~0_combout\,
	datab => \Add21~4_combout\,
	datac => \ball_X_location[4]~0_combout\,
	datad => \Add9~2_combout\,
	combout => \Add9~25_combout\);

-- Location: FF_X22_Y25_N31
\ball_X_location[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add9~25_combout\,
	ena => \ball_X_location[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(2));

-- Location: LCCOMB_X21_Y25_N6
\Add21~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add21~6_combout\ = (ball_X_location(3) & ((b_velocity_X(1) & ((\Add21~5\) # (GND))) # (!b_velocity_X(1) & (!\Add21~5\)))) # (!ball_X_location(3) & ((b_velocity_X(1) & (!\Add21~5\)) # (!b_velocity_X(1) & (\Add21~5\ & VCC))))
-- \Add21~7\ = CARRY((ball_X_location(3) & ((b_velocity_X(1)) # (!\Add21~5\))) # (!ball_X_location(3) & (b_velocity_X(1) & !\Add21~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(3),
	datab => b_velocity_X(1),
	datad => VCC,
	cin => \Add21~5\,
	combout => \Add21~6_combout\,
	cout => \Add21~7\);

-- Location: LCCOMB_X23_Y25_N4
\Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = ((\always0~4_combout\ $ (ball_X_location(3) $ (!\Add9~3\)))) # (GND)
-- \Add9~5\ = CARRY((\always0~4_combout\ & (!ball_X_location(3) & !\Add9~3\)) # (!\always0~4_combout\ & ((!\Add9~3\) # (!ball_X_location(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~4_combout\,
	datab => ball_X_location(3),
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X22_Y25_N28
\Add9~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~24_combout\ = (\player_2_paddle_Y_location[3]~0_combout\ & (((!\ball_X_location[4]~0_combout\)) # (!\Add21~6_combout\))) # (!\player_2_paddle_Y_location[3]~0_combout\ & (((!\Add9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player_2_paddle_Y_location[3]~0_combout\,
	datab => \Add21~6_combout\,
	datac => \ball_X_location[4]~0_combout\,
	datad => \Add9~4_combout\,
	combout => \Add9~24_combout\);

-- Location: FF_X22_Y25_N29
\ball_X_location[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add9~24_combout\,
	ena => \ball_X_location[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(3));

-- Location: LCCOMB_X21_Y25_N8
\Add21~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add21~8_combout\ = ((b_velocity_X(1) $ (ball_X_location(4) $ (!\Add21~7\)))) # (GND)
-- \Add21~9\ = CARRY((b_velocity_X(1) & (!ball_X_location(4) & !\Add21~7\)) # (!b_velocity_X(1) & ((!\Add21~7\) # (!ball_X_location(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_velocity_X(1),
	datab => ball_X_location(4),
	datad => VCC,
	cin => \Add21~7\,
	combout => \Add21~8_combout\,
	cout => \Add21~9\);

-- Location: LCCOMB_X23_Y25_N6
\Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (\always0~4_combout\ & ((ball_X_location(4) & ((\Add9~5\) # (GND))) # (!ball_X_location(4) & (!\Add9~5\)))) # (!\always0~4_combout\ & ((ball_X_location(4) & (!\Add9~5\)) # (!ball_X_location(4) & (\Add9~5\ & VCC))))
-- \Add9~7\ = CARRY((\always0~4_combout\ & ((ball_X_location(4)) # (!\Add9~5\))) # (!\always0~4_combout\ & (ball_X_location(4) & !\Add9~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~4_combout\,
	datab => ball_X_location(4),
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X23_Y25_N26
\Add9~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~23_combout\ = (\player_2_paddle_Y_location[3]~0_combout\ & (((!\ball_X_location[4]~0_combout\)) # (!\Add21~8_combout\))) # (!\player_2_paddle_Y_location[3]~0_combout\ & (((!\Add9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add21~8_combout\,
	datab => \player_2_paddle_Y_location[3]~0_combout\,
	datac => \ball_X_location[4]~0_combout\,
	datad => \Add9~6_combout\,
	combout => \Add9~23_combout\);

-- Location: FF_X23_Y25_N27
\ball_X_location[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add9~23_combout\,
	ena => \ball_X_location[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(4));

-- Location: LCCOMB_X23_Y25_N8
\Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = ((\always0~4_combout\ $ (ball_X_location(5) $ (\Add9~7\)))) # (GND)
-- \Add9~9\ = CARRY((\always0~4_combout\ & (ball_X_location(5) & !\Add9~7\)) # (!\always0~4_combout\ & ((ball_X_location(5)) # (!\Add9~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~4_combout\,
	datab => ball_X_location(5),
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X21_Y25_N10
\Add21~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add21~10_combout\ = (b_velocity_X(1) & ((ball_X_location(5) & (!\Add21~9\)) # (!ball_X_location(5) & ((\Add21~9\) # (GND))))) # (!b_velocity_X(1) & ((ball_X_location(5) & (\Add21~9\ & VCC)) # (!ball_X_location(5) & (!\Add21~9\))))
-- \Add21~11\ = CARRY((b_velocity_X(1) & ((!\Add21~9\) # (!ball_X_location(5)))) # (!b_velocity_X(1) & (!ball_X_location(5) & !\Add21~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_velocity_X(1),
	datab => ball_X_location(5),
	datad => VCC,
	cin => \Add21~9\,
	combout => \Add21~10_combout\,
	cout => \Add21~11\);

-- Location: LCCOMB_X22_Y25_N26
\Add9~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~22_combout\ = (\player_2_paddle_Y_location[3]~0_combout\ & (((\ball_X_location[4]~0_combout\ & \Add21~10_combout\)))) # (!\player_2_paddle_Y_location[3]~0_combout\ & (\Add9~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player_2_paddle_Y_location[3]~0_combout\,
	datab => \Add9~8_combout\,
	datac => \ball_X_location[4]~0_combout\,
	datad => \Add21~10_combout\,
	combout => \Add9~22_combout\);

-- Location: FF_X22_Y25_N27
\ball_X_location[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add9~22_combout\,
	ena => \ball_X_location[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(5));

-- Location: LCCOMB_X23_Y25_N10
\Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (\always0~4_combout\ & ((ball_X_location(6) & ((\Add9~9\) # (GND))) # (!ball_X_location(6) & (!\Add9~9\)))) # (!\always0~4_combout\ & ((ball_X_location(6) & (!\Add9~9\)) # (!ball_X_location(6) & (\Add9~9\ & VCC))))
-- \Add9~11\ = CARRY((\always0~4_combout\ & ((ball_X_location(6)) # (!\Add9~9\))) # (!\always0~4_combout\ & (ball_X_location(6) & !\Add9~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~4_combout\,
	datab => ball_X_location(6),
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X21_Y25_N12
\Add21~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add21~12_combout\ = ((b_velocity_X(1) $ (ball_X_location(6) $ (!\Add21~11\)))) # (GND)
-- \Add21~13\ = CARRY((b_velocity_X(1) & (!ball_X_location(6) & !\Add21~11\)) # (!b_velocity_X(1) & ((!\Add21~11\) # (!ball_X_location(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_velocity_X(1),
	datab => ball_X_location(6),
	datad => VCC,
	cin => \Add21~11\,
	combout => \Add21~12_combout\,
	cout => \Add21~13\);

-- Location: LCCOMB_X23_Y25_N24
\Add9~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~21_combout\ = (\player_2_paddle_Y_location[3]~0_combout\ & (((\ball_X_location[4]~0_combout\ & !\Add21~12_combout\)))) # (!\player_2_paddle_Y_location[3]~0_combout\ & (!\Add9~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~10_combout\,
	datab => \player_2_paddle_Y_location[3]~0_combout\,
	datac => \ball_X_location[4]~0_combout\,
	datad => \Add21~12_combout\,
	combout => \Add9~21_combout\);

-- Location: FF_X23_Y25_N25
\ball_X_location[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add9~21_combout\,
	ena => \ball_X_location[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(6));

-- Location: LCCOMB_X21_Y25_N14
\Add21~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add21~14_combout\ = (b_velocity_X(1) & ((ball_X_location(7) & (!\Add21~13\)) # (!ball_X_location(7) & ((\Add21~13\) # (GND))))) # (!b_velocity_X(1) & ((ball_X_location(7) & (\Add21~13\ & VCC)) # (!ball_X_location(7) & (!\Add21~13\))))
-- \Add21~15\ = CARRY((b_velocity_X(1) & ((!\Add21~13\) # (!ball_X_location(7)))) # (!b_velocity_X(1) & (!ball_X_location(7) & !\Add21~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_velocity_X(1),
	datab => ball_X_location(7),
	datad => VCC,
	cin => \Add21~13\,
	combout => \Add21~14_combout\,
	cout => \Add21~15\);

-- Location: LCCOMB_X23_Y25_N12
\Add9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = ((\always0~4_combout\ $ (ball_X_location(7) $ (\Add9~11\)))) # (GND)
-- \Add9~13\ = CARRY((\always0~4_combout\ & (ball_X_location(7) & !\Add9~11\)) # (!\always0~4_combout\ & ((ball_X_location(7)) # (!\Add9~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~4_combout\,
	datab => ball_X_location(7),
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: LCCOMB_X23_Y25_N30
\Add9~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~20_combout\ = (\player_2_paddle_Y_location[3]~0_combout\ & (\Add21~14_combout\ & (\ball_X_location[4]~0_combout\))) # (!\player_2_paddle_Y_location[3]~0_combout\ & (((\Add9~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add21~14_combout\,
	datab => \player_2_paddle_Y_location[3]~0_combout\,
	datac => \ball_X_location[4]~0_combout\,
	datad => \Add9~12_combout\,
	combout => \Add9~20_combout\);

-- Location: FF_X23_Y25_N31
\ball_X_location[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add9~20_combout\,
	ena => \ball_X_location[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(7));

-- Location: LCCOMB_X23_Y25_N14
\Add9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = (ball_X_location(8) & ((\always0~4_combout\ & (!\Add9~13\)) # (!\always0~4_combout\ & (\Add9~13\ & VCC)))) # (!ball_X_location(8) & ((\always0~4_combout\ & ((\Add9~13\) # (GND))) # (!\always0~4_combout\ & (!\Add9~13\))))
-- \Add9~15\ = CARRY((ball_X_location(8) & (\always0~4_combout\ & !\Add9~13\)) # (!ball_X_location(8) & ((\always0~4_combout\) # (!\Add9~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(8),
	datab => \always0~4_combout\,
	datad => VCC,
	cin => \Add9~13\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: LCCOMB_X23_Y25_N16
\Add9~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = ((\always0~4_combout\ $ (ball_X_location(9) $ (!\Add9~15\)))) # (GND)
-- \Add9~17\ = CARRY((\always0~4_combout\ & (!ball_X_location(9) & !\Add9~15\)) # (!\always0~4_combout\ & ((!\Add9~15\) # (!ball_X_location(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~4_combout\,
	datab => ball_X_location(9),
	datad => VCC,
	cin => \Add9~15\,
	combout => \Add9~16_combout\,
	cout => \Add9~17\);

-- Location: LCCOMB_X23_Y25_N18
\Add9~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~27_combout\ = \always0~4_combout\ $ (\Add9~17\ $ (!ball_X_location(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~4_combout\,
	datad => ball_X_location(10),
	cin => \Add9~17\,
	combout => \Add9~27_combout\);

-- Location: LCCOMB_X21_Y25_N16
\Add21~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add21~16_combout\ = ((b_velocity_X(1) $ (ball_X_location(8) $ (\Add21~15\)))) # (GND)
-- \Add21~17\ = CARRY((b_velocity_X(1) & (ball_X_location(8) & !\Add21~15\)) # (!b_velocity_X(1) & ((ball_X_location(8)) # (!\Add21~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_velocity_X(1),
	datab => ball_X_location(8),
	datad => VCC,
	cin => \Add21~15\,
	combout => \Add21~16_combout\,
	cout => \Add21~17\);

-- Location: LCCOMB_X21_Y25_N18
\Add21~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add21~18_combout\ = (b_velocity_X(1) & ((ball_X_location(9) & ((\Add21~17\) # (GND))) # (!ball_X_location(9) & (!\Add21~17\)))) # (!b_velocity_X(1) & ((ball_X_location(9) & (!\Add21~17\)) # (!ball_X_location(9) & (\Add21~17\ & VCC))))
-- \Add21~19\ = CARRY((b_velocity_X(1) & ((ball_X_location(9)) # (!\Add21~17\))) # (!b_velocity_X(1) & (ball_X_location(9) & !\Add21~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_velocity_X(1),
	datab => ball_X_location(9),
	datad => VCC,
	cin => \Add21~17\,
	combout => \Add21~18_combout\,
	cout => \Add21~19\);

-- Location: LCCOMB_X21_Y25_N20
\Add21~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add21~20_combout\ = b_velocity_X(1) $ (\Add21~19\ $ (ball_X_location(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_velocity_X(1),
	datad => ball_X_location(10),
	cin => \Add21~19\,
	combout => \Add21~20_combout\);

-- Location: LCCOMB_X23_Y25_N28
\Add9~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~29_combout\ = (\player_2_paddle_Y_location[3]~0_combout\ & (\ball_X_location[4]~0_combout\ & ((\Add21~20_combout\)))) # (!\player_2_paddle_Y_location[3]~0_combout\ & (((\Add9~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_X_location[4]~0_combout\,
	datab => \Add9~27_combout\,
	datac => \Add21~20_combout\,
	datad => \player_2_paddle_Y_location[3]~0_combout\,
	combout => \Add9~29_combout\);

-- Location: FF_X23_Y25_N29
\ball_X_location[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add9~29_combout\,
	ena => \ball_X_location[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(10));

-- Location: LCCOMB_X21_Y24_N4
\Add10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = (ball_X_location(1) & (ball_X_location(0) $ (VCC))) # (!ball_X_location(1) & (ball_X_location(0) & VCC))
-- \Add10~1\ = CARRY((ball_X_location(1) & ball_X_location(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(1),
	datab => ball_X_location(0),
	datad => VCC,
	combout => \Add10~0_combout\,
	cout => \Add10~1\);

-- Location: LCCOMB_X21_Y24_N6
\Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = (ball_X_location(2) & (!\Add10~1\)) # (!ball_X_location(2) & ((\Add10~1\) # (GND)))
-- \Add10~3\ = CARRY((!\Add10~1\) # (!ball_X_location(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(2),
	datad => VCC,
	cin => \Add10~1\,
	combout => \Add10~2_combout\,
	cout => \Add10~3\);

-- Location: LCCOMB_X21_Y24_N8
\Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = (ball_X_location(3) & (!\Add10~3\ & VCC)) # (!ball_X_location(3) & (\Add10~3\ $ (GND)))
-- \Add10~5\ = CARRY((!ball_X_location(3) & !\Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(3),
	datad => VCC,
	cin => \Add10~3\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: LCCOMB_X21_Y24_N10
\Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~6_combout\ = (ball_X_location(4) & ((\Add10~5\) # (GND))) # (!ball_X_location(4) & (!\Add10~5\))
-- \Add10~7\ = CARRY((ball_X_location(4)) # (!\Add10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(4),
	datad => VCC,
	cin => \Add10~5\,
	combout => \Add10~6_combout\,
	cout => \Add10~7\);

-- Location: LCCOMB_X21_Y24_N12
\Add10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~8_combout\ = (ball_X_location(5) & (\Add10~7\ $ (GND))) # (!ball_X_location(5) & (!\Add10~7\ & VCC))
-- \Add10~9\ = CARRY((ball_X_location(5) & !\Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(5),
	datad => VCC,
	cin => \Add10~7\,
	combout => \Add10~8_combout\,
	cout => \Add10~9\);

-- Location: LCCOMB_X21_Y24_N14
\Add10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~10_combout\ = (ball_X_location(6) & ((\Add10~9\) # (GND))) # (!ball_X_location(6) & (!\Add10~9\))
-- \Add10~11\ = CARRY((ball_X_location(6)) # (!\Add10~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(6),
	datad => VCC,
	cin => \Add10~9\,
	combout => \Add10~10_combout\,
	cout => \Add10~11\);

-- Location: LCCOMB_X21_Y24_N16
\Add10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~12_combout\ = (ball_X_location(7) & (\Add10~11\ $ (GND))) # (!ball_X_location(7) & (!\Add10~11\ & VCC))
-- \Add10~13\ = CARRY((ball_X_location(7) & !\Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(7),
	datad => VCC,
	cin => \Add10~11\,
	combout => \Add10~12_combout\,
	cout => \Add10~13\);

-- Location: LCCOMB_X21_Y24_N18
\Add10~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~14_combout\ = (ball_X_location(8) & (!\Add10~13\)) # (!ball_X_location(8) & ((\Add10~13\) # (GND)))
-- \Add10~15\ = CARRY((!\Add10~13\) # (!ball_X_location(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(8),
	datad => VCC,
	cin => \Add10~13\,
	combout => \Add10~14_combout\,
	cout => \Add10~15\);

-- Location: LCCOMB_X21_Y24_N20
\Add10~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~16_combout\ = (ball_X_location(9) & (!\Add10~15\ & VCC)) # (!ball_X_location(9) & (\Add10~15\ $ (GND)))
-- \Add10~17\ = CARRY((!ball_X_location(9) & !\Add10~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(9),
	datad => VCC,
	cin => \Add10~15\,
	combout => \Add10~16_combout\,
	cout => \Add10~17\);

-- Location: LCCOMB_X21_Y24_N22
\Add10~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~18_combout\ = (ball_X_location(10) & (!\Add10~17\)) # (!ball_X_location(10) & ((\Add10~17\) # (GND)))
-- \Add10~19\ = CARRY((!\Add10~17\) # (!ball_X_location(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(10),
	datad => VCC,
	cin => \Add10~17\,
	combout => \Add10~18_combout\,
	cout => \Add10~19\);

-- Location: LCCOMB_X21_Y24_N24
\Add10~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~20_combout\ = !\Add10~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add10~19\,
	combout => \Add10~20_combout\);

-- Location: LCCOMB_X21_Y24_N2
\always0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always0~7_combout\ = ((\Add10~14_combout\) # ((\Add10~12_combout\) # (!\Add10~10_combout\))) # (!\Add10~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~16_combout\,
	datab => \Add10~14_combout\,
	datac => \Add10~10_combout\,
	datad => \Add10~12_combout\,
	combout => \always0~7_combout\);

-- Location: LCCOMB_X21_Y24_N28
\always0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always0~8_combout\ = (\Add10~20_combout\) # ((\Add10~18_combout\) # (\always0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add10~20_combout\,
	datac => \Add10~18_combout\,
	datad => \always0~7_combout\,
	combout => \always0~8_combout\);

-- Location: LCCOMB_X21_Y24_N26
\always0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always0~6_combout\ = (((\Add10~2_combout\) # (!\Add10~4_combout\)) # (!\Add10~8_combout\)) # (!\Add10~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~6_combout\,
	datab => \Add10~8_combout\,
	datac => \Add10~4_combout\,
	datad => \Add10~2_combout\,
	combout => \always0~6_combout\);

-- Location: LCCOMB_X16_Y25_N26
\player_2_paddle_Y_location~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \player_2_paddle_Y_location~11_combout\ = (\Add5~22_combout\ & ((\ball_X_location[4]~0_combout\) # (!\player_2_paddle_Y_location[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~22_combout\,
	datac => \player_2_paddle_Y_location[3]~0_combout\,
	datad => \ball_X_location[4]~0_combout\,
	combout => \player_2_paddle_Y_location~11_combout\);

-- Location: FF_X16_Y25_N27
\player_2_paddle_Y_location[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \player_2_paddle_Y_location~11_combout\,
	ena => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_2_paddle_Y_location(10));

-- Location: LCCOMB_X17_Y25_N6
\Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = player_2_paddle_Y_location(0) $ (VCC)
-- \Add5~1\ = CARRY(player_2_paddle_Y_location(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => player_2_paddle_Y_location(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X17_Y25_N30
\Add5~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~32_combout\ = (\Equal1~6_combout\ & (\Add5~0_combout\)) # (!\Equal1~6_combout\ & ((player_2_paddle_Y_location(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => player_2_paddle_Y_location(0),
	datad => \Equal1~6_combout\,
	combout => \Add5~32_combout\);

-- Location: LCCOMB_X17_Y25_N0
\player_2_paddle_Y_location~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \player_2_paddle_Y_location~10_combout\ = (\Add5~32_combout\ & ((\ball_X_location[4]~0_combout\) # (!\player_2_paddle_Y_location[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~32_combout\,
	datab => \player_2_paddle_Y_location[3]~0_combout\,
	datac => \ball_X_location[4]~0_combout\,
	combout => \player_2_paddle_Y_location~10_combout\);

-- Location: FF_X17_Y25_N1
\player_2_paddle_Y_location[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \player_2_paddle_Y_location~10_combout\,
	ena => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_2_paddle_Y_location(0));

-- Location: LCCOMB_X17_Y25_N8
\Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (player_2_paddle_Y_location(1) & ((b_velocity_Y(1) & (\Add5~1\ & VCC)) # (!b_velocity_Y(1) & (!\Add5~1\)))) # (!player_2_paddle_Y_location(1) & ((b_velocity_Y(1) & (!\Add5~1\)) # (!b_velocity_Y(1) & ((\Add5~1\) # (GND)))))
-- \Add5~3\ = CARRY((player_2_paddle_Y_location(1) & (!b_velocity_Y(1) & !\Add5~1\)) # (!player_2_paddle_Y_location(1) & ((!\Add5~1\) # (!b_velocity_Y(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_2_paddle_Y_location(1),
	datab => b_velocity_Y(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X15_Y25_N30
\Add5~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~31_combout\ = (\Equal1~6_combout\ & (\Add5~2_combout\)) # (!\Equal1~6_combout\ & ((player_2_paddle_Y_location(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datac => player_2_paddle_Y_location(1),
	datad => \Equal1~6_combout\,
	combout => \Add5~31_combout\);

-- Location: LCCOMB_X15_Y25_N22
\player_2_paddle_Y_location~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \player_2_paddle_Y_location~9_combout\ = (\Add5~31_combout\ & ((\ball_X_location[4]~0_combout\) # (!\player_2_paddle_Y_location[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \player_2_paddle_Y_location[3]~0_combout\,
	datac => \Add5~31_combout\,
	datad => \ball_X_location[4]~0_combout\,
	combout => \player_2_paddle_Y_location~9_combout\);

-- Location: FF_X15_Y25_N23
\player_2_paddle_Y_location[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \player_2_paddle_Y_location~9_combout\,
	ena => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_2_paddle_Y_location(1));

-- Location: LCCOMB_X17_Y25_N10
\Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = ((player_2_paddle_Y_location(2) $ (b_velocity_Y(1) $ (!\Add5~3\)))) # (GND)
-- \Add5~5\ = CARRY((player_2_paddle_Y_location(2) & ((b_velocity_Y(1)) # (!\Add5~3\))) # (!player_2_paddle_Y_location(2) & (b_velocity_Y(1) & !\Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_2_paddle_Y_location(2),
	datab => b_velocity_Y(1),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X16_Y25_N30
\Add5~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = (\Equal1~6_combout\ & ((\Add5~4_combout\))) # (!\Equal1~6_combout\ & (player_2_paddle_Y_location(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => player_2_paddle_Y_location(2),
	datac => \Add5~4_combout\,
	datad => \Equal1~6_combout\,
	combout => \Add5~30_combout\);

-- Location: LCCOMB_X16_Y25_N24
\player_2_paddle_Y_location~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \player_2_paddle_Y_location~8_combout\ = (\Add5~30_combout\ & ((\ball_X_location[4]~0_combout\) # (!\player_2_paddle_Y_location[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~30_combout\,
	datac => \player_2_paddle_Y_location[3]~0_combout\,
	datad => \ball_X_location[4]~0_combout\,
	combout => \player_2_paddle_Y_location~8_combout\);

-- Location: FF_X16_Y25_N25
\player_2_paddle_Y_location[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \player_2_paddle_Y_location~8_combout\,
	ena => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_2_paddle_Y_location(2));

-- Location: LCCOMB_X17_Y25_N12
\Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (player_2_paddle_Y_location(3) & ((b_velocity_Y(1) & (\Add5~5\ & VCC)) # (!b_velocity_Y(1) & (!\Add5~5\)))) # (!player_2_paddle_Y_location(3) & ((b_velocity_Y(1) & (!\Add5~5\)) # (!b_velocity_Y(1) & ((\Add5~5\) # (GND)))))
-- \Add5~7\ = CARRY((player_2_paddle_Y_location(3) & (!b_velocity_Y(1) & !\Add5~5\)) # (!player_2_paddle_Y_location(3) & ((!\Add5~5\) # (!b_velocity_Y(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_2_paddle_Y_location(3),
	datab => b_velocity_Y(1),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X17_Y25_N4
\Add5~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~29_combout\ = (\Equal1~6_combout\ & (\Add5~6_combout\)) # (!\Equal1~6_combout\ & ((player_2_paddle_Y_location(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~6_combout\,
	datab => player_2_paddle_Y_location(3),
	datad => \Equal1~6_combout\,
	combout => \Add5~29_combout\);

-- Location: LCCOMB_X16_Y25_N22
\player_2_paddle_Y_location~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \player_2_paddle_Y_location~7_combout\ = (\Add5~29_combout\ & ((\ball_X_location[4]~0_combout\) # (!\player_2_paddle_Y_location[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~29_combout\,
	datac => \player_2_paddle_Y_location[3]~0_combout\,
	datad => \ball_X_location[4]~0_combout\,
	combout => \player_2_paddle_Y_location~7_combout\);

-- Location: FF_X16_Y25_N23
\player_2_paddle_Y_location[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \player_2_paddle_Y_location~7_combout\,
	ena => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_2_paddle_Y_location(3));

-- Location: LCCOMB_X17_Y25_N14
\Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = ((player_2_paddle_Y_location(4) $ (b_velocity_Y(1) $ (!\Add5~7\)))) # (GND)
-- \Add5~9\ = CARRY((player_2_paddle_Y_location(4) & ((b_velocity_Y(1)) # (!\Add5~7\))) # (!player_2_paddle_Y_location(4) & (b_velocity_Y(1) & !\Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_2_paddle_Y_location(4),
	datab => b_velocity_Y(1),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X15_Y25_N28
\Add5~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = (\Equal1~6_combout\ & ((\Add5~8_combout\))) # (!\Equal1~6_combout\ & (player_2_paddle_Y_location(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => player_2_paddle_Y_location(4),
	datac => \Add5~8_combout\,
	datad => \Equal1~6_combout\,
	combout => \Add5~28_combout\);

-- Location: LCCOMB_X15_Y25_N20
\player_2_paddle_Y_location~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \player_2_paddle_Y_location~6_combout\ = (\Add5~28_combout\) # ((\player_2_paddle_Y_location[3]~0_combout\ & !\ball_X_location[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~28_combout\,
	datac => \player_2_paddle_Y_location[3]~0_combout\,
	datad => \ball_X_location[4]~0_combout\,
	combout => \player_2_paddle_Y_location~6_combout\);

-- Location: FF_X15_Y25_N21
\player_2_paddle_Y_location[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \player_2_paddle_Y_location~6_combout\,
	ena => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_2_paddle_Y_location(4));

-- Location: LCCOMB_X17_Y25_N16
\Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (player_2_paddle_Y_location(5) & ((b_velocity_Y(1) & (\Add5~9\ & VCC)) # (!b_velocity_Y(1) & (!\Add5~9\)))) # (!player_2_paddle_Y_location(5) & ((b_velocity_Y(1) & (!\Add5~9\)) # (!b_velocity_Y(1) & ((\Add5~9\) # (GND)))))
-- \Add5~11\ = CARRY((player_2_paddle_Y_location(5) & (!b_velocity_Y(1) & !\Add5~9\)) # (!player_2_paddle_Y_location(5) & ((!\Add5~9\) # (!b_velocity_Y(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_2_paddle_Y_location(5),
	datab => b_velocity_Y(1),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X15_Y25_N26
\Add5~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~27_combout\ = (\Equal1~6_combout\ & (\Add5~10_combout\)) # (!\Equal1~6_combout\ & ((player_2_paddle_Y_location(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~6_combout\,
	datab => \Add5~10_combout\,
	datad => player_2_paddle_Y_location(5),
	combout => \Add5~27_combout\);

-- Location: LCCOMB_X15_Y25_N18
\player_2_paddle_Y_location~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \player_2_paddle_Y_location~5_combout\ = (\Add5~27_combout\) # ((\player_2_paddle_Y_location[3]~0_combout\ & !\ball_X_location[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~27_combout\,
	datac => \player_2_paddle_Y_location[3]~0_combout\,
	datad => \ball_X_location[4]~0_combout\,
	combout => \player_2_paddle_Y_location~5_combout\);

-- Location: FF_X15_Y25_N19
\player_2_paddle_Y_location[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \player_2_paddle_Y_location~5_combout\,
	ena => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_2_paddle_Y_location(5));

-- Location: LCCOMB_X17_Y25_N18
\Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = ((player_2_paddle_Y_location(6) $ (b_velocity_Y(1) $ (!\Add5~11\)))) # (GND)
-- \Add5~13\ = CARRY((player_2_paddle_Y_location(6) & ((b_velocity_Y(1)) # (!\Add5~11\))) # (!player_2_paddle_Y_location(6) & (b_velocity_Y(1) & !\Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_2_paddle_Y_location(6),
	datab => b_velocity_Y(1),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X19_Y25_N18
\Add5~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (\Equal1~6_combout\ & (\Add5~12_combout\)) # (!\Equal1~6_combout\ & ((player_2_paddle_Y_location(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~12_combout\,
	datac => \Equal1~6_combout\,
	datad => player_2_paddle_Y_location(6),
	combout => \Add5~26_combout\);

-- Location: LCCOMB_X19_Y25_N22
\player_2_paddle_Y_location~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \player_2_paddle_Y_location~4_combout\ = (\Add5~26_combout\) # ((\player_2_paddle_Y_location[3]~0_combout\ & !\ball_X_location[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~26_combout\,
	datac => \player_2_paddle_Y_location[3]~0_combout\,
	datad => \ball_X_location[4]~0_combout\,
	combout => \player_2_paddle_Y_location~4_combout\);

-- Location: FF_X19_Y25_N23
\player_2_paddle_Y_location[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \player_2_paddle_Y_location~4_combout\,
	ena => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_2_paddle_Y_location(6));

-- Location: LCCOMB_X17_Y25_N20
\Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (player_2_paddle_Y_location(7) & ((b_velocity_Y(1) & (\Add5~13\ & VCC)) # (!b_velocity_Y(1) & (!\Add5~13\)))) # (!player_2_paddle_Y_location(7) & ((b_velocity_Y(1) & (!\Add5~13\)) # (!b_velocity_Y(1) & ((\Add5~13\) # (GND)))))
-- \Add5~15\ = CARRY((player_2_paddle_Y_location(7) & (!b_velocity_Y(1) & !\Add5~13\)) # (!player_2_paddle_Y_location(7) & ((!\Add5~13\) # (!b_velocity_Y(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_2_paddle_Y_location(7),
	datab => b_velocity_Y(1),
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X17_Y25_N28
\Add5~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~25_combout\ = (\Equal1~6_combout\ & (\Add5~14_combout\)) # (!\Equal1~6_combout\ & ((player_2_paddle_Y_location(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~14_combout\,
	datac => player_2_paddle_Y_location(7),
	datad => \Equal1~6_combout\,
	combout => \Add5~25_combout\);

-- Location: LCCOMB_X19_Y25_N28
\player_2_paddle_Y_location~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \player_2_paddle_Y_location~3_combout\ = (\Add5~25_combout\) # ((\player_2_paddle_Y_location[3]~0_combout\ & !\ball_X_location[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \player_2_paddle_Y_location[3]~0_combout\,
	datac => \Add5~25_combout\,
	datad => \ball_X_location[4]~0_combout\,
	combout => \player_2_paddle_Y_location~3_combout\);

-- Location: FF_X19_Y25_N29
\player_2_paddle_Y_location[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \player_2_paddle_Y_location~3_combout\,
	ena => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_2_paddle_Y_location(7));

-- Location: LCCOMB_X17_Y25_N22
\Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = ((player_2_paddle_Y_location(8) $ (b_velocity_Y(1) $ (!\Add5~15\)))) # (GND)
-- \Add5~17\ = CARRY((player_2_paddle_Y_location(8) & ((b_velocity_Y(1)) # (!\Add5~15\))) # (!player_2_paddle_Y_location(8) & (b_velocity_Y(1) & !\Add5~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_2_paddle_Y_location(8),
	datab => b_velocity_Y(1),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: LCCOMB_X15_Y25_N24
\Add5~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (\Equal1~6_combout\ & ((\Add5~16_combout\))) # (!\Equal1~6_combout\ & (player_2_paddle_Y_location(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player_2_paddle_Y_location(8),
	datac => \Add5~16_combout\,
	datad => \Equal1~6_combout\,
	combout => \Add5~24_combout\);

-- Location: LCCOMB_X19_Y25_N26
\player_2_paddle_Y_location~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \player_2_paddle_Y_location~2_combout\ = (\Add5~24_combout\ & ((\ball_X_location[4]~0_combout\) # (!\player_2_paddle_Y_location[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~24_combout\,
	datac => \player_2_paddle_Y_location[3]~0_combout\,
	datad => \ball_X_location[4]~0_combout\,
	combout => \player_2_paddle_Y_location~2_combout\);

-- Location: FF_X19_Y25_N27
\player_2_paddle_Y_location[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \player_2_paddle_Y_location~2_combout\,
	ena => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_2_paddle_Y_location(8));

-- Location: LCCOMB_X17_Y25_N24
\Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (b_velocity_Y(1) & ((player_2_paddle_Y_location(9) & (\Add5~17\ & VCC)) # (!player_2_paddle_Y_location(9) & (!\Add5~17\)))) # (!b_velocity_Y(1) & ((player_2_paddle_Y_location(9) & (!\Add5~17\)) # (!player_2_paddle_Y_location(9) & 
-- ((\Add5~17\) # (GND)))))
-- \Add5~19\ = CARRY((b_velocity_Y(1) & (!player_2_paddle_Y_location(9) & !\Add5~17\)) # (!b_velocity_Y(1) & ((!\Add5~17\) # (!player_2_paddle_Y_location(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_velocity_Y(1),
	datab => player_2_paddle_Y_location(9),
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: LCCOMB_X19_Y25_N16
\Add5~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~23_combout\ = (\Equal1~6_combout\ & (\Add5~18_combout\)) # (!\Equal1~6_combout\ & ((player_2_paddle_Y_location(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~18_combout\,
	datac => \Equal1~6_combout\,
	datad => player_2_paddle_Y_location(9),
	combout => \Add5~23_combout\);

-- Location: LCCOMB_X19_Y25_N24
\player_2_paddle_Y_location~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \player_2_paddle_Y_location~1_combout\ = (\Add5~23_combout\ & ((\ball_X_location[4]~0_combout\) # (!\player_2_paddle_Y_location[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~23_combout\,
	datac => \player_2_paddle_Y_location[3]~0_combout\,
	datad => \ball_X_location[4]~0_combout\,
	combout => \player_2_paddle_Y_location~1_combout\);

-- Location: FF_X19_Y25_N25
\player_2_paddle_Y_location[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \player_2_paddle_Y_location~1_combout\,
	ena => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player_2_paddle_Y_location(9));

-- Location: LCCOMB_X17_Y25_N26
\Add5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = player_2_paddle_Y_location(10) $ (\Add5~19\ $ (!b_velocity_Y(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player_2_paddle_Y_location(10),
	datad => b_velocity_Y(1),
	cin => \Add5~19\,
	combout => \Add5~20_combout\);

-- Location: LCCOMB_X16_Y25_N28
\Add5~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (\Equal1~6_combout\ & (\Add5~20_combout\)) # (!\Equal1~6_combout\ & ((player_2_paddle_Y_location(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~20_combout\,
	datac => player_2_paddle_Y_location(10),
	datad => \Equal1~6_combout\,
	combout => \Add5~22_combout\);

-- Location: LCCOMB_X15_Y25_N0
\Add11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = (\Add5~31_combout\ & (\Add5~30_combout\ $ (VCC))) # (!\Add5~31_combout\ & (\Add5~30_combout\ & VCC))
-- \Add11~1\ = CARRY((\Add5~31_combout\ & \Add5~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~31_combout\,
	datab => \Add5~30_combout\,
	datad => VCC,
	combout => \Add11~0_combout\,
	cout => \Add11~1\);

-- Location: LCCOMB_X15_Y25_N2
\Add11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (\Add5~29_combout\ & (!\Add11~1\)) # (!\Add5~29_combout\ & ((\Add11~1\) # (GND)))
-- \Add11~3\ = CARRY((!\Add11~1\) # (!\Add5~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~29_combout\,
	datad => VCC,
	cin => \Add11~1\,
	combout => \Add11~2_combout\,
	cout => \Add11~3\);

-- Location: LCCOMB_X15_Y25_N4
\Add11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = (\Add5~28_combout\ & ((GND) # (!\Add11~3\))) # (!\Add5~28_combout\ & (\Add11~3\ $ (GND)))
-- \Add11~5\ = CARRY((\Add5~28_combout\) # (!\Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add5~28_combout\,
	datad => VCC,
	cin => \Add11~3\,
	combout => \Add11~4_combout\,
	cout => \Add11~5\);

-- Location: LCCOMB_X15_Y25_N6
\Add11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (\Add5~27_combout\ & (\Add11~5\ & VCC)) # (!\Add5~27_combout\ & (!\Add11~5\))
-- \Add11~7\ = CARRY((!\Add5~27_combout\ & !\Add11~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~27_combout\,
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~6_combout\,
	cout => \Add11~7\);

-- Location: LCCOMB_X15_Y25_N8
\Add11~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~8_combout\ = (\Add5~26_combout\ & (\Add11~7\ $ (GND))) # (!\Add5~26_combout\ & (!\Add11~7\ & VCC))
-- \Add11~9\ = CARRY((\Add5~26_combout\ & !\Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~26_combout\,
	datad => VCC,
	cin => \Add11~7\,
	combout => \Add11~8_combout\,
	cout => \Add11~9\);

-- Location: LCCOMB_X15_Y25_N10
\Add11~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~10_combout\ = (\Add5~25_combout\ & (!\Add11~9\)) # (!\Add5~25_combout\ & ((\Add11~9\) # (GND)))
-- \Add11~11\ = CARRY((!\Add11~9\) # (!\Add5~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add5~25_combout\,
	datad => VCC,
	cin => \Add11~9\,
	combout => \Add11~10_combout\,
	cout => \Add11~11\);

-- Location: LCCOMB_X15_Y25_N12
\Add11~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~12_combout\ = (\Add5~24_combout\ & (\Add11~11\ $ (GND))) # (!\Add5~24_combout\ & (!\Add11~11\ & VCC))
-- \Add11~13\ = CARRY((\Add5~24_combout\ & !\Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add5~24_combout\,
	datad => VCC,
	cin => \Add11~11\,
	combout => \Add11~12_combout\,
	cout => \Add11~13\);

-- Location: LCCOMB_X15_Y25_N14
\Add11~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~14_combout\ = (\Add5~23_combout\ & (!\Add11~13\)) # (!\Add5~23_combout\ & ((\Add11~13\) # (GND)))
-- \Add11~15\ = CARRY((!\Add11~13\) # (!\Add5~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~23_combout\,
	datad => VCC,
	cin => \Add11~13\,
	combout => \Add11~14_combout\,
	cout => \Add11~15\);

-- Location: LCCOMB_X15_Y25_N16
\Add11~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~16_combout\ = \Add11~15\ $ (!\Add5~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add5~22_combout\,
	cin => \Add11~15\,
	combout => \Add11~16_combout\);

-- Location: LCCOMB_X16_Y24_N8
\LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~1_cout\ = CARRY((\Add5~32_combout\ & !ball_Y_location(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~32_combout\,
	datab => ball_Y_location(0),
	datad => VCC,
	cout => \LessThan3~1_cout\);

-- Location: LCCOMB_X16_Y24_N10
\LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~3_cout\ = CARRY((ball_Y_location(1) & ((\Add5~31_combout\) # (!\LessThan3~1_cout\))) # (!ball_Y_location(1) & (\Add5~31_combout\ & !\LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(1),
	datab => \Add5~31_combout\,
	datad => VCC,
	cin => \LessThan3~1_cout\,
	cout => \LessThan3~3_cout\);

-- Location: LCCOMB_X16_Y24_N12
\LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~5_cout\ = CARRY((\Add11~0_combout\ & ((ball_Y_location(2)) # (!\LessThan3~3_cout\))) # (!\Add11~0_combout\ & (ball_Y_location(2) & !\LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~0_combout\,
	datab => ball_Y_location(2),
	datad => VCC,
	cin => \LessThan3~3_cout\,
	cout => \LessThan3~5_cout\);

-- Location: LCCOMB_X16_Y24_N14
\LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~7_cout\ = CARRY((ball_Y_location(3) & ((!\LessThan3~5_cout\) # (!\Add11~2_combout\))) # (!ball_Y_location(3) & (!\Add11~2_combout\ & !\LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(3),
	datab => \Add11~2_combout\,
	datad => VCC,
	cin => \LessThan3~5_cout\,
	cout => \LessThan3~7_cout\);

-- Location: LCCOMB_X16_Y24_N16
\LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~9_cout\ = CARRY((ball_Y_location(4) & ((\Add11~4_combout\) # (!\LessThan3~7_cout\))) # (!ball_Y_location(4) & (\Add11~4_combout\ & !\LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(4),
	datab => \Add11~4_combout\,
	datad => VCC,
	cin => \LessThan3~7_cout\,
	cout => \LessThan3~9_cout\);

-- Location: LCCOMB_X16_Y24_N18
\LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~11_cout\ = CARRY((\Add11~6_combout\ & (ball_Y_location(5) & !\LessThan3~9_cout\)) # (!\Add11~6_combout\ & ((ball_Y_location(5)) # (!\LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~6_combout\,
	datab => ball_Y_location(5),
	datad => VCC,
	cin => \LessThan3~9_cout\,
	cout => \LessThan3~11_cout\);

-- Location: LCCOMB_X16_Y24_N20
\LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~13_cout\ = CARRY((\Add11~8_combout\ & ((!\LessThan3~11_cout\) # (!ball_Y_location(6)))) # (!\Add11~8_combout\ & (!ball_Y_location(6) & !\LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~8_combout\,
	datab => ball_Y_location(6),
	datad => VCC,
	cin => \LessThan3~11_cout\,
	cout => \LessThan3~13_cout\);

-- Location: LCCOMB_X16_Y24_N22
\LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~15_cout\ = CARRY((\Add11~10_combout\ & (ball_Y_location(7) & !\LessThan3~13_cout\)) # (!\Add11~10_combout\ & ((ball_Y_location(7)) # (!\LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~10_combout\,
	datab => ball_Y_location(7),
	datad => VCC,
	cin => \LessThan3~13_cout\,
	cout => \LessThan3~15_cout\);

-- Location: LCCOMB_X16_Y24_N24
\LessThan3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~17_cout\ = CARRY((\Add11~12_combout\ & ((!\LessThan3~15_cout\) # (!ball_Y_location(8)))) # (!\Add11~12_combout\ & (!ball_Y_location(8) & !\LessThan3~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~12_combout\,
	datab => ball_Y_location(8),
	datad => VCC,
	cin => \LessThan3~15_cout\,
	cout => \LessThan3~17_cout\);

-- Location: LCCOMB_X16_Y24_N26
\LessThan3~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~19_cout\ = CARRY((ball_Y_location(9) & ((!\LessThan3~17_cout\) # (!\Add11~14_combout\))) # (!ball_Y_location(9) & (!\Add11~14_combout\ & !\LessThan3~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(9),
	datab => \Add11~14_combout\,
	datad => VCC,
	cin => \LessThan3~17_cout\,
	cout => \LessThan3~19_cout\);

-- Location: LCCOMB_X16_Y24_N28
\LessThan3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~20_combout\ = (ball_Y_location(10) & (\Add11~16_combout\ & !\LessThan3~19_cout\)) # (!ball_Y_location(10) & ((\Add11~16_combout\) # (!\LessThan3~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(10),
	datab => \Add11~16_combout\,
	cin => \LessThan3~19_cout\,
	combout => \LessThan3~20_combout\);

-- Location: LCCOMB_X16_Y25_N0
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_cout\ = CARRY((\Add5~32_combout\ & !ball_Y_location(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~32_combout\,
	datab => ball_Y_location(0),
	datad => VCC,
	cout => \LessThan2~1_cout\);

-- Location: LCCOMB_X16_Y25_N2
\LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~3_cout\ = CARRY((ball_Y_location(1) & ((!\LessThan2~1_cout\) # (!\Add5~31_combout\))) # (!ball_Y_location(1) & (!\Add5~31_combout\ & !\LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(1),
	datab => \Add5~31_combout\,
	datad => VCC,
	cin => \LessThan2~1_cout\,
	cout => \LessThan2~3_cout\);

-- Location: LCCOMB_X16_Y25_N4
\LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~5_cout\ = CARRY((\Add5~30_combout\ & ((ball_Y_location(2)) # (!\LessThan2~3_cout\))) # (!\Add5~30_combout\ & (ball_Y_location(2) & !\LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~30_combout\,
	datab => ball_Y_location(2),
	datad => VCC,
	cin => \LessThan2~3_cout\,
	cout => \LessThan2~5_cout\);

-- Location: LCCOMB_X16_Y25_N6
\LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~7_cout\ = CARRY((ball_Y_location(3) & ((!\LessThan2~5_cout\) # (!\Add5~29_combout\))) # (!ball_Y_location(3) & (!\Add5~29_combout\ & !\LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(3),
	datab => \Add5~29_combout\,
	datad => VCC,
	cin => \LessThan2~5_cout\,
	cout => \LessThan2~7_cout\);

-- Location: LCCOMB_X16_Y25_N8
\LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~9_cout\ = CARRY((ball_Y_location(4) & ((\Add5~28_combout\) # (!\LessThan2~7_cout\))) # (!ball_Y_location(4) & (\Add5~28_combout\ & !\LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(4),
	datab => \Add5~28_combout\,
	datad => VCC,
	cin => \LessThan2~7_cout\,
	cout => \LessThan2~9_cout\);

-- Location: LCCOMB_X16_Y25_N10
\LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~11_cout\ = CARRY((\Add5~27_combout\ & (ball_Y_location(5) & !\LessThan2~9_cout\)) # (!\Add5~27_combout\ & ((ball_Y_location(5)) # (!\LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~27_combout\,
	datab => ball_Y_location(5),
	datad => VCC,
	cin => \LessThan2~9_cout\,
	cout => \LessThan2~11_cout\);

-- Location: LCCOMB_X16_Y25_N12
\LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~13_cout\ = CARRY((\Add5~26_combout\ & ((!\LessThan2~11_cout\) # (!ball_Y_location(6)))) # (!\Add5~26_combout\ & (!ball_Y_location(6) & !\LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~26_combout\,
	datab => ball_Y_location(6),
	datad => VCC,
	cin => \LessThan2~11_cout\,
	cout => \LessThan2~13_cout\);

-- Location: LCCOMB_X16_Y25_N14
\LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~15_cout\ = CARRY((\Add5~25_combout\ & (ball_Y_location(7) & !\LessThan2~13_cout\)) # (!\Add5~25_combout\ & ((ball_Y_location(7)) # (!\LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~25_combout\,
	datab => ball_Y_location(7),
	datad => VCC,
	cin => \LessThan2~13_cout\,
	cout => \LessThan2~15_cout\);

-- Location: LCCOMB_X16_Y25_N16
\LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~17_cout\ = CARRY((ball_Y_location(8) & (\Add5~24_combout\ & !\LessThan2~15_cout\)) # (!ball_Y_location(8) & ((\Add5~24_combout\) # (!\LessThan2~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(8),
	datab => \Add5~24_combout\,
	datad => VCC,
	cin => \LessThan2~15_cout\,
	cout => \LessThan2~17_cout\);

-- Location: LCCOMB_X16_Y25_N18
\LessThan2~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~19_cout\ = CARRY((ball_Y_location(9) & ((!\LessThan2~17_cout\) # (!\Add5~23_combout\))) # (!ball_Y_location(9) & (!\Add5~23_combout\ & !\LessThan2~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(9),
	datab => \Add5~23_combout\,
	datad => VCC,
	cin => \LessThan2~17_cout\,
	cout => \LessThan2~19_cout\);

-- Location: LCCOMB_X16_Y25_N20
\LessThan2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~20_combout\ = (ball_Y_location(10) & ((!\Add5~22_combout\) # (!\LessThan2~19_cout\))) # (!ball_Y_location(10) & (!\LessThan2~19_cout\ & !\Add5~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(10),
	datad => \Add5~22_combout\,
	cin => \LessThan2~19_cout\,
	combout => \LessThan2~20_combout\);

-- Location: LCCOMB_X21_Y24_N0
\always0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always0~5_combout\ = ((\LessThan2~20_combout\) # ((ball_X_location(0)) # (!\Add10~0_combout\))) # (!\LessThan3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~20_combout\,
	datab => \LessThan2~20_combout\,
	datac => \Add10~0_combout\,
	datad => ball_X_location(0),
	combout => \always0~5_combout\);

-- Location: LCCOMB_X21_Y24_N30
\player_2_paddle_Y_location[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \player_2_paddle_Y_location[3]~0_combout\ = (!\always0~4_combout\ & ((\always0~8_combout\) # ((\always0~6_combout\) # (\always0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~4_combout\,
	datab => \always0~8_combout\,
	datac => \always0~6_combout\,
	datad => \always0~5_combout\,
	combout => \player_2_paddle_Y_location[3]~0_combout\);

-- Location: LCCOMB_X19_Y22_N30
\ball_X_location[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[0]~3_combout\ = (\player_2_paddle_Y_location[3]~0_combout\ & \Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \player_2_paddle_Y_location[3]~0_combout\,
	datad => \Equal1~6_combout\,
	combout => \ball_X_location[0]~3_combout\);

-- Location: FF_X19_Y22_N27
\ball_Y_location[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add17~39_combout\,
	ena => \ball_X_location[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_Y_location(0));

-- Location: LCCOMB_X17_Y23_N12
\Add22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add22~2_combout\ = (ball_Y_location(1) & ((b_velocity_Y(1) & (\Add22~1\ & VCC)) # (!b_velocity_Y(1) & (!\Add22~1\)))) # (!ball_Y_location(1) & ((b_velocity_Y(1) & (!\Add22~1\)) # (!b_velocity_Y(1) & ((\Add22~1\) # (GND)))))
-- \Add22~3\ = CARRY((ball_Y_location(1) & (!b_velocity_Y(1) & !\Add22~1\)) # (!ball_Y_location(1) & ((!\Add22~1\) # (!b_velocity_Y(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(1),
	datab => b_velocity_Y(1),
	datad => VCC,
	cin => \Add22~1\,
	combout => \Add22~2_combout\,
	cout => \Add22~3\);

-- Location: LCCOMB_X16_Y23_N4
\Add19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~2_combout\ = (ball_Y_location(1) & (\Add19~1\ & VCC)) # (!ball_Y_location(1) & (!\Add19~1\))
-- \Add19~3\ = CARRY((!ball_Y_location(1) & !\Add19~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(1),
	datad => VCC,
	cin => \Add19~1\,
	combout => \Add19~2_combout\,
	cout => \Add19~3\);

-- Location: LCCOMB_X17_Y22_N8
\Add17~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~36_combout\ = (\LessThan7~2_combout\ & (\Add22~2_combout\)) # (!\LessThan7~2_combout\ & ((\Add19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~2_combout\,
	datab => \Add22~2_combout\,
	datac => \Add19~2_combout\,
	combout => \Add17~36_combout\);

-- Location: LCCOMB_X19_Y23_N10
\Add17~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~3_combout\ = (ball_Y_location(1) & (!\Add17~2\)) # (!ball_Y_location(1) & ((\Add17~2\) # (GND)))
-- \Add17~4\ = CARRY((!\Add17~2\) # (!ball_Y_location(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(1),
	datad => VCC,
	cin => \Add17~2\,
	combout => \Add17~3_combout\,
	cout => \Add17~4\);

-- Location: LCCOMB_X19_Y22_N0
\Add17~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~37_combout\ = (\ball_X_location[4]~0_combout\ & ((\LessThan6~3_combout\ & (\Add17~36_combout\)) # (!\LessThan6~3_combout\ & ((\Add17~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~36_combout\,
	datab => \Add17~3_combout\,
	datac => \LessThan6~3_combout\,
	datad => \ball_X_location[4]~0_combout\,
	combout => \Add17~37_combout\);

-- Location: FF_X19_Y22_N1
\ball_Y_location[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add17~37_combout\,
	ena => \ball_X_location[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_Y_location(1));

-- Location: LCCOMB_X19_Y23_N12
\Add17~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~5_combout\ = (ball_Y_location(2) & (\Add17~4\ $ (GND))) # (!ball_Y_location(2) & ((GND) # (!\Add17~4\)))
-- \Add17~6\ = CARRY((!\Add17~4\) # (!ball_Y_location(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(2),
	datad => VCC,
	cin => \Add17~4\,
	combout => \Add17~5_combout\,
	cout => \Add17~6\);

-- Location: LCCOMB_X16_Y23_N6
\Add19~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~4_combout\ = (ball_Y_location(2) & (!\Add19~3\ & VCC)) # (!ball_Y_location(2) & (\Add19~3\ $ (GND)))
-- \Add19~5\ = CARRY((!ball_Y_location(2) & !\Add19~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(2),
	datad => VCC,
	cin => \Add19~3\,
	combout => \Add19~4_combout\,
	cout => \Add19~5\);

-- Location: LCCOMB_X17_Y23_N14
\Add22~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add22~4_combout\ = ((ball_Y_location(2) $ (b_velocity_Y(1) $ (\Add22~3\)))) # (GND)
-- \Add22~5\ = CARRY((ball_Y_location(2) & (b_velocity_Y(1) & !\Add22~3\)) # (!ball_Y_location(2) & ((b_velocity_Y(1)) # (!\Add22~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(2),
	datab => b_velocity_Y(1),
	datad => VCC,
	cin => \Add22~3\,
	combout => \Add22~4_combout\,
	cout => \Add22~5\);

-- Location: LCCOMB_X16_Y23_N30
\Add17~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~34_combout\ = (\LessThan7~2_combout\ & ((\Add22~4_combout\))) # (!\LessThan7~2_combout\ & (\Add19~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~4_combout\,
	datab => \LessThan7~2_combout\,
	datac => \Add22~4_combout\,
	combout => \Add17~34_combout\);

-- Location: LCCOMB_X19_Y22_N2
\Add17~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~35_combout\ = ((\LessThan6~3_combout\ & ((!\Add17~34_combout\))) # (!\LessThan6~3_combout\ & (!\Add17~5_combout\))) # (!\ball_X_location[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~3_combout\,
	datab => \Add17~5_combout\,
	datac => \Add17~34_combout\,
	datad => \ball_X_location[4]~0_combout\,
	combout => \Add17~35_combout\);

-- Location: FF_X19_Y22_N3
\ball_Y_location[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add17~35_combout\,
	ena => \ball_X_location[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_Y_location(2));

-- Location: LCCOMB_X16_Y23_N8
\Add19~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~6_combout\ = (ball_Y_location(3) & (\Add19~5\ & VCC)) # (!ball_Y_location(3) & (!\Add19~5\))
-- \Add19~7\ = CARRY((!ball_Y_location(3) & !\Add19~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(3),
	datad => VCC,
	cin => \Add19~5\,
	combout => \Add19~6_combout\,
	cout => \Add19~7\);

-- Location: LCCOMB_X17_Y23_N16
\Add22~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add22~6_combout\ = (ball_Y_location(3) & ((b_velocity_Y(1) & (\Add22~5\ & VCC)) # (!b_velocity_Y(1) & (!\Add22~5\)))) # (!ball_Y_location(3) & ((b_velocity_Y(1) & (!\Add22~5\)) # (!b_velocity_Y(1) & ((\Add22~5\) # (GND)))))
-- \Add22~7\ = CARRY((ball_Y_location(3) & (!b_velocity_Y(1) & !\Add22~5\)) # (!ball_Y_location(3) & ((!\Add22~5\) # (!b_velocity_Y(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(3),
	datab => b_velocity_Y(1),
	datad => VCC,
	cin => \Add22~5\,
	combout => \Add22~6_combout\,
	cout => \Add22~7\);

-- Location: LCCOMB_X17_Y23_N4
\Add17~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~32_combout\ = (\LessThan7~2_combout\ & ((\Add22~6_combout\))) # (!\LessThan7~2_combout\ & (\Add19~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~6_combout\,
	datab => \Add22~6_combout\,
	datac => \LessThan7~2_combout\,
	combout => \Add17~32_combout\);

-- Location: LCCOMB_X19_Y23_N14
\Add17~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~7_combout\ = (ball_Y_location(3) & (!\Add17~6\)) # (!ball_Y_location(3) & ((\Add17~6\) # (GND)))
-- \Add17~8\ = CARRY((!\Add17~6\) # (!ball_Y_location(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(3),
	datad => VCC,
	cin => \Add17~6\,
	combout => \Add17~7_combout\,
	cout => \Add17~8\);

-- Location: LCCOMB_X19_Y23_N30
\Add17~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~33_combout\ = (\ball_X_location[4]~0_combout\ & ((\LessThan6~3_combout\ & (\Add17~32_combout\)) # (!\LessThan6~3_combout\ & ((\Add17~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~32_combout\,
	datab => \LessThan6~3_combout\,
	datac => \Add17~7_combout\,
	datad => \ball_X_location[4]~0_combout\,
	combout => \Add17~33_combout\);

-- Location: FF_X19_Y23_N31
\ball_Y_location[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add17~33_combout\,
	ena => \ball_X_location[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_Y_location(3));

-- Location: LCCOMB_X16_Y23_N10
\Add19~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~8_combout\ = (ball_Y_location(4) & (\Add19~7\ $ (GND))) # (!ball_Y_location(4) & ((GND) # (!\Add19~7\)))
-- \Add19~9\ = CARRY((!\Add19~7\) # (!ball_Y_location(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(4),
	datad => VCC,
	cin => \Add19~7\,
	combout => \Add19~8_combout\,
	cout => \Add19~9\);

-- Location: LCCOMB_X17_Y23_N18
\Add22~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add22~8_combout\ = ((ball_Y_location(4) $ (b_velocity_Y(1) $ (\Add22~7\)))) # (GND)
-- \Add22~9\ = CARRY((ball_Y_location(4) & (b_velocity_Y(1) & !\Add22~7\)) # (!ball_Y_location(4) & ((b_velocity_Y(1)) # (!\Add22~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(4),
	datab => b_velocity_Y(1),
	datad => VCC,
	cin => \Add22~7\,
	combout => \Add22~8_combout\,
	cout => \Add22~9\);

-- Location: LCCOMB_X17_Y23_N2
\Add17~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~30_combout\ = (\LessThan7~2_combout\ & ((\Add22~8_combout\))) # (!\LessThan7~2_combout\ & (\Add19~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~8_combout\,
	datab => \Add22~8_combout\,
	datac => \LessThan7~2_combout\,
	combout => \Add17~30_combout\);

-- Location: LCCOMB_X19_Y23_N16
\Add17~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~9_combout\ = (ball_Y_location(4) & (!\Add17~8\ & VCC)) # (!ball_Y_location(4) & (\Add17~8\ $ (GND)))
-- \Add17~10\ = CARRY((!ball_Y_location(4) & !\Add17~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(4),
	datad => VCC,
	cin => \Add17~8\,
	combout => \Add17~9_combout\,
	cout => \Add17~10\);

-- Location: LCCOMB_X19_Y23_N6
\Add17~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~31_combout\ = (\ball_X_location[4]~0_combout\ & ((\LessThan6~3_combout\ & (!\Add17~30_combout\)) # (!\LessThan6~3_combout\ & ((!\Add17~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~30_combout\,
	datab => \Add17~9_combout\,
	datac => \LessThan6~3_combout\,
	datad => \ball_X_location[4]~0_combout\,
	combout => \Add17~31_combout\);

-- Location: FF_X19_Y23_N7
\ball_Y_location[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add17~31_combout\,
	ena => \ball_X_location[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_Y_location(4));

-- Location: LCCOMB_X16_Y23_N12
\Add19~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~10_combout\ = (ball_Y_location(5) & (\Add19~9\ & VCC)) # (!ball_Y_location(5) & (!\Add19~9\))
-- \Add19~11\ = CARRY((!ball_Y_location(5) & !\Add19~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(5),
	datad => VCC,
	cin => \Add19~9\,
	combout => \Add19~10_combout\,
	cout => \Add19~11\);

-- Location: LCCOMB_X17_Y23_N20
\Add22~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add22~10_combout\ = (ball_Y_location(5) & ((b_velocity_Y(1) & (\Add22~9\ & VCC)) # (!b_velocity_Y(1) & (!\Add22~9\)))) # (!ball_Y_location(5) & ((b_velocity_Y(1) & (!\Add22~9\)) # (!b_velocity_Y(1) & ((\Add22~9\) # (GND)))))
-- \Add22~11\ = CARRY((ball_Y_location(5) & (!b_velocity_Y(1) & !\Add22~9\)) # (!ball_Y_location(5) & ((!\Add22~9\) # (!b_velocity_Y(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(5),
	datab => b_velocity_Y(1),
	datad => VCC,
	cin => \Add22~9\,
	combout => \Add22~10_combout\,
	cout => \Add22~11\);

-- Location: LCCOMB_X16_Y23_N28
\Add17~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~28_combout\ = (\LessThan7~2_combout\ & ((\Add22~10_combout\))) # (!\LessThan7~2_combout\ & (\Add19~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~10_combout\,
	datab => \LessThan7~2_combout\,
	datac => \Add22~10_combout\,
	combout => \Add17~28_combout\);

-- Location: LCCOMB_X19_Y23_N18
\Add17~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~11_combout\ = (ball_Y_location(5) & (!\Add17~10\)) # (!ball_Y_location(5) & ((\Add17~10\) # (GND)))
-- \Add17~12\ = CARRY((!\Add17~10\) # (!ball_Y_location(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(5),
	datad => VCC,
	cin => \Add17~10\,
	combout => \Add17~11_combout\,
	cout => \Add17~12\);

-- Location: LCCOMB_X19_Y22_N24
\Add17~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~29_combout\ = ((\LessThan6~3_combout\ & (\Add17~28_combout\)) # (!\LessThan6~3_combout\ & ((\Add17~11_combout\)))) # (!\ball_X_location[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~28_combout\,
	datab => \Add17~11_combout\,
	datac => \LessThan6~3_combout\,
	datad => \ball_X_location[4]~0_combout\,
	combout => \Add17~29_combout\);

-- Location: FF_X19_Y22_N25
\ball_Y_location[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add17~29_combout\,
	ena => \ball_X_location[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_Y_location(5));

-- Location: LCCOMB_X19_Y23_N20
\Add17~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~13_combout\ = (ball_Y_location(6) & (\Add17~12\ $ (GND))) # (!ball_Y_location(6) & (!\Add17~12\ & VCC))
-- \Add17~14\ = CARRY((ball_Y_location(6) & !\Add17~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(6),
	datad => VCC,
	cin => \Add17~12\,
	combout => \Add17~13_combout\,
	cout => \Add17~14\);

-- Location: LCCOMB_X16_Y23_N14
\Add19~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~12_combout\ = (ball_Y_location(6) & ((GND) # (!\Add19~11\))) # (!ball_Y_location(6) & (\Add19~11\ $ (GND)))
-- \Add19~13\ = CARRY((ball_Y_location(6)) # (!\Add19~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(6),
	datad => VCC,
	cin => \Add19~11\,
	combout => \Add19~12_combout\,
	cout => \Add19~13\);

-- Location: LCCOMB_X17_Y23_N22
\Add22~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add22~12_combout\ = ((b_velocity_Y(1) $ (ball_Y_location(6) $ (!\Add22~11\)))) # (GND)
-- \Add22~13\ = CARRY((b_velocity_Y(1) & ((ball_Y_location(6)) # (!\Add22~11\))) # (!b_velocity_Y(1) & (ball_Y_location(6) & !\Add22~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_velocity_Y(1),
	datab => ball_Y_location(6),
	datad => VCC,
	cin => \Add22~11\,
	combout => \Add22~12_combout\,
	cout => \Add22~13\);

-- Location: LCCOMB_X20_Y23_N30
\Add17~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~26_combout\ = (\LessThan7~2_combout\ & ((\Add22~12_combout\))) # (!\LessThan7~2_combout\ & (\Add19~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~12_combout\,
	datab => \Add22~12_combout\,
	datad => \LessThan7~2_combout\,
	combout => \Add17~26_combout\);

-- Location: LCCOMB_X20_Y23_N0
\Add17~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~27_combout\ = ((\LessThan6~3_combout\ & ((\Add17~26_combout\))) # (!\LessThan6~3_combout\ & (\Add17~13_combout\))) # (!\ball_X_location[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~3_combout\,
	datab => \Add17~13_combout\,
	datac => \Add17~26_combout\,
	datad => \ball_X_location[4]~0_combout\,
	combout => \Add17~27_combout\);

-- Location: FF_X20_Y23_N1
\ball_Y_location[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add17~27_combout\,
	ena => \ball_X_location[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_Y_location(6));

-- Location: LCCOMB_X20_Y23_N8
\Add18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add18~1_cout\ = CARRY((ball_Y_location(1) & ball_Y_location(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(1),
	datab => ball_Y_location(0),
	datad => VCC,
	cout => \Add18~1_cout\);

-- Location: LCCOMB_X20_Y23_N10
\Add18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add18~2_combout\ = (ball_Y_location(2) & ((\Add18~1_cout\) # (GND))) # (!ball_Y_location(2) & (!\Add18~1_cout\))
-- \Add18~3\ = CARRY((ball_Y_location(2)) # (!\Add18~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(2),
	datad => VCC,
	cin => \Add18~1_cout\,
	combout => \Add18~2_combout\,
	cout => \Add18~3\);

-- Location: LCCOMB_X20_Y23_N12
\Add18~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add18~4_combout\ = (ball_Y_location(3) & (\Add18~3\ $ (GND))) # (!ball_Y_location(3) & (!\Add18~3\ & VCC))
-- \Add18~5\ = CARRY((ball_Y_location(3) & !\Add18~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(3),
	datad => VCC,
	cin => \Add18~3\,
	combout => \Add18~4_combout\,
	cout => \Add18~5\);

-- Location: LCCOMB_X20_Y23_N14
\Add18~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add18~6_combout\ = (ball_Y_location(4) & ((\Add18~5\) # (GND))) # (!ball_Y_location(4) & (!\Add18~5\))
-- \Add18~7\ = CARRY((ball_Y_location(4)) # (!\Add18~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(4),
	datad => VCC,
	cin => \Add18~5\,
	combout => \Add18~6_combout\,
	cout => \Add18~7\);

-- Location: LCCOMB_X20_Y23_N16
\Add18~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add18~8_combout\ = (ball_Y_location(5) & (\Add18~7\ $ (GND))) # (!ball_Y_location(5) & (!\Add18~7\ & VCC))
-- \Add18~9\ = CARRY((ball_Y_location(5) & !\Add18~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(5),
	datad => VCC,
	cin => \Add18~7\,
	combout => \Add18~8_combout\,
	cout => \Add18~9\);

-- Location: LCCOMB_X20_Y23_N18
\Add18~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add18~10_combout\ = (ball_Y_location(6) & (!\Add18~9\)) # (!ball_Y_location(6) & ((\Add18~9\) # (GND)))
-- \Add18~11\ = CARRY((!\Add18~9\) # (!ball_Y_location(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(6),
	datad => VCC,
	cin => \Add18~9\,
	combout => \Add18~10_combout\,
	cout => \Add18~11\);

-- Location: LCCOMB_X20_Y23_N20
\Add18~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add18~12_combout\ = (ball_Y_location(7) & (\Add18~11\ $ (GND))) # (!ball_Y_location(7) & (!\Add18~11\ & VCC))
-- \Add18~13\ = CARRY((ball_Y_location(7) & !\Add18~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(7),
	datad => VCC,
	cin => \Add18~11\,
	combout => \Add18~12_combout\,
	cout => \Add18~13\);

-- Location: LCCOMB_X20_Y23_N22
\Add18~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add18~14_combout\ = (ball_Y_location(8) & (!\Add18~13\)) # (!ball_Y_location(8) & ((\Add18~13\) # (GND)))
-- \Add18~15\ = CARRY((!\Add18~13\) # (!ball_Y_location(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(8),
	datad => VCC,
	cin => \Add18~13\,
	combout => \Add18~14_combout\,
	cout => \Add18~15\);

-- Location: LCCOMB_X20_Y23_N24
\Add18~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add18~16_combout\ = (ball_Y_location(9) & (\Add18~15\ $ (GND))) # (!ball_Y_location(9) & (!\Add18~15\ & VCC))
-- \Add18~17\ = CARRY((ball_Y_location(9) & !\Add18~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(9),
	datad => VCC,
	cin => \Add18~15\,
	combout => \Add18~16_combout\,
	cout => \Add18~17\);

-- Location: LCCOMB_X20_Y23_N26
\Add18~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add18~18_combout\ = (ball_Y_location(10) & (!\Add18~17\)) # (!ball_Y_location(10) & ((\Add18~17\) # (GND)))
-- \Add18~19\ = CARRY((!\Add18~17\) # (!ball_Y_location(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(10),
	datad => VCC,
	cin => \Add18~17\,
	combout => \Add18~18_combout\,
	cout => \Add18~19\);

-- Location: LCCOMB_X20_Y23_N2
\LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (!\Add18~8_combout\ & (((!\Add18~2_combout\) # (!\Add18~6_combout\)) # (!\Add18~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~4_combout\,
	datab => \Add18~8_combout\,
	datac => \Add18~6_combout\,
	datad => \Add18~2_combout\,
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X20_Y23_N4
\LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = (\LessThan7~0_combout\) # (((!\Add18~10_combout\) # (!\Add18~14_combout\)) # (!\Add18~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~0_combout\,
	datab => \Add18~12_combout\,
	datac => \Add18~14_combout\,
	datad => \Add18~10_combout\,
	combout => \LessThan7~1_combout\);

-- Location: LCCOMB_X20_Y23_N28
\Add18~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add18~20_combout\ = ball_Y_location(10) $ (!\Add18~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(10),
	cin => \Add18~19\,
	combout => \Add18~20_combout\);

-- Location: LCCOMB_X20_Y23_N6
\LessThan7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~2_combout\ = (\Add18~20_combout\) # ((!\Add18~18_combout\ & (!\Add18~16_combout\ & \LessThan7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~18_combout\,
	datab => \Add18~16_combout\,
	datac => \LessThan7~1_combout\,
	datad => \Add18~20_combout\,
	combout => \LessThan7~2_combout\);

-- Location: LCCOMB_X22_Y25_N2
\b_velocity_Y[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b_velocity_Y[4]~0_combout\ = (\ball_X_location[4]~0_combout\ & ((!\LessThan7~2_combout\) # (!\LessThan6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_X_location[4]~0_combout\,
	datab => \LessThan6~3_combout\,
	datac => \LessThan7~2_combout\,
	combout => \b_velocity_Y[4]~0_combout\);

-- Location: LCCOMB_X17_Y25_N2
\b_velocity_Y[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b_velocity_Y[1]~1_combout\ = b_velocity_Y(1) $ (((\Equal1~6_combout\ & (\b_velocity_Y[4]~0_combout\ & \player_2_paddle_Y_location[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~6_combout\,
	datab => \b_velocity_Y[4]~0_combout\,
	datac => b_velocity_Y(1),
	datad => \player_2_paddle_Y_location[3]~0_combout\,
	combout => \b_velocity_Y[1]~1_combout\);

-- Location: FF_X17_Y25_N3
\b_velocity_Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b_velocity_Y[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_velocity_Y(1));

-- Location: LCCOMB_X17_Y23_N24
\Add22~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add22~14_combout\ = (ball_Y_location(7) & ((b_velocity_Y(1) & (\Add22~13\ & VCC)) # (!b_velocity_Y(1) & (!\Add22~13\)))) # (!ball_Y_location(7) & ((b_velocity_Y(1) & (!\Add22~13\)) # (!b_velocity_Y(1) & ((\Add22~13\) # (GND)))))
-- \Add22~15\ = CARRY((ball_Y_location(7) & (!b_velocity_Y(1) & !\Add22~13\)) # (!ball_Y_location(7) & ((!\Add22~13\) # (!b_velocity_Y(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(7),
	datab => b_velocity_Y(1),
	datad => VCC,
	cin => \Add22~13\,
	combout => \Add22~14_combout\,
	cout => \Add22~15\);

-- Location: LCCOMB_X16_Y23_N16
\Add19~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~14_combout\ = (ball_Y_location(7) & (\Add19~13\ & VCC)) # (!ball_Y_location(7) & (!\Add19~13\))
-- \Add19~15\ = CARRY((!ball_Y_location(7) & !\Add19~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(7),
	datad => VCC,
	cin => \Add19~13\,
	combout => \Add19~14_combout\,
	cout => \Add19~15\);

-- Location: LCCOMB_X16_Y23_N26
\Add17~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~24_combout\ = (\LessThan7~2_combout\ & (\Add22~14_combout\)) # (!\LessThan7~2_combout\ & ((\Add19~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add22~14_combout\,
	datab => \Add19~14_combout\,
	datac => \LessThan7~2_combout\,
	combout => \Add17~24_combout\);

-- Location: LCCOMB_X19_Y23_N22
\Add17~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~15_combout\ = (ball_Y_location(7) & (!\Add17~14\)) # (!ball_Y_location(7) & ((\Add17~14\) # (GND)))
-- \Add17~16\ = CARRY((!\Add17~14\) # (!ball_Y_location(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(7),
	datad => VCC,
	cin => \Add17~14\,
	combout => \Add17~15_combout\,
	cout => \Add17~16\);

-- Location: LCCOMB_X19_Y23_N4
\Add17~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~25_combout\ = ((\LessThan6~3_combout\ & (\Add17~24_combout\)) # (!\LessThan6~3_combout\ & ((\Add17~15_combout\)))) # (!\ball_X_location[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~24_combout\,
	datab => \LessThan6~3_combout\,
	datac => \Add17~15_combout\,
	datad => \ball_X_location[4]~0_combout\,
	combout => \Add17~25_combout\);

-- Location: FF_X19_Y23_N5
\ball_Y_location[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add17~25_combout\,
	ena => \ball_X_location[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_Y_location(7));

-- Location: LCCOMB_X19_Y23_N24
\Add17~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~17_combout\ = (ball_Y_location(8) & (\Add17~16\ $ (GND))) # (!ball_Y_location(8) & (!\Add17~16\ & VCC))
-- \Add17~18\ = CARRY((ball_Y_location(8) & !\Add17~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(8),
	datad => VCC,
	cin => \Add17~16\,
	combout => \Add17~17_combout\,
	cout => \Add17~18\);

-- Location: LCCOMB_X19_Y23_N26
\Add17~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~19_combout\ = (ball_Y_location(9) & (!\Add17~18\)) # (!ball_Y_location(9) & ((\Add17~18\) # (GND)))
-- \Add17~20\ = CARRY((!\Add17~18\) # (!ball_Y_location(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(9),
	datad => VCC,
	cin => \Add17~18\,
	combout => \Add17~19_combout\,
	cout => \Add17~20\);

-- Location: LCCOMB_X19_Y23_N28
\Add17~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~41_combout\ = \Add17~20\ $ (!ball_Y_location(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => ball_Y_location(10),
	cin => \Add17~20\,
	combout => \Add17~41_combout\);

-- Location: LCCOMB_X17_Y23_N26
\Add22~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add22~16_combout\ = ((ball_Y_location(8) $ (b_velocity_Y(1) $ (!\Add22~15\)))) # (GND)
-- \Add22~17\ = CARRY((ball_Y_location(8) & ((b_velocity_Y(1)) # (!\Add22~15\))) # (!ball_Y_location(8) & (b_velocity_Y(1) & !\Add22~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(8),
	datab => b_velocity_Y(1),
	datad => VCC,
	cin => \Add22~15\,
	combout => \Add22~16_combout\,
	cout => \Add22~17\);

-- Location: LCCOMB_X17_Y23_N28
\Add22~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add22~18_combout\ = (ball_Y_location(9) & ((b_velocity_Y(1) & (\Add22~17\ & VCC)) # (!b_velocity_Y(1) & (!\Add22~17\)))) # (!ball_Y_location(9) & ((b_velocity_Y(1) & (!\Add22~17\)) # (!b_velocity_Y(1) & ((\Add22~17\) # (GND)))))
-- \Add22~19\ = CARRY((ball_Y_location(9) & (!b_velocity_Y(1) & !\Add22~17\)) # (!ball_Y_location(9) & ((!\Add22~17\) # (!b_velocity_Y(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(9),
	datab => b_velocity_Y(1),
	datad => VCC,
	cin => \Add22~17\,
	combout => \Add22~18_combout\,
	cout => \Add22~19\);

-- Location: LCCOMB_X17_Y23_N30
\Add22~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add22~20_combout\ = b_velocity_Y(1) $ (\Add22~19\ $ (!ball_Y_location(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => b_velocity_Y(1),
	datad => ball_Y_location(10),
	cin => \Add22~19\,
	combout => \Add22~20_combout\);

-- Location: LCCOMB_X16_Y23_N20
\Add19~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~18_combout\ = (ball_Y_location(9) & (\Add19~17\ & VCC)) # (!ball_Y_location(9) & (!\Add19~17\))
-- \Add19~19\ = CARRY((!ball_Y_location(9) & !\Add19~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(9),
	datad => VCC,
	cin => \Add19~17\,
	combout => \Add19~18_combout\,
	cout => \Add19~19\);

-- Location: LCCOMB_X16_Y23_N22
\Add19~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~20_combout\ = ball_Y_location(10) $ (\Add19~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(10),
	cin => \Add19~19\,
	combout => \Add19~20_combout\);

-- Location: LCCOMB_X17_Y23_N8
\Add17~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~40_combout\ = (\LessThan7~2_combout\ & (\Add22~20_combout\)) # (!\LessThan7~2_combout\ & ((\Add19~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add22~20_combout\,
	datab => \Add19~20_combout\,
	datac => \LessThan7~2_combout\,
	combout => \Add17~40_combout\);

-- Location: LCCOMB_X17_Y23_N0
\Add17~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~43_combout\ = (\ball_X_location[4]~0_combout\ & ((\LessThan6~3_combout\ & ((\Add17~40_combout\))) # (!\LessThan6~3_combout\ & (\Add17~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~41_combout\,
	datab => \Add17~40_combout\,
	datac => \LessThan6~3_combout\,
	datad => \ball_X_location[4]~0_combout\,
	combout => \Add17~43_combout\);

-- Location: FF_X17_Y23_N1
\ball_Y_location[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add17~43_combout\,
	ena => \ball_X_location[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_Y_location(10));

-- Location: LCCOMB_X17_Y24_N8
\Add16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add16~0_combout\ = ball_Y_location(0) $ (VCC)
-- \Add16~1\ = CARRY(ball_Y_location(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(0),
	datad => VCC,
	combout => \Add16~0_combout\,
	cout => \Add16~1\);

-- Location: LCCOMB_X17_Y24_N10
\Add16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add16~2_combout\ = (ball_Y_location(1) & (\Add16~1\ & VCC)) # (!ball_Y_location(1) & (!\Add16~1\))
-- \Add16~3\ = CARRY((!ball_Y_location(1) & !\Add16~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(1),
	datad => VCC,
	cin => \Add16~1\,
	combout => \Add16~2_combout\,
	cout => \Add16~3\);

-- Location: LCCOMB_X17_Y24_N12
\Add16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add16~4_combout\ = (ball_Y_location(2) & (\Add16~3\ $ (GND))) # (!ball_Y_location(2) & ((GND) # (!\Add16~3\)))
-- \Add16~5\ = CARRY((!\Add16~3\) # (!ball_Y_location(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(2),
	datad => VCC,
	cin => \Add16~3\,
	combout => \Add16~4_combout\,
	cout => \Add16~5\);

-- Location: LCCOMB_X17_Y24_N14
\Add16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add16~6_combout\ = (ball_Y_location(3) & (\Add16~5\ & VCC)) # (!ball_Y_location(3) & (!\Add16~5\))
-- \Add16~7\ = CARRY((!ball_Y_location(3) & !\Add16~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(3),
	datad => VCC,
	cin => \Add16~5\,
	combout => \Add16~6_combout\,
	cout => \Add16~7\);

-- Location: LCCOMB_X17_Y24_N16
\Add16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add16~8_combout\ = (ball_Y_location(4) & (\Add16~7\ $ (GND))) # (!ball_Y_location(4) & ((GND) # (!\Add16~7\)))
-- \Add16~9\ = CARRY((!\Add16~7\) # (!ball_Y_location(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(4),
	datad => VCC,
	cin => \Add16~7\,
	combout => \Add16~8_combout\,
	cout => \Add16~9\);

-- Location: LCCOMB_X17_Y24_N18
\Add16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add16~10_combout\ = (ball_Y_location(5) & (\Add16~9\ & VCC)) # (!ball_Y_location(5) & (!\Add16~9\))
-- \Add16~11\ = CARRY((!ball_Y_location(5) & !\Add16~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(5),
	datad => VCC,
	cin => \Add16~9\,
	combout => \Add16~10_combout\,
	cout => \Add16~11\);

-- Location: LCCOMB_X17_Y24_N20
\Add16~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add16~12_combout\ = (ball_Y_location(6) & ((GND) # (!\Add16~11\))) # (!ball_Y_location(6) & (\Add16~11\ $ (GND)))
-- \Add16~13\ = CARRY((ball_Y_location(6)) # (!\Add16~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(6),
	datad => VCC,
	cin => \Add16~11\,
	combout => \Add16~12_combout\,
	cout => \Add16~13\);

-- Location: LCCOMB_X17_Y24_N22
\Add16~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add16~14_combout\ = (ball_Y_location(7) & (\Add16~13\ & VCC)) # (!ball_Y_location(7) & (!\Add16~13\))
-- \Add16~15\ = CARRY((!ball_Y_location(7) & !\Add16~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(7),
	datad => VCC,
	cin => \Add16~13\,
	combout => \Add16~14_combout\,
	cout => \Add16~15\);

-- Location: LCCOMB_X17_Y24_N24
\Add16~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add16~16_combout\ = (ball_Y_location(8) & ((GND) # (!\Add16~15\))) # (!ball_Y_location(8) & (\Add16~15\ $ (GND)))
-- \Add16~17\ = CARRY((ball_Y_location(8)) # (!\Add16~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(8),
	datad => VCC,
	cin => \Add16~15\,
	combout => \Add16~16_combout\,
	cout => \Add16~17\);

-- Location: LCCOMB_X17_Y24_N26
\Add16~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add16~18_combout\ = (ball_Y_location(9) & (\Add16~17\ & VCC)) # (!ball_Y_location(9) & (!\Add16~17\))
-- \Add16~19\ = CARRY((!ball_Y_location(9) & !\Add16~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(9),
	datad => VCC,
	cin => \Add16~17\,
	combout => \Add16~18_combout\,
	cout => \Add16~19\);

-- Location: LCCOMB_X17_Y24_N28
\Add16~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add16~20_combout\ = (ball_Y_location(10) & ((GND) # (!\Add16~19\))) # (!ball_Y_location(10) & (\Add16~19\ $ (GND)))
-- \Add16~21\ = CARRY((ball_Y_location(10)) # (!\Add16~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(10),
	datad => VCC,
	cin => \Add16~19\,
	combout => \Add16~20_combout\,
	cout => \Add16~21\);

-- Location: LCCOMB_X17_Y24_N30
\Add16~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add16~22_combout\ = \Add16~21\ $ (!ball_Y_location(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => ball_Y_location(10),
	cin => \Add16~21\,
	combout => \Add16~22_combout\);

-- Location: LCCOMB_X17_Y24_N2
\LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = (\Add16~10_combout\) # ((\Add16~12_combout\) # ((\Add16~14_combout\) # (\Add16~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~10_combout\,
	datab => \Add16~12_combout\,
	datac => \Add16~14_combout\,
	datad => \Add16~8_combout\,
	combout => \LessThan6~1_combout\);

-- Location: LCCOMB_X17_Y24_N4
\LessThan6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~2_combout\ = (\Add16~20_combout\) # ((\Add16~18_combout\) # (\Add16~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add16~20_combout\,
	datac => \Add16~18_combout\,
	datad => \Add16~16_combout\,
	combout => \LessThan6~2_combout\);

-- Location: LCCOMB_X17_Y24_N0
\LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (\Add16~6_combout\) # ((\Add16~4_combout\ & ((\Add16~2_combout\) # (\Add16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~2_combout\,
	datab => \Add16~0_combout\,
	datac => \Add16~6_combout\,
	datad => \Add16~4_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X17_Y24_N6
\LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~3_combout\ = (!\Add16~22_combout\ & ((\LessThan6~1_combout\) # ((\LessThan6~2_combout\) # (\LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~22_combout\,
	datab => \LessThan6~1_combout\,
	datac => \LessThan6~2_combout\,
	datad => \LessThan6~0_combout\,
	combout => \LessThan6~3_combout\);

-- Location: LCCOMB_X16_Y23_N18
\Add19~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~16_combout\ = (ball_Y_location(8) & ((GND) # (!\Add19~15\))) # (!ball_Y_location(8) & (\Add19~15\ $ (GND)))
-- \Add19~17\ = CARRY((ball_Y_location(8)) # (!\Add19~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(8),
	datad => VCC,
	cin => \Add19~15\,
	combout => \Add19~16_combout\,
	cout => \Add19~17\);

-- Location: LCCOMB_X16_Y23_N0
\Add17~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~22_combout\ = (\LessThan7~2_combout\ & ((\Add22~16_combout\))) # (!\LessThan7~2_combout\ & (\Add19~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add19~16_combout\,
	datac => \LessThan7~2_combout\,
	datad => \Add22~16_combout\,
	combout => \Add17~22_combout\);

-- Location: LCCOMB_X19_Y23_N2
\Add17~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~23_combout\ = (\ball_X_location[4]~0_combout\ & ((\LessThan6~3_combout\ & ((\Add17~22_combout\))) # (!\LessThan6~3_combout\ & (\Add17~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~3_combout\,
	datab => \Add17~17_combout\,
	datac => \Add17~22_combout\,
	datad => \ball_X_location[4]~0_combout\,
	combout => \Add17~23_combout\);

-- Location: FF_X19_Y23_N3
\ball_Y_location[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add17~23_combout\,
	ena => \ball_X_location[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_Y_location(8));

-- Location: LCCOMB_X16_Y23_N24
\Add17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~0_combout\ = (\LessThan7~2_combout\ & ((\Add22~18_combout\))) # (!\LessThan7~2_combout\ & (\Add19~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add19~18_combout\,
	datac => \LessThan7~2_combout\,
	datad => \Add22~18_combout\,
	combout => \Add17~0_combout\);

-- Location: LCCOMB_X19_Y23_N0
\Add17~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~21_combout\ = (\ball_X_location[4]~0_combout\ & ((\LessThan6~3_combout\ & (\Add17~0_combout\)) # (!\LessThan6~3_combout\ & ((\Add17~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~0_combout\,
	datab => \LessThan6~3_combout\,
	datac => \Add17~19_combout\,
	datad => \ball_X_location[4]~0_combout\,
	combout => \Add17~21_combout\);

-- Location: FF_X19_Y23_N1
\ball_Y_location[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add17~21_combout\,
	ena => \ball_X_location[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_Y_location(9));

-- Location: LCCOMB_X20_Y22_N0
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!ball_Y_location(0) & \Add4~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(0),
	datab => \Add4~26_combout\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X20_Y22_N2
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((ball_Y_location(1) & ((!\LessThan0~1_cout\) # (!\Add4~25_combout\))) # (!ball_Y_location(1) & (!\Add4~25_combout\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(1),
	datab => \Add4~25_combout\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X20_Y22_N4
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((ball_Y_location(2) & ((\Add4~24_combout\) # (!\LessThan0~3_cout\))) # (!ball_Y_location(2) & (\Add4~24_combout\ & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(2),
	datab => \Add4~24_combout\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X20_Y22_N6
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((ball_Y_location(3) & ((!\LessThan0~5_cout\) # (!\Add4~23_combout\))) # (!ball_Y_location(3) & (!\Add4~23_combout\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(3),
	datab => \Add4~23_combout\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X20_Y22_N8
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((ball_Y_location(4) & ((\Add4~22_combout\) # (!\LessThan0~7_cout\))) # (!ball_Y_location(4) & (\Add4~22_combout\ & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(4),
	datab => \Add4~22_combout\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X20_Y22_N10
\LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\Add4~21_combout\ & (ball_Y_location(5) & !\LessThan0~9_cout\)) # (!\Add4~21_combout\ & ((ball_Y_location(5)) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~21_combout\,
	datab => ball_Y_location(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X20_Y22_N12
\LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((ball_Y_location(6) & (\Add4~20_combout\ & !\LessThan0~11_cout\)) # (!ball_Y_location(6) & ((\Add4~20_combout\) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(6),
	datab => \Add4~20_combout\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X20_Y22_N14
\LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\Add4~19_combout\ & (ball_Y_location(7) & !\LessThan0~13_cout\)) # (!\Add4~19_combout\ & ((ball_Y_location(7)) # (!\LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~19_combout\,
	datab => ball_Y_location(7),
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X20_Y22_N16
\LessThan0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~16_combout\ = (ball_Y_location(8) & (!\LessThan0~15_cout\ & \Add4~18_combout\)) # (!ball_Y_location(8) & ((\Add4~18_combout\) # (!\LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(8),
	datad => \Add4~18_combout\,
	cin => \LessThan0~15_cout\,
	combout => \LessThan0~16_combout\);

-- Location: LCCOMB_X22_Y22_N16
\Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = (\Add4~24_combout\ & (\Add4~25_combout\ $ (VCC))) # (!\Add4~24_combout\ & (\Add4~25_combout\ & VCC))
-- \Add8~1\ = CARRY((\Add4~24_combout\ & \Add4~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~24_combout\,
	datab => \Add4~25_combout\,
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X22_Y22_N18
\Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (\Add4~23_combout\ & (!\Add8~1\)) # (!\Add4~23_combout\ & ((\Add8~1\) # (GND)))
-- \Add8~3\ = CARRY((!\Add8~1\) # (!\Add4~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~23_combout\,
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X22_Y22_N20
\Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = (\Add4~22_combout\ & ((GND) # (!\Add8~3\))) # (!\Add4~22_combout\ & (\Add8~3\ $ (GND)))
-- \Add8~5\ = CARRY((\Add4~22_combout\) # (!\Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~22_combout\,
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X22_Y22_N22
\Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (\Add4~21_combout\ & (\Add8~5\ & VCC)) # (!\Add4~21_combout\ & (!\Add8~5\))
-- \Add8~7\ = CARRY((!\Add4~21_combout\ & !\Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~21_combout\,
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X22_Y22_N24
\Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (\Add4~20_combout\ & (\Add8~7\ $ (GND))) # (!\Add4~20_combout\ & (!\Add8~7\ & VCC))
-- \Add8~9\ = CARRY((\Add4~20_combout\ & !\Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~20_combout\,
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X22_Y22_N26
\Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (\Add4~19_combout\ & (!\Add8~9\)) # (!\Add4~19_combout\ & ((\Add8~9\) # (GND)))
-- \Add8~11\ = CARRY((!\Add8~9\) # (!\Add4~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~19_combout\,
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X22_Y22_N28
\Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = (\Add4~18_combout\ & (\Add8~11\ $ (GND))) # (!\Add4~18_combout\ & (!\Add8~11\ & VCC))
-- \Add8~13\ = CARRY((\Add4~18_combout\ & !\Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~18_combout\,
	datad => VCC,
	cin => \Add8~11\,
	combout => \Add8~12_combout\,
	cout => \Add8~13\);

-- Location: LCCOMB_X22_Y22_N30
\Add8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~14_combout\ = \Add8~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add8~13\,
	combout => \Add8~14_combout\);

-- Location: LCCOMB_X19_Y22_N4
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((\Add4~26_combout\ & !ball_Y_location(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~26_combout\,
	datab => ball_Y_location(0),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X19_Y22_N6
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\Add4~25_combout\ & ((ball_Y_location(1)) # (!\LessThan1~1_cout\))) # (!\Add4~25_combout\ & (ball_Y_location(1) & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~25_combout\,
	datab => ball_Y_location(1),
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X19_Y22_N8
\LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\Add8~0_combout\ & ((ball_Y_location(2)) # (!\LessThan1~3_cout\))) # (!\Add8~0_combout\ & (ball_Y_location(2) & !\LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~0_combout\,
	datab => ball_Y_location(2),
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X19_Y22_N10
\LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\Add8~2_combout\ & (ball_Y_location(3) & !\LessThan1~5_cout\)) # (!\Add8~2_combout\ & ((ball_Y_location(3)) # (!\LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~2_combout\,
	datab => ball_Y_location(3),
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X19_Y22_N12
\LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((ball_Y_location(4) & ((\Add8~4_combout\) # (!\LessThan1~7_cout\))) # (!ball_Y_location(4) & (\Add8~4_combout\ & !\LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(4),
	datab => \Add8~4_combout\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X19_Y22_N14
\LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\Add8~6_combout\ & (ball_Y_location(5) & !\LessThan1~9_cout\)) # (!\Add8~6_combout\ & ((ball_Y_location(5)) # (!\LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~6_combout\,
	datab => ball_Y_location(5),
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X19_Y22_N16
\LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((ball_Y_location(6) & (\Add8~8_combout\ & !\LessThan1~11_cout\)) # (!ball_Y_location(6) & ((\Add8~8_combout\) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(6),
	datab => \Add8~8_combout\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X19_Y22_N18
\LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~15_cout\ = CARRY((ball_Y_location(7) & ((!\LessThan1~13_cout\) # (!\Add8~10_combout\))) # (!ball_Y_location(7) & (!\Add8~10_combout\ & !\LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(7),
	datab => \Add8~10_combout\,
	datad => VCC,
	cin => \LessThan1~13_cout\,
	cout => \LessThan1~15_cout\);

-- Location: LCCOMB_X19_Y22_N20
\LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~17_cout\ = CARRY((\Add8~12_combout\ & ((!\LessThan1~15_cout\) # (!ball_Y_location(8)))) # (!\Add8~12_combout\ & (!ball_Y_location(8) & !\LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~12_combout\,
	datab => ball_Y_location(8),
	datad => VCC,
	cin => \LessThan1~15_cout\,
	cout => \LessThan1~17_cout\);

-- Location: LCCOMB_X19_Y22_N22
\LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~18_combout\ = (ball_Y_location(9) & (\LessThan1~17_cout\ & \Add8~14_combout\)) # (!ball_Y_location(9) & ((\LessThan1~17_cout\) # (\Add8~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_Y_location(9),
	datad => \Add8~14_combout\,
	cin => \LessThan1~17_cout\,
	combout => \LessThan1~18_combout\);

-- Location: LCCOMB_X23_Y24_N0
\Add6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~1_cout\ = CARRY(ball_X_location(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(0),
	datad => VCC,
	cout => \Add6~1_cout\);

-- Location: LCCOMB_X23_Y24_N2
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

-- Location: LCCOMB_X23_Y24_N4
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

-- Location: LCCOMB_X23_Y24_N6
\Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (ball_X_location(3) & (!\Add6~5\)) # (!ball_X_location(3) & (\Add6~5\ & VCC))
-- \Add6~7\ = CARRY((ball_X_location(3) & !\Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(3),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X23_Y24_N8
\Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (ball_X_location(4) & (\Add6~7\ $ (GND))) # (!ball_X_location(4) & ((GND) # (!\Add6~7\)))
-- \Add6~9\ = CARRY((!\Add6~7\) # (!ball_X_location(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(4),
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X23_Y24_N10
\Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (ball_X_location(5) & (\Add6~9\ & VCC)) # (!ball_X_location(5) & (!\Add6~9\))
-- \Add6~11\ = CARRY((!ball_X_location(5) & !\Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(5),
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X23_Y24_N12
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

-- Location: LCCOMB_X23_Y24_N14
\Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (ball_X_location(7) & (\Add6~13\ & VCC)) # (!ball_X_location(7) & (!\Add6~13\))
-- \Add6~15\ = CARRY((!ball_X_location(7) & !\Add6~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(7),
	datad => VCC,
	cin => \Add6~13\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

-- Location: LCCOMB_X23_Y24_N24
\always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = (!\Add6~12_combout\ & (!\Add6~14_combout\ & (!\Add6~8_combout\ & !\Add6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~12_combout\,
	datab => \Add6~14_combout\,
	datac => \Add6~8_combout\,
	datad => \Add6~10_combout\,
	combout => \always0~0_combout\);

-- Location: LCCOMB_X23_Y24_N16
\Add6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = (ball_X_location(8) & ((GND) # (!\Add6~15\))) # (!ball_X_location(8) & (\Add6~15\ $ (GND)))
-- \Add6~17\ = CARRY((ball_X_location(8)) # (!\Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(8),
	datad => VCC,
	cin => \Add6~15\,
	combout => \Add6~16_combout\,
	cout => \Add6~17\);

-- Location: LCCOMB_X23_Y24_N18
\Add6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~18_combout\ = (ball_X_location(9) & (!\Add6~17\)) # (!ball_X_location(9) & (\Add6~17\ & VCC))
-- \Add6~19\ = CARRY((ball_X_location(9) & !\Add6~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(9),
	datad => VCC,
	cin => \Add6~17\,
	combout => \Add6~18_combout\,
	cout => \Add6~19\);

-- Location: LCCOMB_X23_Y24_N20
\Add6~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~20_combout\ = (ball_X_location(10) & ((GND) # (!\Add6~19\))) # (!ball_X_location(10) & (\Add6~19\ $ (GND)))
-- \Add6~21\ = CARRY((ball_X_location(10)) # (!\Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(10),
	datad => VCC,
	cin => \Add6~19\,
	combout => \Add6~20_combout\,
	cout => \Add6~21\);

-- Location: LCCOMB_X23_Y24_N22
\Add6~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~22_combout\ = \Add6~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add6~21\,
	combout => \Add6~22_combout\);

-- Location: LCCOMB_X23_Y24_N26
\always0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always0~1_combout\ = (!\Add6~20_combout\ & (!\Add6~18_combout\ & (\Add6~22_combout\ & !\Add6~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~20_combout\,
	datab => \Add6~18_combout\,
	datac => \Add6~22_combout\,
	datad => \Add6~16_combout\,
	combout => \always0~1_combout\);

-- Location: LCCOMB_X23_Y24_N28
\always0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always0~2_combout\ = (!ball_X_location(0) & (!ball_Y_location(10) & (\always0~1_combout\ & !\Add6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(0),
	datab => ball_Y_location(10),
	datac => \always0~1_combout\,
	datad => \Add6~6_combout\,
	combout => \always0~2_combout\);

-- Location: LCCOMB_X23_Y24_N30
\always0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always0~3_combout\ = (\always0~0_combout\ & (\always0~2_combout\ & (\Add6~4_combout\ & !\Add6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~0_combout\,
	datab => \always0~2_combout\,
	datac => \Add6~4_combout\,
	datad => \Add6~2_combout\,
	combout => \always0~3_combout\);

-- Location: LCCOMB_X19_Y22_N28
\always0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always0~4_combout\ = (\LessThan1~18_combout\ & (\always0~3_combout\ & ((ball_Y_location(9)) # (!\LessThan0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(9),
	datab => \LessThan0~16_combout\,
	datac => \LessThan1~18_combout\,
	datad => \always0~3_combout\,
	combout => \always0~4_combout\);

-- Location: LCCOMB_X22_Y25_N0
\Add9~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~19_combout\ = (\player_2_paddle_Y_location[3]~0_combout\ & (((\Add21~16_combout\)) # (!\ball_X_location[4]~0_combout\))) # (!\player_2_paddle_Y_location[3]~0_combout\ & (((\Add9~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_X_location[4]~0_combout\,
	datab => \Add9~14_combout\,
	datac => \player_2_paddle_Y_location[3]~0_combout\,
	datad => \Add21~16_combout\,
	combout => \Add9~19_combout\);

-- Location: FF_X22_Y25_N1
\ball_X_location[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add9~19_combout\,
	ena => \ball_X_location[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(8));

-- Location: LCCOMB_X24_Y27_N4
\Add14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~1_cout\ = CARRY((ball_X_location(0) & ball_X_location(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(0),
	datab => ball_X_location(1),
	datad => VCC,
	cout => \Add14~1_cout\);

-- Location: LCCOMB_X24_Y27_N6
\Add14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~3_cout\ = CARRY((!\Add14~1_cout\) # (!ball_X_location(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(2),
	datad => VCC,
	cin => \Add14~1_cout\,
	cout => \Add14~3_cout\);

-- Location: LCCOMB_X24_Y27_N8
\Add14~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~5_cout\ = CARRY((!ball_X_location(3) & !\Add14~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(3),
	datad => VCC,
	cin => \Add14~3_cout\,
	cout => \Add14~5_cout\);

-- Location: LCCOMB_X24_Y27_N10
\Add14~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~7_cout\ = CARRY((ball_X_location(4)) # (!\Add14~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(4),
	datad => VCC,
	cin => \Add14~5_cout\,
	cout => \Add14~7_cout\);

-- Location: LCCOMB_X24_Y27_N12
\Add14~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~9_cout\ = CARRY((ball_X_location(5) & !\Add14~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(5),
	datad => VCC,
	cin => \Add14~7_cout\,
	cout => \Add14~9_cout\);

-- Location: LCCOMB_X24_Y27_N14
\Add14~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~11_cout\ = CARRY((ball_X_location(6)) # (!\Add14~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(6),
	datad => VCC,
	cin => \Add14~9_cout\,
	cout => \Add14~11_cout\);

-- Location: LCCOMB_X24_Y27_N16
\Add14~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~12_combout\ = (ball_X_location(7) & (\Add14~11_cout\ $ (GND))) # (!ball_X_location(7) & (!\Add14~11_cout\ & VCC))
-- \Add14~13\ = CARRY((ball_X_location(7) & !\Add14~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(7),
	datad => VCC,
	cin => \Add14~11_cout\,
	combout => \Add14~12_combout\,
	cout => \Add14~13\);

-- Location: LCCOMB_X24_Y27_N18
\Add14~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~14_combout\ = (ball_X_location(8) & (!\Add14~13\)) # (!ball_X_location(8) & ((\Add14~13\) # (GND)))
-- \Add14~15\ = CARRY((!\Add14~13\) # (!ball_X_location(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(8),
	datad => VCC,
	cin => \Add14~13\,
	combout => \Add14~14_combout\,
	cout => \Add14~15\);

-- Location: LCCOMB_X24_Y27_N20
\Add14~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~16_combout\ = (ball_X_location(9) & (!\Add14~15\ & VCC)) # (!ball_X_location(9) & (\Add14~15\ $ (GND)))
-- \Add14~17\ = CARRY((!ball_X_location(9) & !\Add14~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(9),
	datad => VCC,
	cin => \Add14~15\,
	combout => \Add14~16_combout\,
	cout => \Add14~17\);

-- Location: LCCOMB_X24_Y27_N0
\LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (!\Add14~14_combout\ & !\Add14~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add14~14_combout\,
	datad => \Add14~12_combout\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X24_Y27_N22
\Add14~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~18_combout\ = (ball_X_location(10) & (!\Add14~17\)) # (!ball_X_location(10) & ((\Add14~17\) # (GND)))
-- \Add14~19\ = CARRY((!\Add14~17\) # (!ball_X_location(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(10),
	datad => VCC,
	cin => \Add14~17\,
	combout => \Add14~18_combout\,
	cout => \Add14~19\);

-- Location: LCCOMB_X24_Y27_N24
\Add14~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~20_combout\ = ball_X_location(10) $ (!\Add14~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(10),
	cin => \Add14~19\,
	combout => \Add14~20_combout\);

-- Location: LCCOMB_X24_Y27_N2
\LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (\Add14~20_combout\) # ((!\Add14~18_combout\ & ((\LessThan4~0_combout\) # (!\Add14~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~16_combout\,
	datab => \LessThan4~0_combout\,
	datac => \Add14~18_combout\,
	datad => \Add14~20_combout\,
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X23_Y27_N2
\Add15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~0_combout\ = ball_X_location(0) $ (VCC)
-- \Add15~1\ = CARRY(ball_X_location(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(0),
	datad => VCC,
	combout => \Add15~0_combout\,
	cout => \Add15~1\);

-- Location: LCCOMB_X23_Y27_N4
\Add15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~2_combout\ = (ball_X_location(1) & (\Add15~1\ & VCC)) # (!ball_X_location(1) & (!\Add15~1\))
-- \Add15~3\ = CARRY((!ball_X_location(1) & !\Add15~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(1),
	datad => VCC,
	cin => \Add15~1\,
	combout => \Add15~2_combout\,
	cout => \Add15~3\);

-- Location: LCCOMB_X23_Y27_N6
\Add15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~4_combout\ = (ball_X_location(2) & ((GND) # (!\Add15~3\))) # (!ball_X_location(2) & (\Add15~3\ $ (GND)))
-- \Add15~5\ = CARRY((ball_X_location(2)) # (!\Add15~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(2),
	datad => VCC,
	cin => \Add15~3\,
	combout => \Add15~4_combout\,
	cout => \Add15~5\);

-- Location: LCCOMB_X23_Y27_N8
\Add15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~6_combout\ = (ball_X_location(3) & (!\Add15~5\)) # (!ball_X_location(3) & (\Add15~5\ & VCC))
-- \Add15~7\ = CARRY((ball_X_location(3) & !\Add15~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(3),
	datad => VCC,
	cin => \Add15~5\,
	combout => \Add15~6_combout\,
	cout => \Add15~7\);

-- Location: LCCOMB_X23_Y27_N10
\Add15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~8_combout\ = (ball_X_location(4) & (\Add15~7\ $ (GND))) # (!ball_X_location(4) & ((GND) # (!\Add15~7\)))
-- \Add15~9\ = CARRY((!\Add15~7\) # (!ball_X_location(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(4),
	datad => VCC,
	cin => \Add15~7\,
	combout => \Add15~8_combout\,
	cout => \Add15~9\);

-- Location: LCCOMB_X23_Y27_N12
\Add15~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~10_combout\ = (ball_X_location(5) & (\Add15~9\ & VCC)) # (!ball_X_location(5) & (!\Add15~9\))
-- \Add15~11\ = CARRY((!ball_X_location(5) & !\Add15~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(5),
	datad => VCC,
	cin => \Add15~9\,
	combout => \Add15~10_combout\,
	cout => \Add15~11\);

-- Location: LCCOMB_X23_Y27_N14
\Add15~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~12_combout\ = (ball_X_location(6) & (\Add15~11\ $ (GND))) # (!ball_X_location(6) & ((GND) # (!\Add15~11\)))
-- \Add15~13\ = CARRY((!\Add15~11\) # (!ball_X_location(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(6),
	datad => VCC,
	cin => \Add15~11\,
	combout => \Add15~12_combout\,
	cout => \Add15~13\);

-- Location: LCCOMB_X23_Y27_N16
\Add15~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~14_combout\ = (ball_X_location(7) & (\Add15~13\ & VCC)) # (!ball_X_location(7) & (!\Add15~13\))
-- \Add15~15\ = CARRY((!ball_X_location(7) & !\Add15~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(7),
	datad => VCC,
	cin => \Add15~13\,
	combout => \Add15~14_combout\,
	cout => \Add15~15\);

-- Location: LCCOMB_X23_Y27_N26
\LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (\Add15~10_combout\) # ((\Add15~14_combout\) # ((\Add15~12_combout\) # (\Add15~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~10_combout\,
	datab => \Add15~14_combout\,
	datac => \Add15~12_combout\,
	datad => \Add15~8_combout\,
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X23_Y27_N18
\Add15~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~16_combout\ = (ball_X_location(8) & ((GND) # (!\Add15~15\))) # (!ball_X_location(8) & (\Add15~15\ $ (GND)))
-- \Add15~17\ = CARRY((ball_X_location(8)) # (!\Add15~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(8),
	datad => VCC,
	cin => \Add15~15\,
	combout => \Add15~16_combout\,
	cout => \Add15~17\);

-- Location: LCCOMB_X23_Y27_N20
\Add15~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~18_combout\ = (ball_X_location(9) & (!\Add15~17\)) # (!ball_X_location(9) & (\Add15~17\ & VCC))
-- \Add15~19\ = CARRY((ball_X_location(9) & !\Add15~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(9),
	datad => VCC,
	cin => \Add15~17\,
	combout => \Add15~18_combout\,
	cout => \Add15~19\);

-- Location: LCCOMB_X23_Y27_N22
\Add15~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~20_combout\ = (ball_X_location(10) & ((GND) # (!\Add15~19\))) # (!ball_X_location(10) & (\Add15~19\ $ (GND)))
-- \Add15~21\ = CARRY((ball_X_location(10)) # (!\Add15~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(10),
	datad => VCC,
	cin => \Add15~19\,
	combout => \Add15~20_combout\,
	cout => \Add15~21\);

-- Location: LCCOMB_X23_Y27_N28
\LessThan5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = (\LessThan5~1_combout\) # ((\Add15~18_combout\) # ((\Add15~20_combout\) # (\Add15~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~1_combout\,
	datab => \Add15~18_combout\,
	datac => \Add15~20_combout\,
	datad => \Add15~16_combout\,
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X23_Y27_N24
\Add15~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~22_combout\ = ball_X_location(10) $ (!\Add15~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(10),
	cin => \Add15~21\,
	combout => \Add15~22_combout\);

-- Location: LCCOMB_X23_Y27_N0
\LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (\Add15~4_combout\) # ((\Add15~6_combout\) # ((\Add15~2_combout\) # (\Add15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~4_combout\,
	datab => \Add15~6_combout\,
	datac => \Add15~2_combout\,
	datad => \Add15~0_combout\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X23_Y27_N30
\ball_X_location[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_X_location[4]~0_combout\ = (\LessThan4~1_combout\ & (!\Add15~22_combout\ & ((\LessThan5~2_combout\) # (\LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~1_combout\,
	datab => \LessThan5~2_combout\,
	datac => \Add15~22_combout\,
	datad => \LessThan5~0_combout\,
	combout => \ball_X_location[4]~0_combout\);

-- Location: LCCOMB_X23_Y25_N20
\Add9~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~18_combout\ = (\player_2_paddle_Y_location[3]~0_combout\ & (((!\Add21~18_combout\)) # (!\ball_X_location[4]~0_combout\))) # (!\player_2_paddle_Y_location[3]~0_combout\ & (((!\Add9~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_X_location[4]~0_combout\,
	datab => \Add9~16_combout\,
	datac => \Add21~18_combout\,
	datad => \player_2_paddle_Y_location[3]~0_combout\,
	combout => \Add9~18_combout\);

-- Location: FF_X23_Y25_N21
\ball_X_location[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add9~18_combout\,
	ena => \ball_X_location[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ball_X_location(9));

-- Location: LCCOMB_X24_Y25_N10
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

-- Location: LCCOMB_X24_Y25_N12
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

-- Location: LCCOMB_X24_Y25_N14
\draw_ball|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~5_cout\ = CARRY((ball_X_location(2) & ((!\draw_ball|LessThan0~3_cout\) # (!\VGA_Driver|HS_counter\(2)))) # (!ball_X_location(2) & (!\VGA_Driver|HS_counter\(2) & !\draw_ball|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(2),
	datab => \VGA_Driver|HS_counter\(2),
	datad => VCC,
	cin => \draw_ball|LessThan0~3_cout\,
	cout => \draw_ball|LessThan0~5_cout\);

-- Location: LCCOMB_X24_Y25_N16
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

-- Location: LCCOMB_X24_Y25_N18
\draw_ball|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~9_cout\ = CARRY((ball_X_location(4) & (!\VGA_Driver|HS_counter\(4) & !\draw_ball|LessThan0~7_cout\)) # (!ball_X_location(4) & ((!\draw_ball|LessThan0~7_cout\) # (!\VGA_Driver|HS_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(4),
	datab => \VGA_Driver|HS_counter\(4),
	datad => VCC,
	cin => \draw_ball|LessThan0~7_cout\,
	cout => \draw_ball|LessThan0~9_cout\);

-- Location: LCCOMB_X24_Y25_N20
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

-- Location: LCCOMB_X24_Y25_N22
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

-- Location: LCCOMB_X24_Y25_N24
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

-- Location: LCCOMB_X24_Y25_N26
\draw_ball|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~17_cout\ = CARRY((ball_X_location(8) & ((\VGA_Driver|Add0~3_combout\) # (!\draw_ball|LessThan0~15_cout\))) # (!ball_X_location(8) & (\VGA_Driver|Add0~3_combout\ & !\draw_ball|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(8),
	datab => \VGA_Driver|Add0~3_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan0~15_cout\,
	cout => \draw_ball|LessThan0~17_cout\);

-- Location: LCCOMB_X24_Y25_N28
\draw_ball|LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~18_combout\ = (ball_X_location(9) & (\draw_ball|LessThan0~17_cout\ & \VGA_Driver|Add0~1_combout\)) # (!ball_X_location(9) & ((\draw_ball|LessThan0~17_cout\) # (\VGA_Driver|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(9),
	datad => \VGA_Driver|Add0~1_combout\,
	cin => \draw_ball|LessThan0~17_cout\,
	combout => \draw_ball|LessThan0~18_combout\);

-- Location: LCCOMB_X20_Y22_N18
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

-- Location: LCCOMB_X20_Y22_N20
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

-- Location: LCCOMB_X20_Y22_N22
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

-- Location: LCCOMB_X20_Y22_N24
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

-- Location: LCCOMB_X20_Y22_N26
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

-- Location: LCCOMB_X20_Y22_N28
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

-- Location: LCCOMB_X20_Y22_N30
\draw_ball|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add1~12_combout\ = ball_Y_location(9) $ (!\draw_ball|Add1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(9),
	cin => \draw_ball|Add1~11\,
	combout => \draw_ball|Add1~12_combout\);

-- Location: LCCOMB_X21_Y22_N6
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

-- Location: LCCOMB_X21_Y22_N8
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

-- Location: LCCOMB_X21_Y22_N10
\draw_ball|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan3~5_cout\ = CARRY((\VGA_Driver|Add1~4_combout\ & (ball_Y_location(2) & !\draw_ball|LessThan3~3_cout\)) # (!\VGA_Driver|Add1~4_combout\ & ((ball_Y_location(2)) # (!\draw_ball|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~4_combout\,
	datab => ball_Y_location(2),
	datad => VCC,
	cin => \draw_ball|LessThan3~3_cout\,
	cout => \draw_ball|LessThan3~5_cout\);

-- Location: LCCOMB_X21_Y22_N12
\draw_ball|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan3~7_cout\ = CARRY((\VGA_Driver|Add1~6_combout\ & ((!\draw_ball|LessThan3~5_cout\) # (!\draw_ball|Add1~0_combout\))) # (!\VGA_Driver|Add1~6_combout\ & (!\draw_ball|Add1~0_combout\ & !\draw_ball|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~6_combout\,
	datab => \draw_ball|Add1~0_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan3~5_cout\,
	cout => \draw_ball|LessThan3~7_cout\);

-- Location: LCCOMB_X21_Y22_N14
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

-- Location: LCCOMB_X21_Y22_N16
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

-- Location: LCCOMB_X21_Y22_N18
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

-- Location: LCCOMB_X21_Y22_N20
\draw_ball|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan3~15_cout\ = CARRY((\draw_ball|Add1~8_combout\ & (\VGA_Driver|Add1~14_combout\ & !\draw_ball|LessThan3~13_cout\)) # (!\draw_ball|Add1~8_combout\ & ((\VGA_Driver|Add1~14_combout\) # (!\draw_ball|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_ball|Add1~8_combout\,
	datab => \VGA_Driver|Add1~14_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan3~13_cout\,
	cout => \draw_ball|LessThan3~15_cout\);

-- Location: LCCOMB_X21_Y22_N22
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

-- Location: LCCOMB_X21_Y22_N24
\draw_ball|LessThan3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan3~18_combout\ = (\draw_ball|Add1~12_combout\ & ((\draw_ball|LessThan3~17_cout\) # (!\VGA_Driver|Add1~18_combout\))) # (!\draw_ball|Add1~12_combout\ & (\draw_ball|LessThan3~17_cout\ & !\VGA_Driver|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \draw_ball|Add1~12_combout\,
	datad => \VGA_Driver|Add1~18_combout\,
	cin => \draw_ball|LessThan3~17_cout\,
	combout => \draw_ball|LessThan3~18_combout\);

-- Location: LCCOMB_X20_Y24_N6
\draw_ball|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan2~1_cout\ = CARRY((ball_Y_location(0) & !\VGA_Driver|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(0),
	datab => \VGA_Driver|Add1~0_combout\,
	datad => VCC,
	cout => \draw_ball|LessThan2~1_cout\);

-- Location: LCCOMB_X20_Y24_N8
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

-- Location: LCCOMB_X20_Y24_N10
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

-- Location: LCCOMB_X20_Y24_N12
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

-- Location: LCCOMB_X20_Y24_N14
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

-- Location: LCCOMB_X20_Y24_N16
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

-- Location: LCCOMB_X20_Y24_N18
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

-- Location: LCCOMB_X20_Y24_N20
\draw_ball|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan2~15_cout\ = CARRY((ball_Y_location(7) & (\VGA_Driver|Add1~14_combout\ & !\draw_ball|LessThan2~13_cout\)) # (!ball_Y_location(7) & ((\VGA_Driver|Add1~14_combout\) # (!\draw_ball|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(7),
	datab => \VGA_Driver|Add1~14_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan2~13_cout\,
	cout => \draw_ball|LessThan2~15_cout\);

-- Location: LCCOMB_X20_Y24_N22
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

-- Location: LCCOMB_X20_Y24_N24
\draw_ball|LessThan2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan2~18_combout\ = (ball_Y_location(9) & ((\draw_ball|LessThan2~17_cout\) # (!\VGA_Driver|Add1~18_combout\))) # (!ball_Y_location(9) & (\draw_ball|LessThan2~17_cout\ & !\VGA_Driver|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_Y_location(9),
	datad => \VGA_Driver|Add1~18_combout\,
	cin => \draw_ball|LessThan2~17_cout\,
	combout => \draw_ball|LessThan2~18_combout\);

-- Location: LCCOMB_X22_Y25_N10
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

-- Location: LCCOMB_X22_Y25_N12
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

-- Location: LCCOMB_X22_Y25_N14
\draw_ball|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add0~4_combout\ = (ball_X_location(5) & (\draw_ball|Add0~3\ $ (GND))) # (!ball_X_location(5) & (!\draw_ball|Add0~3\ & VCC))
-- \draw_ball|Add0~5\ = CARRY((ball_X_location(5) & !\draw_ball|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(5),
	datad => VCC,
	cin => \draw_ball|Add0~3\,
	combout => \draw_ball|Add0~4_combout\,
	cout => \draw_ball|Add0~5\);

-- Location: LCCOMB_X22_Y25_N16
\draw_ball|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add0~6_combout\ = (ball_X_location(6) & ((\draw_ball|Add0~5\) # (GND))) # (!ball_X_location(6) & (!\draw_ball|Add0~5\))
-- \draw_ball|Add0~7\ = CARRY((ball_X_location(6)) # (!\draw_ball|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ball_X_location(6),
	datad => VCC,
	cin => \draw_ball|Add0~5\,
	combout => \draw_ball|Add0~6_combout\,
	cout => \draw_ball|Add0~7\);

-- Location: LCCOMB_X22_Y25_N18
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

-- Location: LCCOMB_X22_Y25_N20
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

-- Location: LCCOMB_X22_Y25_N22
\draw_ball|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add0~12_combout\ = \draw_ball|Add0~11\ $ (ball_X_location(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => ball_X_location(9),
	cin => \draw_ball|Add0~11\,
	combout => \draw_ball|Add0~12_combout\);

-- Location: LCCOMB_X26_Y25_N12
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

-- Location: LCCOMB_X26_Y25_N14
\draw_ball|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~3_cout\ = CARRY((ball_X_location(1) & (\VGA_Driver|HS_counter\(1) & !\draw_ball|LessThan1~1_cout\)) # (!ball_X_location(1) & ((\VGA_Driver|HS_counter\(1)) # (!\draw_ball|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ball_X_location(1),
	datab => \VGA_Driver|HS_counter\(1),
	datad => VCC,
	cin => \draw_ball|LessThan1~1_cout\,
	cout => \draw_ball|LessThan1~3_cout\);

-- Location: LCCOMB_X26_Y25_N16
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

-- Location: LCCOMB_X26_Y25_N18
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

-- Location: LCCOMB_X26_Y25_N20
\draw_ball|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~9_cout\ = CARRY((\VGA_Driver|HS_counter\(4) & (\draw_ball|Add0~2_combout\ & !\draw_ball|LessThan1~7_cout\)) # (!\VGA_Driver|HS_counter\(4) & ((\draw_ball|Add0~2_combout\) # (!\draw_ball|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(4),
	datab => \draw_ball|Add0~2_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan1~7_cout\,
	cout => \draw_ball|LessThan1~9_cout\);

-- Location: LCCOMB_X26_Y25_N22
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

-- Location: LCCOMB_X26_Y25_N24
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

-- Location: LCCOMB_X26_Y25_N26
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

-- Location: LCCOMB_X26_Y25_N28
\draw_ball|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~17_cout\ = CARRY((\draw_ball|Add0~10_combout\ & ((\VGA_Driver|Add0~3_combout\) # (!\draw_ball|LessThan1~15_cout\))) # (!\draw_ball|Add0~10_combout\ & (\VGA_Driver|Add0~3_combout\ & !\draw_ball|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_ball|Add0~10_combout\,
	datab => \VGA_Driver|Add0~3_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan1~15_cout\,
	cout => \draw_ball|LessThan1~17_cout\);

-- Location: LCCOMB_X26_Y25_N30
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

-- Location: LCCOMB_X21_Y22_N0
\draw_ball|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|always0~0_combout\ = (!\draw_ball|LessThan0~18_combout\ & (\draw_ball|LessThan3~18_combout\ & (!\draw_ball|LessThan2~18_combout\ & \draw_ball|LessThan1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_ball|LessThan0~18_combout\,
	datab => \draw_ball|LessThan3~18_combout\,
	datac => \draw_ball|LessThan2~18_combout\,
	datad => \draw_ball|LessThan1~18_combout\,
	combout => \draw_ball|always0~0_combout\);

-- Location: FF_X21_Y22_N1
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

-- Location: LCCOMB_X26_Y25_N0
\draw_player_2_paddle|always0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|always0~3_combout\ = (!\VGA_Driver|HS_counter\(5) & ((\VGA_Driver|HS_counter\(2)) # ((\VGA_Driver|HS_counter\(1) & \VGA_Driver|HS_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(5),
	datab => \VGA_Driver|HS_counter\(1),
	datac => \VGA_Driver|HS_counter\(0),
	datad => \VGA_Driver|HS_counter\(2),
	combout => \draw_player_2_paddle|always0~3_combout\);

-- Location: LCCOMB_X26_Y25_N10
\draw_player_2_paddle|always0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|always0~4_combout\ = (!\VGA_Driver|Add0~4_combout\ & (\draw_player_2_paddle|always0~3_combout\ & (\VGA_Driver|Add0~3_combout\ & !\VGA_Driver|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~4_combout\,
	datab => \draw_player_2_paddle|always0~3_combout\,
	datac => \VGA_Driver|Add0~3_combout\,
	datad => \VGA_Driver|Add0~2_combout\,
	combout => \draw_player_2_paddle|always0~4_combout\);

-- Location: LCCOMB_X20_Y25_N4
\draw_player_2_paddle|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|LessThan2~1_cout\ = CARRY((!\VGA_Driver|Add1~0_combout\ & player_2_paddle_Y_location(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~0_combout\,
	datab => player_2_paddle_Y_location(0),
	datad => VCC,
	cout => \draw_player_2_paddle|LessThan2~1_cout\);

-- Location: LCCOMB_X20_Y25_N6
\draw_player_2_paddle|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|LessThan2~3_cout\ = CARRY((player_2_paddle_Y_location(1) & (\VGA_Driver|Add1~2_combout\ & !\draw_player_2_paddle|LessThan2~1_cout\)) # (!player_2_paddle_Y_location(1) & ((\VGA_Driver|Add1~2_combout\) # 
-- (!\draw_player_2_paddle|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_2_paddle_Y_location(1),
	datab => \VGA_Driver|Add1~2_combout\,
	datad => VCC,
	cin => \draw_player_2_paddle|LessThan2~1_cout\,
	cout => \draw_player_2_paddle|LessThan2~3_cout\);

-- Location: LCCOMB_X20_Y25_N8
\draw_player_2_paddle|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|LessThan2~5_cout\ = CARRY((player_2_paddle_Y_location(2) & ((!\draw_player_2_paddle|LessThan2~3_cout\) # (!\VGA_Driver|Add1~4_combout\))) # (!player_2_paddle_Y_location(2) & (!\VGA_Driver|Add1~4_combout\ & 
-- !\draw_player_2_paddle|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_2_paddle_Y_location(2),
	datab => \VGA_Driver|Add1~4_combout\,
	datad => VCC,
	cin => \draw_player_2_paddle|LessThan2~3_cout\,
	cout => \draw_player_2_paddle|LessThan2~5_cout\);

-- Location: LCCOMB_X20_Y25_N10
\draw_player_2_paddle|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|LessThan2~7_cout\ = CARRY((player_2_paddle_Y_location(3) & (\VGA_Driver|Add1~6_combout\ & !\draw_player_2_paddle|LessThan2~5_cout\)) # (!player_2_paddle_Y_location(3) & ((\VGA_Driver|Add1~6_combout\) # 
-- (!\draw_player_2_paddle|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_2_paddle_Y_location(3),
	datab => \VGA_Driver|Add1~6_combout\,
	datad => VCC,
	cin => \draw_player_2_paddle|LessThan2~5_cout\,
	cout => \draw_player_2_paddle|LessThan2~7_cout\);

-- Location: LCCOMB_X20_Y25_N12
\draw_player_2_paddle|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|LessThan2~9_cout\ = CARRY((\VGA_Driver|Add1~8_combout\ & (player_2_paddle_Y_location(4) & !\draw_player_2_paddle|LessThan2~7_cout\)) # (!\VGA_Driver|Add1~8_combout\ & ((player_2_paddle_Y_location(4)) # 
-- (!\draw_player_2_paddle|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~8_combout\,
	datab => player_2_paddle_Y_location(4),
	datad => VCC,
	cin => \draw_player_2_paddle|LessThan2~7_cout\,
	cout => \draw_player_2_paddle|LessThan2~9_cout\);

-- Location: LCCOMB_X20_Y25_N14
\draw_player_2_paddle|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|LessThan2~11_cout\ = CARRY((\VGA_Driver|Add1~10_combout\ & ((!\draw_player_2_paddle|LessThan2~9_cout\) # (!player_2_paddle_Y_location(5)))) # (!\VGA_Driver|Add1~10_combout\ & (!player_2_paddle_Y_location(5) & 
-- !\draw_player_2_paddle|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~10_combout\,
	datab => player_2_paddle_Y_location(5),
	datad => VCC,
	cin => \draw_player_2_paddle|LessThan2~9_cout\,
	cout => \draw_player_2_paddle|LessThan2~11_cout\);

-- Location: LCCOMB_X20_Y25_N16
\draw_player_2_paddle|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|LessThan2~13_cout\ = CARRY((\VGA_Driver|Add1~12_combout\ & (player_2_paddle_Y_location(6) & !\draw_player_2_paddle|LessThan2~11_cout\)) # (!\VGA_Driver|Add1~12_combout\ & ((player_2_paddle_Y_location(6)) # 
-- (!\draw_player_2_paddle|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~12_combout\,
	datab => player_2_paddle_Y_location(6),
	datad => VCC,
	cin => \draw_player_2_paddle|LessThan2~11_cout\,
	cout => \draw_player_2_paddle|LessThan2~13_cout\);

-- Location: LCCOMB_X20_Y25_N18
\draw_player_2_paddle|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|LessThan2~15_cout\ = CARRY((\VGA_Driver|Add1~14_combout\ & ((!\draw_player_2_paddle|LessThan2~13_cout\) # (!player_2_paddle_Y_location(7)))) # (!\VGA_Driver|Add1~14_combout\ & (!player_2_paddle_Y_location(7) & 
-- !\draw_player_2_paddle|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~14_combout\,
	datab => player_2_paddle_Y_location(7),
	datad => VCC,
	cin => \draw_player_2_paddle|LessThan2~13_cout\,
	cout => \draw_player_2_paddle|LessThan2~15_cout\);

-- Location: LCCOMB_X20_Y25_N20
\draw_player_2_paddle|LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|LessThan2~17_cout\ = CARRY((player_2_paddle_Y_location(8) & ((!\draw_player_2_paddle|LessThan2~15_cout\) # (!\VGA_Driver|Add1~16_combout\))) # (!player_2_paddle_Y_location(8) & (!\VGA_Driver|Add1~16_combout\ & 
-- !\draw_player_2_paddle|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_2_paddle_Y_location(8),
	datab => \VGA_Driver|Add1~16_combout\,
	datad => VCC,
	cin => \draw_player_2_paddle|LessThan2~15_cout\,
	cout => \draw_player_2_paddle|LessThan2~17_cout\);

-- Location: LCCOMB_X20_Y25_N22
\draw_player_2_paddle|LessThan2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|LessThan2~18_combout\ = (player_2_paddle_Y_location(9) & ((\draw_player_2_paddle|LessThan2~17_cout\) # (!\VGA_Driver|Add1~18_combout\))) # (!player_2_paddle_Y_location(9) & (\draw_player_2_paddle|LessThan2~17_cout\ & 
-- !\VGA_Driver|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player_2_paddle_Y_location(9),
	datad => \VGA_Driver|Add1~18_combout\,
	cin => \draw_player_2_paddle|LessThan2~17_cout\,
	combout => \draw_player_2_paddle|LessThan2~18_combout\);

-- Location: LCCOMB_X19_Y25_N0
\draw_player_2_paddle|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|Add1~0_combout\ = (player_2_paddle_Y_location(1) & (player_2_paddle_Y_location(2) $ (VCC))) # (!player_2_paddle_Y_location(1) & (player_2_paddle_Y_location(2) & VCC))
-- \draw_player_2_paddle|Add1~1\ = CARRY((player_2_paddle_Y_location(1) & player_2_paddle_Y_location(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player_2_paddle_Y_location(1),
	datab => player_2_paddle_Y_location(2),
	datad => VCC,
	combout => \draw_player_2_paddle|Add1~0_combout\,
	cout => \draw_player_2_paddle|Add1~1\);

-- Location: LCCOMB_X19_Y25_N2
\draw_player_2_paddle|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|Add1~2_combout\ = (player_2_paddle_Y_location(3) & (!\draw_player_2_paddle|Add1~1\)) # (!player_2_paddle_Y_location(3) & ((\draw_player_2_paddle|Add1~1\) # (GND)))
-- \draw_player_2_paddle|Add1~3\ = CARRY((!\draw_player_2_paddle|Add1~1\) # (!player_2_paddle_Y_location(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player_2_paddle_Y_location(3),
	datad => VCC,
	cin => \draw_player_2_paddle|Add1~1\,
	combout => \draw_player_2_paddle|Add1~2_combout\,
	cout => \draw_player_2_paddle|Add1~3\);

-- Location: LCCOMB_X19_Y25_N4
\draw_player_2_paddle|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|Add1~4_combout\ = (player_2_paddle_Y_location(4) & ((GND) # (!\draw_player_2_paddle|Add1~3\))) # (!player_2_paddle_Y_location(4) & (\draw_player_2_paddle|Add1~3\ $ (GND)))
-- \draw_player_2_paddle|Add1~5\ = CARRY((player_2_paddle_Y_location(4)) # (!\draw_player_2_paddle|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_2_paddle_Y_location(4),
	datad => VCC,
	cin => \draw_player_2_paddle|Add1~3\,
	combout => \draw_player_2_paddle|Add1~4_combout\,
	cout => \draw_player_2_paddle|Add1~5\);

-- Location: LCCOMB_X19_Y25_N6
\draw_player_2_paddle|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|Add1~6_combout\ = (player_2_paddle_Y_location(5) & (\draw_player_2_paddle|Add1~5\ & VCC)) # (!player_2_paddle_Y_location(5) & (!\draw_player_2_paddle|Add1~5\))
-- \draw_player_2_paddle|Add1~7\ = CARRY((!player_2_paddle_Y_location(5) & !\draw_player_2_paddle|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player_2_paddle_Y_location(5),
	datad => VCC,
	cin => \draw_player_2_paddle|Add1~5\,
	combout => \draw_player_2_paddle|Add1~6_combout\,
	cout => \draw_player_2_paddle|Add1~7\);

-- Location: LCCOMB_X19_Y25_N8
\draw_player_2_paddle|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|Add1~8_combout\ = (player_2_paddle_Y_location(6) & (\draw_player_2_paddle|Add1~7\ $ (GND))) # (!player_2_paddle_Y_location(6) & (!\draw_player_2_paddle|Add1~7\ & VCC))
-- \draw_player_2_paddle|Add1~9\ = CARRY((player_2_paddle_Y_location(6) & !\draw_player_2_paddle|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_2_paddle_Y_location(6),
	datad => VCC,
	cin => \draw_player_2_paddle|Add1~7\,
	combout => \draw_player_2_paddle|Add1~8_combout\,
	cout => \draw_player_2_paddle|Add1~9\);

-- Location: LCCOMB_X19_Y25_N10
\draw_player_2_paddle|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|Add1~10_combout\ = (player_2_paddle_Y_location(7) & (!\draw_player_2_paddle|Add1~9\)) # (!player_2_paddle_Y_location(7) & ((\draw_player_2_paddle|Add1~9\) # (GND)))
-- \draw_player_2_paddle|Add1~11\ = CARRY((!\draw_player_2_paddle|Add1~9\) # (!player_2_paddle_Y_location(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player_2_paddle_Y_location(7),
	datad => VCC,
	cin => \draw_player_2_paddle|Add1~9\,
	combout => \draw_player_2_paddle|Add1~10_combout\,
	cout => \draw_player_2_paddle|Add1~11\);

-- Location: LCCOMB_X19_Y25_N12
\draw_player_2_paddle|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|Add1~12_combout\ = (player_2_paddle_Y_location(8) & (\draw_player_2_paddle|Add1~11\ $ (GND))) # (!player_2_paddle_Y_location(8) & (!\draw_player_2_paddle|Add1~11\ & VCC))
-- \draw_player_2_paddle|Add1~13\ = CARRY((player_2_paddle_Y_location(8) & !\draw_player_2_paddle|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_2_paddle_Y_location(8),
	datad => VCC,
	cin => \draw_player_2_paddle|Add1~11\,
	combout => \draw_player_2_paddle|Add1~12_combout\,
	cout => \draw_player_2_paddle|Add1~13\);

-- Location: LCCOMB_X19_Y25_N14
\draw_player_2_paddle|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|Add1~14_combout\ = \draw_player_2_paddle|Add1~13\ $ (player_2_paddle_Y_location(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => player_2_paddle_Y_location(9),
	cin => \draw_player_2_paddle|Add1~13\,
	combout => \draw_player_2_paddle|Add1~14_combout\);

-- Location: LCCOMB_X19_Y24_N6
\draw_player_2_paddle|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|LessThan3~1_cout\ = CARRY((player_2_paddle_Y_location(0) & !\VGA_Driver|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_2_paddle_Y_location(0),
	datab => \VGA_Driver|Add1~0_combout\,
	datad => VCC,
	cout => \draw_player_2_paddle|LessThan3~1_cout\);

-- Location: LCCOMB_X19_Y24_N8
\draw_player_2_paddle|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|LessThan3~3_cout\ = CARRY((player_2_paddle_Y_location(1) & ((\VGA_Driver|Add1~2_combout\) # (!\draw_player_2_paddle|LessThan3~1_cout\))) # (!player_2_paddle_Y_location(1) & (\VGA_Driver|Add1~2_combout\ & 
-- !\draw_player_2_paddle|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player_2_paddle_Y_location(1),
	datab => \VGA_Driver|Add1~2_combout\,
	datad => VCC,
	cin => \draw_player_2_paddle|LessThan3~1_cout\,
	cout => \draw_player_2_paddle|LessThan3~3_cout\);

-- Location: LCCOMB_X19_Y24_N10
\draw_player_2_paddle|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|LessThan3~5_cout\ = CARRY((\VGA_Driver|Add1~4_combout\ & (\draw_player_2_paddle|Add1~0_combout\ & !\draw_player_2_paddle|LessThan3~3_cout\)) # (!\VGA_Driver|Add1~4_combout\ & ((\draw_player_2_paddle|Add1~0_combout\) # 
-- (!\draw_player_2_paddle|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~4_combout\,
	datab => \draw_player_2_paddle|Add1~0_combout\,
	datad => VCC,
	cin => \draw_player_2_paddle|LessThan3~3_cout\,
	cout => \draw_player_2_paddle|LessThan3~5_cout\);

-- Location: LCCOMB_X19_Y24_N12
\draw_player_2_paddle|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|LessThan3~7_cout\ = CARRY((\VGA_Driver|Add1~6_combout\ & ((!\draw_player_2_paddle|LessThan3~5_cout\) # (!\draw_player_2_paddle|Add1~2_combout\))) # (!\VGA_Driver|Add1~6_combout\ & (!\draw_player_2_paddle|Add1~2_combout\ & 
-- !\draw_player_2_paddle|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~6_combout\,
	datab => \draw_player_2_paddle|Add1~2_combout\,
	datad => VCC,
	cin => \draw_player_2_paddle|LessThan3~5_cout\,
	cout => \draw_player_2_paddle|LessThan3~7_cout\);

-- Location: LCCOMB_X19_Y24_N14
\draw_player_2_paddle|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|LessThan3~9_cout\ = CARRY((\draw_player_2_paddle|Add1~4_combout\ & ((!\draw_player_2_paddle|LessThan3~7_cout\) # (!\VGA_Driver|Add1~8_combout\))) # (!\draw_player_2_paddle|Add1~4_combout\ & (!\VGA_Driver|Add1~8_combout\ & 
-- !\draw_player_2_paddle|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_player_2_paddle|Add1~4_combout\,
	datab => \VGA_Driver|Add1~8_combout\,
	datad => VCC,
	cin => \draw_player_2_paddle|LessThan3~7_cout\,
	cout => \draw_player_2_paddle|LessThan3~9_cout\);

-- Location: LCCOMB_X19_Y24_N16
\draw_player_2_paddle|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|LessThan3~11_cout\ = CARRY((\draw_player_2_paddle|Add1~6_combout\ & (\VGA_Driver|Add1~10_combout\ & !\draw_player_2_paddle|LessThan3~9_cout\)) # (!\draw_player_2_paddle|Add1~6_combout\ & ((\VGA_Driver|Add1~10_combout\) # 
-- (!\draw_player_2_paddle|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_player_2_paddle|Add1~6_combout\,
	datab => \VGA_Driver|Add1~10_combout\,
	datad => VCC,
	cin => \draw_player_2_paddle|LessThan3~9_cout\,
	cout => \draw_player_2_paddle|LessThan3~11_cout\);

-- Location: LCCOMB_X19_Y24_N18
\draw_player_2_paddle|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|LessThan3~13_cout\ = CARRY((\VGA_Driver|Add1~12_combout\ & (\draw_player_2_paddle|Add1~8_combout\ & !\draw_player_2_paddle|LessThan3~11_cout\)) # (!\VGA_Driver|Add1~12_combout\ & ((\draw_player_2_paddle|Add1~8_combout\) # 
-- (!\draw_player_2_paddle|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~12_combout\,
	datab => \draw_player_2_paddle|Add1~8_combout\,
	datad => VCC,
	cin => \draw_player_2_paddle|LessThan3~11_cout\,
	cout => \draw_player_2_paddle|LessThan3~13_cout\);

-- Location: LCCOMB_X19_Y24_N20
\draw_player_2_paddle|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|LessThan3~15_cout\ = CARRY((\draw_player_2_paddle|Add1~10_combout\ & (\VGA_Driver|Add1~14_combout\ & !\draw_player_2_paddle|LessThan3~13_cout\)) # (!\draw_player_2_paddle|Add1~10_combout\ & ((\VGA_Driver|Add1~14_combout\) # 
-- (!\draw_player_2_paddle|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_player_2_paddle|Add1~10_combout\,
	datab => \VGA_Driver|Add1~14_combout\,
	datad => VCC,
	cin => \draw_player_2_paddle|LessThan3~13_cout\,
	cout => \draw_player_2_paddle|LessThan3~15_cout\);

-- Location: LCCOMB_X19_Y24_N22
\draw_player_2_paddle|LessThan3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|LessThan3~17_cout\ = CARRY((\draw_player_2_paddle|Add1~12_combout\ & ((!\draw_player_2_paddle|LessThan3~15_cout\) # (!\VGA_Driver|Add1~16_combout\))) # (!\draw_player_2_paddle|Add1~12_combout\ & (!\VGA_Driver|Add1~16_combout\ & 
-- !\draw_player_2_paddle|LessThan3~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_player_2_paddle|Add1~12_combout\,
	datab => \VGA_Driver|Add1~16_combout\,
	datad => VCC,
	cin => \draw_player_2_paddle|LessThan3~15_cout\,
	cout => \draw_player_2_paddle|LessThan3~17_cout\);

-- Location: LCCOMB_X19_Y24_N24
\draw_player_2_paddle|LessThan3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|LessThan3~18_combout\ = (\draw_player_2_paddle|Add1~14_combout\ & ((\draw_player_2_paddle|LessThan3~17_cout\) # (!\VGA_Driver|Add1~18_combout\))) # (!\draw_player_2_paddle|Add1~14_combout\ & (\draw_player_2_paddle|LessThan3~17_cout\ 
-- & !\VGA_Driver|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \draw_player_2_paddle|Add1~14_combout\,
	datad => \VGA_Driver|Add1~18_combout\,
	cin => \draw_player_2_paddle|LessThan3~17_cout\,
	combout => \draw_player_2_paddle|LessThan3~18_combout\);

-- Location: LCCOMB_X27_Y25_N30
\draw_player_2_paddle|always0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|always0~2_combout\ = (!\draw_player_2_paddle|LessThan2~18_combout\ & (\VGA_Driver|HS_counter\(4) & (\draw_player_2_paddle|LessThan3~18_combout\ & \VGA_Driver|HS_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_player_2_paddle|LessThan2~18_combout\,
	datab => \VGA_Driver|HS_counter\(4),
	datac => \draw_player_2_paddle|LessThan3~18_combout\,
	datad => \VGA_Driver|HS_counter\(3),
	combout => \draw_player_2_paddle|always0~2_combout\);

-- Location: LCCOMB_X27_Y25_N20
\draw_player_2_paddle|always0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_2_paddle|always0~5_combout\ = (\draw_player_2_paddle|always0~4_combout\ & (\draw_player_2_paddle|always0~2_combout\ & (\VGA_Driver|Add0~0_combout\ $ (!\VGA_Driver|HS_counter\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_player_2_paddle|always0~4_combout\,
	datab => \VGA_Driver|Add0~0_combout\,
	datac => \draw_player_2_paddle|always0~2_combout\,
	datad => \VGA_Driver|HS_counter\(9),
	combout => \draw_player_2_paddle|always0~5_combout\);

-- Location: FF_X27_Y25_N21
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

-- Location: LCCOMB_X40_Y21_N0
\pixel_color~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_color~0_combout\ = (\draw_player_1_paddle|box~q\) # ((\draw_ball|box~q\ & !\draw_player_2_paddle|box~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_player_1_paddle|box~q\,
	datab => \draw_ball|box~q\,
	datac => \draw_player_2_paddle|box~q\,
	combout => \pixel_color~0_combout\);

-- Location: FF_X40_Y21_N1
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

-- Location: LCCOMB_X40_Y21_N6
\VGA_Driver|VGA_BUS_R~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_R~0_combout\ = (\VGA_Driver|H_visible\(0) & (\VGA_Driver|V_visible\(0) & pixel_color(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|H_visible\(0),
	datab => \VGA_Driver|V_visible\(0),
	datad => pixel_color(3),
	combout => \VGA_Driver|VGA_BUS_R~0_combout\);

-- Location: LCCOMB_X40_Y21_N24
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

-- Location: FF_X40_Y21_N25
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

-- Location: LCCOMB_X40_Y21_N2
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

-- Location: FF_X40_Y21_N3
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

-- Location: LCCOMB_X40_Y21_N4
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

-- Location: FF_X40_Y21_N5
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

-- Location: FF_X40_Y21_N7
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

-- Location: LCCOMB_X40_Y21_N10
\pixel_color~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_color~1_combout\ = (!\draw_player_1_paddle|box~q\ & (\draw_ball|box~q\ & !\draw_player_2_paddle|box~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_player_1_paddle|box~q\,
	datab => \draw_ball|box~q\,
	datac => \draw_player_2_paddle|box~q\,
	combout => \pixel_color~1_combout\);

-- Location: FF_X40_Y21_N11
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

-- Location: LCCOMB_X40_Y21_N30
\VGA_Driver|VGA_BUS_G~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_G~0_combout\ = (\VGA_Driver|H_visible\(0) & (\VGA_Driver|V_visible\(0) & pixel_color(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|H_visible\(0),
	datab => \VGA_Driver|V_visible\(0),
	datad => pixel_color(7),
	combout => \VGA_Driver|VGA_BUS_G~0_combout\);

-- Location: FF_X40_Y21_N9
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

-- Location: FF_X40_Y21_N27
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

-- Location: FF_X40_Y21_N29
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

-- Location: FF_X40_Y21_N31
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

-- Location: LCCOMB_X40_Y21_N12
\pixel_color~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_color~2_combout\ = (!\draw_player_1_paddle|box~q\ & ((\draw_ball|box~q\) # (\draw_player_2_paddle|box~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_player_1_paddle|box~q\,
	datab => \draw_ball|box~q\,
	datac => \draw_player_2_paddle|box~q\,
	combout => \pixel_color~2_combout\);

-- Location: FF_X40_Y21_N13
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

-- Location: LCCOMB_X40_Y21_N14
\VGA_Driver|VGA_BUS_B~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_B~0_combout\ = (\VGA_Driver|H_visible\(0) & (\VGA_Driver|V_visible\(0) & pixel_color(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|H_visible\(0),
	datab => \VGA_Driver|V_visible\(0),
	datad => pixel_color(11),
	combout => \VGA_Driver|VGA_BUS_B~0_combout\);

-- Location: FF_X40_Y21_N17
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

-- Location: FF_X40_Y21_N19
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

-- Location: FF_X40_Y21_N21
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

-- Location: FF_X40_Y21_N15
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

-- Location: LCCOMB_X29_Y25_N8
\VGA_Driver|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector0~0_combout\ = (!\VGA_Driver|Equal2~0_combout\ & ((\VGA_Driver|VGA_HS\(0)) # ((!\VGA_Driver|WideNor0~0_combout\ & \VGA_Driver|WideNor0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|WideNor0~0_combout\,
	datab => \VGA_Driver|WideNor0~1_combout\,
	datac => \VGA_Driver|VGA_HS\(0),
	datad => \VGA_Driver|Equal2~0_combout\,
	combout => \VGA_Driver|Selector0~0_combout\);

-- Location: FF_X29_Y25_N9
\VGA_Driver|VGA_HS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_HS\(0));

-- Location: LCCOMB_X21_Y23_N6
\VGA_Driver|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector6~0_combout\ = (\VGA_Driver|Equal7~0_combout\ & (\VGA_Driver|VS_counter\(9) $ (\VGA_Driver|VS_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|Equal7~0_combout\,
	datac => \VGA_Driver|VS_counter\(9),
	datad => \VGA_Driver|VS_counter\(5),
	combout => \VGA_Driver|Selector6~0_combout\);

-- Location: LCCOMB_X21_Y23_N2
\VGA_Driver|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector6~1_combout\ = (\VGA_Driver|Equal5~2_combout\ & ((\VGA_Driver|VGA_VS\(0) & (\VGA_Driver|VS_counter\(2) & !\VGA_Driver|VS_counter\(1))) # (!\VGA_Driver|VGA_VS\(0) & (!\VGA_Driver|VS_counter\(2) & \VGA_Driver|VS_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal5~2_combout\,
	datab => \VGA_Driver|VGA_VS\(0),
	datac => \VGA_Driver|VS_counter\(2),
	datad => \VGA_Driver|VS_counter\(1),
	combout => \VGA_Driver|Selector6~1_combout\);

-- Location: LCCOMB_X21_Y23_N16
\VGA_Driver|Selector6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector6~2_combout\ = (\VGA_Driver|Selector6~1_combout\ & ((\VGA_Driver|VGA_VS\(0) & ((!\VGA_Driver|Equal5~1_combout\))) # (!\VGA_Driver|VGA_VS\(0) & (!\VGA_Driver|Selector6~0_combout\ & \VGA_Driver|Equal5~1_combout\)))) # 
-- (!\VGA_Driver|Selector6~1_combout\ & (((\VGA_Driver|VGA_VS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Selector6~0_combout\,
	datab => \VGA_Driver|Selector6~1_combout\,
	datac => \VGA_Driver|VGA_VS\(0),
	datad => \VGA_Driver|Equal5~1_combout\,
	combout => \VGA_Driver|Selector6~2_combout\);

-- Location: FF_X21_Y23_N17
\VGA_Driver|VGA_VS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Selector6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_VS\(0));
END structure;


