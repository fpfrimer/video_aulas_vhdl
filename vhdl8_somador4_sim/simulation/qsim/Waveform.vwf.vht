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
-- Generated on "06/10/2019 09:40:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          somador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY somador_vhd_vec_tst IS
END somador_vhd_vec_tst;
ARCHITECTURE somador_arch OF somador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL z : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT somador
	PORT (
	a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	z : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : somador
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	z => z
	);
-- a[3]
t_prcs_a_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		a(3) <= '0';
		WAIT FOR 80000 ps;
		a(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	a(3) <= '0';
WAIT;
END PROCESS t_prcs_a_3;
-- a[2]
t_prcs_a_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		a(2) <= '0';
		WAIT FOR 40000 ps;
		a(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	a(2) <= '0';
WAIT;
END PROCESS t_prcs_a_2;
-- a[1]
t_prcs_a_1: PROCESS
BEGIN
LOOP
	a(1) <= '0';
	WAIT FOR 20000 ps;
	a(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a_1;
-- a[0]
t_prcs_a_0: PROCESS
BEGIN
LOOP
	a(0) <= '0';
	WAIT FOR 10000 ps;
	a(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a_0;
-- b[3]
t_prcs_b_3: PROCESS
BEGIN
	b(3) <= '0';
WAIT;
END PROCESS t_prcs_b_3;
-- b[2]
t_prcs_b_2: PROCESS
BEGIN
	b(2) <= '0';
	WAIT FOR 640000 ps;
	b(2) <= '1';
WAIT;
END PROCESS t_prcs_b_2;
-- b[1]
t_prcs_b_1: PROCESS
BEGIN
	b(1) <= '0';
	WAIT FOR 320000 ps;
	b(1) <= '1';
	WAIT FOR 320000 ps;
	b(1) <= '0';
	WAIT FOR 320000 ps;
	b(1) <= '1';
WAIT;
END PROCESS t_prcs_b_1;
-- b[0]
t_prcs_b_0: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		b(0) <= '0';
		WAIT FOR 160000 ps;
		b(0) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	b(0) <= '0';
WAIT;
END PROCESS t_prcs_b_0;
END somador_arch;
