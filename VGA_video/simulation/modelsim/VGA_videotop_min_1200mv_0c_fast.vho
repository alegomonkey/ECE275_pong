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

-- DATE "04/22/2025 15:08:33"

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
	SW : IN std_logic_vector(7 DOWNTO 0)
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
-- SW[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \VGA_Driver|Add4~11\ : std_logic;
SIGNAL \VGA_Driver|Add4~13\ : std_logic;
SIGNAL \VGA_Driver|Add4~14_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector2~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~15\ : std_logic;
SIGNAL \VGA_Driver|Add4~16_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~27_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal4~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~17\ : std_logic;
SIGNAL \VGA_Driver|Add4~18_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~26_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal4~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal4~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~7\ : std_logic;
SIGNAL \VGA_Driver|Add4~8_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector5~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~9\ : std_logic;
SIGNAL \VGA_Driver|Add4~10_combout\ : std_logic;
SIGNAL \VGA_Driver|WideNor0~combout\ : std_logic;
SIGNAL \VGA_Driver|Selector4~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal2~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~12_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector3~0_combout\ : std_logic;
SIGNAL \VGA_Driver|WideNor0~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~23_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~1\ : std_logic;
SIGNAL \VGA_Driver|Add4~3\ : std_logic;
SIGNAL \VGA_Driver|Add4~4_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~24_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~5\ : std_logic;
SIGNAL \VGA_Driver|Add4~6_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~28_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal1~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal3~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal3~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~25_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~19\ : std_logic;
SIGNAL \VGA_Driver|Add4~20_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~22_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal1~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal1~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal1~3_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector1~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector1~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~0_combout\ : std_logic;
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
SIGNAL \VGA_Driver|Equal6~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal7~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~18_combout\ : std_logic;
SIGNAL \VGA_Driver|VS_counter~4_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal5~3_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal5~4_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal5~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal6~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector7~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector7~1_combout\ : std_logic;
SIGNAL \draw_ball|always0~3_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~1\ : std_logic;
SIGNAL \VGA_Driver|Add1~2_combout\ : std_logic;
SIGNAL \draw_ball|always0~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~3\ : std_logic;
SIGNAL \VGA_Driver|Add1~4_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~0_combout\ : std_logic;
SIGNAL \draw_ball|always0~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~5\ : std_logic;
SIGNAL \VGA_Driver|Add1~7\ : std_logic;
SIGNAL \VGA_Driver|Add1~9\ : std_logic;
SIGNAL \VGA_Driver|Add1~11\ : std_logic;
SIGNAL \VGA_Driver|Add1~13\ : std_logic;
SIGNAL \VGA_Driver|Add1~15\ : std_logic;
SIGNAL \VGA_Driver|Add1~16_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~10_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~8_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~6_combout\ : std_logic;
SIGNAL \draw_ball|always0~4_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~12_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~14_combout\ : std_logic;
SIGNAL \draw_ball|always0~5_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~17\ : std_logic;
SIGNAL \VGA_Driver|Add1~18_combout\ : std_logic;
SIGNAL \draw_ball|always0~0_combout\ : std_logic;
SIGNAL \draw_ball|always0~6_combout\ : std_logic;
SIGNAL \draw_ball|box~q\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~1_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~3_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~5_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~7_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~9_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~11_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~13_cout\ : std_logic;
SIGNAL \draw_player_1_paddle|LessThan2~14_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|always0~2_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|always0~0_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|always0~1_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~1\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~3\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~5\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~7\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~9\ : std_logic;
SIGNAL \draw_player_1_paddle|Add1~11\ : std_logic;
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
SIGNAL \draw_player_1_paddle|LessThan3~16_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|always0~3_combout\ : std_logic;
SIGNAL \draw_player_1_paddle|box~q\ : std_logic;
SIGNAL \pixel_color~0_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_R~0_combout\ : std_logic;
SIGNAL \pixel_color[4]~feeder_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_G~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector0~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector0~3_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector6~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector6~1_combout\ : std_logic;
SIGNAL \VGA_Driver|H_visible\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA_Driver|VGA_VS\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL pixel_color : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA_Driver|VGA_BUS_R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_Driver|VGA_HS\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA_Driver|VGA_BUS_B\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_Driver|VS_counter\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \VGA_Driver|VGA_BUS_G\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_Driver|V_visible\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA_Driver|HS_counter\ : std_logic_vector(10 DOWNTO 0);
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

-- Location: LCCOMB_X22_Y11_N18
\VGA_Driver|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~10_combout\ = (\VGA_Driver|HS_counter\(5) & (!\VGA_Driver|Add4~9\)) # (!\VGA_Driver|HS_counter\(5) & ((\VGA_Driver|Add4~9\) # (GND)))
-- \VGA_Driver|Add4~11\ = CARRY((!\VGA_Driver|Add4~9\) # (!\VGA_Driver|HS_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(5),
	datad => VCC,
	cin => \VGA_Driver|Add4~9\,
	combout => \VGA_Driver|Add4~10_combout\,
	cout => \VGA_Driver|Add4~11\);

-- Location: LCCOMB_X22_Y11_N20
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

-- Location: LCCOMB_X22_Y11_N22
\VGA_Driver|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~14_combout\ = (\VGA_Driver|HS_counter\(7) & (!\VGA_Driver|Add4~13\)) # (!\VGA_Driver|HS_counter\(7) & ((\VGA_Driver|Add4~13\) # (GND)))
-- \VGA_Driver|Add4~15\ = CARRY((!\VGA_Driver|Add4~13\) # (!\VGA_Driver|HS_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(7),
	datad => VCC,
	cin => \VGA_Driver|Add4~13\,
	combout => \VGA_Driver|Add4~14_combout\,
	cout => \VGA_Driver|Add4~15\);

-- Location: LCCOMB_X22_Y12_N0
\VGA_Driver|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector2~0_combout\ = (\VGA_Driver|Equal3~1_combout\) # ((\VGA_Driver|Add4~14_combout\ & (!\VGA_Driver|Equal4~2_combout\ & \VGA_Driver|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add4~14_combout\,
	datab => \VGA_Driver|Equal3~1_combout\,
	datac => \VGA_Driver|Equal4~2_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Selector2~0_combout\);

-- Location: FF_X22_Y12_N1
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

-- Location: LCCOMB_X22_Y11_N24
\VGA_Driver|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~16_combout\ = (\VGA_Driver|HS_counter\(8) & (\VGA_Driver|Add4~15\ $ (GND))) # (!\VGA_Driver|HS_counter\(8) & (!\VGA_Driver|Add4~15\ & VCC))
-- \VGA_Driver|Add4~17\ = CARRY((\VGA_Driver|HS_counter\(8) & !\VGA_Driver|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(8),
	datad => VCC,
	cin => \VGA_Driver|Add4~15\,
	combout => \VGA_Driver|Add4~16_combout\,
	cout => \VGA_Driver|Add4~17\);

-- Location: LCCOMB_X22_Y11_N30
\VGA_Driver|Add4~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~27_combout\ = (!\VGA_Driver|Equal3~1_combout\ & (\VGA_Driver|Add4~16_combout\ & (!\VGA_Driver|Equal4~2_combout\ & \VGA_Driver|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|Add4~16_combout\,
	datac => \VGA_Driver|Equal4~2_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Add4~27_combout\);

-- Location: FF_X22_Y11_N31
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

-- Location: LCCOMB_X22_Y12_N2
\VGA_Driver|Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal4~1_combout\ = (\VGA_Driver|HS_counter\(8) & !\VGA_Driver|HS_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Driver|HS_counter\(8),
	datad => \VGA_Driver|HS_counter\(7),
	combout => \VGA_Driver|Equal4~1_combout\);

-- Location: LCCOMB_X22_Y11_N26
\VGA_Driver|Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~18_combout\ = (\VGA_Driver|HS_counter\(9) & (!\VGA_Driver|Add4~17\)) # (!\VGA_Driver|HS_counter\(9) & ((\VGA_Driver|Add4~17\) # (GND)))
-- \VGA_Driver|Add4~19\ = CARRY((!\VGA_Driver|Add4~17\) # (!\VGA_Driver|HS_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(9),
	datad => VCC,
	cin => \VGA_Driver|Add4~17\,
	combout => \VGA_Driver|Add4~18_combout\,
	cout => \VGA_Driver|Add4~19\);

-- Location: LCCOMB_X22_Y11_N6
\VGA_Driver|Add4~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~26_combout\ = (!\VGA_Driver|Equal3~1_combout\ & (!\VGA_Driver|Equal4~2_combout\ & (\VGA_Driver|Add4~18_combout\ & \VGA_Driver|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|Equal4~2_combout\,
	datac => \VGA_Driver|Add4~18_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Add4~26_combout\);

-- Location: FF_X22_Y11_N7
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

-- Location: LCCOMB_X22_Y12_N8
\VGA_Driver|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal4~0_combout\ = (!\VGA_Driver|HS_counter\(4) & (\VGA_Driver|HS_counter\(9) & (\VGA_Driver|HS_counter\(5) & !\VGA_Driver|HS_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(4),
	datab => \VGA_Driver|HS_counter\(9),
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|Equal4~0_combout\);

-- Location: LCCOMB_X22_Y12_N12
\VGA_Driver|Equal4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal4~2_combout\ = (\VGA_Driver|Equal1~0_combout\ & (\VGA_Driver|Equal4~1_combout\ & (\VGA_Driver|Equal4~0_combout\ & !\VGA_Driver|HS_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal1~0_combout\,
	datab => \VGA_Driver|Equal4~1_combout\,
	datac => \VGA_Driver|Equal4~0_combout\,
	datad => \VGA_Driver|HS_counter\(3),
	combout => \VGA_Driver|Equal4~2_combout\);

-- Location: LCCOMB_X22_Y11_N14
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

-- Location: LCCOMB_X22_Y11_N16
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

-- Location: LCCOMB_X22_Y12_N30
\VGA_Driver|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector5~0_combout\ = ((!\VGA_Driver|Equal4~2_combout\ & (!\VGA_Driver|Equal3~1_combout\ & \VGA_Driver|Add4~8_combout\))) # (!\VGA_Driver|WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal4~2_combout\,
	datab => \VGA_Driver|Equal3~1_combout\,
	datac => \VGA_Driver|Add4~8_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Selector5~0_combout\);

-- Location: FF_X22_Y12_N31
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

-- Location: LCCOMB_X30_Y13_N16
\VGA_Driver|WideNor0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|WideNor0~combout\ = (\VGA_Driver|Equal3~1_combout\) # ((\VGA_Driver|Equal4~2_combout\) # (!\VGA_Driver|WideNor0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|WideNor0~0_combout\,
	datad => \VGA_Driver|Equal4~2_combout\,
	combout => \VGA_Driver|WideNor0~combout\);

-- Location: LCCOMB_X30_Y13_N6
\VGA_Driver|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector4~0_combout\ = (\VGA_Driver|Equal3~1_combout\) # ((\VGA_Driver|Equal2~0_combout\) # ((\VGA_Driver|Add4~10_combout\ & !\VGA_Driver|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|Equal2~0_combout\,
	datac => \VGA_Driver|Add4~10_combout\,
	datad => \VGA_Driver|WideNor0~combout\,
	combout => \VGA_Driver|Selector4~0_combout\);

-- Location: FF_X30_Y13_N7
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

-- Location: LCCOMB_X30_Y13_N24
\VGA_Driver|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal2~0_combout\ = (\VGA_Driver|Equal1~3_combout\ & (\VGA_Driver|HS_counter\(6) & \VGA_Driver|HS_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal1~3_combout\,
	datac => \VGA_Driver|HS_counter\(6),
	datad => \VGA_Driver|HS_counter\(5),
	combout => \VGA_Driver|Equal2~0_combout\);

-- Location: LCCOMB_X30_Y13_N12
\VGA_Driver|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector3~0_combout\ = (\VGA_Driver|Equal2~0_combout\) # ((\VGA_Driver|Add4~12_combout\ & !\VGA_Driver|WideNor0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|Equal2~0_combout\,
	datac => \VGA_Driver|Add4~12_combout\,
	datad => \VGA_Driver|WideNor0~combout\,
	combout => \VGA_Driver|Selector3~0_combout\);

-- Location: FF_X30_Y13_N13
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

-- Location: LCCOMB_X30_Y13_N2
\VGA_Driver|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|WideNor0~0_combout\ = (\VGA_Driver|HS_counter\(6) $ (\VGA_Driver|HS_counter\(5))) # (!\VGA_Driver|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal1~3_combout\,
	datac => \VGA_Driver|HS_counter\(6),
	datad => \VGA_Driver|HS_counter\(5),
	combout => \VGA_Driver|WideNor0~0_combout\);

-- Location: LCCOMB_X22_Y11_N8
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

-- Location: LCCOMB_X22_Y12_N24
\VGA_Driver|Add4~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~23_combout\ = (\VGA_Driver|Equal4~2_combout\) # ((\VGA_Driver|Equal3~1_combout\) # ((\VGA_Driver|Add4~0_combout\) # (!\VGA_Driver|WideNor0~0_combout\)))

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
	combout => \VGA_Driver|Add4~23_combout\);

-- Location: FF_X22_Y12_N25
\VGA_Driver|HS_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add4~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(0));

-- Location: LCCOMB_X22_Y11_N10
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

-- Location: LCCOMB_X22_Y11_N12
\VGA_Driver|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~4_combout\ = (\VGA_Driver|HS_counter\(2) & (\VGA_Driver|Add4~3\ $ (GND))) # (!\VGA_Driver|HS_counter\(2) & (!\VGA_Driver|Add4~3\ & VCC))
-- \VGA_Driver|Add4~5\ = CARRY((\VGA_Driver|HS_counter\(2) & !\VGA_Driver|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(2),
	datad => VCC,
	cin => \VGA_Driver|Add4~3\,
	combout => \VGA_Driver|Add4~4_combout\,
	cout => \VGA_Driver|Add4~5\);

-- Location: LCCOMB_X22_Y11_N2
\VGA_Driver|Add4~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~24_combout\ = (!\VGA_Driver|Equal3~1_combout\ & (\VGA_Driver|WideNor0~0_combout\ & (!\VGA_Driver|Equal4~2_combout\ & \VGA_Driver|Add4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|WideNor0~0_combout\,
	datac => \VGA_Driver|Equal4~2_combout\,
	datad => \VGA_Driver|Add4~4_combout\,
	combout => \VGA_Driver|Add4~24_combout\);

-- Location: FF_X22_Y11_N3
\VGA_Driver|HS_counter[2]\ : dffeas
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
	q => \VGA_Driver|HS_counter\(2));

-- Location: LCCOMB_X22_Y12_N20
\VGA_Driver|Add4~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~28_combout\ = (\VGA_Driver|Add4~6_combout\ & (!\VGA_Driver|Equal3~1_combout\ & (!\VGA_Driver|Equal4~2_combout\ & \VGA_Driver|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add4~6_combout\,
	datab => \VGA_Driver|Equal3~1_combout\,
	datac => \VGA_Driver|Equal4~2_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Add4~28_combout\);

-- Location: FF_X22_Y12_N21
\VGA_Driver|HS_counter[3]\ : dffeas
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
	q => \VGA_Driver|HS_counter\(3));

-- Location: LCCOMB_X22_Y12_N4
\VGA_Driver|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal1~1_combout\ = (!\VGA_Driver|HS_counter\(9) & !\VGA_Driver|HS_counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(9),
	datac => \VGA_Driver|HS_counter\(8),
	combout => \VGA_Driver|Equal1~1_combout\);

-- Location: LCCOMB_X22_Y12_N6
\VGA_Driver|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal3~0_combout\ = (!\VGA_Driver|HS_counter\(4) & (\VGA_Driver|HS_counter\(7) & (\VGA_Driver|HS_counter\(5) & !\VGA_Driver|HS_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(4),
	datab => \VGA_Driver|HS_counter\(7),
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|Equal3~0_combout\);

-- Location: LCCOMB_X22_Y12_N16
\VGA_Driver|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal3~1_combout\ = (\VGA_Driver|Equal1~0_combout\ & (!\VGA_Driver|HS_counter\(3) & (\VGA_Driver|Equal1~1_combout\ & \VGA_Driver|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal1~0_combout\,
	datab => \VGA_Driver|HS_counter\(3),
	datac => \VGA_Driver|Equal1~1_combout\,
	datad => \VGA_Driver|Equal3~0_combout\,
	combout => \VGA_Driver|Equal3~1_combout\);

-- Location: LCCOMB_X22_Y11_N4
\VGA_Driver|Add4~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~25_combout\ = (!\VGA_Driver|Equal3~1_combout\ & (\VGA_Driver|WideNor0~0_combout\ & (!\VGA_Driver|Equal4~2_combout\ & \VGA_Driver|Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|WideNor0~0_combout\,
	datac => \VGA_Driver|Equal4~2_combout\,
	datad => \VGA_Driver|Add4~2_combout\,
	combout => \VGA_Driver|Add4~25_combout\);

-- Location: FF_X22_Y11_N5
\VGA_Driver|HS_counter[1]\ : dffeas
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
	q => \VGA_Driver|HS_counter\(1));

-- Location: LCCOMB_X22_Y11_N28
\VGA_Driver|Add4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~20_combout\ = \VGA_Driver|Add4~19\ $ (!\VGA_Driver|HS_counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Driver|HS_counter\(10),
	cin => \VGA_Driver|Add4~19\,
	combout => \VGA_Driver|Add4~20_combout\);

-- Location: LCCOMB_X22_Y11_N0
\VGA_Driver|Add4~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~22_combout\ = (!\VGA_Driver|Equal3~1_combout\ & (\VGA_Driver|Add4~20_combout\ & (!\VGA_Driver|Equal4~2_combout\ & \VGA_Driver|WideNor0~0_combout\)))

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
	combout => \VGA_Driver|Add4~22_combout\);

-- Location: FF_X22_Y11_N1
\VGA_Driver|HS_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add4~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(10));

-- Location: LCCOMB_X22_Y12_N10
\VGA_Driver|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal1~0_combout\ = (!\VGA_Driver|HS_counter\(1) & (!\VGA_Driver|HS_counter\(10) & (!\VGA_Driver|HS_counter\(2) & !\VGA_Driver|HS_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(1),
	datab => \VGA_Driver|HS_counter\(10),
	datac => \VGA_Driver|HS_counter\(2),
	datad => \VGA_Driver|HS_counter\(0),
	combout => \VGA_Driver|Equal1~0_combout\);

-- Location: LCCOMB_X22_Y12_N26
\VGA_Driver|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal1~2_combout\ = (\VGA_Driver|HS_counter\(4) & !\VGA_Driver|HS_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Driver|HS_counter\(4),
	datad => \VGA_Driver|HS_counter\(7),
	combout => \VGA_Driver|Equal1~2_combout\);

-- Location: LCCOMB_X22_Y12_N14
\VGA_Driver|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal1~3_combout\ = (\VGA_Driver|Equal1~0_combout\ & (\VGA_Driver|Equal1~1_combout\ & (\VGA_Driver|Equal1~2_combout\ & !\VGA_Driver|HS_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal1~0_combout\,
	datab => \VGA_Driver|Equal1~1_combout\,
	datac => \VGA_Driver|Equal1~2_combout\,
	datad => \VGA_Driver|HS_counter\(3),
	combout => \VGA_Driver|Equal1~3_combout\);

-- Location: LCCOMB_X30_Y13_N22
\VGA_Driver|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector1~0_combout\ = (\VGA_Driver|Equal1~3_combout\ & (\VGA_Driver|H_visible\(0) & (\VGA_Driver|HS_counter\(6) $ (!\VGA_Driver|HS_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal1~3_combout\,
	datab => \VGA_Driver|H_visible\(0),
	datac => \VGA_Driver|HS_counter\(6),
	datad => \VGA_Driver|HS_counter\(5),
	combout => \VGA_Driver|Selector1~0_combout\);

-- Location: LCCOMB_X30_Y13_N18
\VGA_Driver|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector1~1_combout\ = (\VGA_Driver|Selector1~0_combout\) # ((\VGA_Driver|Equal3~1_combout\) # ((!\VGA_Driver|WideNor0~combout\ & \VGA_Driver|H_visible\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Selector1~0_combout\,
	datab => \VGA_Driver|WideNor0~combout\,
	datac => \VGA_Driver|H_visible\(0),
	datad => \VGA_Driver|Equal3~1_combout\,
	combout => \VGA_Driver|Selector1~1_combout\);

-- Location: FF_X30_Y13_N19
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

-- Location: LCCOMB_X38_Y17_N6
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

-- Location: LCCOMB_X38_Y17_N0
\VGA_Driver|VS_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VS_counter~0_combout\ = (\VGA_Driver|Add3~0_combout\) # ((\VGA_Driver|Equal7~0_combout\ & (!\VGA_Driver|VS_counter\(5) & \VGA_Driver|VS_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal7~0_combout\,
	datab => \VGA_Driver|VS_counter\(5),
	datac => \VGA_Driver|VS_counter\(9),
	datad => \VGA_Driver|Add3~0_combout\,
	combout => \VGA_Driver|VS_counter~0_combout\);

-- Location: FF_X38_Y17_N1
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

-- Location: LCCOMB_X38_Y17_N8
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

-- Location: LCCOMB_X38_Y17_N28
\VGA_Driver|VS_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VS_counter~3_combout\ = (\VGA_Driver|Add3~2_combout\ & (((\VGA_Driver|VS_counter\(5)) # (!\VGA_Driver|VS_counter\(9))) # (!\VGA_Driver|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal7~0_combout\,
	datab => \VGA_Driver|Add3~2_combout\,
	datac => \VGA_Driver|VS_counter\(9),
	datad => \VGA_Driver|VS_counter\(5),
	combout => \VGA_Driver|VS_counter~3_combout\);

-- Location: FF_X38_Y17_N29
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

-- Location: LCCOMB_X38_Y17_N10
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

-- Location: LCCOMB_X31_Y17_N14
\VGA_Driver|VS_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VS_counter~2_combout\ = (\VGA_Driver|Add3~4_combout\ & (((\VGA_Driver|VS_counter\(5)) # (!\VGA_Driver|Equal7~0_combout\)) # (!\VGA_Driver|VS_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(9),
	datab => \VGA_Driver|Add3~4_combout\,
	datac => \VGA_Driver|VS_counter\(5),
	datad => \VGA_Driver|Equal7~0_combout\,
	combout => \VGA_Driver|VS_counter~2_combout\);

-- Location: FF_X31_Y17_N15
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

-- Location: LCCOMB_X38_Y17_N12
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

-- Location: LCCOMB_X38_Y17_N4
\VGA_Driver|VS_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VS_counter~1_combout\ = (\VGA_Driver|Add3~6_combout\ & (((\VGA_Driver|VS_counter\(5)) # (!\VGA_Driver|Equal7~0_combout\)) # (!\VGA_Driver|VS_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(9),
	datab => \VGA_Driver|Add3~6_combout\,
	datac => \VGA_Driver|Equal7~0_combout\,
	datad => \VGA_Driver|VS_counter\(5),
	combout => \VGA_Driver|VS_counter~1_combout\);

-- Location: FF_X38_Y17_N5
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

-- Location: LCCOMB_X38_Y17_N14
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

-- Location: FF_X38_Y17_N15
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

-- Location: LCCOMB_X38_Y17_N16
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

-- Location: FF_X38_Y17_N17
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

-- Location: LCCOMB_X38_Y17_N18
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

-- Location: FF_X38_Y17_N19
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

-- Location: LCCOMB_X38_Y17_N20
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

-- Location: FF_X38_Y17_N21
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

-- Location: LCCOMB_X38_Y17_N22
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

-- Location: FF_X38_Y17_N23
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

-- Location: LCCOMB_X38_Y17_N24
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

-- Location: LCCOMB_X38_Y17_N26
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

-- Location: FF_X38_Y17_N27
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

-- Location: LCCOMB_X38_Y17_N2
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

-- Location: LCCOMB_X31_Y17_N20
\VGA_Driver|Equal5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal5~1_combout\ = (!\VGA_Driver|VS_counter\(4) & \VGA_Driver|VS_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Driver|VS_counter\(4),
	datad => \VGA_Driver|VS_counter\(3),
	combout => \VGA_Driver|Equal5~1_combout\);

-- Location: LCCOMB_X31_Y17_N24
\VGA_Driver|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal6~0_combout\ = (\VGA_Driver|VS_counter\(2) & !\VGA_Driver|VS_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Driver|VS_counter\(2),
	datad => \VGA_Driver|VS_counter\(1),
	combout => \VGA_Driver|Equal6~0_combout\);

-- Location: LCCOMB_X31_Y17_N26
\VGA_Driver|Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal7~0_combout\ = (\VGA_Driver|Equal5~0_combout\ & (\VGA_Driver|Equal5~1_combout\ & (\VGA_Driver|VS_counter\(0) & \VGA_Driver|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal5~0_combout\,
	datab => \VGA_Driver|Equal5~1_combout\,
	datac => \VGA_Driver|VS_counter\(0),
	datad => \VGA_Driver|Equal6~0_combout\,
	combout => \VGA_Driver|Equal7~0_combout\);

-- Location: LCCOMB_X38_Y17_N30
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

-- Location: FF_X38_Y17_N31
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

-- Location: LCCOMB_X31_Y17_N2
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

-- Location: LCCOMB_X31_Y17_N28
\VGA_Driver|Equal5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal5~4_combout\ = (\VGA_Driver|Equal5~0_combout\ & (\VGA_Driver|Equal5~1_combout\ & (\VGA_Driver|Equal5~3_combout\ & \VGA_Driver|VS_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal5~0_combout\,
	datab => \VGA_Driver|Equal5~1_combout\,
	datac => \VGA_Driver|Equal5~3_combout\,
	datad => \VGA_Driver|VS_counter\(1),
	combout => \VGA_Driver|Equal5~4_combout\);

-- Location: LCCOMB_X31_Y17_N22
\VGA_Driver|Equal5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal5~2_combout\ = (!\VGA_Driver|VS_counter\(9) & (!\VGA_Driver|VS_counter\(5) & !\VGA_Driver|VS_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(9),
	datab => \VGA_Driver|VS_counter\(5),
	datac => \VGA_Driver|VS_counter\(0),
	combout => \VGA_Driver|Equal5~2_combout\);

-- Location: LCCOMB_X31_Y17_N8
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

-- Location: LCCOMB_X31_Y17_N30
\VGA_Driver|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector7~0_combout\ = (\VGA_Driver|Equal7~0_combout\ & (((!\VGA_Driver|Equal5~4_combout\ & !\VGA_Driver|Equal6~1_combout\)) # (!\VGA_Driver|V_visible\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal7~0_combout\,
	datab => \VGA_Driver|Equal5~4_combout\,
	datac => \VGA_Driver|Equal6~1_combout\,
	datad => \VGA_Driver|V_visible\(0),
	combout => \VGA_Driver|Selector7~0_combout\);

-- Location: LCCOMB_X31_Y17_N18
\VGA_Driver|Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector7~1_combout\ = (\VGA_Driver|VS_counter\(9) & (\VGA_Driver|V_visible\(0) & ((\VGA_Driver|VS_counter\(5)) # (!\VGA_Driver|Selector7~0_combout\)))) # (!\VGA_Driver|VS_counter\(9) & ((\VGA_Driver|V_visible\(0)) # 
-- ((\VGA_Driver|VS_counter\(5) & \VGA_Driver|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(9),
	datab => \VGA_Driver|VS_counter\(5),
	datac => \VGA_Driver|V_visible\(0),
	datad => \VGA_Driver|Selector7~0_combout\,
	combout => \VGA_Driver|Selector7~1_combout\);

-- Location: FF_X31_Y17_N19
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

-- Location: LCCOMB_X27_Y13_N6
\draw_ball|always0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|always0~3_combout\ = (\VGA_Driver|HS_counter\(3) & (\VGA_Driver|HS_counter\(8) & (\VGA_Driver|HS_counter\(4) & !\VGA_Driver|HS_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(3),
	datab => \VGA_Driver|HS_counter\(8),
	datac => \VGA_Driver|HS_counter\(4),
	datad => \VGA_Driver|HS_counter\(5),
	combout => \draw_ball|always0~3_combout\);

-- Location: LCCOMB_X27_Y13_N10
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

-- Location: LCCOMB_X27_Y13_N12
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

-- Location: LCCOMB_X22_Y12_N22
\draw_ball|always0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|always0~1_combout\ = (\VGA_Driver|HS_counter\(1) & (!\VGA_Driver|HS_counter\(2) & \VGA_Driver|HS_counter\(0))) # (!\VGA_Driver|HS_counter\(1) & (\VGA_Driver|HS_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(1),
	datab => \VGA_Driver|HS_counter\(2),
	datad => \VGA_Driver|HS_counter\(0),
	combout => \draw_ball|always0~1_combout\);

-- Location: LCCOMB_X27_Y13_N14
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

-- Location: LCCOMB_X27_Y13_N4
\draw_ball|always0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|always0~2_combout\ = (\draw_ball|always0~1_combout\ & ((\VGA_Driver|Add1~2_combout\ & (!\VGA_Driver|Add1~4_combout\ & \VGA_Driver|Add1~0_combout\)) # (!\VGA_Driver|Add1~2_combout\ & (\VGA_Driver|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~2_combout\,
	datab => \draw_ball|always0~1_combout\,
	datac => \VGA_Driver|Add1~4_combout\,
	datad => \VGA_Driver|Add1~0_combout\,
	combout => \draw_ball|always0~2_combout\);

-- Location: LCCOMB_X27_Y13_N16
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

-- Location: LCCOMB_X27_Y13_N18
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

-- Location: LCCOMB_X27_Y13_N20
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

-- Location: LCCOMB_X27_Y13_N22
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

-- Location: LCCOMB_X27_Y13_N24
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

-- Location: LCCOMB_X27_Y13_N26
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

-- Location: LCCOMB_X27_Y13_N8
\draw_ball|always0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|always0~4_combout\ = (\VGA_Driver|Add1~10_combout\ & (\VGA_Driver|Add1~8_combout\ & \VGA_Driver|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|Add1~10_combout\,
	datac => \VGA_Driver|Add1~8_combout\,
	datad => \VGA_Driver|Add1~6_combout\,
	combout => \draw_ball|always0~4_combout\);

-- Location: LCCOMB_X27_Y13_N30
\draw_ball|always0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|always0~5_combout\ = (!\VGA_Driver|Add1~16_combout\ & (\draw_ball|always0~4_combout\ & (\VGA_Driver|Add1~12_combout\ & \VGA_Driver|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~16_combout\,
	datab => \draw_ball|always0~4_combout\,
	datac => \VGA_Driver|Add1~12_combout\,
	datad => \VGA_Driver|Add1~14_combout\,
	combout => \draw_ball|always0~5_combout\);

-- Location: LCCOMB_X27_Y13_N28
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

-- Location: LCCOMB_X27_Y13_N2
\draw_ball|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|always0~0_combout\ = (!\VGA_Driver|HS_counter\(9) & (!\VGA_Driver|Add1~18_combout\ & (!\VGA_Driver|HS_counter\(6) & \VGA_Driver|HS_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(9),
	datab => \VGA_Driver|Add1~18_combout\,
	datac => \VGA_Driver|HS_counter\(6),
	datad => \VGA_Driver|HS_counter\(7),
	combout => \draw_ball|always0~0_combout\);

-- Location: LCCOMB_X27_Y13_N0
\draw_ball|always0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|always0~6_combout\ = (\draw_ball|always0~3_combout\ & (\draw_ball|always0~2_combout\ & (\draw_ball|always0~5_combout\ & \draw_ball|always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_ball|always0~3_combout\,
	datab => \draw_ball|always0~2_combout\,
	datac => \draw_ball|always0~5_combout\,
	datad => \draw_ball|always0~0_combout\,
	combout => \draw_ball|always0~6_combout\);

-- Location: FF_X27_Y13_N1
\draw_ball|box\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \draw_ball|always0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \draw_ball|box~q\);

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

-- Location: LCCOMB_X27_Y20_N0
\draw_player_1_paddle|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan2~1_cout\ = CARRY((!\SW[0]~input_o\ & \VGA_Driver|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \VGA_Driver|Add1~0_combout\,
	datad => VCC,
	cout => \draw_player_1_paddle|LessThan2~1_cout\);

-- Location: LCCOMB_X27_Y20_N2
\draw_player_1_paddle|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan2~3_cout\ = CARRY((\SW[1]~input_o\ & ((!\draw_player_1_paddle|LessThan2~1_cout\) # (!\VGA_Driver|Add1~2_combout\))) # (!\SW[1]~input_o\ & (!\VGA_Driver|Add1~2_combout\ & !\draw_player_1_paddle|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \VGA_Driver|Add1~2_combout\,
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan2~1_cout\,
	cout => \draw_player_1_paddle|LessThan2~3_cout\);

-- Location: LCCOMB_X27_Y20_N4
\draw_player_1_paddle|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan2~5_cout\ = CARRY((\VGA_Driver|Add1~4_combout\ & ((!\draw_player_1_paddle|LessThan2~3_cout\) # (!\SW[2]~input_o\))) # (!\VGA_Driver|Add1~4_combout\ & (!\SW[2]~input_o\ & !\draw_player_1_paddle|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~4_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan2~3_cout\,
	cout => \draw_player_1_paddle|LessThan2~5_cout\);

-- Location: LCCOMB_X27_Y20_N6
\draw_player_1_paddle|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan2~7_cout\ = CARRY((\SW[3]~input_o\ & ((!\draw_player_1_paddle|LessThan2~5_cout\) # (!\VGA_Driver|Add1~6_combout\))) # (!\SW[3]~input_o\ & (!\VGA_Driver|Add1~6_combout\ & !\draw_player_1_paddle|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \VGA_Driver|Add1~6_combout\,
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan2~5_cout\,
	cout => \draw_player_1_paddle|LessThan2~7_cout\);

-- Location: LCCOMB_X27_Y20_N8
\draw_player_1_paddle|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan2~9_cout\ = CARRY((\SW[4]~input_o\ & (\VGA_Driver|Add1~8_combout\ & !\draw_player_1_paddle|LessThan2~7_cout\)) # (!\SW[4]~input_o\ & ((\VGA_Driver|Add1~8_combout\) # (!\draw_player_1_paddle|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \VGA_Driver|Add1~8_combout\,
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan2~7_cout\,
	cout => \draw_player_1_paddle|LessThan2~9_cout\);

-- Location: LCCOMB_X27_Y20_N10
\draw_player_1_paddle|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan2~11_cout\ = CARRY((\SW[5]~input_o\ & ((!\draw_player_1_paddle|LessThan2~9_cout\) # (!\VGA_Driver|Add1~10_combout\))) # (!\SW[5]~input_o\ & (!\VGA_Driver|Add1~10_combout\ & !\draw_player_1_paddle|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \VGA_Driver|Add1~10_combout\,
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan2~9_cout\,
	cout => \draw_player_1_paddle|LessThan2~11_cout\);

-- Location: LCCOMB_X27_Y20_N12
\draw_player_1_paddle|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan2~13_cout\ = CARRY((\SW[6]~input_o\ & (\VGA_Driver|Add1~12_combout\ & !\draw_player_1_paddle|LessThan2~11_cout\)) # (!\SW[6]~input_o\ & ((\VGA_Driver|Add1~12_combout\) # (!\draw_player_1_paddle|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \VGA_Driver|Add1~12_combout\,
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan2~11_cout\,
	cout => \draw_player_1_paddle|LessThan2~13_cout\);

-- Location: LCCOMB_X27_Y20_N14
\draw_player_1_paddle|LessThan2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan2~14_combout\ = (\SW[7]~input_o\ & (\draw_player_1_paddle|LessThan2~13_cout\ & \VGA_Driver|Add1~14_combout\)) # (!\SW[7]~input_o\ & ((\draw_player_1_paddle|LessThan2~13_cout\) # (\VGA_Driver|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datad => \VGA_Driver|Add1~14_combout\,
	cin => \draw_player_1_paddle|LessThan2~13_cout\,
	combout => \draw_player_1_paddle|LessThan2~14_combout\);

-- Location: LCCOMB_X27_Y20_N26
\draw_player_1_paddle|always0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|always0~2_combout\ = (\VGA_Driver|Add1~16_combout\) # (\draw_player_1_paddle|LessThan2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~16_combout\,
	datac => \draw_player_1_paddle|LessThan2~14_combout\,
	combout => \draw_player_1_paddle|always0~2_combout\);

-- Location: LCCOMB_X22_Y12_N18
\draw_player_1_paddle|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|always0~0_combout\ = (\VGA_Driver|HS_counter\(1) & (((!\VGA_Driver|HS_counter\(3))))) # (!\VGA_Driver|HS_counter\(1) & ((\VGA_Driver|HS_counter\(2) & ((!\VGA_Driver|HS_counter\(3)))) # (!\VGA_Driver|HS_counter\(2) & 
-- ((\VGA_Driver|HS_counter\(0)) # (\VGA_Driver|HS_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(1),
	datab => \VGA_Driver|HS_counter\(0),
	datac => \VGA_Driver|HS_counter\(2),
	datad => \VGA_Driver|HS_counter\(3),
	combout => \draw_player_1_paddle|always0~0_combout\);

-- Location: LCCOMB_X22_Y12_N28
\draw_player_1_paddle|always0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|always0~1_combout\ = (!\VGA_Driver|HS_counter\(4) & (\draw_player_1_paddle|always0~0_combout\ & (\VGA_Driver|HS_counter\(5) & !\VGA_Driver|HS_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(4),
	datab => \draw_player_1_paddle|always0~0_combout\,
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(8),
	combout => \draw_player_1_paddle|always0~1_combout\);

-- Location: LCCOMB_X31_Y18_N0
\draw_player_1_paddle|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|Add1~0_combout\ = (\SW[2]~input_o\ & (\SW[1]~input_o\ $ (VCC))) # (!\SW[2]~input_o\ & (\SW[1]~input_o\ & VCC))
-- \draw_player_1_paddle|Add1~1\ = CARRY((\SW[2]~input_o\ & \SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	combout => \draw_player_1_paddle|Add1~0_combout\,
	cout => \draw_player_1_paddle|Add1~1\);

-- Location: LCCOMB_X31_Y18_N2
\draw_player_1_paddle|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|Add1~2_combout\ = (\SW[3]~input_o\ & (!\draw_player_1_paddle|Add1~1\)) # (!\SW[3]~input_o\ & ((\draw_player_1_paddle|Add1~1\) # (GND)))
-- \draw_player_1_paddle|Add1~3\ = CARRY((!\draw_player_1_paddle|Add1~1\) # (!\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \draw_player_1_paddle|Add1~1\,
	combout => \draw_player_1_paddle|Add1~2_combout\,
	cout => \draw_player_1_paddle|Add1~3\);

-- Location: LCCOMB_X31_Y18_N4
\draw_player_1_paddle|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|Add1~4_combout\ = (\SW[4]~input_o\ & ((GND) # (!\draw_player_1_paddle|Add1~3\))) # (!\SW[4]~input_o\ & (\draw_player_1_paddle|Add1~3\ $ (GND)))
-- \draw_player_1_paddle|Add1~5\ = CARRY((\SW[4]~input_o\) # (!\draw_player_1_paddle|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \draw_player_1_paddle|Add1~3\,
	combout => \draw_player_1_paddle|Add1~4_combout\,
	cout => \draw_player_1_paddle|Add1~5\);

-- Location: LCCOMB_X31_Y18_N6
\draw_player_1_paddle|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|Add1~6_combout\ = (\SW[5]~input_o\ & (\draw_player_1_paddle|Add1~5\ & VCC)) # (!\SW[5]~input_o\ & (!\draw_player_1_paddle|Add1~5\))
-- \draw_player_1_paddle|Add1~7\ = CARRY((!\SW[5]~input_o\ & !\draw_player_1_paddle|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datad => VCC,
	cin => \draw_player_1_paddle|Add1~5\,
	combout => \draw_player_1_paddle|Add1~6_combout\,
	cout => \draw_player_1_paddle|Add1~7\);

-- Location: LCCOMB_X31_Y18_N8
\draw_player_1_paddle|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|Add1~8_combout\ = (\SW[6]~input_o\ & (\draw_player_1_paddle|Add1~7\ $ (GND))) # (!\SW[6]~input_o\ & (!\draw_player_1_paddle|Add1~7\ & VCC))
-- \draw_player_1_paddle|Add1~9\ = CARRY((\SW[6]~input_o\ & !\draw_player_1_paddle|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datad => VCC,
	cin => \draw_player_1_paddle|Add1~7\,
	combout => \draw_player_1_paddle|Add1~8_combout\,
	cout => \draw_player_1_paddle|Add1~9\);

-- Location: LCCOMB_X31_Y18_N10
\draw_player_1_paddle|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|Add1~10_combout\ = (\SW[7]~input_o\ & (!\draw_player_1_paddle|Add1~9\)) # (!\SW[7]~input_o\ & ((\draw_player_1_paddle|Add1~9\) # (GND)))
-- \draw_player_1_paddle|Add1~11\ = CARRY((!\draw_player_1_paddle|Add1~9\) # (!\SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datad => VCC,
	cin => \draw_player_1_paddle|Add1~9\,
	combout => \draw_player_1_paddle|Add1~10_combout\,
	cout => \draw_player_1_paddle|Add1~11\);

-- Location: LCCOMB_X31_Y18_N12
\draw_player_1_paddle|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|Add1~12_combout\ = !\draw_player_1_paddle|Add1~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \draw_player_1_paddle|Add1~11\,
	combout => \draw_player_1_paddle|Add1~12_combout\);

-- Location: LCCOMB_X31_Y18_N14
\draw_player_1_paddle|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan3~1_cout\ = CARRY((!\VGA_Driver|Add1~0_combout\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~0_combout\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	cout => \draw_player_1_paddle|LessThan3~1_cout\);

-- Location: LCCOMB_X31_Y18_N16
\draw_player_1_paddle|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan3~3_cout\ = CARRY((\VGA_Driver|Add1~2_combout\ & ((\SW[1]~input_o\) # (!\draw_player_1_paddle|LessThan3~1_cout\))) # (!\VGA_Driver|Add1~2_combout\ & (\SW[1]~input_o\ & !\draw_player_1_paddle|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~2_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \draw_player_1_paddle|LessThan3~1_cout\,
	cout => \draw_player_1_paddle|LessThan3~3_cout\);

-- Location: LCCOMB_X31_Y18_N18
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

-- Location: LCCOMB_X31_Y18_N20
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

-- Location: LCCOMB_X31_Y18_N22
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

-- Location: LCCOMB_X31_Y18_N24
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

-- Location: LCCOMB_X31_Y18_N26
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

-- Location: LCCOMB_X31_Y18_N28
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

-- Location: LCCOMB_X31_Y18_N30
\draw_player_1_paddle|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|LessThan3~16_combout\ = (\VGA_Driver|Add1~16_combout\ & (!\draw_player_1_paddle|LessThan3~15_cout\ & \draw_player_1_paddle|Add1~12_combout\)) # (!\VGA_Driver|Add1~16_combout\ & ((\draw_player_1_paddle|Add1~12_combout\) # 
-- (!\draw_player_1_paddle|LessThan3~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~16_combout\,
	datad => \draw_player_1_paddle|Add1~12_combout\,
	cin => \draw_player_1_paddle|LessThan3~15_cout\,
	combout => \draw_player_1_paddle|LessThan3~16_combout\);

-- Location: LCCOMB_X27_Y20_N24
\draw_player_1_paddle|always0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_player_1_paddle|always0~3_combout\ = (\draw_player_1_paddle|always0~2_combout\ & (\draw_player_1_paddle|always0~1_combout\ & (\draw_player_1_paddle|LessThan3~16_combout\ & \draw_ball|always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_player_1_paddle|always0~2_combout\,
	datab => \draw_player_1_paddle|always0~1_combout\,
	datac => \draw_player_1_paddle|LessThan3~16_combout\,
	datad => \draw_ball|always0~0_combout\,
	combout => \draw_player_1_paddle|always0~3_combout\);

-- Location: FF_X27_Y20_N25
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

-- Location: LCCOMB_X40_Y20_N0
\pixel_color~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_color~0_combout\ = (\draw_ball|box~q\) # (\draw_player_1_paddle|box~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_ball|box~q\,
	datad => \draw_player_1_paddle|box~q\,
	combout => \pixel_color~0_combout\);

-- Location: FF_X40_Y20_N1
\pixel_color[0]\ : dffeas
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
	q => pixel_color(0));

-- Location: LCCOMB_X40_Y20_N22
\VGA_Driver|VGA_BUS_R~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_R~0_combout\ = (\VGA_Driver|H_visible\(0) & (\VGA_Driver|V_visible\(0) & pixel_color(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|H_visible\(0),
	datac => \VGA_Driver|V_visible\(0),
	datad => pixel_color(0),
	combout => \VGA_Driver|VGA_BUS_R~0_combout\);

-- Location: FF_X40_Y20_N17
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

-- Location: FF_X40_Y20_N27
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

-- Location: FF_X40_Y20_N13
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

-- Location: FF_X40_Y20_N23
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

-- Location: LCCOMB_X40_Y20_N10
\pixel_color[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_color[4]~feeder_combout\ = \draw_ball|box~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \draw_ball|box~q\,
	combout => \pixel_color[4]~feeder_combout\);

-- Location: FF_X40_Y20_N11
\pixel_color[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \pixel_color[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_color(4));

-- Location: LCCOMB_X40_Y20_N30
\VGA_Driver|VGA_BUS_G~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_G~0_combout\ = (\VGA_Driver|H_visible\(0) & (\VGA_Driver|V_visible\(0) & pixel_color(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|H_visible\(0),
	datac => \VGA_Driver|V_visible\(0),
	datad => pixel_color(4),
	combout => \VGA_Driver|VGA_BUS_G~0_combout\);

-- Location: FF_X40_Y20_N25
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

-- Location: FF_X40_Y20_N3
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

-- Location: FF_X40_Y20_N21
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

-- Location: FF_X40_Y20_N15
\VGA_Driver|VGA_BUS_G[3]\ : dffeas
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
	q => \VGA_Driver|VGA_BUS_G\(3));

-- Location: FF_X40_Y20_N9
\VGA_Driver|VGA_BUS_B[0]\ : dffeas
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
	q => \VGA_Driver|VGA_BUS_B\(0));

-- Location: FF_X40_Y20_N19
\VGA_Driver|VGA_BUS_B[1]\ : dffeas
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
	q => \VGA_Driver|VGA_BUS_B\(1));

-- Location: FF_X40_Y20_N29
\VGA_Driver|VGA_BUS_B[2]\ : dffeas
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
	q => \VGA_Driver|VGA_BUS_B\(2));

-- Location: FF_X40_Y20_N31
\VGA_Driver|VGA_BUS_B[3]\ : dffeas
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
	q => \VGA_Driver|VGA_BUS_B\(3));

-- Location: LCCOMB_X30_Y13_N28
\VGA_Driver|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector0~2_combout\ = (!\VGA_Driver|VGA_HS\(0) & ((\VGA_Driver|Equal4~2_combout\) # ((\VGA_Driver|Equal3~1_combout\) # (\VGA_Driver|WideNor0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal4~2_combout\,
	datab => \VGA_Driver|VGA_HS\(0),
	datac => \VGA_Driver|Equal3~1_combout\,
	datad => \VGA_Driver|WideNor0~0_combout\,
	combout => \VGA_Driver|Selector0~2_combout\);

-- Location: LCCOMB_X30_Y13_N0
\VGA_Driver|Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector0~3_combout\ = (!\VGA_Driver|Selector0~2_combout\ & (((!\VGA_Driver|HS_counter\(5)) # (!\VGA_Driver|HS_counter\(6))) # (!\VGA_Driver|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal1~3_combout\,
	datab => \VGA_Driver|Selector0~2_combout\,
	datac => \VGA_Driver|HS_counter\(6),
	datad => \VGA_Driver|HS_counter\(5),
	combout => \VGA_Driver|Selector0~3_combout\);

-- Location: FF_X30_Y13_N1
\VGA_Driver|VGA_HS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Selector0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_HS\(0));

-- Location: LCCOMB_X31_Y17_N12
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

-- Location: LCCOMB_X31_Y17_N0
\VGA_Driver|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector6~1_combout\ = (!\VGA_Driver|Selector6~0_combout\ & (!\VGA_Driver|Equal6~1_combout\ & ((\VGA_Driver|VGA_VS\(0)) # (\VGA_Driver|Equal5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Selector6~0_combout\,
	datab => \VGA_Driver|Equal6~1_combout\,
	datac => \VGA_Driver|VGA_VS\(0),
	datad => \VGA_Driver|Equal5~4_combout\,
	combout => \VGA_Driver|Selector6~1_combout\);

-- Location: FF_X31_Y17_N1
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
END structure;


