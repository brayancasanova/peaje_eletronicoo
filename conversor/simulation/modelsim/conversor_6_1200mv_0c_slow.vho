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

-- DATE "05/14/2024 15:39:27"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	Conversor IS
    PORT (
	Sum_Con : IN STD.STANDARD.integer range 0 TO 31;
	Dec : OUT STD.STANDARD.integer range 0 TO 9;
	Uni : OUT STD.STANDARD.integer range 0 TO 9
	);
END Conversor;

-- Design Ports Information
-- Dec[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec[1]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec[2]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec[3]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Uni[0]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Uni[1]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Uni[2]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Uni[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum_Con[4]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum_Con[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum_Con[2]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum_Con[1]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum_Con[0]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Conversor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Sum_Con : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Dec : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Uni : std_logic_vector(3 DOWNTO 0);
SIGNAL \Dec[0]~output_o\ : std_logic;
SIGNAL \Dec[1]~output_o\ : std_logic;
SIGNAL \Dec[2]~output_o\ : std_logic;
SIGNAL \Dec[3]~output_o\ : std_logic;
SIGNAL \Uni[0]~output_o\ : std_logic;
SIGNAL \Uni[1]~output_o\ : std_logic;
SIGNAL \Uni[2]~output_o\ : std_logic;
SIGNAL \Uni[3]~output_o\ : std_logic;
SIGNAL \Sum_Con[4]~input_o\ : std_logic;
SIGNAL \Sum_Con[3]~input_o\ : std_logic;
SIGNAL \Sum_Con[2]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \Sum_Con[1]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Sum_Con[0]~input_o\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\ : std_logic;

BEGIN

ww_Sum_Con <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(Sum_Con, 5);
Dec <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_Dec));
Uni <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_Uni));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\;

-- Location: IOOBUF_X32_Y29_N23
\Dec[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \Dec[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\Dec[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\,
	devoe => ww_devoe,
	o => \Dec[1]~output_o\);

-- Location: IOOBUF_X7_Y29_N23
\Dec[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Dec[2]~output_o\);

-- Location: IOOBUF_X41_Y13_N16
\Dec[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Dec[3]~output_o\);

-- Location: IOOBUF_X41_Y25_N2
\Uni[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sum_Con[0]~input_o\,
	devoe => ww_devoe,
	o => \Uni[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\Uni[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	devoe => ww_devoe,
	o => \Uni[1]~output_o\);

-- Location: IOOBUF_X41_Y23_N2
\Uni[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	devoe => ww_devoe,
	o => \Uni[2]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\Uni[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	devoe => ww_devoe,
	o => \Uni[3]~output_o\);

-- Location: IOIBUF_X0_Y4_N8
\Sum_Con[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sum_Con(4),
	o => \Sum_Con[4]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\Sum_Con[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sum_Con(3),
	o => \Sum_Con[3]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\Sum_Con[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sum_Con(2),
	o => \Sum_Con[2]~input_o\);

-- Location: LCCOMB_X28_Y19_N0
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \Sum_Con[2]~input_o\ $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\Sum_Con[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sum_Con[2]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X28_Y19_N2
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Sum_Con[3]~input_o\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\Sum_Con[3]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Sum_Con[3]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Sum_Con[3]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X28_Y19_N4
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Sum_Con[4]~input_o\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\Sum_Con[4]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\Sum_Con[4]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Sum_Con[4]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X28_Y19_N6
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X28_Y19_N18
\Div0|auto_generated|divider|divider|StageOut[18]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ = (\Sum_Con[4]~input_o\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sum_Con[4]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\);

-- Location: LCCOMB_X28_Y19_N20
\Div0|auto_generated|divider|divider|StageOut[18]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~1_combout\);

-- Location: LCCOMB_X28_Y19_N22
\Div0|auto_generated|divider|divider|StageOut[17]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ = (\Sum_Con[3]~input_o\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sum_Con[3]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~2_combout\);

-- Location: LCCOMB_X28_Y19_N24
\Div0|auto_generated|divider|divider|StageOut[17]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\);

-- Location: LCCOMB_X28_Y19_N26
\Div0|auto_generated|divider|divider|StageOut[16]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ = (\Sum_Con[2]~input_o\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sum_Con[2]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~4_combout\);

-- Location: LCCOMB_X28_Y19_N28
\Div0|auto_generated|divider|divider|StageOut[16]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\);

-- Location: IOIBUF_X0_Y25_N22
\Sum_Con[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sum_Con(1),
	o => \Sum_Con[1]~input_o\);

-- Location: LCCOMB_X28_Y19_N30
\Div0|auto_generated|divider|divider|StageOut[15]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ = (\Sum_Con[1]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sum_Con[1]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\);

-- Location: LCCOMB_X36_Y20_N0
\Div0|auto_generated|divider|divider|StageOut[15]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~6_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Sum_Con[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Sum_Con[1]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~6_combout\);

-- Location: LCCOMB_X28_Y19_N8
\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[15]~7_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[15]~6_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\);

-- Location: LCCOMB_X28_Y19_N10
\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\);

-- Location: LCCOMB_X28_Y19_N12
\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[17]~2_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\);

-- Location: LCCOMB_X28_Y19_N14
\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~1_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X28_Y19_N16
\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: IOIBUF_X41_Y21_N22
\Sum_Con[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sum_Con(0),
	o => \Sum_Con[0]~input_o\);

-- Location: LCCOMB_X26_Y24_N6
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \Sum_Con[2]~input_o\ $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\Sum_Con[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sum_Con[2]~input_o\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X26_Y24_N8
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Sum_Con[3]~input_o\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\Sum_Con[3]~input_o\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Sum_Con[3]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Sum_Con[3]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X26_Y24_N10
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Sum_Con[4]~input_o\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\Sum_Con[4]~input_o\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\Sum_Con[4]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Sum_Con[4]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X26_Y24_N12
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X36_Y20_N30
\Mod0|auto_generated|divider|divider|StageOut[18]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Sum_Con[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Sum_Con[4]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\);

-- Location: LCCOMB_X36_Y20_N8
\Mod0|auto_generated|divider|divider|StageOut[18]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\);

-- Location: LCCOMB_X36_Y20_N28
\Mod0|auto_generated|divider|divider|StageOut[17]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\);

-- Location: LCCOMB_X36_Y20_N2
\Mod0|auto_generated|divider|divider|StageOut[17]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\ = (\Sum_Con[3]~input_o\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sum_Con[3]~input_o\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\);

-- Location: LCCOMB_X26_Y24_N24
\Mod0|auto_generated|divider|divider|StageOut[16]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\);

-- Location: LCCOMB_X36_Y20_N14
\Mod0|auto_generated|divider|divider|StageOut[16]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ = (\Sum_Con[2]~input_o\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sum_Con[2]~input_o\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\);

-- Location: LCCOMB_X36_Y20_N10
\Mod0|auto_generated|divider|divider|StageOut[15]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ = (\Sum_Con[1]~input_o\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sum_Con[1]~input_o\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\);

-- Location: LCCOMB_X36_Y20_N12
\Mod0|auto_generated|divider|divider|StageOut[15]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\ = (\Sum_Con[1]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sum_Con[1]~input_o\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\);

-- Location: LCCOMB_X36_Y20_N16
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X36_Y20_N18
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X36_Y20_N20
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X36_Y20_N22
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X36_Y20_N24
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X36_Y20_N26
\Mod0|auto_generated|divider|divider|StageOut[21]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Sum_Con[1]~input_o\)) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Sum_Con[1]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\);

-- Location: LCCOMB_X36_Y20_N4
\Mod0|auto_generated|divider|divider|StageOut[22]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\);

-- Location: LCCOMB_X36_Y20_N6
\Mod0|auto_generated|divider|divider|StageOut[23]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\);

ww_Dec(0) <= \Dec[0]~output_o\;

ww_Dec(1) <= \Dec[1]~output_o\;

ww_Dec(2) <= \Dec[2]~output_o\;

ww_Dec(3) <= \Dec[3]~output_o\;

ww_Uni(0) <= \Uni[0]~output_o\;

ww_Uni(1) <= \Uni[1]~output_o\;

ww_Uni(2) <= \Uni[2]~output_o\;

ww_Uni(3) <= \Uni[3]~output_o\;
END structure;


