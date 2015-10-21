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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "10/19/2015 16:06:50"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	metastability_2 IS
    PORT (
	CLOCK_27 : IN std_logic;
	CLOCK_50 : IN std_logic;
	KEY_1 : IN std_logic;
	GPIO_0_0 : OUT std_logic;
	GPIO_0_1 : OUT std_logic;
	SW_17 : IN std_logic;
	LEDR_0 : OUT std_logic;
	LEDR_1 : OUT std_logic;
	LEDG_7 : OUT std_logic
	);
END metastability_2;

-- Design Ports Information
-- GPIO_0_0	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- GPIO_0_1	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- LEDR_0	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- LEDR_1	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- LEDG_7	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- SW_17	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY_1	=>  Location: PIN_N23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_27	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF metastability_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_27 : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY_1 : std_logic;
SIGNAL ww_GPIO_0_0 : std_logic;
SIGNAL ww_GPIO_0_1 : std_logic;
SIGNAL ww_SW_17 : std_logic;
SIGNAL ww_LEDR_0 : std_logic;
SIGNAL ww_LEDR_1 : std_logic;
SIGNAL ww_LEDG_7 : std_logic;
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_27~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY_1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cnt[3]~0_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_27~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \CLOCK_27~clkctrl_outclk\ : std_logic;
SIGNAL \cnt[0]~3_combout\ : std_logic;
SIGNAL \KEY_1~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \KEY_1~clkctrl_outclk\ : std_logic;
SIGNAL \cnt[1]~2_combout\ : std_logic;
SIGNAL \cnt[2]~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \SW_17~combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \KEY_1~combout\ : std_logic;
SIGNAL \pulse_sync1~regout\ : std_logic;
SIGNAL \pulse_sync2~feeder_combout\ : std_logic;
SIGNAL \pulse_sync2~regout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL state : std_logic_vector(2 DOWNTO 0);
SIGNAL cnt : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_KEY_1~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;

BEGIN

ww_CLOCK_27 <= CLOCK_27;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY_1 <= KEY_1;
GPIO_0_0 <= ww_GPIO_0_0;
GPIO_0_1 <= ww_GPIO_0_1;
ww_SW_17 <= SW_17;
LEDR_0 <= ww_LEDR_0;
LEDR_1 <= ww_LEDR_1;
LEDG_7 <= ww_LEDG_7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);

\CLOCK_27~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_27~combout\);

\KEY_1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \KEY_1~clk_delay_ctrl_clkout\);
\ALT_INV_KEY_1~clkctrl_outclk\ <= NOT \KEY_1~clkctrl_outclk\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;

-- Location: LCFF_X64_Y19_N15
\cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \cnt[3]~0_combout\,
	aclr => \ALT_INV_KEY_1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(3));

-- Location: LCCOMB_X64_Y19_N14
\cnt[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[3]~0_combout\ = cnt(3) $ (((cnt(0) & (cnt(2) & cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(2),
	datac => cnt(3),
	datad => cnt(1),
	combout => \cnt[3]~0_combout\);

-- Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
\CLOCK_27~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_27,
	combout => \CLOCK_27~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: CLKCTRL_G11
\CLOCK_27~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_27~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_27~clkctrl_outclk\);

-- Location: LCCOMB_X64_Y19_N12
\cnt[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[0]~3_combout\ = !cnt(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt(0),
	combout => \cnt[0]~3_combout\);

-- Location: CLKDELAYCTRL_G4
\KEY_1~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \KEY_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \KEY_1~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G4
\KEY_1~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY_1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY_1~clkctrl_outclk\);

-- Location: LCFF_X64_Y19_N13
\cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \cnt[0]~3_combout\,
	aclr => \ALT_INV_KEY_1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(0));

-- Location: LCCOMB_X64_Y19_N26
\cnt[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[1]~2_combout\ = cnt(1) $ (cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt(1),
	datad => cnt(0),
	combout => \cnt[1]~2_combout\);

-- Location: LCFF_X64_Y19_N27
\cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \cnt[1]~2_combout\,
	aclr => \ALT_INV_KEY_1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(1));

-- Location: LCCOMB_X64_Y19_N4
\cnt[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[2]~1_combout\ = cnt(2) $ (((cnt(1) & cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(1),
	datac => cnt(2),
	datad => cnt(0),
	combout => \cnt[2]~1_combout\);

-- Location: LCFF_X64_Y19_N5
\cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \cnt[2]~1_combout\,
	aclr => \ALT_INV_KEY_1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(2));

-- Location: LCCOMB_X64_Y19_N30
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (cnt(3) & (cnt(1) & (cnt(2) & cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datab => cnt(1),
	datac => cnt(2),
	datad => cnt(0),
	combout => \Equal0~0_combout\);

-- Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
\SW_17~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW_17,
	combout => \SW_17~combout\);

-- Location: LCCOMB_X63_Y19_N28
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = state(1) $ (!state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => state(0),
	combout => \Mux5~0_combout\);

-- Location: PIN_N23,	 I/O Standard: 2.5 V,	 Current Strength: Default
\KEY_1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY_1,
	combout => \KEY_1~combout\);

-- Location: LCFF_X64_Y19_N25
pulse_sync1 : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \Equal0~0_combout\,
	sload => VCC,
	ena => \KEY_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pulse_sync1~regout\);

-- Location: LCCOMB_X63_Y19_N18
\pulse_sync2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_sync2~feeder_combout\ = \pulse_sync1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pulse_sync1~regout\,
	combout => \pulse_sync2~feeder_combout\);

-- Location: LCFF_X63_Y19_N19
pulse_sync2 : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pulse_sync2~feeder_combout\,
	ena => \KEY_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pulse_sync2~regout\);

-- Location: LCCOMB_X63_Y19_N24
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = state(1) $ (((\SW_17~combout\ & !\pulse_sync2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW_17~combout\,
	datac => state(1),
	datad => \pulse_sync2~regout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X63_Y19_N20
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux5~0_combout\ & (\Mux0~0_combout\ $ (((\SW_17~combout\) # (\Equal0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_17~combout\,
	datab => \Mux5~0_combout\,
	datac => \Mux0~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCFF_X63_Y19_N21
\state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Mux0~1_combout\,
	aclr => \ALT_INV_KEY_1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(1));

-- Location: LCCOMB_X63_Y19_N14
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = state(1) $ (((\pulse_sync2~regout\) # (!\SW_17~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW_17~combout\,
	datac => state(1),
	datad => \pulse_sync2~regout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X63_Y19_N30
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ $ (((!\SW_17~combout\ & !\Equal0~0_combout\)))) # (!\Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_17~combout\,
	datab => \Equal0~0_combout\,
	datac => \Mux1~0_combout\,
	datad => \Mux5~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCFF_X63_Y19_N31
\state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Mux1~1_combout\,
	aclr => \ALT_INV_KEY_1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(0));

-- Location: LCCOMB_X64_Y19_N24
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (state(0) & state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datad => state(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X64_Y19_N28
\Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (!state(1) & !state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datac => state(0),
	combout => \Mux2~1_combout\);

-- Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\GPIO_0_0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0_0);

-- Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\GPIO_0_1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0_1);

-- Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\LEDR_0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR_0);

-- Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\LEDR_1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR_1);

-- Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\LEDG_7~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG_7);
END structure;


