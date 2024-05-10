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

-- DATE "03/06/2024 18:33:46"

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

ENTITY 	Divisor_frecuencia IS
    PORT (
	CLK : IN std_logic;
	out1 : BUFFER std_logic;
	out2 : BUFFER std_logic
	);
END Divisor_frecuencia;

-- Design Ports Information
-- out1	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Divisor_frecuencia IS
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
SIGNAL ww_out1 : std_logic;
SIGNAL ww_out2 : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \out1~output_o\ : std_logic;
SIGNAL \out2~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \count1[2]~1_combout\ : std_logic;
SIGNAL \count1~2_combout\ : std_logic;
SIGNAL \count1~0_combout\ : std_logic;
SIGNAL \out1~0_combout\ : std_logic;
SIGNAL \out1~reg0_q\ : std_logic;
SIGNAL \count2~0_combout\ : std_logic;
SIGNAL \Divisor_frecuencia:count2[0]~q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Divisor_frecuencia:count2[2]~q\ : std_logic;
SIGNAL \count2~1_combout\ : std_logic;
SIGNAL \Divisor_frecuencia:count2[1]~q\ : std_logic;
SIGNAL \out2~0_combout\ : std_logic;
SIGNAL \out2~reg0_q\ : std_logic;
SIGNAL count1 : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
out1 <= ww_out1;
out2 <= ww_out2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: IOOBUF_X0_Y8_N9
\out1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~reg0_q\,
	devoe => ww_devoe,
	o => \out1~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\out2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out2~reg0_q\,
	devoe => ww_devoe,
	o => \out2~output_o\);

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

-- Location: LCCOMB_X1_Y8_N12
\count1[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count1[2]~1_combout\ = count1(2) $ (((count1(1) & count1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(1),
	datac => count1(2),
	datad => count1(0),
	combout => \count1[2]~1_combout\);

-- Location: FF_X1_Y8_N13
\count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(2));

-- Location: LCCOMB_X1_Y8_N18
\count1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count1~2_combout\ = (count1(1) & (count1(2) & !count1(0))) # (!count1(1) & ((count1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(2),
	datac => count1(1),
	datad => count1(0),
	combout => \count1~2_combout\);

-- Location: FF_X1_Y8_N19
\count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(1));

-- Location: LCCOMB_X1_Y8_N10
\count1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count1~0_combout\ = (!count1(0) & ((count1(2)) # (!count1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(1),
	datac => count1(0),
	datad => count1(2),
	combout => \count1~0_combout\);

-- Location: FF_X1_Y8_N11
\count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(0));

-- Location: LCCOMB_X1_Y8_N28
\out1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \out1~0_combout\ = \out1~reg0_q\ $ (((!count1(0) & (count1(1) & !count1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(0),
	datab => count1(1),
	datac => \out1~reg0_q\,
	datad => count1(2),
	combout => \out1~0_combout\);

-- Location: FF_X1_Y8_N29
\out1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \out1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out1~reg0_q\);

-- Location: LCCOMB_X1_Y2_N12
\count2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count2~0_combout\ = (!\Divisor_frecuencia:count2[0]~q\ & ((\Divisor_frecuencia:count2[2]~q\) # (!\Divisor_frecuencia:count2[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencia:count2[1]~q\,
	datac => \Divisor_frecuencia:count2[0]~q\,
	datad => \Divisor_frecuencia:count2[2]~q\,
	combout => \count2~0_combout\);

-- Location: FF_X1_Y2_N13
\Divisor_frecuencia:count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencia:count2[0]~q\);

-- Location: LCCOMB_X1_Y2_N18
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \Divisor_frecuencia:count2[2]~q\ $ (((\Divisor_frecuencia:count2[1]~q\ & \Divisor_frecuencia:count2[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencia:count2[1]~q\,
	datac => \Divisor_frecuencia:count2[2]~q\,
	datad => \Divisor_frecuencia:count2[0]~q\,
	combout => \Add1~0_combout\);

-- Location: FF_X1_Y2_N19
\Divisor_frecuencia:count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencia:count2[2]~q\);

-- Location: LCCOMB_X1_Y2_N26
\count2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count2~1_combout\ = (\Divisor_frecuencia:count2[1]~q\ & (\Divisor_frecuencia:count2[2]~q\ & !\Divisor_frecuencia:count2[0]~q\)) # (!\Divisor_frecuencia:count2[1]~q\ & ((\Divisor_frecuencia:count2[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencia:count2[2]~q\,
	datac => \Divisor_frecuencia:count2[1]~q\,
	datad => \Divisor_frecuencia:count2[0]~q\,
	combout => \count2~1_combout\);

-- Location: FF_X1_Y2_N27
\Divisor_frecuencia:count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencia:count2[1]~q\);

-- Location: LCCOMB_X1_Y2_N28
\out2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \out2~0_combout\ = \out2~reg0_q\ $ (((\Divisor_frecuencia:count2[1]~q\ & (!\Divisor_frecuencia:count2[2]~q\ & !\Divisor_frecuencia:count2[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencia:count2[1]~q\,
	datab => \Divisor_frecuencia:count2[2]~q\,
	datac => \out2~reg0_q\,
	datad => \Divisor_frecuencia:count2[0]~q\,
	combout => \out2~0_combout\);

-- Location: FF_X1_Y2_N29
\out2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \out2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out2~reg0_q\);

ww_out1 <= \out1~output_o\;

ww_out2 <= \out2~output_o\;
END structure;


