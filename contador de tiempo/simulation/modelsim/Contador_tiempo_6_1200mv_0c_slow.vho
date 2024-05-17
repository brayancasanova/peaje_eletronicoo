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

-- DATE "05/14/2024 00:05:03"

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

ENTITY 	Contador_tiempo IS
    PORT (
	CLK : IN std_logic;
	enable : IN std_logic;
	reset : IN std_logic;
	count : OUT std_logic_vector(2 DOWNTO 0);
	minsal : OUT std_logic
	);
END Contador_tiempo;

-- Design Ports Information
-- count[0]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minsal	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Contador_tiempo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_count : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_minsal : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \minsal~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \cnt[0]~1_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \cnt~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \cnt~0_combout\ : std_logic;
SIGNAL \minsal~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \minsal~0_combout\ : std_logic;
SIGNAL \minsal~2_combout\ : std_logic;
SIGNAL \minsal~reg0_q\ : std_logic;
SIGNAL cnt : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_enable <= enable;
ww_reset <= reset;
count <= ww_count;
minsal <= ww_minsal;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: IOOBUF_X7_Y0_N9
\count[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(0),
	devoe => ww_devoe,
	o => \count[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\count[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(1),
	devoe => ww_devoe,
	o => \count[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\count[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(2),
	devoe => ww_devoe,
	o => \count[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\minsal~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \minsal~reg0_q\,
	devoe => ww_devoe,
	o => \minsal~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X8_Y1_N6
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = cnt(0) $ (VCC)
-- \Add0~1\ = CARRY(cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X8_Y1_N8
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (cnt(1) & (!\Add0~1\)) # (!cnt(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: IOIBUF_X9_Y0_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X7_Y0_N29
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X8_Y1_N22
\cnt[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[0]~1_combout\ = (\reset~input_o\ & \enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	combout => \cnt[0]~1_combout\);

-- Location: FF_X8_Y1_N9
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	ena => \cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: LCCOMB_X8_Y1_N10
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (cnt(2) & (\Add0~3\ $ (GND))) # (!cnt(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((cnt(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X8_Y1_N12
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (cnt(3) & (!\Add0~5\)) # (!cnt(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X8_Y1_N13
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	ena => \cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LCCOMB_X8_Y1_N14
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = cnt(4) $ (!\Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(4),
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: FF_X8_Y1_N15
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	ena => \cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: LCCOMB_X8_Y1_N24
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!cnt(3) & (!cnt(4) & !cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datac => cnt(4),
	datad => cnt(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X8_Y1_N26
\cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt~2_combout\ = \Add0~4_combout\ $ (((!cnt(0) & (\Equal0~0_combout\ & cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => \Equal0~0_combout\,
	datac => cnt(2),
	datad => \Add0~4_combout\,
	combout => \cnt~2_combout\);

-- Location: FF_X8_Y1_N27
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cnt~2_combout\,
	ena => \cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LCCOMB_X8_Y1_N20
\cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt~0_combout\ = \Add0~0_combout\ $ (((cnt(2) & (\Equal0~0_combout\ & !cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(2),
	datab => \Equal0~0_combout\,
	datac => cnt(0),
	datad => \Add0~0_combout\,
	combout => \cnt~0_combout\);

-- Location: FF_X8_Y1_N21
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cnt~0_combout\,
	ena => \cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LCCOMB_X8_Y1_N16
\minsal~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \minsal~1_combout\ = (!cnt(0) & (\cnt[0]~1_combout\ & (cnt(2) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => \cnt[0]~1_combout\,
	datac => cnt(2),
	datad => \Equal0~0_combout\,
	combout => \minsal~1_combout\);

-- Location: LCCOMB_X8_Y1_N0
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!cnt(3) & (cnt(0) & (!cnt(4) & !cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datab => cnt(0),
	datac => cnt(4),
	datad => cnt(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X8_Y1_N18
\minsal~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \minsal~0_combout\ = (\enable~input_o\ & (\minsal~reg0_q\ & ((cnt(2)) # (!\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \minsal~reg0_q\,
	datac => cnt(2),
	datad => \Equal1~0_combout\,
	combout => \minsal~0_combout\);

-- Location: LCCOMB_X8_Y1_N28
\minsal~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \minsal~2_combout\ = (\minsal~1_combout\) # ((\minsal~0_combout\) # ((!\reset~input_o\ & \minsal~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \minsal~1_combout\,
	datac => \minsal~reg0_q\,
	datad => \minsal~0_combout\,
	combout => \minsal~2_combout\);

-- Location: FF_X8_Y1_N29
\minsal~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \minsal~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minsal~reg0_q\);

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;

ww_minsal <= \minsal~output_o\;
END structure;


