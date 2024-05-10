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

-- DATE "05/06/2024 17:59:46"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bcd_g IS
    PORT (
	IA : IN std_logic;
	ABCDEFG : OUT std_logic_vector(6 DOWNTO 0)
	);
END bcd_g;

-- Design Ports Information
-- ABCDEFG[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCDEFG[1]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCDEFG[2]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCDEFG[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCDEFG[4]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCDEFG[5]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCDEFG[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IA	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bcd_g IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IA : std_logic;
SIGNAL ww_ABCDEFG : std_logic_vector(6 DOWNTO 0);
SIGNAL \ABCDEFG[0]~output_o\ : std_logic;
SIGNAL \ABCDEFG[1]~output_o\ : std_logic;
SIGNAL \ABCDEFG[2]~output_o\ : std_logic;
SIGNAL \ABCDEFG[3]~output_o\ : std_logic;
SIGNAL \ABCDEFG[4]~output_o\ : std_logic;
SIGNAL \ABCDEFG[5]~output_o\ : std_logic;
SIGNAL \ABCDEFG[6]~output_o\ : std_logic;
SIGNAL \IA~input_o\ : std_logic;
SIGNAL \ALT_INV_IA~input_o\ : std_logic;

BEGIN

ww_IA <= IA;
ABCDEFG <= ww_ABCDEFG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_IA~input_o\ <= NOT \IA~input_o\;

-- Location: IOOBUF_X0_Y27_N23
\ABCDEFG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_IA~input_o\,
	devoe => ww_devoe,
	o => \ABCDEFG[0]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\ABCDEFG[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_IA~input_o\,
	devoe => ww_devoe,
	o => \ABCDEFG[1]~output_o\);

-- Location: IOOBUF_X7_Y29_N23
\ABCDEFG[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ABCDEFG[2]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\ABCDEFG[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_IA~input_o\,
	devoe => ww_devoe,
	o => \ABCDEFG[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N2
\ABCDEFG[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_IA~input_o\,
	devoe => ww_devoe,
	o => \ABCDEFG[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\ABCDEFG[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_IA~input_o\,
	devoe => ww_devoe,
	o => \ABCDEFG[5]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\ABCDEFG[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_IA~input_o\,
	devoe => ww_devoe,
	o => \ABCDEFG[6]~output_o\);

-- Location: IOIBUF_X0_Y24_N15
\IA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IA,
	o => \IA~input_o\);

ww_ABCDEFG(0) <= \ABCDEFG[0]~output_o\;

ww_ABCDEFG(1) <= \ABCDEFG[1]~output_o\;

ww_ABCDEFG(2) <= \ABCDEFG[2]~output_o\;

ww_ABCDEFG(3) <= \ABCDEFG[3]~output_o\;

ww_ABCDEFG(4) <= \ABCDEFG[4]~output_o\;

ww_ABCDEFG(5) <= \ABCDEFG[5]~output_o\;

ww_ABCDEFG(6) <= \ABCDEFG[6]~output_o\;
END structure;


