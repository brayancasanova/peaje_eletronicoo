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

-- DATE "05/06/2024 10:04:14"

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

ENTITY 	MUX IS
    PORT (
	codigo0 : IN std_logic;
	codigo1 : IN std_logic;
	codigo2 : IN std_logic;
	codigo3 : IN std_logic;
	codigo4 : IN std_logic;
	control : IN std_logic_vector(2 DOWNTO 0);
	salida : BUFFER std_logic
	);
END MUX;

-- Design Ports Information
-- salida	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo0	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo4	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[1]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo2	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo1	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo3	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[2]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MUX IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_codigo0 : std_logic;
SIGNAL ww_codigo1 : std_logic;
SIGNAL ww_codigo2 : std_logic;
SIGNAL ww_codigo3 : std_logic;
SIGNAL ww_codigo4 : std_logic;
SIGNAL ww_control : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_salida : std_logic;
SIGNAL \salida~output_o\ : std_logic;
SIGNAL \control[2]~input_o\ : std_logic;
SIGNAL \control[0]~input_o\ : std_logic;
SIGNAL \codigo4~input_o\ : std_logic;
SIGNAL \control[1]~input_o\ : std_logic;
SIGNAL \codigo0~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \codigo3~input_o\ : std_logic;
SIGNAL \codigo1~input_o\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \codigo2~input_o\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;

BEGIN

ww_codigo0 <= codigo0;
ww_codigo1 <= codigo1;
ww_codigo2 <= codigo2;
ww_codigo3 <= codigo3;
ww_codigo4 <= codigo4;
ww_control <= control;
salida <= ww_salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y12_N16
\salida~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~3_combout\,
	devoe => ww_devoe,
	o => \salida~output_o\);

-- Location: IOIBUF_X0_Y9_N8
\control[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(2),
	o => \control[2]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\control[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(0),
	o => \control[0]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\codigo4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_codigo4,
	o => \codigo4~input_o\);

-- Location: IOIBUF_X3_Y29_N22
\control[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(1),
	o => \control[1]~input_o\);

-- Location: IOIBUF_X0_Y20_N8
\codigo0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_codigo0,
	o => \codigo0~input_o\);

-- Location: LCCOMB_X2_Y13_N0
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\control[0]~input_o\ & (((\codigo0~input_o\)))) # (!\control[0]~input_o\ & ((\control[1]~input_o\ & ((\codigo0~input_o\))) # (!\control[1]~input_o\ & (\codigo4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[0]~input_o\,
	datab => \codigo4~input_o\,
	datac => \control[1]~input_o\,
	datad => \codigo0~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X0_Y13_N15
\codigo3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_codigo3,
	o => \codigo3~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\codigo1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_codigo1,
	o => \codigo1~input_o\);

-- Location: LCCOMB_X2_Y13_N2
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\control[1]~input_o\ & (((\control[0]~input_o\)))) # (!\control[1]~input_o\ & ((\control[0]~input_o\ & (\codigo1~input_o\)) # (!\control[0]~input_o\ & ((\codigo0~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo1~input_o\,
	datab => \codigo0~input_o\,
	datac => \control[1]~input_o\,
	datad => \control[0]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: IOIBUF_X0_Y11_N15
\codigo2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_codigo2,
	o => \codigo2~input_o\);

-- Location: LCCOMB_X2_Y13_N12
\Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux0~1_combout\ & ((\codigo3~input_o\) # ((!\control[1]~input_o\)))) # (!\Mux0~1_combout\ & (((\control[1]~input_o\ & \codigo2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo3~input_o\,
	datab => \Mux0~1_combout\,
	datac => \control[1]~input_o\,
	datad => \codigo2~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X2_Y13_N30
\Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\control[2]~input_o\ & (\Mux0~0_combout\)) # (!\control[2]~input_o\ & ((\Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[2]~input_o\,
	datab => \Mux0~0_combout\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

ww_salida <= \salida~output_o\;
END structure;


