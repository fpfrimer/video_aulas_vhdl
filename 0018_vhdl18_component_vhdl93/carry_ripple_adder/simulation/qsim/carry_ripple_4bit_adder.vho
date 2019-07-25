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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "07/21/2019 18:37:44"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	carry_ripple_4bit_adder IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	CARRY_IN : IN std_logic;
	S : OUT std_logic_vector(3 DOWNTO 0);
	CARRY_OUT : OUT std_logic
	);
END carry_ripple_4bit_adder;

ARCHITECTURE structure OF carry_ripple_4bit_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CARRY_IN : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CARRY_OUT : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \CARRY_OUT~output_o\ : std_logic;
SIGNAL \CARRY_IN~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \FA1|ha2|Mux1~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \FA2|Mux1~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \FA2|Mux0~0_combout\ : std_logic;
SIGNAL \FA3|ha2|Mux1~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \FA4|Mux1~0_combout\ : std_logic;
SIGNAL \FA4|Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_CARRY_IN~input_o\ : std_logic;
SIGNAL \FA2|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_CARRY_IN <= CARRY_IN;
S <= ww_S;
CARRY_OUT <= ww_CARRY_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_CARRY_IN~input_o\ <= NOT \CARRY_IN~input_o\;
\FA2|ALT_INV_Mux0~0_combout\ <= NOT \FA2|Mux0~0_combout\;

\S[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FA1|ha2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

\S[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FA2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

\S[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FA3|ha2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

\S[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FA4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

\CARRY_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FA4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \CARRY_OUT~output_o\);

\CARRY_IN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CARRY_IN,
	o => \CARRY_IN~input_o\);

\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

\FA1|ha2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA1|ha2|Mux1~0_combout\ = !\CARRY_IN~input_o\ $ (!\A[0]~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CARRY_IN~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	combout => \FA1|ha2|Mux1~0_combout\);

\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

\FA2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA2|Mux1~0_combout\ = ( \B[1]~input_o\ & ( !\A[1]~input_o\ $ (((!\CARRY_IN~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\)) # (\CARRY_IN~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))))) ) ) # ( !\B[1]~input_o\ & ( !\A[1]~input_o\ $ (((!\CARRY_IN~input_o\ 
-- & ((!\A[0]~input_o\) # (!\B[0]~input_o\))) # (\CARRY_IN~input_o\ & (!\A[0]~input_o\ & !\B[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000111010000001011100010111111010001110100000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CARRY_IN~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	combout => \FA2|Mux1~0_combout\);

\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

\FA2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA2|Mux0~0_combout\ = ( \B[1]~input_o\ & ( ((!\CARRY_IN~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\)) # (\CARRY_IN~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\)))) # (\A[1]~input_o\) ) ) # ( !\B[1]~input_o\ & ( (\A[1]~input_o\ & ((!\CARRY_IN~input_o\ & 
-- (\A[0]~input_o\ & \B[0]~input_o\)) # (\CARRY_IN~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111100000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CARRY_IN~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	combout => \FA2|Mux0~0_combout\);

\FA3|ha2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA3|ha2|Mux1~0_combout\ = !\A[2]~input_o\ $ (!\B[2]~input_o\ $ (\FA2|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \FA2|ALT_INV_Mux0~0_combout\,
	combout => \FA3|ha2|Mux1~0_combout\);

\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

\FA4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA4|Mux1~0_combout\ = ( \B[3]~input_o\ & ( !\A[3]~input_o\ $ (((!\A[2]~input_o\ & (\B[2]~input_o\ & \FA2|Mux0~0_combout\)) # (\A[2]~input_o\ & ((\FA2|Mux0~0_combout\) # (\B[2]~input_o\))))) ) ) # ( !\B[3]~input_o\ & ( !\A[3]~input_o\ $ (((!\A[2]~input_o\ 
-- & ((!\B[2]~input_o\) # (!\FA2|Mux0~0_combout\))) # (\A[2]~input_o\ & (!\B[2]~input_o\ & !\FA2|Mux0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000111010000001011100010111111010001110100000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \FA2|ALT_INV_Mux0~0_combout\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	combout => \FA4|Mux1~0_combout\);

\FA4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA4|Mux0~0_combout\ = ( \B[3]~input_o\ & ( ((!\A[2]~input_o\ & (\B[2]~input_o\ & \FA2|Mux0~0_combout\)) # (\A[2]~input_o\ & ((\FA2|Mux0~0_combout\) # (\B[2]~input_o\)))) # (\A[3]~input_o\) ) ) # ( !\B[3]~input_o\ & ( (\A[3]~input_o\ & ((!\A[2]~input_o\ & 
-- (\B[2]~input_o\ & \FA2|Mux0~0_combout\)) # (\A[2]~input_o\ & ((\FA2|Mux0~0_combout\) # (\B[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111100000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \FA2|ALT_INV_Mux0~0_combout\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	combout => \FA4|Mux0~0_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_CARRY_OUT <= \CARRY_OUT~output_o\;
END structure;


