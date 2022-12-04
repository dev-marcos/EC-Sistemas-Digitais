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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/01/2022 13:54:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Exercicio_3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Exercicio_3_vhd_vec_tst IS
END Exercicio_3_vhd_vec_tst;
ARCHITECTURE Exercicio_3_arch OF Exercicio_3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL B0 : STD_LOGIC;
SIGNAL B1 : STD_LOGIC;
SIGNAL B2 : STD_LOGIC;
SIGNAL B3 : STD_LOGIC;
SIGNAL D0 : STD_LOGIC;
SIGNAL D1 : STD_LOGIC;
COMPONENT Exercicio_3
	PORT (
	B0 : BUFFER STD_LOGIC;
	B1 : BUFFER STD_LOGIC;
	B2 : BUFFER STD_LOGIC;
	B3 : BUFFER STD_LOGIC;
	D0 : IN STD_LOGIC;
	D1 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Exercicio_3
	PORT MAP (
-- list connections between master ports and signals
	B0 => B0,
	B1 => B1,
	B2 => B2,
	B3 => B3,
	D0 => D0,
	D1 => D1
	);

-- D0
t_prcs_D0: PROCESS
BEGIN
LOOP
	D0 <= '0';
	WAIT FOR 50000 ps;
	D0 <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_D0;

-- D1
t_prcs_D1: PROCESS
BEGIN
LOOP
	D1 <= '0';
	WAIT FOR 100000 ps;
	D1 <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_D1;
END Exercicio_3_arch;
