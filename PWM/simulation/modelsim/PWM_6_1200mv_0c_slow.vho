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

-- DATE "05/08/2024 15:39:28"

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

ENTITY 	PWM IS
    PORT (
	clk : IN std_logic;
	selector : IN std_logic;
	PWM : OUT std_logic
	);
END PWM;

-- Design Ports Information
-- PWM	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PWM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_selector : std_logic;
SIGNAL ww_PWM : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PWM~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \PWM_Count[0]~54_combout\ : std_logic;
SIGNAL \PWM_Count[1]~18_combout\ : std_logic;
SIGNAL \PWM_Count[1]~19\ : std_logic;
SIGNAL \PWM_Count[2]~20_combout\ : std_logic;
SIGNAL \PWM_Count[2]~21\ : std_logic;
SIGNAL \PWM_Count[3]~22_combout\ : std_logic;
SIGNAL \PWM_Count[3]~23\ : std_logic;
SIGNAL \PWM_Count[4]~24_combout\ : std_logic;
SIGNAL \PWM_Count[4]~25\ : std_logic;
SIGNAL \PWM_Count[5]~26_combout\ : std_logic;
SIGNAL \PWM_Count[5]~27\ : std_logic;
SIGNAL \PWM_Count[6]~28_combout\ : std_logic;
SIGNAL \PWM_Count[6]~29\ : std_logic;
SIGNAL \PWM_Count[7]~30_combout\ : std_logic;
SIGNAL \PWM_Count[7]~31\ : std_logic;
SIGNAL \PWM_Count[8]~32_combout\ : std_logic;
SIGNAL \PWM_Count[8]~33\ : std_logic;
SIGNAL \PWM_Count[9]~34_combout\ : std_logic;
SIGNAL \PWM_Count[9]~35\ : std_logic;
SIGNAL \PWM_Count[10]~36_combout\ : std_logic;
SIGNAL \PWM_Count[10]~37\ : std_logic;
SIGNAL \PWM_Count[11]~38_combout\ : std_logic;
SIGNAL \PWM_Count[11]~39\ : std_logic;
SIGNAL \PWM_Count[12]~40_combout\ : std_logic;
SIGNAL \PWM_Count[12]~41\ : std_logic;
SIGNAL \PWM_Count[13]~42_combout\ : std_logic;
SIGNAL \PWM_Count[13]~43\ : std_logic;
SIGNAL \PWM_Count[14]~44_combout\ : std_logic;
SIGNAL \PWM_Count[14]~45\ : std_logic;
SIGNAL \PWM_Count[15]~46_combout\ : std_logic;
SIGNAL \PWM~0_combout\ : std_logic;
SIGNAL \PWM_Count[15]~47\ : std_logic;
SIGNAL \PWM_Count[16]~48_combout\ : std_logic;
SIGNAL \PWM~1_combout\ : std_logic;
SIGNAL \PWM~2_combout\ : std_logic;
SIGNAL \selector~input_o\ : std_logic;
SIGNAL \PWM~9_combout\ : std_logic;
SIGNAL \PWM~7_combout\ : std_logic;
SIGNAL \PWM~8_combout\ : std_logic;
SIGNAL \PWM~10_combout\ : std_logic;
SIGNAL \PWM_Count[16]~49\ : std_logic;
SIGNAL \PWM_Count[17]~50_combout\ : std_logic;
SIGNAL \PWM_Count[17]~51\ : std_logic;
SIGNAL \PWM_Count[18]~52_combout\ : std_logic;
SIGNAL \PWM~3_combout\ : std_logic;
SIGNAL \PWM~4_combout\ : std_logic;
SIGNAL \PWM~5_combout\ : std_logic;
SIGNAL \PWM~6_combout\ : std_logic;
SIGNAL \PWM~11_combout\ : std_logic;
SIGNAL \PWM~15_combout\ : std_logic;
SIGNAL \PWM~12_combout\ : std_logic;
SIGNAL \PWM~13_combout\ : std_logic;
SIGNAL \PWM~14_combout\ : std_logic;
SIGNAL \PWM~16_combout\ : std_logic;
SIGNAL PWM_Count : std_logic_vector(18 DOWNTO 0);
SIGNAL \ALT_INV_PWM~16_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_selector <= selector;
PWM <= ww_PWM;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_PWM~16_combout\ <= NOT \PWM~16_combout\;

-- Location: IOOBUF_X37_Y0_N23
\PWM~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_PWM~16_combout\,
	devoe => ww_devoe,
	o => \PWM~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X7_Y23_N12
\PWM_Count[0]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_Count[0]~54_combout\ = !PWM_Count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PWM_Count(0),
	combout => \PWM_Count[0]~54_combout\);

-- Location: FF_X7_Y23_N13
\PWM_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWM_Count[0]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PWM_Count(0));

-- Location: LCCOMB_X7_Y23_N14
\PWM_Count[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_Count[1]~18_combout\ = (PWM_Count(0) & (PWM_Count(1) & VCC)) # (!PWM_Count(0) & (PWM_Count(1) $ (VCC)))
-- \PWM_Count[1]~19\ = CARRY((!PWM_Count(0) & PWM_Count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PWM_Count(0),
	datab => PWM_Count(1),
	datad => VCC,
	combout => \PWM_Count[1]~18_combout\,
	cout => \PWM_Count[1]~19\);

-- Location: FF_X7_Y23_N15
\PWM_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWM_Count[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PWM_Count(1));

-- Location: LCCOMB_X7_Y23_N16
\PWM_Count[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_Count[2]~20_combout\ = (PWM_Count(2) & (!\PWM_Count[1]~19\)) # (!PWM_Count(2) & ((\PWM_Count[1]~19\) # (GND)))
-- \PWM_Count[2]~21\ = CARRY((!\PWM_Count[1]~19\) # (!PWM_Count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PWM_Count(2),
	datad => VCC,
	cin => \PWM_Count[1]~19\,
	combout => \PWM_Count[2]~20_combout\,
	cout => \PWM_Count[2]~21\);

-- Location: FF_X7_Y23_N17
\PWM_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWM_Count[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PWM_Count(2));

-- Location: LCCOMB_X7_Y23_N18
\PWM_Count[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_Count[3]~22_combout\ = (PWM_Count(3) & (\PWM_Count[2]~21\ $ (GND))) # (!PWM_Count(3) & (!\PWM_Count[2]~21\ & VCC))
-- \PWM_Count[3]~23\ = CARRY((PWM_Count(3) & !\PWM_Count[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PWM_Count(3),
	datad => VCC,
	cin => \PWM_Count[2]~21\,
	combout => \PWM_Count[3]~22_combout\,
	cout => \PWM_Count[3]~23\);

-- Location: FF_X7_Y23_N19
\PWM_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWM_Count[3]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PWM_Count(3));

-- Location: LCCOMB_X7_Y23_N20
\PWM_Count[4]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_Count[4]~24_combout\ = (PWM_Count(4) & (!\PWM_Count[3]~23\)) # (!PWM_Count(4) & ((\PWM_Count[3]~23\) # (GND)))
-- \PWM_Count[4]~25\ = CARRY((!\PWM_Count[3]~23\) # (!PWM_Count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PWM_Count(4),
	datad => VCC,
	cin => \PWM_Count[3]~23\,
	combout => \PWM_Count[4]~24_combout\,
	cout => \PWM_Count[4]~25\);

-- Location: FF_X7_Y23_N21
\PWM_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWM_Count[4]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PWM_Count(4));

-- Location: LCCOMB_X7_Y23_N22
\PWM_Count[5]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_Count[5]~26_combout\ = (PWM_Count(5) & (\PWM_Count[4]~25\ $ (GND))) # (!PWM_Count(5) & (!\PWM_Count[4]~25\ & VCC))
-- \PWM_Count[5]~27\ = CARRY((PWM_Count(5) & !\PWM_Count[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PWM_Count(5),
	datad => VCC,
	cin => \PWM_Count[4]~25\,
	combout => \PWM_Count[5]~26_combout\,
	cout => \PWM_Count[5]~27\);

-- Location: FF_X7_Y23_N23
\PWM_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWM_Count[5]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PWM_Count(5));

-- Location: LCCOMB_X7_Y23_N24
\PWM_Count[6]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_Count[6]~28_combout\ = (PWM_Count(6) & (!\PWM_Count[5]~27\)) # (!PWM_Count(6) & ((\PWM_Count[5]~27\) # (GND)))
-- \PWM_Count[6]~29\ = CARRY((!\PWM_Count[5]~27\) # (!PWM_Count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PWM_Count(6),
	datad => VCC,
	cin => \PWM_Count[5]~27\,
	combout => \PWM_Count[6]~28_combout\,
	cout => \PWM_Count[6]~29\);

-- Location: FF_X7_Y23_N25
\PWM_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWM_Count[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PWM_Count(6));

-- Location: LCCOMB_X7_Y23_N26
\PWM_Count[7]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_Count[7]~30_combout\ = (PWM_Count(7) & (\PWM_Count[6]~29\ $ (GND))) # (!PWM_Count(7) & (!\PWM_Count[6]~29\ & VCC))
-- \PWM_Count[7]~31\ = CARRY((PWM_Count(7) & !\PWM_Count[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PWM_Count(7),
	datad => VCC,
	cin => \PWM_Count[6]~29\,
	combout => \PWM_Count[7]~30_combout\,
	cout => \PWM_Count[7]~31\);

-- Location: FF_X7_Y23_N27
\PWM_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWM_Count[7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PWM_Count(7));

-- Location: LCCOMB_X7_Y23_N28
\PWM_Count[8]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_Count[8]~32_combout\ = (PWM_Count(8) & (!\PWM_Count[7]~31\)) # (!PWM_Count(8) & ((\PWM_Count[7]~31\) # (GND)))
-- \PWM_Count[8]~33\ = CARRY((!\PWM_Count[7]~31\) # (!PWM_Count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PWM_Count(8),
	datad => VCC,
	cin => \PWM_Count[7]~31\,
	combout => \PWM_Count[8]~32_combout\,
	cout => \PWM_Count[8]~33\);

-- Location: FF_X7_Y23_N29
\PWM_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWM_Count[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PWM_Count(8));

-- Location: LCCOMB_X7_Y23_N30
\PWM_Count[9]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_Count[9]~34_combout\ = (PWM_Count(9) & (\PWM_Count[8]~33\ $ (GND))) # (!PWM_Count(9) & (!\PWM_Count[8]~33\ & VCC))
-- \PWM_Count[9]~35\ = CARRY((PWM_Count(9) & !\PWM_Count[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PWM_Count(9),
	datad => VCC,
	cin => \PWM_Count[8]~33\,
	combout => \PWM_Count[9]~34_combout\,
	cout => \PWM_Count[9]~35\);

-- Location: FF_X7_Y23_N31
\PWM_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWM_Count[9]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PWM_Count(9));

-- Location: LCCOMB_X7_Y22_N0
\PWM_Count[10]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_Count[10]~36_combout\ = (PWM_Count(10) & (!\PWM_Count[9]~35\)) # (!PWM_Count(10) & ((\PWM_Count[9]~35\) # (GND)))
-- \PWM_Count[10]~37\ = CARRY((!\PWM_Count[9]~35\) # (!PWM_Count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PWM_Count(10),
	datad => VCC,
	cin => \PWM_Count[9]~35\,
	combout => \PWM_Count[10]~36_combout\,
	cout => \PWM_Count[10]~37\);

-- Location: FF_X7_Y22_N1
\PWM_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWM_Count[10]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PWM_Count(10));

-- Location: LCCOMB_X7_Y22_N2
\PWM_Count[11]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_Count[11]~38_combout\ = (PWM_Count(11) & (\PWM_Count[10]~37\ $ (GND))) # (!PWM_Count(11) & (!\PWM_Count[10]~37\ & VCC))
-- \PWM_Count[11]~39\ = CARRY((PWM_Count(11) & !\PWM_Count[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PWM_Count(11),
	datad => VCC,
	cin => \PWM_Count[10]~37\,
	combout => \PWM_Count[11]~38_combout\,
	cout => \PWM_Count[11]~39\);

-- Location: FF_X7_Y22_N3
\PWM_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWM_Count[11]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PWM_Count(11));

-- Location: LCCOMB_X7_Y22_N4
\PWM_Count[12]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_Count[12]~40_combout\ = (PWM_Count(12) & (!\PWM_Count[11]~39\)) # (!PWM_Count(12) & ((\PWM_Count[11]~39\) # (GND)))
-- \PWM_Count[12]~41\ = CARRY((!\PWM_Count[11]~39\) # (!PWM_Count(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PWM_Count(12),
	datad => VCC,
	cin => \PWM_Count[11]~39\,
	combout => \PWM_Count[12]~40_combout\,
	cout => \PWM_Count[12]~41\);

-- Location: FF_X7_Y22_N5
\PWM_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWM_Count[12]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PWM_Count(12));

-- Location: LCCOMB_X7_Y22_N6
\PWM_Count[13]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_Count[13]~42_combout\ = (PWM_Count(13) & (\PWM_Count[12]~41\ $ (GND))) # (!PWM_Count(13) & (!\PWM_Count[12]~41\ & VCC))
-- \PWM_Count[13]~43\ = CARRY((PWM_Count(13) & !\PWM_Count[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PWM_Count(13),
	datad => VCC,
	cin => \PWM_Count[12]~41\,
	combout => \PWM_Count[13]~42_combout\,
	cout => \PWM_Count[13]~43\);

-- Location: FF_X7_Y22_N7
\PWM_Count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWM_Count[13]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PWM_Count(13));

-- Location: LCCOMB_X7_Y22_N8
\PWM_Count[14]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_Count[14]~44_combout\ = (PWM_Count(14) & (!\PWM_Count[13]~43\)) # (!PWM_Count(14) & ((\PWM_Count[13]~43\) # (GND)))
-- \PWM_Count[14]~45\ = CARRY((!\PWM_Count[13]~43\) # (!PWM_Count(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PWM_Count(14),
	datad => VCC,
	cin => \PWM_Count[13]~43\,
	combout => \PWM_Count[14]~44_combout\,
	cout => \PWM_Count[14]~45\);

-- Location: FF_X7_Y22_N9
\PWM_Count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWM_Count[14]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PWM_Count(14));

-- Location: LCCOMB_X7_Y22_N10
\PWM_Count[15]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_Count[15]~46_combout\ = (PWM_Count(15) & (\PWM_Count[14]~45\ $ (GND))) # (!PWM_Count(15) & (!\PWM_Count[14]~45\ & VCC))
-- \PWM_Count[15]~47\ = CARRY((PWM_Count(15) & !\PWM_Count[14]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PWM_Count(15),
	datad => VCC,
	cin => \PWM_Count[14]~45\,
	combout => \PWM_Count[15]~46_combout\,
	cout => \PWM_Count[15]~47\);

-- Location: FF_X7_Y22_N11
\PWM_Count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWM_Count[15]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PWM_Count(15));

-- Location: LCCOMB_X8_Y22_N28
\PWM~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM~0_combout\ = (PWM_Count(15) & PWM_Count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PWM_Count(15),
	datad => PWM_Count(9),
	combout => \PWM~0_combout\);

-- Location: LCCOMB_X7_Y22_N12
\PWM_Count[16]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_Count[16]~48_combout\ = (PWM_Count(16) & (!\PWM_Count[15]~47\)) # (!PWM_Count(16) & ((\PWM_Count[15]~47\) # (GND)))
-- \PWM_Count[16]~49\ = CARRY((!\PWM_Count[15]~47\) # (!PWM_Count(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PWM_Count(16),
	datad => VCC,
	cin => \PWM_Count[15]~47\,
	combout => \PWM_Count[16]~48_combout\,
	cout => \PWM_Count[16]~49\);

-- Location: FF_X7_Y22_N13
\PWM_Count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWM_Count[16]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PWM_Count(16));

-- Location: LCCOMB_X8_Y22_N10
\PWM~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM~1_combout\ = (PWM_Count(7) & (\PWM~0_combout\ & (PWM_Count(10) & PWM_Count(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PWM_Count(7),
	datab => \PWM~0_combout\,
	datac => PWM_Count(10),
	datad => PWM_Count(16),
	combout => \PWM~1_combout\);

-- Location: LCCOMB_X8_Y22_N12
\PWM~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM~2_combout\ = (\PWM~1_combout\ & ((PWM_Count(6)) # ((PWM_Count(4) & PWM_Count(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PWM_Count(4),
	datab => PWM_Count(5),
	datac => PWM_Count(6),
	datad => \PWM~1_combout\,
	combout => \PWM~2_combout\);

-- Location: IOIBUF_X0_Y24_N1
\selector~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selector,
	o => \selector~input_o\);

-- Location: LCCOMB_X8_Y22_N30
\PWM~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM~9_combout\ = (!\selector~input_o\ & (PWM_Count(4) & (PWM_Count(8) & PWM_Count(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector~input_o\,
	datab => PWM_Count(4),
	datac => PWM_Count(8),
	datad => PWM_Count(14),
	combout => \PWM~9_combout\);

-- Location: LCCOMB_X7_Y23_N2
\PWM~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM~7_combout\ = (PWM_Count(2)) # (((PWM_Count(3)) # (PWM_Count(1))) # (!PWM_Count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PWM_Count(2),
	datab => PWM_Count(0),
	datac => PWM_Count(3),
	datad => PWM_Count(1),
	combout => \PWM~7_combout\);

-- Location: LCCOMB_X8_Y22_N0
\PWM~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM~8_combout\ = (PWM_Count(7) & (PWM_Count(5) & (PWM_Count(10) & PWM_Count(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PWM_Count(7),
	datab => PWM_Count(5),
	datac => PWM_Count(10),
	datad => PWM_Count(16),
	combout => \PWM~8_combout\);

-- Location: LCCOMB_X8_Y22_N16
\PWM~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM~10_combout\ = (\PWM~7_combout\ & ((\PWM~8_combout\) # ((\PWM~9_combout\ & PWM_Count(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM~9_combout\,
	datab => \PWM~7_combout\,
	datac => PWM_Count(6),
	datad => \PWM~8_combout\,
	combout => \PWM~10_combout\);

-- Location: LCCOMB_X7_Y22_N14
\PWM_Count[17]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_Count[17]~50_combout\ = (PWM_Count(17) & (\PWM_Count[16]~49\ $ (GND))) # (!PWM_Count(17) & (!\PWM_Count[16]~49\ & VCC))
-- \PWM_Count[17]~51\ = CARRY((PWM_Count(17) & !\PWM_Count[16]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PWM_Count(17),
	datad => VCC,
	cin => \PWM_Count[16]~49\,
	combout => \PWM_Count[17]~50_combout\,
	cout => \PWM_Count[17]~51\);

-- Location: FF_X7_Y22_N15
\PWM_Count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWM_Count[17]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PWM_Count(17));

-- Location: LCCOMB_X7_Y22_N16
\PWM_Count[18]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_Count[18]~52_combout\ = \PWM_Count[17]~51\ $ (PWM_Count(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => PWM_Count(18),
	cin => \PWM_Count[17]~51\,
	combout => \PWM_Count[18]~52_combout\);

-- Location: FF_X7_Y22_N17
\PWM_Count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWM_Count[18]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PWM_Count(18));

-- Location: LCCOMB_X8_Y22_N18
\PWM~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM~3_combout\ = (PWM_Count(17)) # ((PWM_Count(18)) # ((!\selector~input_o\ & PWM_Count(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PWM_Count(17),
	datab => PWM_Count(18),
	datac => \selector~input_o\,
	datad => PWM_Count(16),
	combout => \PWM~3_combout\);

-- Location: LCCOMB_X8_Y22_N4
\PWM~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM~4_combout\ = (PWM_Count(14)) # ((PWM_Count(8) & (PWM_Count(10) & PWM_Count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PWM_Count(14),
	datab => PWM_Count(8),
	datac => PWM_Count(10),
	datad => PWM_Count(9),
	combout => \PWM~4_combout\);

-- Location: LCCOMB_X7_Y22_N26
\PWM~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM~5_combout\ = (PWM_Count(13)) # ((PWM_Count(11)) # ((PWM_Count(12)) # (\PWM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PWM_Count(13),
	datab => PWM_Count(11),
	datac => PWM_Count(12),
	datad => \PWM~4_combout\,
	combout => \PWM~5_combout\);

-- Location: LCCOMB_X8_Y22_N26
\PWM~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM~6_combout\ = (\PWM~3_combout\) # ((PWM_Count(16) & (\PWM~5_combout\ & PWM_Count(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PWM_Count(16),
	datab => \PWM~3_combout\,
	datac => \PWM~5_combout\,
	datad => PWM_Count(15),
	combout => \PWM~6_combout\);

-- Location: LCCOMB_X8_Y22_N22
\PWM~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM~11_combout\ = (\PWM~2_combout\) # ((\PWM~6_combout\) # ((\PWM~10_combout\ & \PWM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM~2_combout\,
	datab => \PWM~10_combout\,
	datac => \PWM~6_combout\,
	datad => \PWM~0_combout\,
	combout => \PWM~11_combout\);

-- Location: LCCOMB_X8_Y22_N20
\PWM~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM~15_combout\ = (PWM_Count(15) & (!\selector~input_o\ & PWM_Count(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PWM_Count(15),
	datac => \selector~input_o\,
	datad => PWM_Count(14),
	combout => \PWM~15_combout\);

-- Location: LCCOMB_X8_Y22_N24
\PWM~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM~12_combout\ = (PWM_Count(14) & (PWM_Count(8) & (!\selector~input_o\ & \PWM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PWM_Count(14),
	datab => PWM_Count(8),
	datac => \selector~input_o\,
	datad => \PWM~0_combout\,
	combout => \PWM~12_combout\);

-- Location: LCCOMB_X8_Y22_N14
\PWM~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM~13_combout\ = (\PWM~12_combout\ & ((PWM_Count(7)) # ((PWM_Count(5) & PWM_Count(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PWM_Count(7),
	datab => PWM_Count(5),
	datac => PWM_Count(6),
	datad => \PWM~12_combout\,
	combout => \PWM~13_combout\);

-- Location: LCCOMB_X7_Y22_N24
\PWM~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM~14_combout\ = (PWM_Count(13)) # ((PWM_Count(11)) # ((PWM_Count(12)) # (PWM_Count(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PWM_Count(13),
	datab => PWM_Count(11),
	datac => PWM_Count(12),
	datad => PWM_Count(10),
	combout => \PWM~14_combout\);

-- Location: LCCOMB_X8_Y22_N2
\PWM~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM~16_combout\ = (\PWM~11_combout\) # ((\PWM~13_combout\) # ((\PWM~15_combout\ & \PWM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM~11_combout\,
	datab => \PWM~15_combout\,
	datac => \PWM~13_combout\,
	datad => \PWM~14_combout\,
	combout => \PWM~16_combout\);

ww_PWM <= \PWM~output_o\;
END structure;


