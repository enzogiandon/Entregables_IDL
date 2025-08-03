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

-- DATE "08/03/2025 19:22:08"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Registro_carga IS
    PORT (
	VALOR : OUT std_logic_vector(0 TO 11);
	DATA : IN std_logic_vector(11 DOWNTO 0);
	CLK : IN std_logic;
	RECARGAR : IN std_logic;
	LOAD : IN std_logic
	);
END Registro_carga;

-- Design Ports Information
-- VALOR[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VALOR[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VALOR[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VALOR[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VALOR[4]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VALOR[5]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VALOR[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VALOR[7]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VALOR[8]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VALOR[9]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VALOR[10]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VALOR[11]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[0]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RECARGAR	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[2]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[3]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[4]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[5]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[6]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[7]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[8]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[9]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[10]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[11]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Registro_carga IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_VALOR : std_logic_vector(0 TO 11);
SIGNAL ww_DATA : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RECARGAR : std_logic;
SIGNAL ww_LOAD : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VALOR[0]~output_o\ : std_logic;
SIGNAL \VALOR[1]~output_o\ : std_logic;
SIGNAL \VALOR[2]~output_o\ : std_logic;
SIGNAL \VALOR[3]~output_o\ : std_logic;
SIGNAL \VALOR[4]~output_o\ : std_logic;
SIGNAL \VALOR[5]~output_o\ : std_logic;
SIGNAL \VALOR[6]~output_o\ : std_logic;
SIGNAL \VALOR[7]~output_o\ : std_logic;
SIGNAL \VALOR[8]~output_o\ : std_logic;
SIGNAL \VALOR[9]~output_o\ : std_logic;
SIGNAL \VALOR[10]~output_o\ : std_logic;
SIGNAL \VALOR[11]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \DATA[0]~input_o\ : std_logic;
SIGNAL \LOAD~input_o\ : std_logic;
SIGNAL \RECARGAR~input_o\ : std_logic;
SIGNAL \and_recarga~combout\ : std_logic;
SIGNAL \inst30~q\ : std_logic;
SIGNAL \DATA[1]~input_o\ : std_logic;
SIGNAL \inst29~feeder_combout\ : std_logic;
SIGNAL \inst29~q\ : std_logic;
SIGNAL \DATA[2]~input_o\ : std_logic;
SIGNAL \inst28~feeder_combout\ : std_logic;
SIGNAL \inst28~q\ : std_logic;
SIGNAL \DATA[3]~input_o\ : std_logic;
SIGNAL \inst27~q\ : std_logic;
SIGNAL \DATA[4]~input_o\ : std_logic;
SIGNAL \inst26~feeder_combout\ : std_logic;
SIGNAL \inst26~q\ : std_logic;
SIGNAL \DATA[5]~input_o\ : std_logic;
SIGNAL \inst25~feeder_combout\ : std_logic;
SIGNAL \inst25~q\ : std_logic;
SIGNAL \DATA[6]~input_o\ : std_logic;
SIGNAL \inst24~q\ : std_logic;
SIGNAL \DATA[7]~input_o\ : std_logic;
SIGNAL \inst23~feeder_combout\ : std_logic;
SIGNAL \inst23~q\ : std_logic;
SIGNAL \DATA[8]~input_o\ : std_logic;
SIGNAL \inst22~q\ : std_logic;
SIGNAL \DATA[9]~input_o\ : std_logic;
SIGNAL \inst21~feeder_combout\ : std_logic;
SIGNAL \inst21~q\ : std_logic;
SIGNAL \DATA[10]~input_o\ : std_logic;
SIGNAL \inst20~q\ : std_logic;
SIGNAL \DATA[11]~input_o\ : std_logic;
SIGNAL \inst19~feeder_combout\ : std_logic;
SIGNAL \inst19~q\ : std_logic;

BEGIN

VALOR <= ww_VALOR;
ww_DATA <= DATA;
ww_CLK <= CLK;
ww_RECARGAR <= RECARGAR;
ww_LOAD <= LOAD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: IOOBUF_X24_Y31_N2
\VALOR[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30~q\,
	devoe => ww_devoe,
	o => \VALOR[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\VALOR[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29~q\,
	devoe => ww_devoe,
	o => \VALOR[1]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\VALOR[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst28~q\,
	devoe => ww_devoe,
	o => \VALOR[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\VALOR[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27~q\,
	devoe => ww_devoe,
	o => \VALOR[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\VALOR[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26~q\,
	devoe => ww_devoe,
	o => \VALOR[4]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\VALOR[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25~q\,
	devoe => ww_devoe,
	o => \VALOR[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\VALOR[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24~q\,
	devoe => ww_devoe,
	o => \VALOR[6]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\VALOR[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23~q\,
	devoe => ww_devoe,
	o => \VALOR[7]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\VALOR[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22~q\,
	devoe => ww_devoe,
	o => \VALOR[8]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\VALOR[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21~q\,
	devoe => ww_devoe,
	o => \VALOR[9]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\VALOR[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20~q\,
	devoe => ww_devoe,
	o => \VALOR[10]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\VALOR[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19~q\,
	devoe => ww_devoe,
	o => \VALOR[11]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G17
\CLK~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: IOIBUF_X24_Y0_N1
\DATA[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(0),
	o => \DATA[0]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\LOAD~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD,
	o => \LOAD~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\RECARGAR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RECARGAR,
	o => \RECARGAR~input_o\);

-- Location: LCCOMB_X24_Y1_N8
and_recarga : cycloneiv_lcell_comb
-- Equation(s):
-- \and_recarga~combout\ = (\LOAD~input_o\ & \RECARGAR~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LOAD~input_o\,
	datad => \RECARGAR~input_o\,
	combout => \and_recarga~combout\);

-- Location: FF_X24_Y1_N17
inst30 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[0]~input_o\,
	sload => VCC,
	ena => \and_recarga~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30~q\);

-- Location: IOIBUF_X22_Y0_N8
\DATA[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(1),
	o => \DATA[1]~input_o\);

-- Location: LCCOMB_X24_Y1_N26
\inst29~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst29~feeder_combout\ = \DATA[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA[1]~input_o\,
	combout => \inst29~feeder_combout\);

-- Location: FF_X24_Y1_N27
inst29 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst29~feeder_combout\,
	ena => \and_recarga~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29~q\);

-- Location: IOIBUF_X29_Y0_N1
\DATA[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(2),
	o => \DATA[2]~input_o\);

-- Location: LCCOMB_X24_Y1_N28
\inst28~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst28~feeder_combout\ = \DATA[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA[2]~input_o\,
	combout => \inst28~feeder_combout\);

-- Location: FF_X24_Y1_N29
inst28 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst28~feeder_combout\,
	ena => \and_recarga~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28~q\);

-- Location: IOIBUF_X33_Y10_N8
\DATA[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(3),
	o => \DATA[3]~input_o\);

-- Location: FF_X24_Y1_N23
inst27 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[3]~input_o\,
	sload => VCC,
	ena => \and_recarga~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27~q\);

-- Location: IOIBUF_X24_Y0_N8
\DATA[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(4),
	o => \DATA[4]~input_o\);

-- Location: LCCOMB_X24_Y1_N24
\inst26~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst26~feeder_combout\ = \DATA[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA[4]~input_o\,
	combout => \inst26~feeder_combout\);

-- Location: FF_X24_Y1_N25
inst26 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst26~feeder_combout\,
	ena => \and_recarga~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26~q\);

-- Location: IOIBUF_X26_Y0_N1
\DATA[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(5),
	o => \DATA[5]~input_o\);

-- Location: LCCOMB_X24_Y1_N2
\inst25~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst25~feeder_combout\ = \DATA[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA[5]~input_o\,
	combout => \inst25~feeder_combout\);

-- Location: FF_X24_Y1_N3
inst25 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst25~feeder_combout\,
	ena => \and_recarga~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25~q\);

-- Location: IOIBUF_X26_Y0_N8
\DATA[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(6),
	o => \DATA[6]~input_o\);

-- Location: FF_X24_Y1_N5
inst24 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[6]~input_o\,
	sload => VCC,
	ena => \and_recarga~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24~q\);

-- Location: IOIBUF_X33_Y16_N22
\DATA[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(7),
	o => \DATA[7]~input_o\);

-- Location: LCCOMB_X24_Y1_N6
\inst23~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst23~feeder_combout\ = \DATA[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA[7]~input_o\,
	combout => \inst23~feeder_combout\);

-- Location: FF_X24_Y1_N7
inst23 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst23~feeder_combout\,
	ena => \and_recarga~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23~q\);

-- Location: IOIBUF_X33_Y16_N15
\DATA[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(8),
	o => \DATA[8]~input_o\);

-- Location: FF_X24_Y1_N1
inst22 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[8]~input_o\,
	sload => VCC,
	ena => \and_recarga~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22~q\);

-- Location: IOIBUF_X31_Y0_N8
\DATA[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(9),
	o => \DATA[9]~input_o\);

-- Location: LCCOMB_X24_Y1_N18
\inst21~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst21~feeder_combout\ = \DATA[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA[9]~input_o\,
	combout => \inst21~feeder_combout\);

-- Location: FF_X24_Y1_N19
inst21 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst21~feeder_combout\,
	ena => \and_recarga~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21~q\);

-- Location: IOIBUF_X33_Y12_N1
\DATA[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(10),
	o => \DATA[10]~input_o\);

-- Location: FF_X24_Y1_N13
inst20 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[10]~input_o\,
	sload => VCC,
	ena => \and_recarga~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20~q\);

-- Location: IOIBUF_X29_Y0_N8
\DATA[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(11),
	o => \DATA[11]~input_o\);

-- Location: LCCOMB_X24_Y1_N14
\inst19~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst19~feeder_combout\ = \DATA[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA[11]~input_o\,
	combout => \inst19~feeder_combout\);

-- Location: FF_X24_Y1_N15
inst19 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst19~feeder_combout\,
	ena => \and_recarga~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19~q\);

ww_VALOR(0) <= \VALOR[0]~output_o\;

ww_VALOR(1) <= \VALOR[1]~output_o\;

ww_VALOR(2) <= \VALOR[2]~output_o\;

ww_VALOR(3) <= \VALOR[3]~output_o\;

ww_VALOR(4) <= \VALOR[4]~output_o\;

ww_VALOR(5) <= \VALOR[5]~output_o\;

ww_VALOR(6) <= \VALOR[6]~output_o\;

ww_VALOR(7) <= \VALOR[7]~output_o\;

ww_VALOR(8) <= \VALOR[8]~output_o\;

ww_VALOR(9) <= \VALOR[9]~output_o\;

ww_VALOR(10) <= \VALOR[10]~output_o\;

ww_VALOR(11) <= \VALOR[11]~output_o\;
END structure;


