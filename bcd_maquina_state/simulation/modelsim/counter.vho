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

-- DATE "05/05/2024 00:56:29"

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

ENTITY 	counter IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	count : OUT std_logic_vector(3 DOWNTO 0)
	);
END counter;

-- Design Ports Information
-- count[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_count : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \count[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \pr_state.five~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \pr_state.five~q\ : std_logic;
SIGNAL \pr_state.six~feeder_combout\ : std_logic;
SIGNAL \pr_state.six~q\ : std_logic;
SIGNAL \pr_state.seven~feeder_combout\ : std_logic;
SIGNAL \pr_state.seven~q\ : std_logic;
SIGNAL \pr_state.eight~feeder_combout\ : std_logic;
SIGNAL \pr_state.eight~q\ : std_logic;
SIGNAL \pr_state.nine~feeder_combout\ : std_logic;
SIGNAL \pr_state.nine~q\ : std_logic;
SIGNAL \pr_state.zero~0_combout\ : std_logic;
SIGNAL \pr_state.zero~q\ : std_logic;
SIGNAL \pr_state.one~0_combout\ : std_logic;
SIGNAL \pr_state.one~q\ : std_logic;
SIGNAL \pr_state.two~feeder_combout\ : std_logic;
SIGNAL \pr_state.two~q\ : std_logic;
SIGNAL \pr_state.three~feeder_combout\ : std_logic;
SIGNAL \pr_state.three~q\ : std_logic;
SIGNAL \pr_state.four~feeder_combout\ : std_logic;
SIGNAL \pr_state.four~q\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_WideOr2~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_WideOr2~combout\ <= NOT \WideOr2~combout\;

-- Location: IOOBUF_X0_Y2_N16
\count[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr2~combout\,
	devoe => ww_devoe,
	o => \count[0]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\count[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \count[1]~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\count[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \count[2]~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\count[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count~2_combout\,
	devoe => ww_devoe,
	o => \count[3]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X1_Y2_N24
\pr_state.five~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pr_state.five~feeder_combout\ = \pr_state.four~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr_state.four~q\,
	combout => \pr_state.five~feeder_combout\);

-- Location: IOIBUF_X0_Y14_N8
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G2
\rst~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X1_Y2_N25
\pr_state.five\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr_state.five~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.five~q\);

-- Location: LCCOMB_X1_Y2_N16
\pr_state.six~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pr_state.six~feeder_combout\ = \pr_state.five~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr_state.five~q\,
	combout => \pr_state.six~feeder_combout\);

-- Location: FF_X1_Y2_N17
\pr_state.six\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr_state.six~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.six~q\);

-- Location: LCCOMB_X1_Y2_N12
\pr_state.seven~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pr_state.seven~feeder_combout\ = \pr_state.six~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr_state.six~q\,
	combout => \pr_state.seven~feeder_combout\);

-- Location: FF_X1_Y2_N13
\pr_state.seven\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr_state.seven~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.seven~q\);

-- Location: LCCOMB_X1_Y2_N28
\pr_state.eight~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pr_state.eight~feeder_combout\ = \pr_state.seven~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr_state.seven~q\,
	combout => \pr_state.eight~feeder_combout\);

-- Location: FF_X1_Y2_N29
\pr_state.eight\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr_state.eight~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.eight~q\);

-- Location: LCCOMB_X1_Y2_N4
\pr_state.nine~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pr_state.nine~feeder_combout\ = \pr_state.eight~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr_state.eight~q\,
	combout => \pr_state.nine~feeder_combout\);

-- Location: FF_X1_Y2_N5
\pr_state.nine\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr_state.nine~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.nine~q\);

-- Location: LCCOMB_X1_Y2_N20
\pr_state.zero~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pr_state.zero~0_combout\ = !\pr_state.nine~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pr_state.nine~q\,
	combout => \pr_state.zero~0_combout\);

-- Location: FF_X1_Y2_N21
\pr_state.zero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr_state.zero~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.zero~q\);

-- Location: LCCOMB_X1_Y2_N0
\pr_state.one~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pr_state.one~0_combout\ = !\pr_state.zero~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr_state.zero~q\,
	combout => \pr_state.one~0_combout\);

-- Location: FF_X1_Y2_N1
\pr_state.one\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr_state.one~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.one~q\);

-- Location: LCCOMB_X1_Y2_N18
\pr_state.two~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pr_state.two~feeder_combout\ = \pr_state.one~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr_state.one~q\,
	combout => \pr_state.two~feeder_combout\);

-- Location: FF_X1_Y2_N19
\pr_state.two\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr_state.two~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.two~q\);

-- Location: LCCOMB_X1_Y2_N6
\pr_state.three~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pr_state.three~feeder_combout\ = \pr_state.two~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr_state.two~q\,
	combout => \pr_state.three~feeder_combout\);

-- Location: FF_X1_Y2_N7
\pr_state.three\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr_state.three~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.three~q\);

-- Location: LCCOMB_X1_Y2_N2
\pr_state.four~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pr_state.four~feeder_combout\ = \pr_state.three~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr_state.three~q\,
	combout => \pr_state.four~feeder_combout\);

-- Location: FF_X1_Y2_N3
\pr_state.four\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr_state.four~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.four~q\);

-- Location: LCCOMB_X1_Y2_N10
\WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\pr_state.four~q\) # (((\pr_state.two~q\) # (\pr_state.six~q\)) # (!\pr_state.zero~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_state.four~q\,
	datab => \pr_state.zero~q\,
	datac => \pr_state.two~q\,
	datad => \pr_state.six~q\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y2_N8
WideOr2 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\WideOr2~0_combout\) # (\pr_state.eight~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideOr2~0_combout\,
	datad => \pr_state.eight~q\,
	combout => \WideOr2~combout\);

-- Location: LCCOMB_X1_Y2_N14
\WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\pr_state.two~q\) # ((\pr_state.six~q\) # ((\pr_state.seven~q\) # (\pr_state.three~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_state.two~q\,
	datab => \pr_state.six~q\,
	datac => \pr_state.seven~q\,
	datad => \pr_state.three~q\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y2_N22
\WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\pr_state.four~q\) # ((\pr_state.seven~q\) # ((\pr_state.five~q\) # (\pr_state.six~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_state.four~q\,
	datab => \pr_state.seven~q\,
	datac => \pr_state.five~q\,
	datad => \pr_state.six~q\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y2_N30
\count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (\pr_state.nine~q\) # (\pr_state.eight~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pr_state.nine~q\,
	datad => \pr_state.eight~q\,
	combout => \count~2_combout\);

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;

ww_count(3) <= \count[3]~output_o\;
END structure;


