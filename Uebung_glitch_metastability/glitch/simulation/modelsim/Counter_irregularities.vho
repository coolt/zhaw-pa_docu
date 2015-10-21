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

-- DATE "10/19/2015 12:35:04"

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

ENTITY 	top_glitch_detection IS
    PORT (
	CLOCK_50 : IN std_logic;
	GPIO_0_0 : OUT std_logic;
	GPIO_1_14 : OUT std_logic;
	GPIO_1_8 : OUT std_logic;
	GPIO_1_0 : OUT std_logic;
	GPIO_1_2 : OUT std_logic;
	GPIO_1_4 : OUT std_logic;
	GPIO_1_6 : OUT std_logic;
	GPIO_1_1 : IN std_logic;
	GPIO_1_3 : IN std_logic;
	GPIO_1_5 : IN std_logic;
	GPIO_1_7 : IN std_logic
	);
END top_glitch_detection;

-- Design Ports Information
-- GPIO_0_0	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- GPIO_1_14	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- GPIO_1_8	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- GPIO_1_0	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- GPIO_1_2	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- GPIO_1_4	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- GPIO_1_6	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- GPIO_1_5	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1_7	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1_1	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1_3	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_glitch_detection IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_GPIO_0_0 : std_logic;
SIGNAL ww_GPIO_1_14 : std_logic;
SIGNAL ww_GPIO_1_8 : std_logic;
SIGNAL ww_GPIO_1_0 : std_logic;
SIGNAL ww_GPIO_1_2 : std_logic;
SIGNAL ww_GPIO_1_4 : std_logic;
SIGNAL ww_GPIO_1_6 : std_logic;
SIGNAL ww_GPIO_1_1 : std_logic;
SIGNAL ww_GPIO_1_3 : std_logic;
SIGNAL ww_GPIO_1_5 : std_logic;
SIGNAL ww_GPIO_1_7 : std_logic;
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GPIO_1_1~combout\ : std_logic;
SIGNAL \GPIO_1_3~combout\ : std_logic;
SIGNAL \inst_counter|cnt_async[0]~3_combout\ : std_logic;
SIGNAL \inst_counter|cnt_async[1]~2_combout\ : std_logic;
SIGNAL \inst_counter|cnt_async[2]~1_combout\ : std_logic;
SIGNAL \inst_counter|cnt_async[3]~0_combout\ : std_logic;
SIGNAL \inst_counter|glitch~0_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \inst_counter|cnt_sync~regout\ : std_logic;
SIGNAL \inst_counter|cnt_async\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
GPIO_0_0 <= ww_GPIO_0_0;
GPIO_1_14 <= ww_GPIO_1_14;
GPIO_1_8 <= ww_GPIO_1_8;
GPIO_1_0 <= ww_GPIO_1_0;
GPIO_1_2 <= ww_GPIO_1_2;
GPIO_1_4 <= ww_GPIO_1_4;
GPIO_1_6 <= ww_GPIO_1_6;
ww_GPIO_1_1 <= GPIO_1_1;
ww_GPIO_1_3 <= GPIO_1_3;
ww_GPIO_1_5 <= GPIO_1_5;
ww_GPIO_1_7 <= GPIO_1_7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);

-- Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
\GPIO_1_1~I\ : cycloneii_io
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
	padio => ww_GPIO_1_1,
	combout => \GPIO_1_1~combout\);

-- Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
\GPIO_1_3~I\ : cycloneii_io
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
	padio => ww_GPIO_1_3,
	combout => \GPIO_1_3~combout\);

-- Location: LCCOMB_X64_Y22_N30
\inst_counter|cnt_async[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_counter|cnt_async[0]~3_combout\ = !\inst_counter|cnt_async\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_counter|cnt_async\(0),
	combout => \inst_counter|cnt_async[0]~3_combout\);

-- Location: LCFF_X64_Y22_N31
\inst_counter|cnt_async[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst_counter|cnt_async[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_counter|cnt_async\(0));

-- Location: LCCOMB_X64_Y22_N8
\inst_counter|cnt_async[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_counter|cnt_async[1]~2_combout\ = \inst_counter|cnt_async\(1) $ (\inst_counter|cnt_async\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_counter|cnt_async\(1),
	datad => \inst_counter|cnt_async\(0),
	combout => \inst_counter|cnt_async[1]~2_combout\);

-- Location: LCFF_X64_Y22_N9
\inst_counter|cnt_async[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst_counter|cnt_async[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_counter|cnt_async\(1));

-- Location: LCCOMB_X64_Y22_N14
\inst_counter|cnt_async[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_counter|cnt_async[2]~1_combout\ = \inst_counter|cnt_async\(2) $ (((\inst_counter|cnt_async\(1) & \inst_counter|cnt_async\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_counter|cnt_async\(1),
	datac => \inst_counter|cnt_async\(2),
	datad => \inst_counter|cnt_async\(0),
	combout => \inst_counter|cnt_async[2]~1_combout\);

-- Location: LCFF_X64_Y22_N15
\inst_counter|cnt_async[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst_counter|cnt_async[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_counter|cnt_async\(2));

-- Location: LCCOMB_X64_Y22_N12
\inst_counter|cnt_async[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_counter|cnt_async[3]~0_combout\ = \inst_counter|cnt_async\(3) $ (((\inst_counter|cnt_async\(2) & (\inst_counter|cnt_async\(1) & \inst_counter|cnt_async\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counter|cnt_async\(2),
	datab => \inst_counter|cnt_async\(1),
	datac => \inst_counter|cnt_async\(3),
	datad => \inst_counter|cnt_async\(0),
	combout => \inst_counter|cnt_async[3]~0_combout\);

-- Location: LCFF_X64_Y22_N13
\inst_counter|cnt_async[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst_counter|cnt_async[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_counter|cnt_async\(3));

-- Location: LCCOMB_X64_Y22_N28
\inst_counter|glitch~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_counter|glitch~0_combout\ = (\GPIO_1_1~combout\ & (\GPIO_1_3~combout\ & (\inst_counter|cnt_async\(2) & \inst_counter|cnt_async\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_1_1~combout\,
	datab => \GPIO_1_3~combout\,
	datac => \inst_counter|cnt_async\(2),
	datad => \inst_counter|cnt_async\(3),
	combout => \inst_counter|glitch~0_combout\);

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

-- Location: LCFF_X64_Y22_N29
\inst_counter|cnt_sync\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst_counter|glitch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_counter|cnt_sync~regout\);

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
	datain => \inst_counter|glitch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0_0);

-- Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\GPIO_1_14~I\ : cycloneii_io
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
	datain => \inst_counter|cnt_sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1_14);

-- Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\GPIO_1_8~I\ : cycloneii_io
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
	datain => \CLOCK_50~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1_8);

-- Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\GPIO_1_0~I\ : cycloneii_io
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
	datain => \inst_counter|cnt_async\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1_0);

-- Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\GPIO_1_2~I\ : cycloneii_io
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
	datain => \inst_counter|cnt_async\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1_2);

-- Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\GPIO_1_4~I\ : cycloneii_io
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
	datain => \inst_counter|cnt_async\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1_4);

-- Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\GPIO_1_6~I\ : cycloneii_io
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
	datain => \inst_counter|cnt_async\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1_6);

-- Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
\GPIO_1_5~I\ : cycloneii_io
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
	padio => ww_GPIO_1_5);

-- Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
\GPIO_1_7~I\ : cycloneii_io
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
	padio => ww_GPIO_1_7);
END structure;


