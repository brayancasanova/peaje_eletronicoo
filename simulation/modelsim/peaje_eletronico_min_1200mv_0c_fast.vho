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

-- DATE "05/06/2024 19:43:32"

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

ENTITY 	peaje_eletronico IS
    PORT (
	front_sensor : IN std_logic;
	back_sensor : IN std_logic;
	reset : IN std_logic;
	clk : IN std_logic;
	pagar_dinero : IN std_logic_vector(4 DOWNTO 0);
	semaforo_entrada_verde : OUT std_logic;
	semaforo_entrada_rojo : OUT std_logic;
	semaforo_salida_verde : OUT std_logic;
	semaforo_salida_rojo : OUT std_logic;
	talanquera_entrada : OUT std_logic;
	talanquera_salida : OUT std_logic;
	alarma_ruido : OUT std_logic;
	recibo : OUT std_logic;
	bcd_out : OUT std_logic_vector(6 DOWNTO 0)
	);
END peaje_eletronico;

-- Design Ports Information
-- semaforo_entrada_verde	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_entrada_rojo	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_salida_verde	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_salida_rojo	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- talanquera_entrada	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- talanquera_salida	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarma_ruido	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recibo	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd_out[0]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd_out[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd_out[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd_out[3]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd_out[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd_out[5]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd_out[6]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- back_sensor	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- front_sensor	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pagar_dinero[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pagar_dinero[1]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pagar_dinero[2]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pagar_dinero[3]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pagar_dinero[4]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF peaje_eletronico IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_front_sensor : std_logic;
SIGNAL ww_back_sensor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_pagar_dinero : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_semaforo_entrada_verde : std_logic;
SIGNAL ww_semaforo_entrada_rojo : std_logic;
SIGNAL ww_semaforo_salida_verde : std_logic;
SIGNAL ww_semaforo_salida_rojo : std_logic;
SIGNAL ww_talanquera_entrada : std_logic;
SIGNAL ww_talanquera_salida : std_logic;
SIGNAL ww_alarma_ruido : std_logic;
SIGNAL ww_recibo : std_logic;
SIGNAL ww_bcd_out : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \semaforo_entrada_verde~output_o\ : std_logic;
SIGNAL \semaforo_entrada_rojo~output_o\ : std_logic;
SIGNAL \semaforo_salida_verde~output_o\ : std_logic;
SIGNAL \semaforo_salida_rojo~output_o\ : std_logic;
SIGNAL \talanquera_entrada~output_o\ : std_logic;
SIGNAL \talanquera_salida~output_o\ : std_logic;
SIGNAL \alarma_ruido~output_o\ : std_logic;
SIGNAL \recibo~output_o\ : std_logic;
SIGNAL \bcd_out[0]~output_o\ : std_logic;
SIGNAL \bcd_out[1]~output_o\ : std_logic;
SIGNAL \bcd_out[2]~output_o\ : std_logic;
SIGNAL \bcd_out[3]~output_o\ : std_logic;
SIGNAL \bcd_out[4]~output_o\ : std_logic;
SIGNAL \bcd_out[5]~output_o\ : std_logic;
SIGNAL \bcd_out[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \back_sensor~input_o\ : std_logic;
SIGNAL \front_sensor~input_o\ : std_logic;
SIGNAL \pagar_dinero[1]~input_o\ : std_logic;
SIGNAL \pagar_dinero[0]~input_o\ : std_logic;
SIGNAL \pagar_dinero[3]~input_o\ : std_logic;
SIGNAL \pagar_dinero[2]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \pagar_dinero[4]~input_o\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \presente~12_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \presente.intento1~q\ : std_logic;
SIGNAL \presente~15_combout\ : std_logic;
SIGNAL \presente.intento2~q\ : std_logic;
SIGNAL \presente~13_combout\ : std_logic;
SIGNAL \presente.alarma~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \presente.inicial~q\ : std_logic;
SIGNAL \presente.detectado_entrada~0_combout\ : std_logic;
SIGNAL \presente.detectado_entrada~q\ : std_logic;
SIGNAL \presente~14_combout\ : std_logic;
SIGNAL \presente.pagar~q\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \presente.correcto~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \presente.detectado_salida~q\ : std_logic;
SIGNAL \semaforo_entrada_verde~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_presente.correcto~q\ : std_logic;
SIGNAL \ALT_INV_semaforo_entrada_verde~0_combout\ : std_logic;

BEGIN

ww_front_sensor <= front_sensor;
ww_back_sensor <= back_sensor;
ww_reset <= reset;
ww_clk <= clk;
ww_pagar_dinero <= pagar_dinero;
semaforo_entrada_verde <= ww_semaforo_entrada_verde;
semaforo_entrada_rojo <= ww_semaforo_entrada_rojo;
semaforo_salida_verde <= ww_semaforo_salida_verde;
semaforo_salida_rojo <= ww_semaforo_salida_rojo;
talanquera_entrada <= ww_talanquera_entrada;
talanquera_salida <= ww_talanquera_salida;
alarma_ruido <= ww_alarma_ruido;
recibo <= ww_recibo;
bcd_out <= ww_bcd_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_presente.correcto~q\ <= NOT \presente.correcto~q\;
\ALT_INV_semaforo_entrada_verde~0_combout\ <= NOT \semaforo_entrada_verde~0_combout\;

-- Location: IOOBUF_X0_Y23_N2
\semaforo_entrada_verde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \semaforo_entrada_verde~0_combout\,
	devoe => ww_devoe,
	o => \semaforo_entrada_verde~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\semaforo_entrada_rojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_semaforo_entrada_verde~0_combout\,
	devoe => ww_devoe,
	o => \semaforo_entrada_rojo~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\semaforo_salida_verde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \presente.correcto~q\,
	devoe => ww_devoe,
	o => \semaforo_salida_verde~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\semaforo_salida_rojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_presente.correcto~q\,
	devoe => ww_devoe,
	o => \semaforo_salida_rojo~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\talanquera_entrada~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \semaforo_entrada_verde~0_combout\,
	devoe => ww_devoe,
	o => \talanquera_entrada~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\talanquera_salida~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \presente.correcto~q\,
	devoe => ww_devoe,
	o => \talanquera_salida~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\alarma_ruido~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \presente.intento1~q\,
	devoe => ww_devoe,
	o => \alarma_ruido~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\recibo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \presente.correcto~q\,
	devoe => ww_devoe,
	o => \recibo~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\bcd_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd_out[0]~output_o\);

-- Location: IOOBUF_X11_Y29_N30
\bcd_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd_out[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\bcd_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd_out[2]~output_o\);

-- Location: IOOBUF_X41_Y26_N16
\bcd_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd_out[3]~output_o\);

-- Location: IOOBUF_X11_Y29_N2
\bcd_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd_out[4]~output_o\);

-- Location: IOOBUF_X3_Y29_N9
\bcd_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd_out[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\bcd_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd_out[6]~output_o\);

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

-- Location: IOIBUF_X0_Y27_N1
\back_sensor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_back_sensor,
	o => \back_sensor~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\front_sensor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_front_sensor,
	o => \front_sensor~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\pagar_dinero[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pagar_dinero(1),
	o => \pagar_dinero[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\pagar_dinero[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pagar_dinero(0),
	o => \pagar_dinero[0]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\pagar_dinero[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pagar_dinero(3),
	o => \pagar_dinero[3]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\pagar_dinero[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pagar_dinero(2),
	o => \pagar_dinero[2]~input_o\);

-- Location: LCCOMB_X1_Y25_N26
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\pagar_dinero[1]~input_o\ & (\pagar_dinero[0]~input_o\ & (\pagar_dinero[3]~input_o\ & \pagar_dinero[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pagar_dinero[1]~input_o\,
	datab => \pagar_dinero[0]~input_o\,
	datac => \pagar_dinero[3]~input_o\,
	datad => \pagar_dinero[2]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X0_Y25_N15
\pagar_dinero[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pagar_dinero(4),
	o => \pagar_dinero[4]~input_o\);

-- Location: LCCOMB_X1_Y25_N24
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!\pagar_dinero[0]~input_o\ & ((\pagar_dinero[1]~input_o\ & (!\pagar_dinero[3]~input_o\ & !\pagar_dinero[2]~input_o\)) # (!\pagar_dinero[1]~input_o\ & (\pagar_dinero[3]~input_o\ $ (\pagar_dinero[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pagar_dinero[1]~input_o\,
	datab => \pagar_dinero[0]~input_o\,
	datac => \pagar_dinero[3]~input_o\,
	datad => \pagar_dinero[2]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X1_Y25_N22
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\pagar_dinero[4]~input_o\ & (\Mux0~0_combout\)) # (!\pagar_dinero[4]~input_o\ & ((\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datac => \pagar_dinero[4]~input_o\,
	datad => \Mux0~1_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X1_Y25_N4
\presente~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \presente~12_combout\ = (\presente.pagar~q\ & ((\pagar_dinero[4]~input_o\ & (!\Mux0~0_combout\)) # (!\pagar_dinero[4]~input_o\ & ((!\Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux0~1_combout\,
	datac => \presente.pagar~q\,
	datad => \pagar_dinero[4]~input_o\,
	combout => \presente~12_combout\);

-- Location: IOIBUF_X0_Y25_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X1_Y25_N5
\presente.intento1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \presente~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presente.intento1~q\);

-- Location: LCCOMB_X1_Y25_N20
\presente~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \presente~15_combout\ = (\presente.intento1~q\ & ((\pagar_dinero[4]~input_o\ & (!\Mux0~0_combout\)) # (!\pagar_dinero[4]~input_o\ & ((!\Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux0~1_combout\,
	datac => \pagar_dinero[4]~input_o\,
	datad => \presente.intento1~q\,
	combout => \presente~15_combout\);

-- Location: FF_X1_Y25_N21
\presente.intento2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \presente~15_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presente.intento2~q\);

-- Location: LCCOMB_X1_Y25_N30
\presente~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \presente~13_combout\ = (\presente.intento2~q\ & ((\pagar_dinero[4]~input_o\ & (!\Mux0~0_combout\)) # (!\pagar_dinero[4]~input_o\ & ((!\Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux0~1_combout\,
	datac => \pagar_dinero[4]~input_o\,
	datad => \presente.intento2~q\,
	combout => \presente~13_combout\);

-- Location: FF_X1_Y25_N31
\presente.alarma\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \presente~13_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presente.alarma~q\);

-- Location: LCCOMB_X1_Y25_N0
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\front_sensor~input_o\ & (\back_sensor~input_o\ & ((\presente.detectado_salida~q\) # (!\presente.inicial~q\)))) # (!\front_sensor~input_o\ & (((!\presente.inicial~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \back_sensor~input_o\,
	datab => \front_sensor~input_o\,
	datac => \presente.detectado_salida~q\,
	datad => \presente.inicial~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X1_Y25_N18
\Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\presente.alarma~q\ & !\Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \presente.alarma~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X1_Y25_N19
\presente.inicial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presente.inicial~q\);

-- Location: LCCOMB_X1_Y25_N2
\presente.detectado_entrada~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \presente.detectado_entrada~0_combout\ = (\back_sensor~input_o\ & (((\presente.detectado_entrada~q\)))) # (!\back_sensor~input_o\ & ((\front_sensor~input_o\ & ((!\presente.inicial~q\))) # (!\front_sensor~input_o\ & (\presente.detectado_entrada~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \back_sensor~input_o\,
	datab => \front_sensor~input_o\,
	datac => \presente.detectado_entrada~q\,
	datad => \presente.inicial~q\,
	combout => \presente.detectado_entrada~0_combout\);

-- Location: FF_X1_Y25_N3
\presente.detectado_entrada\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \presente.detectado_entrada~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presente.detectado_entrada~q\);

-- Location: LCCOMB_X1_Y25_N14
\presente~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \presente~14_combout\ = (!\back_sensor~input_o\ & (\front_sensor~input_o\ & \presente.detectado_entrada~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \back_sensor~input_o\,
	datac => \front_sensor~input_o\,
	datad => \presente.detectado_entrada~q\,
	combout => \presente~14_combout\);

-- Location: FF_X1_Y25_N15
\presente.pagar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \presente~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presente.pagar~q\);

-- Location: LCCOMB_X1_Y25_N28
\Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\ & ((\presente.pagar~q\) # ((\presente.intento1~q\) # (\presente.intento2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \presente.pagar~q\,
	datac => \presente.intento1~q\,
	datad => \presente.intento2~q\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X1_Y25_N6
\Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\Selector3~1_combout\) # ((\presente.correcto~q\ & ((\front_sensor~input_o\) # (!\back_sensor~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \back_sensor~input_o\,
	datab => \front_sensor~input_o\,
	datac => \presente.correcto~q\,
	datad => \Selector3~1_combout\,
	combout => \Selector3~2_combout\);

-- Location: FF_X1_Y25_N7
\presente.correcto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presente.correcto~q\);

-- Location: LCCOMB_X1_Y25_N8
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\back_sensor~input_o\ & (!\front_sensor~input_o\ & ((\presente.detectado_salida~q\) # (\presente.correcto~q\)))) # (!\back_sensor~input_o\ & (((\presente.detectado_salida~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \back_sensor~input_o\,
	datab => \front_sensor~input_o\,
	datac => \presente.detectado_salida~q\,
	datad => \presente.correcto~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X1_Y25_N9
\presente.detectado_salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presente.detectado_salida~q\);

-- Location: LCCOMB_X1_Y25_N16
\semaforo_entrada_verde~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \semaforo_entrada_verde~0_combout\ = (\presente.detectado_salida~q\) # (!\presente.inicial~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \presente.detectado_salida~q\,
	datad => \presente.inicial~q\,
	combout => \semaforo_entrada_verde~0_combout\);

ww_semaforo_entrada_verde <= \semaforo_entrada_verde~output_o\;

ww_semaforo_entrada_rojo <= \semaforo_entrada_rojo~output_o\;

ww_semaforo_salida_verde <= \semaforo_salida_verde~output_o\;

ww_semaforo_salida_rojo <= \semaforo_salida_rojo~output_o\;

ww_talanquera_entrada <= \talanquera_entrada~output_o\;

ww_talanquera_salida <= \talanquera_salida~output_o\;

ww_alarma_ruido <= \alarma_ruido~output_o\;

ww_recibo <= \recibo~output_o\;

ww_bcd_out(0) <= \bcd_out[0]~output_o\;

ww_bcd_out(1) <= \bcd_out[1]~output_o\;

ww_bcd_out(2) <= \bcd_out[2]~output_o\;

ww_bcd_out(3) <= \bcd_out[3]~output_o\;

ww_bcd_out(4) <= \bcd_out[4]~output_o\;

ww_bcd_out(5) <= \bcd_out[5]~output_o\;

ww_bcd_out(6) <= \bcd_out[6]~output_o\;
END structure;


