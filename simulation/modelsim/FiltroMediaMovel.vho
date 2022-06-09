-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "06/09/2022 18:24:39"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FiltroMediaMovel IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(2 DOWNTO 0);
	SW : IN std_logic_vector(0 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0)
	);
END FiltroMediaMovel;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FiltroMediaMovel IS
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
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \Hz2Lane|Add0~0_combout\ : std_logic;
SIGNAL \Hz2Lane|Add0~1\ : std_logic;
SIGNAL \Hz2Lane|Add0~2_combout\ : std_logic;
SIGNAL \Hz2Lane|Add0~3\ : std_logic;
SIGNAL \Hz2Lane|Add0~4_combout\ : std_logic;
SIGNAL \Hz2Lane|Add0~5\ : std_logic;
SIGNAL \Hz2Lane|Add0~6_combout\ : std_logic;
SIGNAL \Hz2Lane|Add0~7\ : std_logic;
SIGNAL \Hz2Lane|Add0~8_combout\ : std_logic;
SIGNAL \Hz2Lane|Add0~9\ : std_logic;
SIGNAL \Hz2Lane|Add0~10_combout\ : std_logic;
SIGNAL \Hz2Lane|Add0~11\ : std_logic;
SIGNAL \Hz2Lane|Add0~12_combout\ : std_logic;
SIGNAL \Hz2Lane|s_cnt~5_combout\ : std_logic;
SIGNAL \Hz2Lane|Add0~13\ : std_logic;
SIGNAL \Hz2Lane|Add0~14_combout\ : std_logic;
SIGNAL \Hz2Lane|Add0~15\ : std_logic;
SIGNAL \Hz2Lane|Add0~16_combout\ : std_logic;
SIGNAL \Hz2Lane|Add0~17\ : std_logic;
SIGNAL \Hz2Lane|Add0~18_combout\ : std_logic;
SIGNAL \Hz2Lane|Add0~19\ : std_logic;
SIGNAL \Hz2Lane|Add0~20_combout\ : std_logic;
SIGNAL \Hz2Lane|Add0~21\ : std_logic;
SIGNAL \Hz2Lane|Add0~22_combout\ : std_logic;
SIGNAL \Hz2Lane|s_cnt~4_combout\ : std_logic;
SIGNAL \Hz2Lane|Add0~23\ : std_logic;
SIGNAL \Hz2Lane|Add0~24_combout\ : std_logic;
SIGNAL \Hz2Lane|s_cnt~3_combout\ : std_logic;
SIGNAL \Hz2Lane|Add0~25\ : std_logic;
SIGNAL \Hz2Lane|Add0~26_combout\ : std_logic;
SIGNAL \Hz2Lane|s_cnt~2_combout\ : std_logic;
SIGNAL \Hz2Lane|Add0~27\ : std_logic;
SIGNAL \Hz2Lane|Add0~28_combout\ : std_logic;
SIGNAL \Hz2Lane|s_cnt~1_combout\ : std_logic;
SIGNAL \Hz2Lane|Add0~29\ : std_logic;
SIGNAL \Hz2Lane|Add0~30_combout\ : std_logic;
SIGNAL \Hz2Lane|Add0~31\ : std_logic;
SIGNAL \Hz2Lane|Add0~32_combout\ : std_logic;
SIGNAL \Hz2Lane|s_cnt~0_combout\ : std_logic;
SIGNAL \Hz2Lane|Add0~33\ : std_logic;
SIGNAL \Hz2Lane|Add0~34_combout\ : std_logic;
SIGNAL \Hz2Lane|Add0~35\ : std_logic;
SIGNAL \Hz2Lane|Add0~36_combout\ : std_logic;
SIGNAL \Hz2Lane|s_cnt~6_combout\ : std_logic;
SIGNAL \Hz2Lane|Add0~37\ : std_logic;
SIGNAL \Hz2Lane|Add0~38_combout\ : std_logic;
SIGNAL \Hz2Lane|s_cnt~7_combout\ : std_logic;
SIGNAL \Hz2Lane|Equal0~5_combout\ : std_logic;
SIGNAL \Hz2Lane|Add0~39\ : std_logic;
SIGNAL \Hz2Lane|Add0~40_combout\ : std_logic;
SIGNAL \Hz2Lane|s_cnt~9_combout\ : std_logic;
SIGNAL \Hz2Lane|Add0~41\ : std_logic;
SIGNAL \Hz2Lane|Add0~42_combout\ : std_logic;
SIGNAL \Hz2Lane|s_cnt~10_combout\ : std_logic;
SIGNAL \Hz2Lane|Add0~43\ : std_logic;
SIGNAL \Hz2Lane|Add0~44_combout\ : std_logic;
SIGNAL \Hz2Lane|s_cnt~11_combout\ : std_logic;
SIGNAL \Hz2Lane|Add0~45\ : std_logic;
SIGNAL \Hz2Lane|Add0~46_combout\ : std_logic;
SIGNAL \Hz2Lane|Add0~47\ : std_logic;
SIGNAL \Hz2Lane|Add0~48_combout\ : std_logic;
SIGNAL \Hz2Lane|s_cnt~8_combout\ : std_logic;
SIGNAL \Hz2Lane|Equal0~6_combout\ : std_logic;
SIGNAL \Hz2Lane|Equal0~1_combout\ : std_logic;
SIGNAL \Hz2Lane|Equal0~0_combout\ : std_logic;
SIGNAL \Hz2Lane|Equal0~3_combout\ : std_logic;
SIGNAL \Hz2Lane|Equal0~2_combout\ : std_logic;
SIGNAL \Hz2Lane|Equal0~4_combout\ : std_logic;
SIGNAL \Hz2Lane|Equal0~7_combout\ : std_logic;
SIGNAL \Hz2Lane|pulse~feeder_combout\ : std_logic;
SIGNAL \Hz2Lane|pulse~q\ : std_logic;
SIGNAL \AddressGenerator|s_address[0]~7_combout\ : std_logic;
SIGNAL \AddressGenerator|s_address[1]~8_combout\ : std_logic;
SIGNAL \AddressGenerator|s_address[1]~9\ : std_logic;
SIGNAL \AddressGenerator|s_address[2]~10_combout\ : std_logic;
SIGNAL \AddressGenerator|s_address[2]~11\ : std_logic;
SIGNAL \AddressGenerator|s_address[3]~12_combout\ : std_logic;
SIGNAL \AddressGenerator|s_address[3]~13\ : std_logic;
SIGNAL \AddressGenerator|s_address[4]~14_combout\ : std_logic;
SIGNAL \AddressGenerator|s_address[4]~15\ : std_logic;
SIGNAL \AddressGenerator|s_address[5]~16_combout\ : std_logic;
SIGNAL \AddressGenerator|s_address[5]~17\ : std_logic;
SIGNAL \AddressGenerator|s_address[6]~18_combout\ : std_logic;
SIGNAL \AddressGenerator|s_address[6]~19\ : std_logic;
SIGNAL \AddressGenerator|s_address[7]~20_combout\ : std_logic;
SIGNAL \Hz2Lane|s_cnt\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \AddressGenerator|s_address\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
HEX7 <= ww_HEX7;
HEX6 <= ww_HEX6;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddressGenerator|s_address\(0),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddressGenerator|s_address\(1),
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddressGenerator|s_address\(2),
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddressGenerator|s_address\(3),
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddressGenerator|s_address\(4),
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddressGenerator|s_address\(5),
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddressGenerator|s_address\(6),
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddressGenerator|s_address\(7),
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X73_Y59_N8
\Hz2Lane|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~0_combout\ = \Hz2Lane|s_cnt\(0) $ (VCC)
-- \Hz2Lane|Add0~1\ = CARRY(\Hz2Lane|s_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_cnt\(0),
	datad => VCC,
	combout => \Hz2Lane|Add0~0_combout\,
	cout => \Hz2Lane|Add0~1\);

-- Location: FF_X73_Y59_N9
\Hz2Lane|s_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(0));

-- Location: LCCOMB_X73_Y59_N10
\Hz2Lane|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~2_combout\ = (\Hz2Lane|s_cnt\(1) & (!\Hz2Lane|Add0~1\)) # (!\Hz2Lane|s_cnt\(1) & ((\Hz2Lane|Add0~1\) # (GND)))
-- \Hz2Lane|Add0~3\ = CARRY((!\Hz2Lane|Add0~1\) # (!\Hz2Lane|s_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(1),
	datad => VCC,
	cin => \Hz2Lane|Add0~1\,
	combout => \Hz2Lane|Add0~2_combout\,
	cout => \Hz2Lane|Add0~3\);

-- Location: FF_X73_Y59_N11
\Hz2Lane|s_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(1));

-- Location: LCCOMB_X73_Y59_N12
\Hz2Lane|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~4_combout\ = (\Hz2Lane|s_cnt\(2) & (\Hz2Lane|Add0~3\ $ (GND))) # (!\Hz2Lane|s_cnt\(2) & (!\Hz2Lane|Add0~3\ & VCC))
-- \Hz2Lane|Add0~5\ = CARRY((\Hz2Lane|s_cnt\(2) & !\Hz2Lane|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(2),
	datad => VCC,
	cin => \Hz2Lane|Add0~3\,
	combout => \Hz2Lane|Add0~4_combout\,
	cout => \Hz2Lane|Add0~5\);

-- Location: FF_X73_Y59_N13
\Hz2Lane|s_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(2));

-- Location: LCCOMB_X73_Y59_N14
\Hz2Lane|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~6_combout\ = (\Hz2Lane|s_cnt\(3) & (!\Hz2Lane|Add0~5\)) # (!\Hz2Lane|s_cnt\(3) & ((\Hz2Lane|Add0~5\) # (GND)))
-- \Hz2Lane|Add0~7\ = CARRY((!\Hz2Lane|Add0~5\) # (!\Hz2Lane|s_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_cnt\(3),
	datad => VCC,
	cin => \Hz2Lane|Add0~5\,
	combout => \Hz2Lane|Add0~6_combout\,
	cout => \Hz2Lane|Add0~7\);

-- Location: FF_X73_Y59_N15
\Hz2Lane|s_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(3));

-- Location: LCCOMB_X73_Y59_N16
\Hz2Lane|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~8_combout\ = (\Hz2Lane|s_cnt\(4) & (\Hz2Lane|Add0~7\ $ (GND))) # (!\Hz2Lane|s_cnt\(4) & (!\Hz2Lane|Add0~7\ & VCC))
-- \Hz2Lane|Add0~9\ = CARRY((\Hz2Lane|s_cnt\(4) & !\Hz2Lane|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_cnt\(4),
	datad => VCC,
	cin => \Hz2Lane|Add0~7\,
	combout => \Hz2Lane|Add0~8_combout\,
	cout => \Hz2Lane|Add0~9\);

-- Location: FF_X73_Y59_N17
\Hz2Lane|s_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(4));

-- Location: LCCOMB_X73_Y59_N18
\Hz2Lane|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~10_combout\ = (\Hz2Lane|s_cnt\(5) & (!\Hz2Lane|Add0~9\)) # (!\Hz2Lane|s_cnt\(5) & ((\Hz2Lane|Add0~9\) # (GND)))
-- \Hz2Lane|Add0~11\ = CARRY((!\Hz2Lane|Add0~9\) # (!\Hz2Lane|s_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_cnt\(5),
	datad => VCC,
	cin => \Hz2Lane|Add0~9\,
	combout => \Hz2Lane|Add0~10_combout\,
	cout => \Hz2Lane|Add0~11\);

-- Location: FF_X73_Y59_N19
\Hz2Lane|s_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(5));

-- Location: LCCOMB_X73_Y59_N20
\Hz2Lane|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~12_combout\ = (\Hz2Lane|s_cnt\(6) & (\Hz2Lane|Add0~11\ $ (GND))) # (!\Hz2Lane|s_cnt\(6) & (!\Hz2Lane|Add0~11\ & VCC))
-- \Hz2Lane|Add0~13\ = CARRY((\Hz2Lane|s_cnt\(6) & !\Hz2Lane|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_cnt\(6),
	datad => VCC,
	cin => \Hz2Lane|Add0~11\,
	combout => \Hz2Lane|Add0~12_combout\,
	cout => \Hz2Lane|Add0~13\);

-- Location: LCCOMB_X73_Y59_N2
\Hz2Lane|s_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_cnt~5_combout\ = (\Hz2Lane|Add0~12_combout\ & !\Hz2Lane|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|Add0~12_combout\,
	datad => \Hz2Lane|Equal0~7_combout\,
	combout => \Hz2Lane|s_cnt~5_combout\);

-- Location: FF_X73_Y59_N3
\Hz2Lane|s_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(6));

-- Location: LCCOMB_X73_Y59_N22
\Hz2Lane|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~14_combout\ = (\Hz2Lane|s_cnt\(7) & (!\Hz2Lane|Add0~13\)) # (!\Hz2Lane|s_cnt\(7) & ((\Hz2Lane|Add0~13\) # (GND)))
-- \Hz2Lane|Add0~15\ = CARRY((!\Hz2Lane|Add0~13\) # (!\Hz2Lane|s_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(7),
	datad => VCC,
	cin => \Hz2Lane|Add0~13\,
	combout => \Hz2Lane|Add0~14_combout\,
	cout => \Hz2Lane|Add0~15\);

-- Location: FF_X73_Y59_N23
\Hz2Lane|s_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(7));

-- Location: LCCOMB_X73_Y59_N24
\Hz2Lane|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~16_combout\ = (\Hz2Lane|s_cnt\(8) & (\Hz2Lane|Add0~15\ $ (GND))) # (!\Hz2Lane|s_cnt\(8) & (!\Hz2Lane|Add0~15\ & VCC))
-- \Hz2Lane|Add0~17\ = CARRY((\Hz2Lane|s_cnt\(8) & !\Hz2Lane|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_cnt\(8),
	datad => VCC,
	cin => \Hz2Lane|Add0~15\,
	combout => \Hz2Lane|Add0~16_combout\,
	cout => \Hz2Lane|Add0~17\);

-- Location: FF_X73_Y59_N25
\Hz2Lane|s_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(8));

-- Location: LCCOMB_X73_Y59_N26
\Hz2Lane|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~18_combout\ = (\Hz2Lane|s_cnt\(9) & (!\Hz2Lane|Add0~17\)) # (!\Hz2Lane|s_cnt\(9) & ((\Hz2Lane|Add0~17\) # (GND)))
-- \Hz2Lane|Add0~19\ = CARRY((!\Hz2Lane|Add0~17\) # (!\Hz2Lane|s_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(9),
	datad => VCC,
	cin => \Hz2Lane|Add0~17\,
	combout => \Hz2Lane|Add0~18_combout\,
	cout => \Hz2Lane|Add0~19\);

-- Location: FF_X73_Y59_N27
\Hz2Lane|s_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(9));

-- Location: LCCOMB_X73_Y59_N28
\Hz2Lane|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~20_combout\ = (\Hz2Lane|s_cnt\(10) & (\Hz2Lane|Add0~19\ $ (GND))) # (!\Hz2Lane|s_cnt\(10) & (!\Hz2Lane|Add0~19\ & VCC))
-- \Hz2Lane|Add0~21\ = CARRY((\Hz2Lane|s_cnt\(10) & !\Hz2Lane|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_cnt\(10),
	datad => VCC,
	cin => \Hz2Lane|Add0~19\,
	combout => \Hz2Lane|Add0~20_combout\,
	cout => \Hz2Lane|Add0~21\);

-- Location: FF_X73_Y59_N29
\Hz2Lane|s_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(10));

-- Location: LCCOMB_X73_Y59_N30
\Hz2Lane|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~22_combout\ = (\Hz2Lane|s_cnt\(11) & (!\Hz2Lane|Add0~21\)) # (!\Hz2Lane|s_cnt\(11) & ((\Hz2Lane|Add0~21\) # (GND)))
-- \Hz2Lane|Add0~23\ = CARRY((!\Hz2Lane|Add0~21\) # (!\Hz2Lane|s_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_cnt\(11),
	datad => VCC,
	cin => \Hz2Lane|Add0~21\,
	combout => \Hz2Lane|Add0~22_combout\,
	cout => \Hz2Lane|Add0~23\);

-- Location: LCCOMB_X73_Y59_N0
\Hz2Lane|s_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_cnt~4_combout\ = (\Hz2Lane|Add0~22_combout\ & !\Hz2Lane|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Hz2Lane|Add0~22_combout\,
	datad => \Hz2Lane|Equal0~7_combout\,
	combout => \Hz2Lane|s_cnt~4_combout\);

-- Location: FF_X73_Y59_N1
\Hz2Lane|s_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(11));

-- Location: LCCOMB_X73_Y58_N0
\Hz2Lane|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~24_combout\ = (\Hz2Lane|s_cnt\(12) & (\Hz2Lane|Add0~23\ $ (GND))) # (!\Hz2Lane|s_cnt\(12) & (!\Hz2Lane|Add0~23\ & VCC))
-- \Hz2Lane|Add0~25\ = CARRY((\Hz2Lane|s_cnt\(12) & !\Hz2Lane|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_cnt\(12),
	datad => VCC,
	cin => \Hz2Lane|Add0~23\,
	combout => \Hz2Lane|Add0~24_combout\,
	cout => \Hz2Lane|Add0~25\);

-- Location: LCCOMB_X74_Y58_N22
\Hz2Lane|s_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_cnt~3_combout\ = (\Hz2Lane|Add0~24_combout\ & !\Hz2Lane|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Hz2Lane|Add0~24_combout\,
	datad => \Hz2Lane|Equal0~7_combout\,
	combout => \Hz2Lane|s_cnt~3_combout\);

-- Location: FF_X74_Y58_N23
\Hz2Lane|s_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(12));

-- Location: LCCOMB_X73_Y58_N2
\Hz2Lane|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~26_combout\ = (\Hz2Lane|s_cnt\(13) & (!\Hz2Lane|Add0~25\)) # (!\Hz2Lane|s_cnt\(13) & ((\Hz2Lane|Add0~25\) # (GND)))
-- \Hz2Lane|Add0~27\ = CARRY((!\Hz2Lane|Add0~25\) # (!\Hz2Lane|s_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(13),
	datad => VCC,
	cin => \Hz2Lane|Add0~25\,
	combout => \Hz2Lane|Add0~26_combout\,
	cout => \Hz2Lane|Add0~27\);

-- Location: LCCOMB_X74_Y58_N30
\Hz2Lane|s_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_cnt~2_combout\ = (!\Hz2Lane|Equal0~7_combout\ & \Hz2Lane|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|Equal0~7_combout\,
	datad => \Hz2Lane|Add0~26_combout\,
	combout => \Hz2Lane|s_cnt~2_combout\);

-- Location: FF_X74_Y58_N31
\Hz2Lane|s_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(13));

-- Location: LCCOMB_X73_Y58_N4
\Hz2Lane|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~28_combout\ = (\Hz2Lane|s_cnt\(14) & (\Hz2Lane|Add0~27\ $ (GND))) # (!\Hz2Lane|s_cnt\(14) & (!\Hz2Lane|Add0~27\ & VCC))
-- \Hz2Lane|Add0~29\ = CARRY((\Hz2Lane|s_cnt\(14) & !\Hz2Lane|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(14),
	datad => VCC,
	cin => \Hz2Lane|Add0~27\,
	combout => \Hz2Lane|Add0~28_combout\,
	cout => \Hz2Lane|Add0~29\);

-- Location: LCCOMB_X74_Y58_N4
\Hz2Lane|s_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_cnt~1_combout\ = (\Hz2Lane|Add0~28_combout\ & !\Hz2Lane|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Hz2Lane|Add0~28_combout\,
	datad => \Hz2Lane|Equal0~7_combout\,
	combout => \Hz2Lane|s_cnt~1_combout\);

-- Location: FF_X74_Y58_N5
\Hz2Lane|s_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(14));

-- Location: LCCOMB_X73_Y58_N6
\Hz2Lane|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~30_combout\ = (\Hz2Lane|s_cnt\(15) & (!\Hz2Lane|Add0~29\)) # (!\Hz2Lane|s_cnt\(15) & ((\Hz2Lane|Add0~29\) # (GND)))
-- \Hz2Lane|Add0~31\ = CARRY((!\Hz2Lane|Add0~29\) # (!\Hz2Lane|s_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(15),
	datad => VCC,
	cin => \Hz2Lane|Add0~29\,
	combout => \Hz2Lane|Add0~30_combout\,
	cout => \Hz2Lane|Add0~31\);

-- Location: FF_X73_Y58_N7
\Hz2Lane|s_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(15));

-- Location: LCCOMB_X73_Y58_N8
\Hz2Lane|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~32_combout\ = (\Hz2Lane|s_cnt\(16) & (\Hz2Lane|Add0~31\ $ (GND))) # (!\Hz2Lane|s_cnt\(16) & (!\Hz2Lane|Add0~31\ & VCC))
-- \Hz2Lane|Add0~33\ = CARRY((\Hz2Lane|s_cnt\(16) & !\Hz2Lane|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(16),
	datad => VCC,
	cin => \Hz2Lane|Add0~31\,
	combout => \Hz2Lane|Add0~32_combout\,
	cout => \Hz2Lane|Add0~33\);

-- Location: LCCOMB_X74_Y58_N2
\Hz2Lane|s_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_cnt~0_combout\ = (!\Hz2Lane|Equal0~7_combout\ & \Hz2Lane|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|Equal0~7_combout\,
	datad => \Hz2Lane|Add0~32_combout\,
	combout => \Hz2Lane|s_cnt~0_combout\);

-- Location: FF_X74_Y58_N3
\Hz2Lane|s_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(16));

-- Location: LCCOMB_X73_Y58_N10
\Hz2Lane|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~34_combout\ = (\Hz2Lane|s_cnt\(17) & (!\Hz2Lane|Add0~33\)) # (!\Hz2Lane|s_cnt\(17) & ((\Hz2Lane|Add0~33\) # (GND)))
-- \Hz2Lane|Add0~35\ = CARRY((!\Hz2Lane|Add0~33\) # (!\Hz2Lane|s_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(17),
	datad => VCC,
	cin => \Hz2Lane|Add0~33\,
	combout => \Hz2Lane|Add0~34_combout\,
	cout => \Hz2Lane|Add0~35\);

-- Location: FF_X73_Y58_N11
\Hz2Lane|s_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(17));

-- Location: LCCOMB_X73_Y58_N12
\Hz2Lane|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~36_combout\ = (\Hz2Lane|s_cnt\(18) & (\Hz2Lane|Add0~35\ $ (GND))) # (!\Hz2Lane|s_cnt\(18) & (!\Hz2Lane|Add0~35\ & VCC))
-- \Hz2Lane|Add0~37\ = CARRY((\Hz2Lane|s_cnt\(18) & !\Hz2Lane|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(18),
	datad => VCC,
	cin => \Hz2Lane|Add0~35\,
	combout => \Hz2Lane|Add0~36_combout\,
	cout => \Hz2Lane|Add0~37\);

-- Location: LCCOMB_X73_Y58_N30
\Hz2Lane|s_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_cnt~6_combout\ = (!\Hz2Lane|Equal0~7_combout\ & \Hz2Lane|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|Equal0~7_combout\,
	datad => \Hz2Lane|Add0~36_combout\,
	combout => \Hz2Lane|s_cnt~6_combout\);

-- Location: FF_X73_Y58_N31
\Hz2Lane|s_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(18));

-- Location: LCCOMB_X73_Y58_N14
\Hz2Lane|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~38_combout\ = (\Hz2Lane|s_cnt\(19) & (!\Hz2Lane|Add0~37\)) # (!\Hz2Lane|s_cnt\(19) & ((\Hz2Lane|Add0~37\) # (GND)))
-- \Hz2Lane|Add0~39\ = CARRY((!\Hz2Lane|Add0~37\) # (!\Hz2Lane|s_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(19),
	datad => VCC,
	cin => \Hz2Lane|Add0~37\,
	combout => \Hz2Lane|Add0~38_combout\,
	cout => \Hz2Lane|Add0~39\);

-- Location: LCCOMB_X74_Y58_N20
\Hz2Lane|s_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_cnt~7_combout\ = (!\Hz2Lane|Equal0~7_combout\ & \Hz2Lane|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|Equal0~7_combout\,
	datad => \Hz2Lane|Add0~38_combout\,
	combout => \Hz2Lane|s_cnt~7_combout\);

-- Location: FF_X74_Y58_N21
\Hz2Lane|s_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(19));

-- Location: LCCOMB_X74_Y58_N26
\Hz2Lane|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Equal0~5_combout\ = (!\Hz2Lane|s_cnt\(17) & (\Hz2Lane|s_cnt\(18) & (\Hz2Lane|s_cnt\(0) & \Hz2Lane|s_cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(17),
	datab => \Hz2Lane|s_cnt\(18),
	datac => \Hz2Lane|s_cnt\(0),
	datad => \Hz2Lane|s_cnt\(19),
	combout => \Hz2Lane|Equal0~5_combout\);

-- Location: LCCOMB_X73_Y58_N16
\Hz2Lane|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~40_combout\ = (\Hz2Lane|s_cnt\(20) & (\Hz2Lane|Add0~39\ $ (GND))) # (!\Hz2Lane|s_cnt\(20) & (!\Hz2Lane|Add0~39\ & VCC))
-- \Hz2Lane|Add0~41\ = CARRY((\Hz2Lane|s_cnt\(20) & !\Hz2Lane|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_cnt\(20),
	datad => VCC,
	cin => \Hz2Lane|Add0~39\,
	combout => \Hz2Lane|Add0~40_combout\,
	cout => \Hz2Lane|Add0~41\);

-- Location: LCCOMB_X73_Y58_N28
\Hz2Lane|s_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_cnt~9_combout\ = (!\Hz2Lane|Equal0~7_combout\ & \Hz2Lane|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|Equal0~7_combout\,
	datad => \Hz2Lane|Add0~40_combout\,
	combout => \Hz2Lane|s_cnt~9_combout\);

-- Location: FF_X73_Y58_N29
\Hz2Lane|s_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(20));

-- Location: LCCOMB_X73_Y58_N18
\Hz2Lane|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~42_combout\ = (\Hz2Lane|s_cnt\(21) & (!\Hz2Lane|Add0~41\)) # (!\Hz2Lane|s_cnt\(21) & ((\Hz2Lane|Add0~41\) # (GND)))
-- \Hz2Lane|Add0~43\ = CARRY((!\Hz2Lane|Add0~41\) # (!\Hz2Lane|s_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(21),
	datad => VCC,
	cin => \Hz2Lane|Add0~41\,
	combout => \Hz2Lane|Add0~42_combout\,
	cout => \Hz2Lane|Add0~43\);

-- Location: LCCOMB_X73_Y58_N26
\Hz2Lane|s_cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_cnt~10_combout\ = (!\Hz2Lane|Equal0~7_combout\ & \Hz2Lane|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|Equal0~7_combout\,
	datad => \Hz2Lane|Add0~42_combout\,
	combout => \Hz2Lane|s_cnt~10_combout\);

-- Location: FF_X73_Y58_N27
\Hz2Lane|s_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(21));

-- Location: LCCOMB_X73_Y58_N20
\Hz2Lane|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~44_combout\ = (\Hz2Lane|s_cnt\(22) & (\Hz2Lane|Add0~43\ $ (GND))) # (!\Hz2Lane|s_cnt\(22) & (!\Hz2Lane|Add0~43\ & VCC))
-- \Hz2Lane|Add0~45\ = CARRY((\Hz2Lane|s_cnt\(22) & !\Hz2Lane|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(22),
	datad => VCC,
	cin => \Hz2Lane|Add0~43\,
	combout => \Hz2Lane|Add0~44_combout\,
	cout => \Hz2Lane|Add0~45\);

-- Location: LCCOMB_X74_Y58_N6
\Hz2Lane|s_cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_cnt~11_combout\ = (!\Hz2Lane|Equal0~7_combout\ & \Hz2Lane|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|Equal0~7_combout\,
	datad => \Hz2Lane|Add0~44_combout\,
	combout => \Hz2Lane|s_cnt~11_combout\);

-- Location: FF_X74_Y58_N7
\Hz2Lane|s_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(22));

-- Location: LCCOMB_X73_Y58_N22
\Hz2Lane|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~46_combout\ = (\Hz2Lane|s_cnt\(23) & (!\Hz2Lane|Add0~45\)) # (!\Hz2Lane|s_cnt\(23) & ((\Hz2Lane|Add0~45\) # (GND)))
-- \Hz2Lane|Add0~47\ = CARRY((!\Hz2Lane|Add0~45\) # (!\Hz2Lane|s_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(23),
	datad => VCC,
	cin => \Hz2Lane|Add0~45\,
	combout => \Hz2Lane|Add0~46_combout\,
	cout => \Hz2Lane|Add0~47\);

-- Location: FF_X73_Y58_N23
\Hz2Lane|s_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(23));

-- Location: LCCOMB_X73_Y58_N24
\Hz2Lane|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~48_combout\ = \Hz2Lane|Add0~47\ $ (!\Hz2Lane|s_cnt\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Hz2Lane|s_cnt\(24),
	cin => \Hz2Lane|Add0~47\,
	combout => \Hz2Lane|Add0~48_combout\);

-- Location: LCCOMB_X74_Y58_N24
\Hz2Lane|s_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_cnt~8_combout\ = (!\Hz2Lane|Equal0~7_combout\ & \Hz2Lane|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|Equal0~7_combout\,
	datad => \Hz2Lane|Add0~48_combout\,
	combout => \Hz2Lane|s_cnt~8_combout\);

-- Location: FF_X74_Y58_N25
\Hz2Lane|s_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_cnt\(24));

-- Location: LCCOMB_X74_Y58_N8
\Hz2Lane|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Equal0~6_combout\ = (\Hz2Lane|s_cnt\(21) & (!\Hz2Lane|s_cnt\(23) & (\Hz2Lane|s_cnt\(20) & \Hz2Lane|s_cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(21),
	datab => \Hz2Lane|s_cnt\(23),
	datac => \Hz2Lane|s_cnt\(20),
	datad => \Hz2Lane|s_cnt\(22),
	combout => \Hz2Lane|Equal0~6_combout\);

-- Location: LCCOMB_X74_Y58_N12
\Hz2Lane|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Equal0~1_combout\ = (\Hz2Lane|s_cnt\(12) & (!\Hz2Lane|s_cnt\(10) & (\Hz2Lane|s_cnt\(11) & !\Hz2Lane|s_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(12),
	datab => \Hz2Lane|s_cnt\(10),
	datac => \Hz2Lane|s_cnt\(11),
	datad => \Hz2Lane|s_cnt\(9),
	combout => \Hz2Lane|Equal0~1_combout\);

-- Location: LCCOMB_X74_Y58_N16
\Hz2Lane|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Equal0~0_combout\ = (\Hz2Lane|s_cnt\(13) & (\Hz2Lane|s_cnt\(14) & (!\Hz2Lane|s_cnt\(15) & \Hz2Lane|s_cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(13),
	datab => \Hz2Lane|s_cnt\(14),
	datac => \Hz2Lane|s_cnt\(15),
	datad => \Hz2Lane|s_cnt\(16),
	combout => \Hz2Lane|Equal0~0_combout\);

-- Location: LCCOMB_X73_Y59_N6
\Hz2Lane|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Equal0~3_combout\ = (\Hz2Lane|s_cnt\(1) & (\Hz2Lane|s_cnt\(4) & (\Hz2Lane|s_cnt\(3) & \Hz2Lane|s_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(1),
	datab => \Hz2Lane|s_cnt\(4),
	datac => \Hz2Lane|s_cnt\(3),
	datad => \Hz2Lane|s_cnt\(2),
	combout => \Hz2Lane|Equal0~3_combout\);

-- Location: LCCOMB_X73_Y59_N4
\Hz2Lane|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Equal0~2_combout\ = (!\Hz2Lane|s_cnt\(7) & (!\Hz2Lane|s_cnt\(6) & (\Hz2Lane|s_cnt\(5) & !\Hz2Lane|s_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(7),
	datab => \Hz2Lane|s_cnt\(6),
	datac => \Hz2Lane|s_cnt\(5),
	datad => \Hz2Lane|s_cnt\(8),
	combout => \Hz2Lane|Equal0~2_combout\);

-- Location: LCCOMB_X74_Y58_N10
\Hz2Lane|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Equal0~4_combout\ = (\Hz2Lane|Equal0~1_combout\ & (\Hz2Lane|Equal0~0_combout\ & (\Hz2Lane|Equal0~3_combout\ & \Hz2Lane|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|Equal0~1_combout\,
	datab => \Hz2Lane|Equal0~0_combout\,
	datac => \Hz2Lane|Equal0~3_combout\,
	datad => \Hz2Lane|Equal0~2_combout\,
	combout => \Hz2Lane|Equal0~4_combout\);

-- Location: LCCOMB_X74_Y58_N18
\Hz2Lane|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Equal0~7_combout\ = (\Hz2Lane|Equal0~5_combout\ & (\Hz2Lane|s_cnt\(24) & (\Hz2Lane|Equal0~6_combout\ & \Hz2Lane|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|Equal0~5_combout\,
	datab => \Hz2Lane|s_cnt\(24),
	datac => \Hz2Lane|Equal0~6_combout\,
	datad => \Hz2Lane|Equal0~4_combout\,
	combout => \Hz2Lane|Equal0~7_combout\);

-- Location: LCCOMB_X74_Y58_N28
\Hz2Lane|pulse~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|pulse~feeder_combout\ = \Hz2Lane|Equal0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hz2Lane|Equal0~7_combout\,
	combout => \Hz2Lane|pulse~feeder_combout\);

-- Location: FF_X74_Y58_N29
\Hz2Lane|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|pulse~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|pulse~q\);

-- Location: LCCOMB_X77_Y72_N20
\AddressGenerator|s_address[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddressGenerator|s_address[0]~7_combout\ = \Hz2Lane|pulse~q\ $ (\AddressGenerator|s_address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|pulse~q\,
	datac => \AddressGenerator|s_address\(0),
	combout => \AddressGenerator|s_address[0]~7_combout\);

-- Location: FF_X77_Y72_N21
\AddressGenerator|s_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \AddressGenerator|s_address[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressGenerator|s_address\(0));

-- Location: LCCOMB_X77_Y72_N4
\AddressGenerator|s_address[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddressGenerator|s_address[1]~8_combout\ = (\AddressGenerator|s_address\(1) & (\AddressGenerator|s_address\(0) $ (VCC))) # (!\AddressGenerator|s_address\(1) & (\AddressGenerator|s_address\(0) & VCC))
-- \AddressGenerator|s_address[1]~9\ = CARRY((\AddressGenerator|s_address\(1) & \AddressGenerator|s_address\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(1),
	datab => \AddressGenerator|s_address\(0),
	datad => VCC,
	combout => \AddressGenerator|s_address[1]~8_combout\,
	cout => \AddressGenerator|s_address[1]~9\);

-- Location: FF_X77_Y72_N5
\AddressGenerator|s_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \AddressGenerator|s_address[1]~8_combout\,
	ena => \Hz2Lane|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressGenerator|s_address\(1));

-- Location: LCCOMB_X77_Y72_N6
\AddressGenerator|s_address[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddressGenerator|s_address[2]~10_combout\ = (\AddressGenerator|s_address\(2) & (!\AddressGenerator|s_address[1]~9\)) # (!\AddressGenerator|s_address\(2) & ((\AddressGenerator|s_address[1]~9\) # (GND)))
-- \AddressGenerator|s_address[2]~11\ = CARRY((!\AddressGenerator|s_address[1]~9\) # (!\AddressGenerator|s_address\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datad => VCC,
	cin => \AddressGenerator|s_address[1]~9\,
	combout => \AddressGenerator|s_address[2]~10_combout\,
	cout => \AddressGenerator|s_address[2]~11\);

-- Location: FF_X77_Y72_N7
\AddressGenerator|s_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \AddressGenerator|s_address[2]~10_combout\,
	ena => \Hz2Lane|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressGenerator|s_address\(2));

-- Location: LCCOMB_X77_Y72_N8
\AddressGenerator|s_address[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddressGenerator|s_address[3]~12_combout\ = (\AddressGenerator|s_address\(3) & (\AddressGenerator|s_address[2]~11\ $ (GND))) # (!\AddressGenerator|s_address\(3) & (!\AddressGenerator|s_address[2]~11\ & VCC))
-- \AddressGenerator|s_address[3]~13\ = CARRY((\AddressGenerator|s_address\(3) & !\AddressGenerator|s_address[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AddressGenerator|s_address\(3),
	datad => VCC,
	cin => \AddressGenerator|s_address[2]~11\,
	combout => \AddressGenerator|s_address[3]~12_combout\,
	cout => \AddressGenerator|s_address[3]~13\);

-- Location: FF_X77_Y72_N9
\AddressGenerator|s_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \AddressGenerator|s_address[3]~12_combout\,
	ena => \Hz2Lane|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressGenerator|s_address\(3));

-- Location: LCCOMB_X77_Y72_N10
\AddressGenerator|s_address[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddressGenerator|s_address[4]~14_combout\ = (\AddressGenerator|s_address\(4) & (!\AddressGenerator|s_address[3]~13\)) # (!\AddressGenerator|s_address\(4) & ((\AddressGenerator|s_address[3]~13\) # (GND)))
-- \AddressGenerator|s_address[4]~15\ = CARRY((!\AddressGenerator|s_address[3]~13\) # (!\AddressGenerator|s_address\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(4),
	datad => VCC,
	cin => \AddressGenerator|s_address[3]~13\,
	combout => \AddressGenerator|s_address[4]~14_combout\,
	cout => \AddressGenerator|s_address[4]~15\);

-- Location: FF_X77_Y72_N11
\AddressGenerator|s_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \AddressGenerator|s_address[4]~14_combout\,
	ena => \Hz2Lane|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressGenerator|s_address\(4));

-- Location: LCCOMB_X77_Y72_N12
\AddressGenerator|s_address[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddressGenerator|s_address[5]~16_combout\ = (\AddressGenerator|s_address\(5) & (\AddressGenerator|s_address[4]~15\ $ (GND))) # (!\AddressGenerator|s_address\(5) & (!\AddressGenerator|s_address[4]~15\ & VCC))
-- \AddressGenerator|s_address[5]~17\ = CARRY((\AddressGenerator|s_address\(5) & !\AddressGenerator|s_address[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(5),
	datad => VCC,
	cin => \AddressGenerator|s_address[4]~15\,
	combout => \AddressGenerator|s_address[5]~16_combout\,
	cout => \AddressGenerator|s_address[5]~17\);

-- Location: FF_X77_Y72_N13
\AddressGenerator|s_address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \AddressGenerator|s_address[5]~16_combout\,
	ena => \Hz2Lane|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressGenerator|s_address\(5));

-- Location: LCCOMB_X77_Y72_N14
\AddressGenerator|s_address[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddressGenerator|s_address[6]~18_combout\ = (\AddressGenerator|s_address\(6) & (!\AddressGenerator|s_address[5]~17\)) # (!\AddressGenerator|s_address\(6) & ((\AddressGenerator|s_address[5]~17\) # (GND)))
-- \AddressGenerator|s_address[6]~19\ = CARRY((!\AddressGenerator|s_address[5]~17\) # (!\AddressGenerator|s_address\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AddressGenerator|s_address\(6),
	datad => VCC,
	cin => \AddressGenerator|s_address[5]~17\,
	combout => \AddressGenerator|s_address[6]~18_combout\,
	cout => \AddressGenerator|s_address[6]~19\);

-- Location: FF_X77_Y72_N15
\AddressGenerator|s_address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \AddressGenerator|s_address[6]~18_combout\,
	ena => \Hz2Lane|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressGenerator|s_address\(6));

-- Location: LCCOMB_X77_Y72_N16
\AddressGenerator|s_address[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddressGenerator|s_address[7]~20_combout\ = \AddressGenerator|s_address[6]~19\ $ (!\AddressGenerator|s_address\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \AddressGenerator|s_address\(7),
	cin => \AddressGenerator|s_address[6]~19\,
	combout => \AddressGenerator|s_address[7]~20_combout\);

-- Location: FF_X77_Y72_N17
\AddressGenerator|s_address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \AddressGenerator|s_address[7]~20_combout\,
	ena => \Hz2Lane|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressGenerator|s_address\(7));

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;
END structure;


