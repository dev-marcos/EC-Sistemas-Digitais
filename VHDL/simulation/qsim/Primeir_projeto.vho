-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/01/2022 13:54:18"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Exercicio_3 IS
    PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	B0 : BUFFER std_logic;
	B1 : BUFFER std_logic;
	B2 : BUFFER std_logic;
	B3 : BUFFER std_logic
	);
END Exercicio_3;

ARCHITECTURE structure OF Exercicio_3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL \B0~output_o\ : std_logic;
SIGNAL \B1~output_o\ : std_logic;
SIGNAL \B2~output_o\ : std_logic;
SIGNAL \B3~output_o\ : std_logic;
SIGNAL \D0~input_o\ : std_logic;
SIGNAL \D1~input_o\ : std_logic;
SIGNAL \B0~0_combout\ : std_logic;
SIGNAL \B2~0_combout\ : std_logic;
SIGNAL \B2~1_combout\ : std_logic;
SIGNAL \B2~2_combout\ : std_logic;
SIGNAL \ALT_INV_B0~0_combout\ : std_logic;

BEGIN

ww_D0 <= D0;
ww_D1 <= D1;
B0 <= ww_B0;
B1 <= ww_B1;
B2 <= ww_B2;
B3 <= ww_B3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B0~0_combout\ <= NOT \B0~0_combout\;

\B0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_B0~0_combout\,
	devoe => ww_devoe,
	o => \B0~output_o\);

\B1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B2~0_combout\,
	devoe => ww_devoe,
	o => \B1~output_o\);

\B2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B2~1_combout\,
	devoe => ww_devoe,
	o => \B2~output_o\);

\B3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B2~2_combout\,
	devoe => ww_devoe,
	o => \B3~output_o\);

\D0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0,
	o => \D0~input_o\);

\D1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1,
	o => \D1~input_o\);

\B0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0~0_combout\ = (\D0~input_o\) # (\D1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0~input_o\,
	datab => \D1~input_o\,
	combout => \B0~0_combout\);

\B2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B2~0_combout\ = (\D0~input_o\ & !\D1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0~input_o\,
	datad => \D1~input_o\,
	combout => \B2~0_combout\);

\B2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \B2~1_combout\ = (\D1~input_o\ & !\D0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1~input_o\,
	datad => \D0~input_o\,
	combout => \B2~1_combout\);

\B2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \B2~2_combout\ = (\D0~input_o\ & \D1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0~input_o\,
	datab => \D1~input_o\,
	combout => \B2~2_combout\);

ww_B0 <= \B0~output_o\;

ww_B1 <= \B1~output_o\;

ww_B2 <= \B2~output_o\;

ww_B3 <= \B3~output_o\;
END structure;


