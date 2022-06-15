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

-- DATE "06/15/2022 19:15:36"

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
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END FiltroMediaMovel;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~0_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_dirtyIn~q\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_previousIn~feeder_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_previousIn~q\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~1\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~2_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~3\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~4_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~5\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~6_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~7\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~8_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~9\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~10_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~11\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~12_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|LessThan0~5_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|LessThan0~2_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|LessThan0~0_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|LessThan0~1_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|LessThan0~3_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|LessThan0~4_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|LessThan0~6_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt[8]~2_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~13\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~14_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~15\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~16_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~17\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~18_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~19\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~20_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~21\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~22_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~23\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~24_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~25\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~26_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~27\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~28_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~29\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~30_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~31\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~32_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~33\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~34_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~35\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~36_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~37\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~38_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~39\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~40_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt[8]~29_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~41\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~42_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~43\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|Add0~44_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_pulsedOut~q\ : std_logic;
SIGNAL \StateController|currState.t_GLOBALRESET~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_dirtyIn~q\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~0_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_previousIn~q\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~1\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~2_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~3\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~4_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~5\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~6_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~7\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~8_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~9\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~10_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~41\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~42_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|LessThan0~6_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~11\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~12_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~13\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~14_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~15\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~16_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~17\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~18_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~19\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~20_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~21\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~22_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~23\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~24_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~25\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~26_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~27\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~28_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~29\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~30_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~31\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~32_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~33\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~34_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~35\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~36_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|LessThan0~3_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|LessThan0~0_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|LessThan0~1_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|LessThan0~2_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|LessThan0~4_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|LessThan0~5_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|LessThan0~7_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt[7]~2_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~37\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~38_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~39\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~40_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt[7]~29_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~43\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|Add0~44_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey1|s_pulsedOut~q\ : std_logic;
SIGNAL \StateController|cycleDelay[0]~34_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[1]~100_combout\ : std_logic;
SIGNAL \StateController|currState~9_combout\ : std_logic;
SIGNAL \StateController|currState.t_RAMRESET~q\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_dirtyIn~q\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_previousIn~q\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~0_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~7\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~8_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~9\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~10_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~11\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~12_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt[5]~2_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~13\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~14_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~15\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~16_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~17\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~18_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~19\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~20_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~21\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~22_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~23\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~24_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~25\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~26_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~27\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~28_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~29\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~30_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~31\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~32_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~33\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~34_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~35\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~36_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~37\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~38_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~39\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~40_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~41\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~42_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|LessThan0~3_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|LessThan0~0_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|LessThan0~1_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|LessThan0~2_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|LessThan0~4_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|LessThan0~5_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~1\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~2_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~3\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~4_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~5\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~6_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt[5]~29_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~43\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|Add0~44_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey0|s_pulsedOut~q\ : std_logic;
SIGNAL \StateController|debugStateVector[1]~0_combout\ : std_logic;
SIGNAL \StateController|currState~10_combout\ : std_logic;
SIGNAL \StateController|currState~12_combout\ : std_logic;
SIGNAL \StateController|currState~13_combout\ : std_logic;
SIGNAL \StateController|currState.t_RUNNING~q\ : std_logic;
SIGNAL \StateController|keepRunningState.t_RUNNING~0_combout\ : std_logic;
SIGNAL \StateController|keepRunningState.t_RUNNING~q\ : std_logic;
SIGNAL \StateController|firstExec~0_combout\ : std_logic;
SIGNAL \StateController|firstExec~1_combout\ : std_logic;
SIGNAL \StateController|firstExec~q\ : std_logic;
SIGNAL \StateController|currState~11_combout\ : std_logic;
SIGNAL \StateController|currState~14_combout\ : std_logic;
SIGNAL \StateController|currState~15_combout\ : std_logic;
SIGNAL \StateController|currState.t_STOPPED~q\ : std_logic;
SIGNAL \StateController|cycleDelay[1]~52_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[1]~53_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[0]~35\ : std_logic;
SIGNAL \StateController|cycleDelay[1]~36_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[1]~37\ : std_logic;
SIGNAL \StateController|cycleDelay[2]~38_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[2]~39\ : std_logic;
SIGNAL \StateController|cycleDelay[3]~40_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[3]~41\ : std_logic;
SIGNAL \StateController|cycleDelay[4]~42_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[4]~43\ : std_logic;
SIGNAL \StateController|cycleDelay[5]~44_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[5]~45\ : std_logic;
SIGNAL \StateController|cycleDelay[6]~46_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[6]~47\ : std_logic;
SIGNAL \StateController|cycleDelay[7]~48_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[7]~49\ : std_logic;
SIGNAL \StateController|cycleDelay[8]~50_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[8]~51\ : std_logic;
SIGNAL \StateController|cycleDelay[9]~54_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[9]~55\ : std_logic;
SIGNAL \StateController|cycleDelay[10]~56_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[10]~57\ : std_logic;
SIGNAL \StateController|cycleDelay[11]~58_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[11]~59\ : std_logic;
SIGNAL \StateController|cycleDelay[12]~60_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[12]~61\ : std_logic;
SIGNAL \StateController|cycleDelay[13]~62_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[13]~63\ : std_logic;
SIGNAL \StateController|cycleDelay[14]~64_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[14]~65\ : std_logic;
SIGNAL \StateController|cycleDelay[15]~66_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[15]~67\ : std_logic;
SIGNAL \StateController|cycleDelay[16]~68_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[16]~69\ : std_logic;
SIGNAL \StateController|cycleDelay[17]~70_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[17]~71\ : std_logic;
SIGNAL \StateController|cycleDelay[18]~72_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[18]~73\ : std_logic;
SIGNAL \StateController|cycleDelay[19]~74_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[19]~75\ : std_logic;
SIGNAL \StateController|cycleDelay[20]~76_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[20]~77\ : std_logic;
SIGNAL \StateController|cycleDelay[21]~78_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[21]~79\ : std_logic;
SIGNAL \StateController|cycleDelay[22]~80_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[22]~81\ : std_logic;
SIGNAL \StateController|cycleDelay[23]~82_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[23]~83\ : std_logic;
SIGNAL \StateController|cycleDelay[24]~84_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[24]~85\ : std_logic;
SIGNAL \StateController|cycleDelay[25]~86_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[25]~87\ : std_logic;
SIGNAL \StateController|cycleDelay[26]~88_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[26]~89\ : std_logic;
SIGNAL \StateController|cycleDelay[27]~90_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[27]~91\ : std_logic;
SIGNAL \StateController|cycleDelay[28]~92_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[28]~93\ : std_logic;
SIGNAL \StateController|cycleDelay[29]~94_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[29]~95\ : std_logic;
SIGNAL \StateController|cycleDelay[30]~96_combout\ : std_logic;
SIGNAL \StateController|LessThan0~6_combout\ : std_logic;
SIGNAL \StateController|cycleDelay[30]~97\ : std_logic;
SIGNAL \StateController|cycleDelay[31]~98_combout\ : std_logic;
SIGNAL \StateController|LessThan0~5_combout\ : std_logic;
SIGNAL \StateController|LessThan0~2_combout\ : std_logic;
SIGNAL \StateController|LessThan0~1_combout\ : std_logic;
SIGNAL \StateController|LessThan0~0_combout\ : std_logic;
SIGNAL \StateController|LessThan0~3_combout\ : std_logic;
SIGNAL \StateController|LessThan0~4_combout\ : std_logic;
SIGNAL \StateController|LessThan0~7_combout\ : std_logic;
SIGNAL \StateController|currState~16_combout\ : std_logic;
SIGNAL \StateController|currState.t_GLOBALRESET~q\ : std_logic;
SIGNAL \StateController|debugStateVector[1]~1_combout\ : std_logic;
SIGNAL \StateController|debugStateVector[2]~feeder_combout\ : std_logic;
SIGNAL \StateController|debugStateVector[3]~feeder_combout\ : std_logic;
SIGNAL \RomManagment|currState~0_combout\ : std_logic;
SIGNAL \RomManagment|currState~q\ : std_logic;
SIGNAL \StateController|callGlobalReset~0_combout\ : std_logic;
SIGNAL \StateController|callGlobalReset~q\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[0]~25_combout\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[17]~27_combout\ : std_logic;
SIGNAL \StateController|callStartStop~q\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[0]~26\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[1]~28_combout\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[1]~29\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[2]~30_combout\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[2]~31\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[3]~32_combout\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[3]~33\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[4]~34_combout\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[4]~35\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[5]~36_combout\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[5]~37\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[6]~38_combout\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[6]~39\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[7]~40_combout\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[7]~41\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[8]~42_combout\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[8]~43\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[9]~44_combout\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[9]~45\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[10]~46_combout\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[10]~47\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[11]~48_combout\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[11]~49\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[12]~50_combout\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[12]~51\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[13]~52_combout\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[13]~53\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[14]~54_combout\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[14]~55\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[15]~56_combout\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[15]~57\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[16]~58_combout\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[16]~59\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[17]~60_combout\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[17]~61\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[18]~62_combout\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[18]~63\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[19]~64_combout\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[19]~65\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[20]~66_combout\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[20]~67\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[21]~68_combout\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[21]~69\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[22]~70_combout\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[22]~71\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[23]~72_combout\ : std_logic;
SIGNAL \Hz2Lane|Equal0~6_combout\ : std_logic;
SIGNAL \Hz2Lane|Equal0~5_combout\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[23]~73\ : std_logic;
SIGNAL \Hz2Lane|s_Cnt[24]~74_combout\ : std_logic;
SIGNAL \Hz2Lane|Equal0~1_combout\ : std_logic;
SIGNAL \Hz2Lane|Equal0~3_combout\ : std_logic;
SIGNAL \Hz2Lane|Equal0~2_combout\ : std_logic;
SIGNAL \Hz2Lane|Equal0~0_combout\ : std_logic;
SIGNAL \Hz2Lane|Equal0~4_combout\ : std_logic;
SIGNAL \Hz2Lane|Equal0~7_combout\ : std_logic;
SIGNAL \Hz2Lane|pulse~0_combout\ : std_logic;
SIGNAL \Hz2Lane|pulse~q\ : std_logic;
SIGNAL \AddressGenerator|s_address[0]~8_combout\ : std_logic;
SIGNAL \RomManagment|s_SearchAddress[0]~8_combout\ : std_logic;
SIGNAL \AddressGenerator|s_address[0]~9\ : std_logic;
SIGNAL \AddressGenerator|s_address[1]~10_combout\ : std_logic;
SIGNAL \RomManagment|s_SearchAddress[0]~9\ : std_logic;
SIGNAL \RomManagment|s_SearchAddress[1]~10_combout\ : std_logic;
SIGNAL \AddressGenerator|s_address[1]~11\ : std_logic;
SIGNAL \AddressGenerator|s_address[2]~12_combout\ : std_logic;
SIGNAL \RomManagment|s_SearchAddress[1]~11\ : std_logic;
SIGNAL \RomManagment|s_SearchAddress[2]~12_combout\ : std_logic;
SIGNAL \AddressGenerator|s_address[2]~13\ : std_logic;
SIGNAL \AddressGenerator|s_address[3]~14_combout\ : std_logic;
SIGNAL \RomManagment|s_SearchAddress[2]~13\ : std_logic;
SIGNAL \RomManagment|s_SearchAddress[3]~14_combout\ : std_logic;
SIGNAL \AddressGenerator|s_address[3]~15\ : std_logic;
SIGNAL \AddressGenerator|s_address[4]~16_combout\ : std_logic;
SIGNAL \RomManagment|s_SearchAddress[3]~15\ : std_logic;
SIGNAL \RomManagment|s_SearchAddress[4]~16_combout\ : std_logic;
SIGNAL \AddressGenerator|s_address[4]~17\ : std_logic;
SIGNAL \AddressGenerator|s_address[5]~18_combout\ : std_logic;
SIGNAL \RomManagment|s_SearchAddress[4]~17\ : std_logic;
SIGNAL \RomManagment|s_SearchAddress[5]~18_combout\ : std_logic;
SIGNAL \AddressGenerator|s_address[5]~19\ : std_logic;
SIGNAL \AddressGenerator|s_address[6]~20_combout\ : std_logic;
SIGNAL \RomManagment|s_SearchAddress[5]~19\ : std_logic;
SIGNAL \RomManagment|s_SearchAddress[6]~20_combout\ : std_logic;
SIGNAL \AddressGenerator|s_address[6]~21\ : std_logic;
SIGNAL \AddressGenerator|s_address[7]~22_combout\ : std_logic;
SIGNAL \RomManagment|s_SearchAddress[6]~21\ : std_logic;
SIGNAL \RomManagment|s_SearchAddress[7]~22_combout\ : std_logic;
SIGNAL \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \DataBank|s_data0[7]~feeder_combout\ : std_logic;
SIGNAL \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \DataBank|s_data0[6]~feeder_combout\ : std_logic;
SIGNAL \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \DataBank|s_data0[4]~feeder_combout\ : std_logic;
SIGNAL \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \DataBank|s_data0[2]~feeder_combout\ : std_logic;
SIGNAL \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \DataBank|s_data0[1]~feeder_combout\ : std_logic;
SIGNAL \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \RamDisplay|s_DataIn~0_combout\ : std_logic;
SIGNAL \RamDisplay|Add0~1\ : std_logic;
SIGNAL \RamDisplay|Add0~3\ : std_logic;
SIGNAL \RamDisplay|Add0~5\ : std_logic;
SIGNAL \RamDisplay|Add0~7\ : std_logic;
SIGNAL \RamDisplay|Add0~9\ : std_logic;
SIGNAL \RamDisplay|Add0~11\ : std_logic;
SIGNAL \RamDisplay|Add0~13\ : std_logic;
SIGNAL \RamDisplay|Add0~14_combout\ : std_logic;
SIGNAL \RamDisplay|Add0~12_combout\ : std_logic;
SIGNAL \RamDisplay|Add0~10_combout\ : std_logic;
SIGNAL \RamDisplay|Add0~8_combout\ : std_logic;
SIGNAL \RamDisplay|Add0~6_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \RamDisplay|Add0~4_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \RamDisplay|hundredsDisplayProc|dataOut[0]~0_combout\ : std_logic;
SIGNAL \RamDisplay|hundredsDisplayProc|Equal9~0_combout\ : std_logic;
SIGNAL \RamDisplay|hundredsDisplayProc|dataOut[4]~1_combout\ : std_logic;
SIGNAL \RamDisplay|hundredsDisplayProc|dataOut[4]~2_combout\ : std_logic;
SIGNAL \RamDisplay|hundredsDisplayProc|dataOut[4]~3_combout\ : std_logic;
SIGNAL \RamDisplay|hundredsDisplayProc|dataOut[3]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \RamDisplay|Add0~2_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[0]~2_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[1]~3_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[2]~4_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[3]~5_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~18_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~19_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~20_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~7_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~8_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~16_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~13_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~14_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~11_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~10_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~9_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~12_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~15_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~17_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~6_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~21_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[5]~22_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[6]~28_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[6]~24_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[6]~25_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[6]~23_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[6]~26_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[6]~27_combout\ : std_logic;
SIGNAL \RamDisplay|Add0~0_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~59_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~64_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~66_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~70_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~98_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~74_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~99_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~75_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~76_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~100_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~101_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~77_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~70_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~71_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ : std_logic;
SIGNAL \RamDisplay|unitsDisplayProc|dataOut[0]~0_combout\ : std_logic;
SIGNAL \RamDisplay|unitsDisplayProc|dataOut[1]~1_combout\ : std_logic;
SIGNAL \RamDisplay|unitsDisplayProc|dataOut[2]~2_combout\ : std_logic;
SIGNAL \RamDisplay|unitsDisplayProc|dataOut[3]~3_combout\ : std_logic;
SIGNAL \RamDisplay|unitsDisplayProc|dataOut[4]~4_combout\ : std_logic;
SIGNAL \RamDisplay|unitsDisplayProc|dataOut[5]~5_combout\ : std_logic;
SIGNAL \RamDisplay|unitsDisplayProc|dataOut[6]~6_combout\ : std_logic;
SIGNAL \RomDisplay|s_DataIn~0_combout\ : std_logic;
SIGNAL \RomDisplay|Add0~1\ : std_logic;
SIGNAL \RomDisplay|Add0~3\ : std_logic;
SIGNAL \RomDisplay|Add0~5\ : std_logic;
SIGNAL \RomDisplay|Add0~7\ : std_logic;
SIGNAL \RomDisplay|Add0~9\ : std_logic;
SIGNAL \RomDisplay|Add0~11\ : std_logic;
SIGNAL \RomDisplay|Add0~13\ : std_logic;
SIGNAL \RomDisplay|Add0~14_combout\ : std_logic;
SIGNAL \RomDisplay|Add0~12_combout\ : std_logic;
SIGNAL \RomDisplay|Add0~10_combout\ : std_logic;
SIGNAL \RomDisplay|Add0~8_combout\ : std_logic;
SIGNAL \RomDisplay|Add0~6_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \RomDisplay|Add0~4_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \RomDisplay|hundredsDisplayProc|dataOut[0]~0_combout\ : std_logic;
SIGNAL \RomDisplay|hundredsDisplayProc|Equal9~0_combout\ : std_logic;
SIGNAL \RomDisplay|hundredsDisplayProc|dataOut[4]~1_combout\ : std_logic;
SIGNAL \RomDisplay|hundredsDisplayProc|dataOut[4]~2_combout\ : std_logic;
SIGNAL \RomDisplay|hundredsDisplayProc|dataOut[4]~3_combout\ : std_logic;
SIGNAL \RomDisplay|hundredsDisplayProc|dataOut[0]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ : std_logic;
SIGNAL \RomDisplay|Add0~2_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[0]~2_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[1]~3_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[2]~4_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[3]~5_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~13_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~14_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~10_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~11_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~9_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~12_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~15_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~16_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~7_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~8_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~17_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[6]~18_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[6]~19_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[6]~20_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~6_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~21_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[5]~22_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[6]~28_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[6]~24_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[6]~25_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[6]~23_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[6]~26_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[6]~27_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~59_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~64_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~70_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~66_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~98_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~74_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~75_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~99_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~100_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~76_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~77_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~101_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ : std_logic;
SIGNAL \RomDisplay|Add0~0_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~70_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~71_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ : std_logic;
SIGNAL \RomDisplay|unitsDisplayProc|dataOut[0]~0_combout\ : std_logic;
SIGNAL \RomDisplay|unitsDisplayProc|dataOut[1]~1_combout\ : std_logic;
SIGNAL \RomDisplay|unitsDisplayProc|dataOut[2]~2_combout\ : std_logic;
SIGNAL \RomDisplay|unitsDisplayProc|dataOut[3]~3_combout\ : std_logic;
SIGNAL \RomDisplay|unitsDisplayProc|dataOut[4]~4_combout\ : std_logic;
SIGNAL \RomDisplay|unitsDisplayProc|dataOut[5]~5_combout\ : std_logic;
SIGNAL \RomDisplay|unitsDisplayProc|dataOut[6]~6_combout\ : std_logic;
SIGNAL \InputCleaner|DebounceKey2|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \InputCleaner|DebounceKey0|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \InputCleaner|DebounceKey1|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \StateController|debugStateVector\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \AddressGenerator|s_address\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Hz2Lane|s_Cnt\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \StateController|cycleDelay\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \DataBank|s_data0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RomManagment|s_SearchAddress\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a7\ : std_logic;
SIGNAL \RomDisplay|hundredsDisplayProc|ALT_INV_dataOut[0]~4_combout\ : std_logic;
SIGNAL \RamDisplay|hundredsDisplayProc|ALT_INV_dataOut[3]~4_combout\ : std_logic;
SIGNAL \DataBank|ALT_INV_s_data0\ : std_logic_vector(7 DOWNTO 7);

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
LEDG <= ww_LEDG;
HEX7 <= ww_HEX7;
HEX6 <= ww_HEX6;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\RomManagment|s_SearchAddress\(7) & \RomManagment|s_SearchAddress\(6) & \RomManagment|s_SearchAddress\(5) & \RomManagment|s_SearchAddress\(4) & 
\RomManagment|s_SearchAddress\(3) & \RomManagment|s_SearchAddress\(2) & \RomManagment|s_SearchAddress\(1) & \RomManagment|s_SearchAddress\(0));

\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a1\ <= \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a2\ <= \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a3\ <= \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a4\ <= \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a5\ <= \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a6\ <= \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\ <= \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a7\ <= NOT \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\;
\RomDisplay|hundredsDisplayProc|ALT_INV_dataOut[0]~4_combout\ <= NOT \RomDisplay|hundredsDisplayProc|dataOut[0]~4_combout\;
\RamDisplay|hundredsDisplayProc|ALT_INV_dataOut[3]~4_combout\ <= NOT \RamDisplay|hundredsDisplayProc|dataOut[3]~4_combout\;
\DataBank|ALT_INV_s_data0\(7) <= NOT \DataBank|s_data0\(7);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => \StateController|debugStateVector\(1),
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
	i => \StateController|debugStateVector\(2),
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
	i => \StateController|debugStateVector\(3),
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
	i => \StateController|debugStateVector\(4),
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
	i => GND,
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => \DataBank|ALT_INV_s_data0\(7),
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
	i => \RamDisplay|hundredsDisplayProc|dataOut[0]~0_combout\,
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
	i => \RamDisplay|hundredsDisplayProc|Equal9~0_combout\,
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
	i => \RamDisplay|hundredsDisplayProc|dataOut[0]~0_combout\,
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
	i => \RamDisplay|hundredsDisplayProc|dataOut[4]~3_combout\,
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
	i => \RamDisplay|hundredsDisplayProc|ALT_INV_dataOut[3]~4_combout\,
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
	i => VCC,
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
	i => \RamDisplay|dozensDisplayProc|dataOut[0]~2_combout\,
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
	i => \RamDisplay|dozensDisplayProc|dataOut[1]~3_combout\,
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
	i => \RamDisplay|dozensDisplayProc|dataOut[2]~4_combout\,
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
	i => \RamDisplay|dozensDisplayProc|dataOut[3]~5_combout\,
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
	i => \RamDisplay|dozensDisplayProc|dataOut[4]~21_combout\,
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
	i => \RamDisplay|dozensDisplayProc|dataOut[5]~22_combout\,
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
	i => \RamDisplay|dozensDisplayProc|dataOut[6]~27_combout\,
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
	i => \RamDisplay|unitsDisplayProc|dataOut[0]~0_combout\,
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
	i => \RamDisplay|unitsDisplayProc|dataOut[1]~1_combout\,
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
	i => \RamDisplay|unitsDisplayProc|dataOut[2]~2_combout\,
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
	i => \RamDisplay|unitsDisplayProc|dataOut[3]~3_combout\,
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
	i => \RamDisplay|unitsDisplayProc|dataOut[4]~4_combout\,
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
	i => \RamDisplay|unitsDisplayProc|dataOut[5]~5_combout\,
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
	i => \RamDisplay|unitsDisplayProc|dataOut[6]~6_combout\,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
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
	i => \RomDisplay|hundredsDisplayProc|dataOut[0]~0_combout\,
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
	i => \RomDisplay|hundredsDisplayProc|Equal9~0_combout\,
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
	i => \RomDisplay|hundredsDisplayProc|dataOut[0]~0_combout\,
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
	i => \RomDisplay|hundredsDisplayProc|dataOut[4]~3_combout\,
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
	i => \RomDisplay|hundredsDisplayProc|ALT_INV_dataOut[0]~4_combout\,
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
	i => VCC,
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
	i => \RomDisplay|dozensDisplayProc|dataOut[0]~2_combout\,
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
	i => \RomDisplay|dozensDisplayProc|dataOut[1]~3_combout\,
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
	i => \RomDisplay|dozensDisplayProc|dataOut[2]~4_combout\,
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
	i => \RomDisplay|dozensDisplayProc|dataOut[3]~5_combout\,
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
	i => \RomDisplay|dozensDisplayProc|dataOut[4]~21_combout\,
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
	i => \RomDisplay|dozensDisplayProc|dataOut[5]~22_combout\,
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
	i => \RomDisplay|dozensDisplayProc|dataOut[6]~27_combout\,
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
	i => \RomDisplay|unitsDisplayProc|dataOut[0]~0_combout\,
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
	i => \RomDisplay|unitsDisplayProc|dataOut[1]~1_combout\,
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
	i => \RomDisplay|unitsDisplayProc|dataOut[2]~2_combout\,
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
	i => \RomDisplay|unitsDisplayProc|dataOut[3]~3_combout\,
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
	i => \RomDisplay|unitsDisplayProc|dataOut[4]~4_combout\,
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
	i => \RomDisplay|unitsDisplayProc|dataOut[5]~5_combout\,
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
	i => \RomDisplay|unitsDisplayProc|dataOut[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

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

-- Location: LCCOMB_X50_Y32_N10
\InputCleaner|DebounceKey2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|Add0~0_combout\ = \InputCleaner|DebounceKey2|s_debounceCnt\(0) $ (VCC)
-- \InputCleaner|DebounceKey2|Add0~1\ = CARRY(\InputCleaner|DebounceKey2|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(0),
	datad => VCC,
	combout => \InputCleaner|DebounceKey2|Add0~0_combout\,
	cout => \InputCleaner|DebounceKey2|Add0~1\);

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

-- Location: LCCOMB_X47_Y31_N30
\InputCleaner|DebounceKey2|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_dirtyIn~0_combout\ = !\KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[2]~input_o\,
	combout => \InputCleaner|DebounceKey2|s_dirtyIn~0_combout\);

-- Location: FF_X47_Y31_N31
\InputCleaner|DebounceKey2|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_dirtyIn~q\);

-- Location: LCCOMB_X47_Y31_N28
\InputCleaner|DebounceKey2|s_previousIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_previousIn~feeder_combout\ = \InputCleaner|DebounceKey2|s_dirtyIn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey2|s_dirtyIn~q\,
	combout => \InputCleaner|DebounceKey2|s_previousIn~feeder_combout\);

-- Location: FF_X47_Y31_N29
\InputCleaner|DebounceKey2|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_previousIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_previousIn~q\);

-- Location: LCCOMB_X50_Y32_N12
\InputCleaner|DebounceKey2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|Add0~2_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(1) & (\InputCleaner|DebounceKey2|Add0~1\ & VCC)) # (!\InputCleaner|DebounceKey2|s_debounceCnt\(1) & (!\InputCleaner|DebounceKey2|Add0~1\))
-- \InputCleaner|DebounceKey2|Add0~3\ = CARRY((!\InputCleaner|DebounceKey2|s_debounceCnt\(1) & !\InputCleaner|DebounceKey2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey2|s_debounceCnt\(1),
	datad => VCC,
	cin => \InputCleaner|DebounceKey2|Add0~1\,
	combout => \InputCleaner|DebounceKey2|Add0~2_combout\,
	cout => \InputCleaner|DebounceKey2|Add0~3\);

-- Location: LCCOMB_X47_Y31_N18
\InputCleaner|DebounceKey2|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt~21_combout\ = (\InputCleaner|DebounceKey2|Add0~2_combout\ & \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey2|Add0~2_combout\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt~21_combout\);

-- Location: FF_X47_Y31_N19
\InputCleaner|DebounceKey2|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_debounceCnt~21_combout\,
	ena => \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_debounceCnt\(1));

-- Location: LCCOMB_X50_Y32_N14
\InputCleaner|DebounceKey2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|Add0~4_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(2) & ((GND) # (!\InputCleaner|DebounceKey2|Add0~3\))) # (!\InputCleaner|DebounceKey2|s_debounceCnt\(2) & (\InputCleaner|DebounceKey2|Add0~3\ $ (GND)))
-- \InputCleaner|DebounceKey2|Add0~5\ = CARRY((\InputCleaner|DebounceKey2|s_debounceCnt\(2)) # (!\InputCleaner|DebounceKey2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(2),
	datad => VCC,
	cin => \InputCleaner|DebounceKey2|Add0~3\,
	combout => \InputCleaner|DebounceKey2|Add0~4_combout\,
	cout => \InputCleaner|DebounceKey2|Add0~5\);

-- Location: LCCOMB_X47_Y31_N12
\InputCleaner|DebounceKey2|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt~22_combout\ = (\InputCleaner|DebounceKey2|Add0~4_combout\ & \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey2|Add0~4_combout\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt~22_combout\);

-- Location: FF_X47_Y31_N13
\InputCleaner|DebounceKey2|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_debounceCnt~22_combout\,
	ena => \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_debounceCnt\(2));

-- Location: LCCOMB_X50_Y32_N16
\InputCleaner|DebounceKey2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|Add0~6_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(3) & (\InputCleaner|DebounceKey2|Add0~5\ & VCC)) # (!\InputCleaner|DebounceKey2|s_debounceCnt\(3) & (!\InputCleaner|DebounceKey2|Add0~5\))
-- \InputCleaner|DebounceKey2|Add0~7\ = CARRY((!\InputCleaner|DebounceKey2|s_debounceCnt\(3) & !\InputCleaner|DebounceKey2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(3),
	datad => VCC,
	cin => \InputCleaner|DebounceKey2|Add0~5\,
	combout => \InputCleaner|DebounceKey2|Add0~6_combout\,
	cout => \InputCleaner|DebounceKey2|Add0~7\);

-- Location: LCCOMB_X47_Y31_N22
\InputCleaner|DebounceKey2|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt~23_combout\ = (\InputCleaner|DebounceKey2|Add0~6_combout\ & \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey2|Add0~6_combout\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt~23_combout\);

-- Location: FF_X47_Y31_N23
\InputCleaner|DebounceKey2|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_debounceCnt~23_combout\,
	ena => \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_debounceCnt\(3));

-- Location: LCCOMB_X50_Y32_N18
\InputCleaner|DebounceKey2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|Add0~8_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(4) & ((GND) # (!\InputCleaner|DebounceKey2|Add0~7\))) # (!\InputCleaner|DebounceKey2|s_debounceCnt\(4) & (\InputCleaner|DebounceKey2|Add0~7\ $ (GND)))
-- \InputCleaner|DebounceKey2|Add0~9\ = CARRY((\InputCleaner|DebounceKey2|s_debounceCnt\(4)) # (!\InputCleaner|DebounceKey2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(4),
	datad => VCC,
	cin => \InputCleaner|DebounceKey2|Add0~7\,
	combout => \InputCleaner|DebounceKey2|Add0~8_combout\,
	cout => \InputCleaner|DebounceKey2|Add0~9\);

-- Location: LCCOMB_X47_Y31_N16
\InputCleaner|DebounceKey2|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt~24_combout\ = (\InputCleaner|DebounceKey2|Add0~8_combout\ & \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey2|Add0~8_combout\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt~24_combout\);

-- Location: FF_X47_Y31_N17
\InputCleaner|DebounceKey2|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_debounceCnt~24_combout\,
	ena => \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_debounceCnt\(4));

-- Location: LCCOMB_X50_Y32_N20
\InputCleaner|DebounceKey2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|Add0~10_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(5) & (\InputCleaner|DebounceKey2|Add0~9\ & VCC)) # (!\InputCleaner|DebounceKey2|s_debounceCnt\(5) & (!\InputCleaner|DebounceKey2|Add0~9\))
-- \InputCleaner|DebounceKey2|Add0~11\ = CARRY((!\InputCleaner|DebounceKey2|s_debounceCnt\(5) & !\InputCleaner|DebounceKey2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey2|s_debounceCnt\(5),
	datad => VCC,
	cin => \InputCleaner|DebounceKey2|Add0~9\,
	combout => \InputCleaner|DebounceKey2|Add0~10_combout\,
	cout => \InputCleaner|DebounceKey2|Add0~11\);

-- Location: LCCOMB_X47_Y31_N4
\InputCleaner|DebounceKey2|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt~25_combout\ = (\InputCleaner|DebounceKey2|Add0~10_combout\ & \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey2|Add0~10_combout\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt~25_combout\);

-- Location: FF_X47_Y31_N5
\InputCleaner|DebounceKey2|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_debounceCnt~25_combout\,
	ena => \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_debounceCnt\(5));

-- Location: LCCOMB_X47_Y31_N10
\InputCleaner|DebounceKey2|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_pulsedOut~7_combout\ = (!\InputCleaner|DebounceKey2|s_debounceCnt\(2) & (!\InputCleaner|DebounceKey2|s_debounceCnt\(4) & (!\InputCleaner|DebounceKey2|s_debounceCnt\(3) & !\InputCleaner|DebounceKey2|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(2),
	datab => \InputCleaner|DebounceKey2|s_debounceCnt\(4),
	datac => \InputCleaner|DebounceKey2|s_debounceCnt\(3),
	datad => \InputCleaner|DebounceKey2|s_debounceCnt\(1),
	combout => \InputCleaner|DebounceKey2|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X50_Y32_N22
\InputCleaner|DebounceKey2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|Add0~12_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(6) & ((GND) # (!\InputCleaner|DebounceKey2|Add0~11\))) # (!\InputCleaner|DebounceKey2|s_debounceCnt\(6) & (\InputCleaner|DebounceKey2|Add0~11\ $ (GND)))
-- \InputCleaner|DebounceKey2|Add0~13\ = CARRY((\InputCleaner|DebounceKey2|s_debounceCnt\(6)) # (!\InputCleaner|DebounceKey2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey2|s_debounceCnt\(6),
	datad => VCC,
	cin => \InputCleaner|DebounceKey2|Add0~11\,
	combout => \InputCleaner|DebounceKey2|Add0~12_combout\,
	cout => \InputCleaner|DebounceKey2|Add0~13\);

-- Location: LCCOMB_X48_Y31_N6
\InputCleaner|DebounceKey2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|LessThan0~5_combout\ = (!\InputCleaner|DebounceKey2|s_debounceCnt\(20) & !\InputCleaner|DebounceKey2|s_debounceCnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(20),
	datac => \InputCleaner|DebounceKey2|s_debounceCnt\(21),
	combout => \InputCleaner|DebounceKey2|LessThan0~5_combout\);

-- Location: LCCOMB_X48_Y31_N8
\InputCleaner|DebounceKey2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|LessThan0~2_combout\ = (!\InputCleaner|DebounceKey2|s_debounceCnt\(12) & !\InputCleaner|DebounceKey2|s_debounceCnt\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey2|s_debounceCnt\(12),
	datad => \InputCleaner|DebounceKey2|s_debounceCnt\(13),
	combout => \InputCleaner|DebounceKey2|LessThan0~2_combout\);

-- Location: LCCOMB_X47_Y31_N14
\InputCleaner|DebounceKey2|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_pulsedOut~8_combout\ = (!\InputCleaner|DebounceKey2|s_debounceCnt\(5) & \InputCleaner|DebounceKey2|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey2|s_debounceCnt\(5),
	datad => \InputCleaner|DebounceKey2|s_pulsedOut~7_combout\,
	combout => \InputCleaner|DebounceKey2|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X48_Y31_N20
\InputCleaner|DebounceKey2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|LessThan0~0_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(7)) # ((\InputCleaner|DebounceKey2|s_debounceCnt\(6) & ((\InputCleaner|DebounceKey2|s_debounceCnt\(0)) # (!\InputCleaner|DebounceKey2|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(7),
	datab => \InputCleaner|DebounceKey2|s_debounceCnt\(6),
	datac => \InputCleaner|DebounceKey2|s_debounceCnt\(0),
	datad => \InputCleaner|DebounceKey2|s_pulsedOut~8_combout\,
	combout => \InputCleaner|DebounceKey2|LessThan0~0_combout\);

-- Location: LCCOMB_X48_Y31_N18
\InputCleaner|DebounceKey2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|LessThan0~1_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(10)) # ((\InputCleaner|DebounceKey2|s_debounceCnt\(8) & (\InputCleaner|DebounceKey2|s_debounceCnt\(9) & \InputCleaner|DebounceKey2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(8),
	datab => \InputCleaner|DebounceKey2|s_debounceCnt\(9),
	datac => \InputCleaner|DebounceKey2|s_debounceCnt\(10),
	datad => \InputCleaner|DebounceKey2|LessThan0~0_combout\,
	combout => \InputCleaner|DebounceKey2|LessThan0~1_combout\);

-- Location: LCCOMB_X48_Y31_N10
\InputCleaner|DebounceKey2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|LessThan0~3_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(14) & (((\InputCleaner|DebounceKey2|s_debounceCnt\(11) & \InputCleaner|DebounceKey2|LessThan0~1_combout\)) # (!\InputCleaner|DebounceKey2|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(11),
	datab => \InputCleaner|DebounceKey2|s_debounceCnt\(14),
	datac => \InputCleaner|DebounceKey2|LessThan0~2_combout\,
	datad => \InputCleaner|DebounceKey2|LessThan0~1_combout\,
	combout => \InputCleaner|DebounceKey2|LessThan0~3_combout\);

-- Location: LCCOMB_X48_Y31_N24
\InputCleaner|DebounceKey2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|LessThan0~4_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(15)) # ((\InputCleaner|DebounceKey2|s_debounceCnt\(17)) # ((\InputCleaner|DebounceKey2|s_debounceCnt\(16)) # (\InputCleaner|DebounceKey2|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(15),
	datab => \InputCleaner|DebounceKey2|s_debounceCnt\(17),
	datac => \InputCleaner|DebounceKey2|s_debounceCnt\(16),
	datad => \InputCleaner|DebounceKey2|LessThan0~3_combout\,
	combout => \InputCleaner|DebounceKey2|LessThan0~4_combout\);

-- Location: LCCOMB_X49_Y31_N16
\InputCleaner|DebounceKey2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|LessThan0~6_combout\ = ((\InputCleaner|DebounceKey2|s_debounceCnt\(18) & (\InputCleaner|DebounceKey2|s_debounceCnt\(19) & \InputCleaner|DebounceKey2|LessThan0~4_combout\))) # (!\InputCleaner|DebounceKey2|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(18),
	datab => \InputCleaner|DebounceKey2|s_debounceCnt\(19),
	datac => \InputCleaner|DebounceKey2|LessThan0~5_combout\,
	datad => \InputCleaner|DebounceKey2|LessThan0~4_combout\,
	combout => \InputCleaner|DebounceKey2|LessThan0~6_combout\);

-- Location: LCCOMB_X49_Y31_N18
\InputCleaner|DebounceKey2|s_debounceCnt[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt[8]~2_combout\ = (\InputCleaner|DebounceKey2|s_dirtyIn~q\ & ((!\InputCleaner|DebounceKey2|LessThan0~6_combout\) # (!\InputCleaner|DebounceKey2|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey2|s_debounceCnt\(22),
	datac => \InputCleaner|DebounceKey2|s_dirtyIn~q\,
	datad => \InputCleaner|DebounceKey2|LessThan0~6_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt[8]~2_combout\);

-- Location: LCCOMB_X48_Y31_N16
\InputCleaner|DebounceKey2|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt~3_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt[8]~2_combout\ & ((\InputCleaner|DebounceKey2|Add0~12_combout\) # (!\InputCleaner|DebounceKey2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|Add0~12_combout\,
	datab => \InputCleaner|DebounceKey2|s_previousIn~q\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt[8]~2_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt~3_combout\);

-- Location: FF_X48_Y31_N17
\InputCleaner|DebounceKey2|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_debounceCnt~3_combout\,
	ena => \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_debounceCnt\(6));

-- Location: LCCOMB_X50_Y32_N24
\InputCleaner|DebounceKey2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|Add0~14_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(7) & (\InputCleaner|DebounceKey2|Add0~13\ & VCC)) # (!\InputCleaner|DebounceKey2|s_debounceCnt\(7) & (!\InputCleaner|DebounceKey2|Add0~13\))
-- \InputCleaner|DebounceKey2|Add0~15\ = CARRY((!\InputCleaner|DebounceKey2|s_debounceCnt\(7) & !\InputCleaner|DebounceKey2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(7),
	datad => VCC,
	cin => \InputCleaner|DebounceKey2|Add0~13\,
	combout => \InputCleaner|DebounceKey2|Add0~14_combout\,
	cout => \InputCleaner|DebounceKey2|Add0~15\);

-- Location: LCCOMB_X48_Y31_N12
\InputCleaner|DebounceKey2|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt~13_combout\ = (\InputCleaner|DebounceKey2|Add0~14_combout\ & \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey2|Add0~14_combout\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt~13_combout\);

-- Location: FF_X48_Y31_N13
\InputCleaner|DebounceKey2|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_debounceCnt~13_combout\,
	ena => \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_debounceCnt\(7));

-- Location: LCCOMB_X50_Y32_N26
\InputCleaner|DebounceKey2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|Add0~16_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(8) & ((GND) # (!\InputCleaner|DebounceKey2|Add0~15\))) # (!\InputCleaner|DebounceKey2|s_debounceCnt\(8) & (\InputCleaner|DebounceKey2|Add0~15\ $ (GND)))
-- \InputCleaner|DebounceKey2|Add0~17\ = CARRY((\InputCleaner|DebounceKey2|s_debounceCnt\(8)) # (!\InputCleaner|DebounceKey2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(8),
	datad => VCC,
	cin => \InputCleaner|DebounceKey2|Add0~15\,
	combout => \InputCleaner|DebounceKey2|Add0~16_combout\,
	cout => \InputCleaner|DebounceKey2|Add0~17\);

-- Location: LCCOMB_X48_Y31_N30
\InputCleaner|DebounceKey2|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt~14_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt[8]~2_combout\ & ((\InputCleaner|DebounceKey2|Add0~16_combout\) # (!\InputCleaner|DebounceKey2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey2|s_previousIn~q\,
	datac => \InputCleaner|DebounceKey2|Add0~16_combout\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt[8]~2_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt~14_combout\);

-- Location: FF_X48_Y31_N31
\InputCleaner|DebounceKey2|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_debounceCnt~14_combout\,
	ena => \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_debounceCnt\(8));

-- Location: LCCOMB_X50_Y32_N28
\InputCleaner|DebounceKey2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|Add0~18_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(9) & (\InputCleaner|DebounceKey2|Add0~17\ & VCC)) # (!\InputCleaner|DebounceKey2|s_debounceCnt\(9) & (!\InputCleaner|DebounceKey2|Add0~17\))
-- \InputCleaner|DebounceKey2|Add0~19\ = CARRY((!\InputCleaner|DebounceKey2|s_debounceCnt\(9) & !\InputCleaner|DebounceKey2|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(9),
	datad => VCC,
	cin => \InputCleaner|DebounceKey2|Add0~17\,
	combout => \InputCleaner|DebounceKey2|Add0~18_combout\,
	cout => \InputCleaner|DebounceKey2|Add0~19\);

-- Location: LCCOMB_X48_Y31_N0
\InputCleaner|DebounceKey2|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt~15_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt[8]~2_combout\ & ((\InputCleaner|DebounceKey2|Add0~18_combout\) # (!\InputCleaner|DebounceKey2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey2|s_previousIn~q\,
	datac => \InputCleaner|DebounceKey2|Add0~18_combout\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt[8]~2_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt~15_combout\);

-- Location: FF_X48_Y31_N1
\InputCleaner|DebounceKey2|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_debounceCnt~15_combout\,
	ena => \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_debounceCnt\(9));

-- Location: LCCOMB_X50_Y32_N30
\InputCleaner|DebounceKey2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|Add0~20_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(10) & ((GND) # (!\InputCleaner|DebounceKey2|Add0~19\))) # (!\InputCleaner|DebounceKey2|s_debounceCnt\(10) & (\InputCleaner|DebounceKey2|Add0~19\ $ (GND)))
-- \InputCleaner|DebounceKey2|Add0~21\ = CARRY((\InputCleaner|DebounceKey2|s_debounceCnt\(10)) # (!\InputCleaner|DebounceKey2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(10),
	datad => VCC,
	cin => \InputCleaner|DebounceKey2|Add0~19\,
	combout => \InputCleaner|DebounceKey2|Add0~20_combout\,
	cout => \InputCleaner|DebounceKey2|Add0~21\);

-- Location: LCCOMB_X49_Y31_N0
\InputCleaner|DebounceKey2|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt~16_combout\ = (\InputCleaner|DebounceKey2|Add0~20_combout\ & \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|Add0~20_combout\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt~16_combout\);

-- Location: FF_X49_Y31_N1
\InputCleaner|DebounceKey2|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_debounceCnt~16_combout\,
	ena => \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_debounceCnt\(10));

-- Location: LCCOMB_X50_Y31_N0
\InputCleaner|DebounceKey2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|Add0~22_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(11) & (\InputCleaner|DebounceKey2|Add0~21\ & VCC)) # (!\InputCleaner|DebounceKey2|s_debounceCnt\(11) & (!\InputCleaner|DebounceKey2|Add0~21\))
-- \InputCleaner|DebounceKey2|Add0~23\ = CARRY((!\InputCleaner|DebounceKey2|s_debounceCnt\(11) & !\InputCleaner|DebounceKey2|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(11),
	datad => VCC,
	cin => \InputCleaner|DebounceKey2|Add0~21\,
	combout => \InputCleaner|DebounceKey2|Add0~22_combout\,
	cout => \InputCleaner|DebounceKey2|Add0~23\);

-- Location: LCCOMB_X49_Y31_N26
\InputCleaner|DebounceKey2|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt~17_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt[8]~2_combout\ & ((\InputCleaner|DebounceKey2|Add0~22_combout\) # (!\InputCleaner|DebounceKey2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_previousIn~q\,
	datab => \InputCleaner|DebounceKey2|Add0~22_combout\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt[8]~2_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt~17_combout\);

-- Location: FF_X49_Y31_N27
\InputCleaner|DebounceKey2|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_debounceCnt~17_combout\,
	ena => \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_debounceCnt\(11));

-- Location: LCCOMB_X50_Y31_N2
\InputCleaner|DebounceKey2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|Add0~24_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(12) & ((GND) # (!\InputCleaner|DebounceKey2|Add0~23\))) # (!\InputCleaner|DebounceKey2|s_debounceCnt\(12) & (\InputCleaner|DebounceKey2|Add0~23\ $ (GND)))
-- \InputCleaner|DebounceKey2|Add0~25\ = CARRY((\InputCleaner|DebounceKey2|s_debounceCnt\(12)) # (!\InputCleaner|DebounceKey2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(12),
	datad => VCC,
	cin => \InputCleaner|DebounceKey2|Add0~23\,
	combout => \InputCleaner|DebounceKey2|Add0~24_combout\,
	cout => \InputCleaner|DebounceKey2|Add0~25\);

-- Location: LCCOMB_X48_Y31_N4
\InputCleaner|DebounceKey2|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt~11_combout\ = (\InputCleaner|DebounceKey2|Add0~24_combout\ & \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey2|Add0~24_combout\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt~11_combout\);

-- Location: FF_X48_Y31_N5
\InputCleaner|DebounceKey2|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_debounceCnt~11_combout\,
	ena => \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_debounceCnt\(12));

-- Location: LCCOMB_X50_Y31_N4
\InputCleaner|DebounceKey2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|Add0~26_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(13) & (\InputCleaner|DebounceKey2|Add0~25\ & VCC)) # (!\InputCleaner|DebounceKey2|s_debounceCnt\(13) & (!\InputCleaner|DebounceKey2|Add0~25\))
-- \InputCleaner|DebounceKey2|Add0~27\ = CARRY((!\InputCleaner|DebounceKey2|s_debounceCnt\(13) & !\InputCleaner|DebounceKey2|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey2|s_debounceCnt\(13),
	datad => VCC,
	cin => \InputCleaner|DebounceKey2|Add0~25\,
	combout => \InputCleaner|DebounceKey2|Add0~26_combout\,
	cout => \InputCleaner|DebounceKey2|Add0~27\);

-- Location: LCCOMB_X49_Y31_N6
\InputCleaner|DebounceKey2|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt~12_combout\ = (\InputCleaner|DebounceKey2|Add0~26_combout\ & \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|Add0~26_combout\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt~12_combout\);

-- Location: FF_X49_Y31_N7
\InputCleaner|DebounceKey2|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_debounceCnt~12_combout\,
	ena => \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_debounceCnt\(13));

-- Location: LCCOMB_X50_Y31_N6
\InputCleaner|DebounceKey2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|Add0~28_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(14) & ((GND) # (!\InputCleaner|DebounceKey2|Add0~27\))) # (!\InputCleaner|DebounceKey2|s_debounceCnt\(14) & (\InputCleaner|DebounceKey2|Add0~27\ $ (GND)))
-- \InputCleaner|DebounceKey2|Add0~29\ = CARRY((\InputCleaner|DebounceKey2|s_debounceCnt\(14)) # (!\InputCleaner|DebounceKey2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(14),
	datad => VCC,
	cin => \InputCleaner|DebounceKey2|Add0~27\,
	combout => \InputCleaner|DebounceKey2|Add0~28_combout\,
	cout => \InputCleaner|DebounceKey2|Add0~29\);

-- Location: LCCOMB_X49_Y31_N8
\InputCleaner|DebounceKey2|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt~18_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt[8]~2_combout\ & ((\InputCleaner|DebounceKey2|Add0~28_combout\) # (!\InputCleaner|DebounceKey2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|Add0~28_combout\,
	datac => \InputCleaner|DebounceKey2|s_previousIn~q\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt[8]~2_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt~18_combout\);

-- Location: FF_X49_Y31_N9
\InputCleaner|DebounceKey2|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_debounceCnt~18_combout\,
	ena => \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_debounceCnt\(14));

-- Location: LCCOMB_X50_Y31_N8
\InputCleaner|DebounceKey2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|Add0~30_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(15) & (\InputCleaner|DebounceKey2|Add0~29\ & VCC)) # (!\InputCleaner|DebounceKey2|s_debounceCnt\(15) & (!\InputCleaner|DebounceKey2|Add0~29\))
-- \InputCleaner|DebounceKey2|Add0~31\ = CARRY((!\InputCleaner|DebounceKey2|s_debounceCnt\(15) & !\InputCleaner|DebounceKey2|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey2|s_debounceCnt\(15),
	datad => VCC,
	cin => \InputCleaner|DebounceKey2|Add0~29\,
	combout => \InputCleaner|DebounceKey2|Add0~30_combout\,
	cout => \InputCleaner|DebounceKey2|Add0~31\);

-- Location: LCCOMB_X49_Y31_N4
\InputCleaner|DebounceKey2|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt~6_combout\ = (\InputCleaner|DebounceKey2|Add0~30_combout\ & \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey2|Add0~30_combout\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt~6_combout\);

-- Location: FF_X49_Y31_N5
\InputCleaner|DebounceKey2|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_debounceCnt~6_combout\,
	ena => \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_debounceCnt\(15));

-- Location: LCCOMB_X50_Y31_N10
\InputCleaner|DebounceKey2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|Add0~32_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(16) & ((GND) # (!\InputCleaner|DebounceKey2|Add0~31\))) # (!\InputCleaner|DebounceKey2|s_debounceCnt\(16) & (\InputCleaner|DebounceKey2|Add0~31\ $ (GND)))
-- \InputCleaner|DebounceKey2|Add0~33\ = CARRY((\InputCleaner|DebounceKey2|s_debounceCnt\(16)) # (!\InputCleaner|DebounceKey2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey2|s_debounceCnt\(16),
	datad => VCC,
	cin => \InputCleaner|DebounceKey2|Add0~31\,
	combout => \InputCleaner|DebounceKey2|Add0~32_combout\,
	cout => \InputCleaner|DebounceKey2|Add0~33\);

-- Location: LCCOMB_X49_Y31_N30
\InputCleaner|DebounceKey2|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt~7_combout\ = (\InputCleaner|DebounceKey2|Add0~32_combout\ & \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey2|Add0~32_combout\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt~7_combout\);

-- Location: FF_X49_Y31_N31
\InputCleaner|DebounceKey2|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_debounceCnt~7_combout\,
	ena => \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_debounceCnt\(16));

-- Location: LCCOMB_X50_Y31_N12
\InputCleaner|DebounceKey2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|Add0~34_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(17) & (\InputCleaner|DebounceKey2|Add0~33\ & VCC)) # (!\InputCleaner|DebounceKey2|s_debounceCnt\(17) & (!\InputCleaner|DebounceKey2|Add0~33\))
-- \InputCleaner|DebounceKey2|Add0~35\ = CARRY((!\InputCleaner|DebounceKey2|s_debounceCnt\(17) & !\InputCleaner|DebounceKey2|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey2|s_debounceCnt\(17),
	datad => VCC,
	cin => \InputCleaner|DebounceKey2|Add0~33\,
	combout => \InputCleaner|DebounceKey2|Add0~34_combout\,
	cout => \InputCleaner|DebounceKey2|Add0~35\);

-- Location: LCCOMB_X49_Y31_N20
\InputCleaner|DebounceKey2|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt~8_combout\ = (\InputCleaner|DebounceKey2|Add0~34_combout\ & \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey2|Add0~34_combout\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt~8_combout\);

-- Location: FF_X49_Y31_N21
\InputCleaner|DebounceKey2|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_debounceCnt~8_combout\,
	ena => \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_debounceCnt\(17));

-- Location: LCCOMB_X50_Y31_N14
\InputCleaner|DebounceKey2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|Add0~36_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(18) & ((GND) # (!\InputCleaner|DebounceKey2|Add0~35\))) # (!\InputCleaner|DebounceKey2|s_debounceCnt\(18) & (\InputCleaner|DebounceKey2|Add0~35\ $ (GND)))
-- \InputCleaner|DebounceKey2|Add0~37\ = CARRY((\InputCleaner|DebounceKey2|s_debounceCnt\(18)) # (!\InputCleaner|DebounceKey2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(18),
	datad => VCC,
	cin => \InputCleaner|DebounceKey2|Add0~35\,
	combout => \InputCleaner|DebounceKey2|Add0~36_combout\,
	cout => \InputCleaner|DebounceKey2|Add0~37\);

-- Location: LCCOMB_X49_Y31_N10
\InputCleaner|DebounceKey2|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt[18]~19_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\ & (\InputCleaner|DebounceKey2|s_debounceCnt[8]~2_combout\ & ((\InputCleaner|DebounceKey2|Add0~36_combout\) # 
-- (!\InputCleaner|DebounceKey2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_previousIn~q\,
	datab => \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\,
	datac => \InputCleaner|DebounceKey2|Add0~36_combout\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt[8]~2_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt[18]~19_combout\);

-- Location: FF_X49_Y31_N11
\InputCleaner|DebounceKey2|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_debounceCnt\(18));

-- Location: LCCOMB_X50_Y31_N16
\InputCleaner|DebounceKey2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|Add0~38_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(19) & (\InputCleaner|DebounceKey2|Add0~37\ & VCC)) # (!\InputCleaner|DebounceKey2|s_debounceCnt\(19) & (!\InputCleaner|DebounceKey2|Add0~37\))
-- \InputCleaner|DebounceKey2|Add0~39\ = CARRY((!\InputCleaner|DebounceKey2|s_debounceCnt\(19) & !\InputCleaner|DebounceKey2|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey2|s_debounceCnt\(19),
	datad => VCC,
	cin => \InputCleaner|DebounceKey2|Add0~37\,
	combout => \InputCleaner|DebounceKey2|Add0~38_combout\,
	cout => \InputCleaner|DebounceKey2|Add0~39\);

-- Location: LCCOMB_X49_Y31_N28
\InputCleaner|DebounceKey2|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt[19]~20_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\ & (\InputCleaner|DebounceKey2|s_debounceCnt[8]~2_combout\ & ((\InputCleaner|DebounceKey2|Add0~38_combout\) # 
-- (!\InputCleaner|DebounceKey2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_previousIn~q\,
	datab => \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\,
	datac => \InputCleaner|DebounceKey2|Add0~38_combout\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt[8]~2_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt[19]~20_combout\);

-- Location: FF_X49_Y31_N29
\InputCleaner|DebounceKey2|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_debounceCnt\(19));

-- Location: LCCOMB_X50_Y31_N18
\InputCleaner|DebounceKey2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|Add0~40_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(20) & ((GND) # (!\InputCleaner|DebounceKey2|Add0~39\))) # (!\InputCleaner|DebounceKey2|s_debounceCnt\(20) & (\InputCleaner|DebounceKey2|Add0~39\ $ (GND)))
-- \InputCleaner|DebounceKey2|Add0~41\ = CARRY((\InputCleaner|DebounceKey2|s_debounceCnt\(20)) # (!\InputCleaner|DebounceKey2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(20),
	datad => VCC,
	cin => \InputCleaner|DebounceKey2|Add0~39\,
	combout => \InputCleaner|DebounceKey2|Add0~40_combout\,
	cout => \InputCleaner|DebounceKey2|Add0~41\);

-- Location: LCCOMB_X49_Y31_N2
\InputCleaner|DebounceKey2|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt[20]~9_combout\ = (\InputCleaner|DebounceKey2|Add0~40_combout\ & (\InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\ & \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey2|Add0~40_combout\,
	datac => \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt[20]~9_combout\);

-- Location: FF_X49_Y31_N3
\InputCleaner|DebounceKey2|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_debounceCnt\(20));

-- Location: LCCOMB_X48_Y31_N22
\InputCleaner|DebounceKey2|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_pulsedOut~3_combout\ = (!\InputCleaner|DebounceKey2|s_debounceCnt\(20) & (!\InputCleaner|DebounceKey2|s_debounceCnt\(12) & (!\InputCleaner|DebounceKey2|s_debounceCnt\(21) & !\InputCleaner|DebounceKey2|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(20),
	datab => \InputCleaner|DebounceKey2|s_debounceCnt\(12),
	datac => \InputCleaner|DebounceKey2|s_debounceCnt\(21),
	datad => \InputCleaner|DebounceKey2|s_debounceCnt\(13),
	combout => \InputCleaner|DebounceKey2|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X48_Y31_N14
\InputCleaner|DebounceKey2|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_pulsedOut~2_combout\ = (!\InputCleaner|DebounceKey2|s_debounceCnt\(16) & (!\InputCleaner|DebounceKey2|s_debounceCnt\(6) & (!\InputCleaner|DebounceKey2|s_debounceCnt\(17) & !\InputCleaner|DebounceKey2|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(16),
	datab => \InputCleaner|DebounceKey2|s_debounceCnt\(6),
	datac => \InputCleaner|DebounceKey2|s_debounceCnt\(17),
	datad => \InputCleaner|DebounceKey2|s_debounceCnt\(15),
	combout => \InputCleaner|DebounceKey2|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X48_Y31_N26
\InputCleaner|DebounceKey2|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_pulsedOut~4_combout\ = (!\InputCleaner|DebounceKey2|s_debounceCnt\(7) & (!\InputCleaner|DebounceKey2|s_debounceCnt\(10) & (!\InputCleaner|DebounceKey2|s_debounceCnt\(8) & !\InputCleaner|DebounceKey2|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(7),
	datab => \InputCleaner|DebounceKey2|s_debounceCnt\(10),
	datac => \InputCleaner|DebounceKey2|s_debounceCnt\(8),
	datad => \InputCleaner|DebounceKey2|s_debounceCnt\(9),
	combout => \InputCleaner|DebounceKey2|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X49_Y31_N22
\InputCleaner|DebounceKey2|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_pulsedOut~5_combout\ = (!\InputCleaner|DebounceKey2|s_debounceCnt\(11) & (!\InputCleaner|DebounceKey2|s_debounceCnt\(19) & (!\InputCleaner|DebounceKey2|s_debounceCnt\(14) & !\InputCleaner|DebounceKey2|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(11),
	datab => \InputCleaner|DebounceKey2|s_debounceCnt\(19),
	datac => \InputCleaner|DebounceKey2|s_debounceCnt\(14),
	datad => \InputCleaner|DebounceKey2|s_debounceCnt\(18),
	combout => \InputCleaner|DebounceKey2|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X48_Y31_N28
\InputCleaner|DebounceKey2|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_pulsedOut~6_combout\ = (\InputCleaner|DebounceKey2|s_pulsedOut~3_combout\ & (\InputCleaner|DebounceKey2|s_pulsedOut~2_combout\ & (\InputCleaner|DebounceKey2|s_pulsedOut~4_combout\ & 
-- \InputCleaner|DebounceKey2|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_pulsedOut~3_combout\,
	datab => \InputCleaner|DebounceKey2|s_pulsedOut~2_combout\,
	datac => \InputCleaner|DebounceKey2|s_pulsedOut~4_combout\,
	datad => \InputCleaner|DebounceKey2|s_pulsedOut~5_combout\,
	combout => \InputCleaner|DebounceKey2|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X47_Y31_N20
\InputCleaner|DebounceKey2|s_debounceCnt[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt[8]~29_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(0)) # ((\InputCleaner|DebounceKey2|s_debounceCnt\(5)) # ((!\InputCleaner|DebounceKey2|s_pulsedOut~6_combout\) # 
-- (!\InputCleaner|DebounceKey2|s_pulsedOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(0),
	datab => \InputCleaner|DebounceKey2|s_debounceCnt\(5),
	datac => \InputCleaner|DebounceKey2|s_pulsedOut~7_combout\,
	datad => \InputCleaner|DebounceKey2|s_pulsedOut~6_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt[8]~29_combout\);

-- Location: LCCOMB_X47_Y31_N26
\InputCleaner|DebounceKey2|s_debounceCnt[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\ = ((\InputCleaner|DebounceKey2|s_debounceCnt\(22)) # ((\InputCleaner|DebounceKey2|s_debounceCnt[8]~29_combout\) # (!\InputCleaner|DebounceKey2|s_dirtyIn~q\))) # 
-- (!\InputCleaner|DebounceKey2|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_previousIn~q\,
	datab => \InputCleaner|DebounceKey2|s_debounceCnt\(22),
	datac => \InputCleaner|DebounceKey2|s_dirtyIn~q\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt[8]~29_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\);

-- Location: LCCOMB_X50_Y31_N20
\InputCleaner|DebounceKey2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|Add0~42_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(21) & (\InputCleaner|DebounceKey2|Add0~41\ & VCC)) # (!\InputCleaner|DebounceKey2|s_debounceCnt\(21) & (!\InputCleaner|DebounceKey2|Add0~41\))
-- \InputCleaner|DebounceKey2|Add0~43\ = CARRY((!\InputCleaner|DebounceKey2|s_debounceCnt\(21) & !\InputCleaner|DebounceKey2|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(21),
	datad => VCC,
	cin => \InputCleaner|DebounceKey2|Add0~41\,
	combout => \InputCleaner|DebounceKey2|Add0~42_combout\,
	cout => \InputCleaner|DebounceKey2|Add0~43\);

-- Location: LCCOMB_X49_Y31_N12
\InputCleaner|DebounceKey2|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt[21]~10_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\ & (\InputCleaner|DebounceKey2|Add0~42_combout\ & \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\,
	datac => \InputCleaner|DebounceKey2|Add0~42_combout\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt[21]~10_combout\);

-- Location: FF_X49_Y31_N13
\InputCleaner|DebounceKey2|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_debounceCnt\(21));

-- Location: LCCOMB_X50_Y31_N22
\InputCleaner|DebounceKey2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|Add0~44_combout\ = \InputCleaner|DebounceKey2|Add0~43\ $ (\InputCleaner|DebounceKey2|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \InputCleaner|DebounceKey2|s_debounceCnt\(22),
	cin => \InputCleaner|DebounceKey2|Add0~43\,
	combout => \InputCleaner|DebounceKey2|Add0~44_combout\);

-- Location: LCCOMB_X49_Y31_N14
\InputCleaner|DebounceKey2|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt[22]~27_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(22) & (((!\InputCleaner|DebounceKey2|LessThan0~6_combout\)))) # (!\InputCleaner|DebounceKey2|s_debounceCnt\(22) & 
-- (((\InputCleaner|DebounceKey2|s_debounceCnt[8]~29_combout\)) # (!\InputCleaner|DebounceKey2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_previousIn~q\,
	datab => \InputCleaner|DebounceKey2|s_debounceCnt\(22),
	datac => \InputCleaner|DebounceKey2|s_debounceCnt[8]~29_combout\,
	datad => \InputCleaner|DebounceKey2|LessThan0~6_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X50_Y31_N28
\InputCleaner|DebounceKey2|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt[22]~28_combout\ = (\InputCleaner|DebounceKey2|s_dirtyIn~q\ & (\InputCleaner|DebounceKey2|s_debounceCnt[22]~27_combout\ & ((\InputCleaner|DebounceKey2|Add0~44_combout\) # 
-- (!\InputCleaner|DebounceKey2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_dirtyIn~q\,
	datab => \InputCleaner|DebounceKey2|s_previousIn~q\,
	datac => \InputCleaner|DebounceKey2|Add0~44_combout\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt[22]~27_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt[22]~28_combout\);

-- Location: FF_X50_Y31_N29
\InputCleaner|DebounceKey2|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_debounceCnt\(22));

-- Location: LCCOMB_X49_Y31_N24
\InputCleaner|DebounceKey2|s_debounceCnt[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\ = (\InputCleaner|DebounceKey2|s_dirtyIn~q\ & (\InputCleaner|DebounceKey2|s_previousIn~q\ & ((!\InputCleaner|DebounceKey2|LessThan0~6_combout\) # (!\InputCleaner|DebounceKey2|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_dirtyIn~q\,
	datab => \InputCleaner|DebounceKey2|s_debounceCnt\(22),
	datac => \InputCleaner|DebounceKey2|s_previousIn~q\,
	datad => \InputCleaner|DebounceKey2|LessThan0~6_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\);

-- Location: LCCOMB_X48_Y31_N2
\InputCleaner|DebounceKey2|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_debounceCnt~26_combout\ = (\InputCleaner|DebounceKey2|Add0~0_combout\ & \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey2|Add0~0_combout\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt[8]~5_combout\,
	combout => \InputCleaner|DebounceKey2|s_debounceCnt~26_combout\);

-- Location: FF_X48_Y31_N3
\InputCleaner|DebounceKey2|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_debounceCnt~26_combout\,
	ena => \InputCleaner|DebounceKey2|s_debounceCnt[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_debounceCnt\(0));

-- Location: LCCOMB_X47_Y31_N8
\InputCleaner|DebounceKey2|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_pulsedOut~9_combout\ = (\InputCleaner|DebounceKey2|s_debounceCnt\(0) & (\InputCleaner|DebounceKey2|s_previousIn~q\ & (\InputCleaner|DebounceKey2|s_dirtyIn~q\ & !\InputCleaner|DebounceKey2|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_debounceCnt\(0),
	datab => \InputCleaner|DebounceKey2|s_previousIn~q\,
	datac => \InputCleaner|DebounceKey2|s_dirtyIn~q\,
	datad => \InputCleaner|DebounceKey2|s_debounceCnt\(22),
	combout => \InputCleaner|DebounceKey2|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X47_Y31_N24
\InputCleaner|DebounceKey2|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey2|s_pulsedOut~10_combout\ = (\InputCleaner|DebounceKey2|s_pulsedOut~9_combout\ & (\InputCleaner|DebounceKey2|s_pulsedOut~7_combout\ & (!\InputCleaner|DebounceKey2|s_debounceCnt\(5) & 
-- \InputCleaner|DebounceKey2|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_pulsedOut~9_combout\,
	datab => \InputCleaner|DebounceKey2|s_pulsedOut~7_combout\,
	datac => \InputCleaner|DebounceKey2|s_debounceCnt\(5),
	datad => \InputCleaner|DebounceKey2|s_pulsedOut~6_combout\,
	combout => \InputCleaner|DebounceKey2|s_pulsedOut~10_combout\);

-- Location: FF_X47_Y31_N25
\InputCleaner|DebounceKey2|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey2|s_pulsedOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey2|s_pulsedOut~q\);

-- Location: LCCOMB_X76_Y33_N14
\StateController|currState.t_GLOBALRESET~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|currState.t_GLOBALRESET~0_combout\ = !\InputCleaner|DebounceKey2|s_pulsedOut~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \InputCleaner|DebounceKey2|s_pulsedOut~q\,
	combout => \StateController|currState.t_GLOBALRESET~0_combout\);

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

-- Location: LCCOMB_X114_Y53_N20
\InputCleaner|DebounceKey1|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_dirtyIn~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \InputCleaner|DebounceKey1|s_dirtyIn~0_combout\);

-- Location: FF_X82_Y40_N23
\InputCleaner|DebounceKey1|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \InputCleaner|DebounceKey1|s_dirtyIn~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_dirtyIn~q\);

-- Location: LCCOMB_X80_Y41_N10
\InputCleaner|DebounceKey1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|Add0~0_combout\ = \InputCleaner|DebounceKey1|s_debounceCnt\(0) $ (VCC)
-- \InputCleaner|DebounceKey1|Add0~1\ = CARRY(\InputCleaner|DebounceKey1|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey1|s_debounceCnt\(0),
	datad => VCC,
	combout => \InputCleaner|DebounceKey1|Add0~0_combout\,
	cout => \InputCleaner|DebounceKey1|Add0~1\);

-- Location: FF_X82_Y40_N21
\InputCleaner|DebounceKey1|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \InputCleaner|DebounceKey1|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_previousIn~q\);

-- Location: LCCOMB_X80_Y41_N12
\InputCleaner|DebounceKey1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|Add0~2_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(1) & (\InputCleaner|DebounceKey1|Add0~1\ & VCC)) # (!\InputCleaner|DebounceKey1|s_debounceCnt\(1) & (!\InputCleaner|DebounceKey1|Add0~1\))
-- \InputCleaner|DebounceKey1|Add0~3\ = CARRY((!\InputCleaner|DebounceKey1|s_debounceCnt\(1) & !\InputCleaner|DebounceKey1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey1|s_debounceCnt\(1),
	datad => VCC,
	cin => \InputCleaner|DebounceKey1|Add0~1\,
	combout => \InputCleaner|DebounceKey1|Add0~2_combout\,
	cout => \InputCleaner|DebounceKey1|Add0~3\);

-- Location: LCCOMB_X79_Y40_N12
\InputCleaner|DebounceKey1|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt~21_combout\ = (\InputCleaner|DebounceKey1|Add0~2_combout\ & \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey1|Add0~2_combout\,
	datad => \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt~21_combout\);

-- Location: LCCOMB_X82_Y40_N14
\InputCleaner|DebounceKey1|s_debounceCnt[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(22)) # (((\InputCleaner|DebounceKey1|s_debounceCnt[7]~29_combout\) # (!\InputCleaner|DebounceKey1|s_dirtyIn~q\)) # 
-- (!\InputCleaner|DebounceKey1|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt\(22),
	datab => \InputCleaner|DebounceKey1|s_previousIn~q\,
	datac => \InputCleaner|DebounceKey1|s_dirtyIn~q\,
	datad => \InputCleaner|DebounceKey1|s_debounceCnt[7]~29_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\);

-- Location: FF_X79_Y40_N13
\InputCleaner|DebounceKey1|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey1|s_debounceCnt~21_combout\,
	ena => \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_debounceCnt\(1));

-- Location: LCCOMB_X80_Y41_N14
\InputCleaner|DebounceKey1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|Add0~4_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(2) & ((GND) # (!\InputCleaner|DebounceKey1|Add0~3\))) # (!\InputCleaner|DebounceKey1|s_debounceCnt\(2) & (\InputCleaner|DebounceKey1|Add0~3\ $ (GND)))
-- \InputCleaner|DebounceKey1|Add0~5\ = CARRY((\InputCleaner|DebounceKey1|s_debounceCnt\(2)) # (!\InputCleaner|DebounceKey1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt\(2),
	datad => VCC,
	cin => \InputCleaner|DebounceKey1|Add0~3\,
	combout => \InputCleaner|DebounceKey1|Add0~4_combout\,
	cout => \InputCleaner|DebounceKey1|Add0~5\);

-- Location: LCCOMB_X79_Y40_N14
\InputCleaner|DebounceKey1|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt~22_combout\ = (\InputCleaner|DebounceKey1|Add0~4_combout\ & \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey1|Add0~4_combout\,
	datad => \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt~22_combout\);

-- Location: FF_X79_Y40_N15
\InputCleaner|DebounceKey1|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey1|s_debounceCnt~22_combout\,
	ena => \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_debounceCnt\(2));

-- Location: LCCOMB_X80_Y41_N16
\InputCleaner|DebounceKey1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|Add0~6_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(3) & (\InputCleaner|DebounceKey1|Add0~5\ & VCC)) # (!\InputCleaner|DebounceKey1|s_debounceCnt\(3) & (!\InputCleaner|DebounceKey1|Add0~5\))
-- \InputCleaner|DebounceKey1|Add0~7\ = CARRY((!\InputCleaner|DebounceKey1|s_debounceCnt\(3) & !\InputCleaner|DebounceKey1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt\(3),
	datad => VCC,
	cin => \InputCleaner|DebounceKey1|Add0~5\,
	combout => \InputCleaner|DebounceKey1|Add0~6_combout\,
	cout => \InputCleaner|DebounceKey1|Add0~7\);

-- Location: LCCOMB_X79_Y40_N8
\InputCleaner|DebounceKey1|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt~23_combout\ = (\InputCleaner|DebounceKey1|Add0~6_combout\ & \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|Add0~6_combout\,
	datad => \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt~23_combout\);

-- Location: FF_X79_Y40_N9
\InputCleaner|DebounceKey1|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey1|s_debounceCnt~23_combout\,
	ena => \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_debounceCnt\(3));

-- Location: LCCOMB_X80_Y41_N18
\InputCleaner|DebounceKey1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|Add0~8_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(4) & ((GND) # (!\InputCleaner|DebounceKey1|Add0~7\))) # (!\InputCleaner|DebounceKey1|s_debounceCnt\(4) & (\InputCleaner|DebounceKey1|Add0~7\ $ (GND)))
-- \InputCleaner|DebounceKey1|Add0~9\ = CARRY((\InputCleaner|DebounceKey1|s_debounceCnt\(4)) # (!\InputCleaner|DebounceKey1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt\(4),
	datad => VCC,
	cin => \InputCleaner|DebounceKey1|Add0~7\,
	combout => \InputCleaner|DebounceKey1|Add0~8_combout\,
	cout => \InputCleaner|DebounceKey1|Add0~9\);

-- Location: LCCOMB_X79_Y40_N10
\InputCleaner|DebounceKey1|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt~24_combout\ = (\InputCleaner|DebounceKey1|Add0~8_combout\ & \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey1|Add0~8_combout\,
	datad => \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt~24_combout\);

-- Location: FF_X79_Y40_N11
\InputCleaner|DebounceKey1|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey1|s_debounceCnt~24_combout\,
	ena => \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_debounceCnt\(4));

-- Location: LCCOMB_X79_Y40_N16
\InputCleaner|DebounceKey1|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_pulsedOut~7_combout\ = (!\InputCleaner|DebounceKey1|s_debounceCnt\(1) & (!\InputCleaner|DebounceKey1|s_debounceCnt\(3) & (!\InputCleaner|DebounceKey1|s_debounceCnt\(2) & !\InputCleaner|DebounceKey1|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt\(1),
	datab => \InputCleaner|DebounceKey1|s_debounceCnt\(3),
	datac => \InputCleaner|DebounceKey1|s_debounceCnt\(2),
	datad => \InputCleaner|DebounceKey1|s_debounceCnt\(4),
	combout => \InputCleaner|DebounceKey1|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X80_Y41_N20
\InputCleaner|DebounceKey1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|Add0~10_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(5) & (\InputCleaner|DebounceKey1|Add0~9\ & VCC)) # (!\InputCleaner|DebounceKey1|s_debounceCnt\(5) & (!\InputCleaner|DebounceKey1|Add0~9\))
-- \InputCleaner|DebounceKey1|Add0~11\ = CARRY((!\InputCleaner|DebounceKey1|s_debounceCnt\(5) & !\InputCleaner|DebounceKey1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey1|s_debounceCnt\(5),
	datad => VCC,
	cin => \InputCleaner|DebounceKey1|Add0~9\,
	combout => \InputCleaner|DebounceKey1|Add0~10_combout\,
	cout => \InputCleaner|DebounceKey1|Add0~11\);

-- Location: LCCOMB_X79_Y40_N26
\InputCleaner|DebounceKey1|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt~25_combout\ = (\InputCleaner|DebounceKey1|Add0~10_combout\ & \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey1|Add0~10_combout\,
	datad => \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt~25_combout\);

-- Location: FF_X79_Y40_N27
\InputCleaner|DebounceKey1|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey1|s_debounceCnt~25_combout\,
	ena => \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_debounceCnt\(5));

-- Location: LCCOMB_X80_Y40_N18
\InputCleaner|DebounceKey1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|Add0~40_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(20) & ((GND) # (!\InputCleaner|DebounceKey1|Add0~39\))) # (!\InputCleaner|DebounceKey1|s_debounceCnt\(20) & (\InputCleaner|DebounceKey1|Add0~39\ $ (GND)))
-- \InputCleaner|DebounceKey1|Add0~41\ = CARRY((\InputCleaner|DebounceKey1|s_debounceCnt\(20)) # (!\InputCleaner|DebounceKey1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey1|s_debounceCnt\(20),
	datad => VCC,
	cin => \InputCleaner|DebounceKey1|Add0~39\,
	combout => \InputCleaner|DebounceKey1|Add0~40_combout\,
	cout => \InputCleaner|DebounceKey1|Add0~41\);

-- Location: LCCOMB_X80_Y40_N20
\InputCleaner|DebounceKey1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|Add0~42_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(21) & (\InputCleaner|DebounceKey1|Add0~41\ & VCC)) # (!\InputCleaner|DebounceKey1|s_debounceCnt\(21) & (!\InputCleaner|DebounceKey1|Add0~41\))
-- \InputCleaner|DebounceKey1|Add0~43\ = CARRY((!\InputCleaner|DebounceKey1|s_debounceCnt\(21) & !\InputCleaner|DebounceKey1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt\(21),
	datad => VCC,
	cin => \InputCleaner|DebounceKey1|Add0~41\,
	combout => \InputCleaner|DebounceKey1|Add0~42_combout\,
	cout => \InputCleaner|DebounceKey1|Add0~43\);

-- Location: LCCOMB_X81_Y40_N20
\InputCleaner|DebounceKey1|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt[21]~10_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\ & (\InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\ & \InputCleaner|DebounceKey1|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\,
	datac => \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\,
	datad => \InputCleaner|DebounceKey1|Add0~42_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt[21]~10_combout\);

-- Location: FF_X81_Y40_N21
\InputCleaner|DebounceKey1|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey1|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_debounceCnt\(21));

-- Location: LCCOMB_X81_Y40_N24
\InputCleaner|DebounceKey1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|LessThan0~6_combout\ = (!\InputCleaner|DebounceKey1|s_debounceCnt\(20) & !\InputCleaner|DebounceKey1|s_debounceCnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey1|s_debounceCnt\(20),
	datad => \InputCleaner|DebounceKey1|s_debounceCnt\(21),
	combout => \InputCleaner|DebounceKey1|LessThan0~6_combout\);

-- Location: LCCOMB_X80_Y41_N22
\InputCleaner|DebounceKey1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|Add0~12_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(6) & ((GND) # (!\InputCleaner|DebounceKey1|Add0~11\))) # (!\InputCleaner|DebounceKey1|s_debounceCnt\(6) & (\InputCleaner|DebounceKey1|Add0~11\ $ (GND)))
-- \InputCleaner|DebounceKey1|Add0~13\ = CARRY((\InputCleaner|DebounceKey1|s_debounceCnt\(6)) # (!\InputCleaner|DebounceKey1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt\(6),
	datad => VCC,
	cin => \InputCleaner|DebounceKey1|Add0~11\,
	combout => \InputCleaner|DebounceKey1|Add0~12_combout\,
	cout => \InputCleaner|DebounceKey1|Add0~13\);

-- Location: LCCOMB_X79_Y40_N28
\InputCleaner|DebounceKey1|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt~3_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt[7]~2_combout\ & ((\InputCleaner|DebounceKey1|Add0~12_combout\) # (!\InputCleaner|DebounceKey1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|Add0~12_combout\,
	datac => \InputCleaner|DebounceKey1|s_previousIn~q\,
	datad => \InputCleaner|DebounceKey1|s_debounceCnt[7]~2_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt~3_combout\);

-- Location: FF_X79_Y40_N29
\InputCleaner|DebounceKey1|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey1|s_debounceCnt~3_combout\,
	ena => \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_debounceCnt\(6));

-- Location: LCCOMB_X80_Y41_N24
\InputCleaner|DebounceKey1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|Add0~14_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(7) & (\InputCleaner|DebounceKey1|Add0~13\ & VCC)) # (!\InputCleaner|DebounceKey1|s_debounceCnt\(7) & (!\InputCleaner|DebounceKey1|Add0~13\))
-- \InputCleaner|DebounceKey1|Add0~15\ = CARRY((!\InputCleaner|DebounceKey1|s_debounceCnt\(7) & !\InputCleaner|DebounceKey1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt\(7),
	datad => VCC,
	cin => \InputCleaner|DebounceKey1|Add0~13\,
	combout => \InputCleaner|DebounceKey1|Add0~14_combout\,
	cout => \InputCleaner|DebounceKey1|Add0~15\);

-- Location: LCCOMB_X79_Y40_N22
\InputCleaner|DebounceKey1|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt~13_combout\ = (\InputCleaner|DebounceKey1|Add0~14_combout\ & \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey1|Add0~14_combout\,
	datad => \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt~13_combout\);

-- Location: FF_X79_Y40_N23
\InputCleaner|DebounceKey1|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey1|s_debounceCnt~13_combout\,
	ena => \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_debounceCnt\(7));

-- Location: LCCOMB_X80_Y41_N26
\InputCleaner|DebounceKey1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|Add0~16_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(8) & ((GND) # (!\InputCleaner|DebounceKey1|Add0~15\))) # (!\InputCleaner|DebounceKey1|s_debounceCnt\(8) & (\InputCleaner|DebounceKey1|Add0~15\ $ (GND)))
-- \InputCleaner|DebounceKey1|Add0~17\ = CARRY((\InputCleaner|DebounceKey1|s_debounceCnt\(8)) # (!\InputCleaner|DebounceKey1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey1|s_debounceCnt\(8),
	datad => VCC,
	cin => \InputCleaner|DebounceKey1|Add0~15\,
	combout => \InputCleaner|DebounceKey1|Add0~16_combout\,
	cout => \InputCleaner|DebounceKey1|Add0~17\);

-- Location: LCCOMB_X82_Y40_N30
\InputCleaner|DebounceKey1|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt~14_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt[7]~2_combout\ & ((\InputCleaner|DebounceKey1|Add0~16_combout\) # (!\InputCleaner|DebounceKey1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey1|s_previousIn~q\,
	datac => \InputCleaner|DebounceKey1|s_debounceCnt[7]~2_combout\,
	datad => \InputCleaner|DebounceKey1|Add0~16_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt~14_combout\);

-- Location: FF_X82_Y40_N31
\InputCleaner|DebounceKey1|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey1|s_debounceCnt~14_combout\,
	ena => \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_debounceCnt\(8));

-- Location: LCCOMB_X80_Y41_N28
\InputCleaner|DebounceKey1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|Add0~18_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(9) & (\InputCleaner|DebounceKey1|Add0~17\ & VCC)) # (!\InputCleaner|DebounceKey1|s_debounceCnt\(9) & (!\InputCleaner|DebounceKey1|Add0~17\))
-- \InputCleaner|DebounceKey1|Add0~19\ = CARRY((!\InputCleaner|DebounceKey1|s_debounceCnt\(9) & !\InputCleaner|DebounceKey1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt\(9),
	datad => VCC,
	cin => \InputCleaner|DebounceKey1|Add0~17\,
	combout => \InputCleaner|DebounceKey1|Add0~18_combout\,
	cout => \InputCleaner|DebounceKey1|Add0~19\);

-- Location: LCCOMB_X82_Y40_N0
\InputCleaner|DebounceKey1|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt~15_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt[7]~2_combout\ & ((\InputCleaner|DebounceKey1|Add0~18_combout\) # (!\InputCleaner|DebounceKey1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey1|s_previousIn~q\,
	datac => \InputCleaner|DebounceKey1|s_debounceCnt[7]~2_combout\,
	datad => \InputCleaner|DebounceKey1|Add0~18_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt~15_combout\);

-- Location: FF_X82_Y40_N1
\InputCleaner|DebounceKey1|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey1|s_debounceCnt~15_combout\,
	ena => \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_debounceCnt\(9));

-- Location: LCCOMB_X80_Y41_N30
\InputCleaner|DebounceKey1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|Add0~20_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(10) & ((GND) # (!\InputCleaner|DebounceKey1|Add0~19\))) # (!\InputCleaner|DebounceKey1|s_debounceCnt\(10) & (\InputCleaner|DebounceKey1|Add0~19\ $ (GND)))
-- \InputCleaner|DebounceKey1|Add0~21\ = CARRY((\InputCleaner|DebounceKey1|s_debounceCnt\(10)) # (!\InputCleaner|DebounceKey1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey1|s_debounceCnt\(10),
	datad => VCC,
	cin => \InputCleaner|DebounceKey1|Add0~19\,
	combout => \InputCleaner|DebounceKey1|Add0~20_combout\,
	cout => \InputCleaner|DebounceKey1|Add0~21\);

-- Location: LCCOMB_X81_Y40_N0
\InputCleaner|DebounceKey1|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt~16_combout\ = (\InputCleaner|DebounceKey1|Add0~20_combout\ & \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey1|Add0~20_combout\,
	datad => \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt~16_combout\);

-- Location: FF_X81_Y40_N1
\InputCleaner|DebounceKey1|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey1|s_debounceCnt~16_combout\,
	ena => \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_debounceCnt\(10));

-- Location: LCCOMB_X80_Y40_N0
\InputCleaner|DebounceKey1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|Add0~22_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(11) & (\InputCleaner|DebounceKey1|Add0~21\ & VCC)) # (!\InputCleaner|DebounceKey1|s_debounceCnt\(11) & (!\InputCleaner|DebounceKey1|Add0~21\))
-- \InputCleaner|DebounceKey1|Add0~23\ = CARRY((!\InputCleaner|DebounceKey1|s_debounceCnt\(11) & !\InputCleaner|DebounceKey1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey1|s_debounceCnt\(11),
	datad => VCC,
	cin => \InputCleaner|DebounceKey1|Add0~21\,
	combout => \InputCleaner|DebounceKey1|Add0~22_combout\,
	cout => \InputCleaner|DebounceKey1|Add0~23\);

-- Location: LCCOMB_X82_Y40_N26
\InputCleaner|DebounceKey1|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt~17_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt[7]~2_combout\ & ((\InputCleaner|DebounceKey1|Add0~22_combout\) # (!\InputCleaner|DebounceKey1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey1|s_previousIn~q\,
	datac => \InputCleaner|DebounceKey1|s_debounceCnt[7]~2_combout\,
	datad => \InputCleaner|DebounceKey1|Add0~22_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt~17_combout\);

-- Location: FF_X82_Y40_N27
\InputCleaner|DebounceKey1|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey1|s_debounceCnt~17_combout\,
	ena => \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_debounceCnt\(11));

-- Location: LCCOMB_X80_Y40_N2
\InputCleaner|DebounceKey1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|Add0~24_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(12) & ((GND) # (!\InputCleaner|DebounceKey1|Add0~23\))) # (!\InputCleaner|DebounceKey1|s_debounceCnt\(12) & (\InputCleaner|DebounceKey1|Add0~23\ $ (GND)))
-- \InputCleaner|DebounceKey1|Add0~25\ = CARRY((\InputCleaner|DebounceKey1|s_debounceCnt\(12)) # (!\InputCleaner|DebounceKey1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey1|s_debounceCnt\(12),
	datad => VCC,
	cin => \InputCleaner|DebounceKey1|Add0~23\,
	combout => \InputCleaner|DebounceKey1|Add0~24_combout\,
	cout => \InputCleaner|DebounceKey1|Add0~25\);

-- Location: LCCOMB_X81_Y40_N18
\InputCleaner|DebounceKey1|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt~11_combout\ = (\InputCleaner|DebounceKey1|Add0~24_combout\ & \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|Add0~24_combout\,
	datad => \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt~11_combout\);

-- Location: FF_X81_Y40_N19
\InputCleaner|DebounceKey1|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey1|s_debounceCnt~11_combout\,
	ena => \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_debounceCnt\(12));

-- Location: LCCOMB_X80_Y40_N4
\InputCleaner|DebounceKey1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|Add0~26_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(13) & (\InputCleaner|DebounceKey1|Add0~25\ & VCC)) # (!\InputCleaner|DebounceKey1|s_debounceCnt\(13) & (!\InputCleaner|DebounceKey1|Add0~25\))
-- \InputCleaner|DebounceKey1|Add0~27\ = CARRY((!\InputCleaner|DebounceKey1|s_debounceCnt\(13) & !\InputCleaner|DebounceKey1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt\(13),
	datad => VCC,
	cin => \InputCleaner|DebounceKey1|Add0~25\,
	combout => \InputCleaner|DebounceKey1|Add0~26_combout\,
	cout => \InputCleaner|DebounceKey1|Add0~27\);

-- Location: LCCOMB_X81_Y40_N4
\InputCleaner|DebounceKey1|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt~12_combout\ = (\InputCleaner|DebounceKey1|Add0~26_combout\ & \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey1|Add0~26_combout\,
	datad => \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt~12_combout\);

-- Location: FF_X81_Y40_N5
\InputCleaner|DebounceKey1|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey1|s_debounceCnt~12_combout\,
	ena => \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_debounceCnt\(13));

-- Location: LCCOMB_X80_Y40_N6
\InputCleaner|DebounceKey1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|Add0~28_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(14) & ((GND) # (!\InputCleaner|DebounceKey1|Add0~27\))) # (!\InputCleaner|DebounceKey1|s_debounceCnt\(14) & (\InputCleaner|DebounceKey1|Add0~27\ $ (GND)))
-- \InputCleaner|DebounceKey1|Add0~29\ = CARRY((\InputCleaner|DebounceKey1|s_debounceCnt\(14)) # (!\InputCleaner|DebounceKey1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey1|s_debounceCnt\(14),
	datad => VCC,
	cin => \InputCleaner|DebounceKey1|Add0~27\,
	combout => \InputCleaner|DebounceKey1|Add0~28_combout\,
	cout => \InputCleaner|DebounceKey1|Add0~29\);

-- Location: LCCOMB_X82_Y40_N10
\InputCleaner|DebounceKey1|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt~18_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt[7]~2_combout\ & ((\InputCleaner|DebounceKey1|Add0~28_combout\) # (!\InputCleaner|DebounceKey1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey1|s_previousIn~q\,
	datac => \InputCleaner|DebounceKey1|s_debounceCnt[7]~2_combout\,
	datad => \InputCleaner|DebounceKey1|Add0~28_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt~18_combout\);

-- Location: FF_X82_Y40_N11
\InputCleaner|DebounceKey1|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey1|s_debounceCnt~18_combout\,
	ena => \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_debounceCnt\(14));

-- Location: LCCOMB_X80_Y40_N8
\InputCleaner|DebounceKey1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|Add0~30_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(15) & (\InputCleaner|DebounceKey1|Add0~29\ & VCC)) # (!\InputCleaner|DebounceKey1|s_debounceCnt\(15) & (!\InputCleaner|DebounceKey1|Add0~29\))
-- \InputCleaner|DebounceKey1|Add0~31\ = CARRY((!\InputCleaner|DebounceKey1|s_debounceCnt\(15) & !\InputCleaner|DebounceKey1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt\(15),
	datad => VCC,
	cin => \InputCleaner|DebounceKey1|Add0~29\,
	combout => \InputCleaner|DebounceKey1|Add0~30_combout\,
	cout => \InputCleaner|DebounceKey1|Add0~31\);

-- Location: LCCOMB_X82_Y40_N8
\InputCleaner|DebounceKey1|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt~6_combout\ = (\InputCleaner|DebounceKey1|Add0~30_combout\ & \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey1|Add0~30_combout\,
	datad => \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt~6_combout\);

-- Location: FF_X82_Y40_N9
\InputCleaner|DebounceKey1|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey1|s_debounceCnt~6_combout\,
	ena => \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_debounceCnt\(15));

-- Location: LCCOMB_X80_Y40_N10
\InputCleaner|DebounceKey1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|Add0~32_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(16) & ((GND) # (!\InputCleaner|DebounceKey1|Add0~31\))) # (!\InputCleaner|DebounceKey1|s_debounceCnt\(16) & (\InputCleaner|DebounceKey1|Add0~31\ $ (GND)))
-- \InputCleaner|DebounceKey1|Add0~33\ = CARRY((\InputCleaner|DebounceKey1|s_debounceCnt\(16)) # (!\InputCleaner|DebounceKey1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey1|s_debounceCnt\(16),
	datad => VCC,
	cin => \InputCleaner|DebounceKey1|Add0~31\,
	combout => \InputCleaner|DebounceKey1|Add0~32_combout\,
	cout => \InputCleaner|DebounceKey1|Add0~33\);

-- Location: LCCOMB_X81_Y40_N8
\InputCleaner|DebounceKey1|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt~7_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\ & \InputCleaner|DebounceKey1|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\,
	datad => \InputCleaner|DebounceKey1|Add0~32_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt~7_combout\);

-- Location: FF_X81_Y40_N9
\InputCleaner|DebounceKey1|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey1|s_debounceCnt~7_combout\,
	ena => \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_debounceCnt\(16));

-- Location: LCCOMB_X80_Y40_N12
\InputCleaner|DebounceKey1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|Add0~34_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(17) & (\InputCleaner|DebounceKey1|Add0~33\ & VCC)) # (!\InputCleaner|DebounceKey1|s_debounceCnt\(17) & (!\InputCleaner|DebounceKey1|Add0~33\))
-- \InputCleaner|DebounceKey1|Add0~35\ = CARRY((!\InputCleaner|DebounceKey1|s_debounceCnt\(17) & !\InputCleaner|DebounceKey1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey1|s_debounceCnt\(17),
	datad => VCC,
	cin => \InputCleaner|DebounceKey1|Add0~33\,
	combout => \InputCleaner|DebounceKey1|Add0~34_combout\,
	cout => \InputCleaner|DebounceKey1|Add0~35\);

-- Location: LCCOMB_X82_Y40_N2
\InputCleaner|DebounceKey1|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt~8_combout\ = (\InputCleaner|DebounceKey1|Add0~34_combout\ & \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey1|Add0~34_combout\,
	datad => \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt~8_combout\);

-- Location: FF_X82_Y40_N3
\InputCleaner|DebounceKey1|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey1|s_debounceCnt~8_combout\,
	ena => \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_debounceCnt\(17));

-- Location: LCCOMB_X80_Y40_N14
\InputCleaner|DebounceKey1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|Add0~36_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(18) & ((GND) # (!\InputCleaner|DebounceKey1|Add0~35\))) # (!\InputCleaner|DebounceKey1|s_debounceCnt\(18) & (\InputCleaner|DebounceKey1|Add0~35\ $ (GND)))
-- \InputCleaner|DebounceKey1|Add0~37\ = CARRY((\InputCleaner|DebounceKey1|s_debounceCnt\(18)) # (!\InputCleaner|DebounceKey1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt\(18),
	datad => VCC,
	cin => \InputCleaner|DebounceKey1|Add0~35\,
	combout => \InputCleaner|DebounceKey1|Add0~36_combout\,
	cout => \InputCleaner|DebounceKey1|Add0~37\);

-- Location: LCCOMB_X82_Y40_N18
\InputCleaner|DebounceKey1|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt[18]~19_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\ & (\InputCleaner|DebounceKey1|s_debounceCnt[7]~2_combout\ & ((\InputCleaner|DebounceKey1|Add0~36_combout\) # 
-- (!\InputCleaner|DebounceKey1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_previousIn~q\,
	datab => \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\,
	datac => \InputCleaner|DebounceKey1|s_debounceCnt[7]~2_combout\,
	datad => \InputCleaner|DebounceKey1|Add0~36_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt[18]~19_combout\);

-- Location: FF_X82_Y40_N19
\InputCleaner|DebounceKey1|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey1|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_debounceCnt\(18));

-- Location: LCCOMB_X81_Y40_N22
\InputCleaner|DebounceKey1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|LessThan0~3_combout\ = (!\InputCleaner|DebounceKey1|s_debounceCnt\(13) & !\InputCleaner|DebounceKey1|s_debounceCnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey1|s_debounceCnt\(13),
	datad => \InputCleaner|DebounceKey1|s_debounceCnt\(12),
	combout => \InputCleaner|DebounceKey1|LessThan0~3_combout\);

-- Location: LCCOMB_X79_Y40_N30
\InputCleaner|DebounceKey1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|LessThan0~0_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(5)) # (\InputCleaner|DebounceKey1|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey1|s_debounceCnt\(5),
	datad => \InputCleaner|DebounceKey1|s_debounceCnt\(0),
	combout => \InputCleaner|DebounceKey1|LessThan0~0_combout\);

-- Location: LCCOMB_X79_Y40_N24
\InputCleaner|DebounceKey1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|LessThan0~1_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(7)) # ((\InputCleaner|DebounceKey1|s_debounceCnt\(6) & ((\InputCleaner|DebounceKey1|LessThan0~0_combout\) # 
-- (!\InputCleaner|DebounceKey1|s_pulsedOut~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt\(7),
	datab => \InputCleaner|DebounceKey1|s_debounceCnt\(6),
	datac => \InputCleaner|DebounceKey1|LessThan0~0_combout\,
	datad => \InputCleaner|DebounceKey1|s_pulsedOut~7_combout\,
	combout => \InputCleaner|DebounceKey1|LessThan0~1_combout\);

-- Location: LCCOMB_X81_Y40_N16
\InputCleaner|DebounceKey1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|LessThan0~2_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(10)) # ((\InputCleaner|DebounceKey1|s_debounceCnt\(8) & (\InputCleaner|DebounceKey1|s_debounceCnt\(9) & \InputCleaner|DebounceKey1|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt\(8),
	datab => \InputCleaner|DebounceKey1|s_debounceCnt\(10),
	datac => \InputCleaner|DebounceKey1|s_debounceCnt\(9),
	datad => \InputCleaner|DebounceKey1|LessThan0~1_combout\,
	combout => \InputCleaner|DebounceKey1|LessThan0~2_combout\);

-- Location: LCCOMB_X81_Y40_N28
\InputCleaner|DebounceKey1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|LessThan0~4_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(14) & (((\InputCleaner|DebounceKey1|s_debounceCnt\(11) & \InputCleaner|DebounceKey1|LessThan0~2_combout\)) # (!\InputCleaner|DebounceKey1|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|LessThan0~3_combout\,
	datab => \InputCleaner|DebounceKey1|s_debounceCnt\(11),
	datac => \InputCleaner|DebounceKey1|s_debounceCnt\(14),
	datad => \InputCleaner|DebounceKey1|LessThan0~2_combout\,
	combout => \InputCleaner|DebounceKey1|LessThan0~4_combout\);

-- Location: LCCOMB_X81_Y40_N6
\InputCleaner|DebounceKey1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|LessThan0~5_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(17)) # ((\InputCleaner|DebounceKey1|s_debounceCnt\(15)) # ((\InputCleaner|DebounceKey1|s_debounceCnt\(16)) # (\InputCleaner|DebounceKey1|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt\(17),
	datab => \InputCleaner|DebounceKey1|s_debounceCnt\(15),
	datac => \InputCleaner|DebounceKey1|s_debounceCnt\(16),
	datad => \InputCleaner|DebounceKey1|LessThan0~4_combout\,
	combout => \InputCleaner|DebounceKey1|LessThan0~5_combout\);

-- Location: LCCOMB_X81_Y40_N10
\InputCleaner|DebounceKey1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|LessThan0~7_combout\ = ((\InputCleaner|DebounceKey1|s_debounceCnt\(19) & (\InputCleaner|DebounceKey1|s_debounceCnt\(18) & \InputCleaner|DebounceKey1|LessThan0~5_combout\))) # (!\InputCleaner|DebounceKey1|LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt\(19),
	datab => \InputCleaner|DebounceKey1|LessThan0~6_combout\,
	datac => \InputCleaner|DebounceKey1|s_debounceCnt\(18),
	datad => \InputCleaner|DebounceKey1|LessThan0~5_combout\,
	combout => \InputCleaner|DebounceKey1|LessThan0~7_combout\);

-- Location: LCCOMB_X82_Y40_N22
\InputCleaner|DebounceKey1|s_debounceCnt[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt[7]~2_combout\ = (\InputCleaner|DebounceKey1|s_dirtyIn~q\ & ((!\InputCleaner|DebounceKey1|LessThan0~7_combout\) # (!\InputCleaner|DebounceKey1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt\(22),
	datac => \InputCleaner|DebounceKey1|s_dirtyIn~q\,
	datad => \InputCleaner|DebounceKey1|LessThan0~7_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt[7]~2_combout\);

-- Location: LCCOMB_X80_Y40_N16
\InputCleaner|DebounceKey1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|Add0~38_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(19) & (\InputCleaner|DebounceKey1|Add0~37\ & VCC)) # (!\InputCleaner|DebounceKey1|s_debounceCnt\(19) & (!\InputCleaner|DebounceKey1|Add0~37\))
-- \InputCleaner|DebounceKey1|Add0~39\ = CARRY((!\InputCleaner|DebounceKey1|s_debounceCnt\(19) & !\InputCleaner|DebounceKey1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt\(19),
	datad => VCC,
	cin => \InputCleaner|DebounceKey1|Add0~37\,
	combout => \InputCleaner|DebounceKey1|Add0~38_combout\,
	cout => \InputCleaner|DebounceKey1|Add0~39\);

-- Location: LCCOMB_X82_Y40_N6
\InputCleaner|DebounceKey1|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt[19]~20_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\ & (\InputCleaner|DebounceKey1|s_debounceCnt[7]~2_combout\ & ((\InputCleaner|DebounceKey1|Add0~38_combout\) # 
-- (!\InputCleaner|DebounceKey1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_previousIn~q\,
	datab => \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\,
	datac => \InputCleaner|DebounceKey1|s_debounceCnt[7]~2_combout\,
	datad => \InputCleaner|DebounceKey1|Add0~38_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt[19]~20_combout\);

-- Location: FF_X82_Y40_N7
\InputCleaner|DebounceKey1|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey1|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_debounceCnt\(19));

-- Location: LCCOMB_X81_Y40_N26
\InputCleaner|DebounceKey1|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt[20]~9_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\ & (\InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\ & \InputCleaner|DebounceKey1|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\,
	datac => \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\,
	datad => \InputCleaner|DebounceKey1|Add0~40_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt[20]~9_combout\);

-- Location: FF_X81_Y40_N27
\InputCleaner|DebounceKey1|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey1|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_debounceCnt\(20));

-- Location: LCCOMB_X81_Y40_N2
\InputCleaner|DebounceKey1|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_pulsedOut~3_combout\ = (!\InputCleaner|DebounceKey1|s_debounceCnt\(20) & (!\InputCleaner|DebounceKey1|s_debounceCnt\(21) & (!\InputCleaner|DebounceKey1|s_debounceCnt\(13) & !\InputCleaner|DebounceKey1|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt\(20),
	datab => \InputCleaner|DebounceKey1|s_debounceCnt\(21),
	datac => \InputCleaner|DebounceKey1|s_debounceCnt\(13),
	datad => \InputCleaner|DebounceKey1|s_debounceCnt\(12),
	combout => \InputCleaner|DebounceKey1|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X82_Y40_N24
\InputCleaner|DebounceKey1|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_pulsedOut~4_combout\ = (!\InputCleaner|DebounceKey1|s_debounceCnt\(10) & (!\InputCleaner|DebounceKey1|s_debounceCnt\(9) & (!\InputCleaner|DebounceKey1|s_debounceCnt\(8) & !\InputCleaner|DebounceKey1|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt\(10),
	datab => \InputCleaner|DebounceKey1|s_debounceCnt\(9),
	datac => \InputCleaner|DebounceKey1|s_debounceCnt\(8),
	datad => \InputCleaner|DebounceKey1|s_debounceCnt\(7),
	combout => \InputCleaner|DebounceKey1|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X82_Y40_N4
\InputCleaner|DebounceKey1|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_pulsedOut~5_combout\ = (!\InputCleaner|DebounceKey1|s_debounceCnt\(19) & (!\InputCleaner|DebounceKey1|s_debounceCnt\(18) & (!\InputCleaner|DebounceKey1|s_debounceCnt\(11) & !\InputCleaner|DebounceKey1|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt\(19),
	datab => \InputCleaner|DebounceKey1|s_debounceCnt\(18),
	datac => \InputCleaner|DebounceKey1|s_debounceCnt\(11),
	datad => \InputCleaner|DebounceKey1|s_debounceCnt\(14),
	combout => \InputCleaner|DebounceKey1|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X82_Y40_N28
\InputCleaner|DebounceKey1|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_pulsedOut~2_combout\ = (!\InputCleaner|DebounceKey1|s_debounceCnt\(6) & (!\InputCleaner|DebounceKey1|s_debounceCnt\(17) & (!\InputCleaner|DebounceKey1|s_debounceCnt\(15) & !\InputCleaner|DebounceKey1|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt\(6),
	datab => \InputCleaner|DebounceKey1|s_debounceCnt\(17),
	datac => \InputCleaner|DebounceKey1|s_debounceCnt\(15),
	datad => \InputCleaner|DebounceKey1|s_debounceCnt\(16),
	combout => \InputCleaner|DebounceKey1|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X82_Y40_N16
\InputCleaner|DebounceKey1|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_pulsedOut~6_combout\ = (\InputCleaner|DebounceKey1|s_pulsedOut~3_combout\ & (\InputCleaner|DebounceKey1|s_pulsedOut~4_combout\ & (\InputCleaner|DebounceKey1|s_pulsedOut~5_combout\ & 
-- \InputCleaner|DebounceKey1|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_pulsedOut~3_combout\,
	datab => \InputCleaner|DebounceKey1|s_pulsedOut~4_combout\,
	datac => \InputCleaner|DebounceKey1|s_pulsedOut~5_combout\,
	datad => \InputCleaner|DebounceKey1|s_pulsedOut~2_combout\,
	combout => \InputCleaner|DebounceKey1|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X82_Y40_N12
\InputCleaner|DebounceKey1|s_debounceCnt[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt[7]~29_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(0)) # (((\InputCleaner|DebounceKey1|s_debounceCnt\(5)) # (!\InputCleaner|DebounceKey1|s_pulsedOut~6_combout\)) # 
-- (!\InputCleaner|DebounceKey1|s_pulsedOut~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_debounceCnt\(0),
	datab => \InputCleaner|DebounceKey1|s_pulsedOut~7_combout\,
	datac => \InputCleaner|DebounceKey1|s_debounceCnt\(5),
	datad => \InputCleaner|DebounceKey1|s_pulsedOut~6_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt[7]~29_combout\);

-- Location: LCCOMB_X81_Y40_N30
\InputCleaner|DebounceKey1|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt[22]~27_combout\ = (\InputCleaner|DebounceKey1|s_debounceCnt\(22) & (((!\InputCleaner|DebounceKey1|LessThan0~7_combout\)))) # (!\InputCleaner|DebounceKey1|s_debounceCnt\(22) & 
-- (((\InputCleaner|DebounceKey1|s_debounceCnt[7]~29_combout\)) # (!\InputCleaner|DebounceKey1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_previousIn~q\,
	datab => \InputCleaner|DebounceKey1|s_debounceCnt\(22),
	datac => \InputCleaner|DebounceKey1|s_debounceCnt[7]~29_combout\,
	datad => \InputCleaner|DebounceKey1|LessThan0~7_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X80_Y40_N22
\InputCleaner|DebounceKey1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|Add0~44_combout\ = \InputCleaner|DebounceKey1|s_debounceCnt\(22) $ (\InputCleaner|DebounceKey1|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey1|s_debounceCnt\(22),
	cin => \InputCleaner|DebounceKey1|Add0~43\,
	combout => \InputCleaner|DebounceKey1|Add0~44_combout\);

-- Location: LCCOMB_X81_Y40_N14
\InputCleaner|DebounceKey1|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt[22]~28_combout\ = (\InputCleaner|DebounceKey1|s_dirtyIn~q\ & (\InputCleaner|DebounceKey1|s_debounceCnt[22]~27_combout\ & ((\InputCleaner|DebounceKey1|Add0~44_combout\) # 
-- (!\InputCleaner|DebounceKey1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_previousIn~q\,
	datab => \InputCleaner|DebounceKey1|s_dirtyIn~q\,
	datac => \InputCleaner|DebounceKey1|s_debounceCnt[22]~27_combout\,
	datad => \InputCleaner|DebounceKey1|Add0~44_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt[22]~28_combout\);

-- Location: FF_X81_Y40_N15
\InputCleaner|DebounceKey1|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey1|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_debounceCnt\(22));

-- Location: LCCOMB_X81_Y40_N12
\InputCleaner|DebounceKey1|s_debounceCnt[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\ = (\InputCleaner|DebounceKey1|s_previousIn~q\ & (\InputCleaner|DebounceKey1|s_dirtyIn~q\ & ((!\InputCleaner|DebounceKey1|LessThan0~7_combout\) # (!\InputCleaner|DebounceKey1|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_previousIn~q\,
	datab => \InputCleaner|DebounceKey1|s_dirtyIn~q\,
	datac => \InputCleaner|DebounceKey1|s_debounceCnt\(22),
	datad => \InputCleaner|DebounceKey1|LessThan0~7_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\);

-- Location: LCCOMB_X79_Y40_N20
\InputCleaner|DebounceKey1|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_debounceCnt~26_combout\ = (\InputCleaner|DebounceKey1|Add0~0_combout\ & \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey1|Add0~0_combout\,
	datad => \InputCleaner|DebounceKey1|s_debounceCnt[7]~5_combout\,
	combout => \InputCleaner|DebounceKey1|s_debounceCnt~26_combout\);

-- Location: FF_X79_Y40_N21
\InputCleaner|DebounceKey1|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey1|s_debounceCnt~26_combout\,
	ena => \InputCleaner|DebounceKey1|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_debounceCnt\(0));

-- Location: LCCOMB_X82_Y40_N20
\InputCleaner|DebounceKey1|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_pulsedOut~8_combout\ = (\InputCleaner|DebounceKey1|s_dirtyIn~q\ & (\InputCleaner|DebounceKey1|s_debounceCnt\(0) & (\InputCleaner|DebounceKey1|s_previousIn~q\ & !\InputCleaner|DebounceKey1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_dirtyIn~q\,
	datab => \InputCleaner|DebounceKey1|s_debounceCnt\(0),
	datac => \InputCleaner|DebounceKey1|s_previousIn~q\,
	datad => \InputCleaner|DebounceKey1|s_debounceCnt\(22),
	combout => \InputCleaner|DebounceKey1|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X77_Y40_N20
\InputCleaner|DebounceKey1|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey1|s_pulsedOut~9_combout\ = (\InputCleaner|DebounceKey1|s_pulsedOut~8_combout\ & (\InputCleaner|DebounceKey1|s_pulsedOut~7_combout\ & (!\InputCleaner|DebounceKey1|s_debounceCnt\(5) & 
-- \InputCleaner|DebounceKey1|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey1|s_pulsedOut~8_combout\,
	datab => \InputCleaner|DebounceKey1|s_pulsedOut~7_combout\,
	datac => \InputCleaner|DebounceKey1|s_debounceCnt\(5),
	datad => \InputCleaner|DebounceKey1|s_pulsedOut~6_combout\,
	combout => \InputCleaner|DebounceKey1|s_pulsedOut~9_combout\);

-- Location: FF_X77_Y40_N21
\InputCleaner|DebounceKey1|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey1|s_pulsedOut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey1|s_pulsedOut~q\);

-- Location: LCCOMB_X75_Y34_N0
\StateController|cycleDelay[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[0]~34_combout\ = \StateController|cycleDelay\(0) $ (VCC)
-- \StateController|cycleDelay[0]~35\ = CARRY(\StateController|cycleDelay\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateController|cycleDelay\(0),
	datad => VCC,
	combout => \StateController|cycleDelay[0]~34_combout\,
	cout => \StateController|cycleDelay[0]~35\);

-- Location: LCCOMB_X76_Y33_N10
\StateController|cycleDelay[1]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[1]~100_combout\ = (\InputCleaner|DebounceKey2|s_pulsedOut~q\) # ((\InputCleaner|DebounceKey1|s_pulsedOut~q\) # ((!\StateController|currState.t_GLOBALRESET~q\ & \StateController|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_pulsedOut~q\,
	datab => \StateController|currState.t_GLOBALRESET~q\,
	datac => \StateController|LessThan0~7_combout\,
	datad => \InputCleaner|DebounceKey1|s_pulsedOut~q\,
	combout => \StateController|cycleDelay[1]~100_combout\);

-- Location: LCCOMB_X76_Y33_N12
\StateController|currState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|currState~9_combout\ = (!\InputCleaner|DebounceKey2|s_pulsedOut~q\ & ((\InputCleaner|DebounceKey1|s_pulsedOut~q\) # (!\StateController|currState.t_GLOBALRESET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey2|s_pulsedOut~q\,
	datac => \StateController|currState.t_GLOBALRESET~q\,
	datad => \InputCleaner|DebounceKey1|s_pulsedOut~q\,
	combout => \StateController|currState~9_combout\);

-- Location: FF_X76_Y33_N13
\StateController|currState.t_RAMRESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|currState~9_combout\,
	ena => \StateController|currState~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|currState.t_RAMRESET~q\);

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

-- Location: LCCOMB_X84_Y36_N24
\InputCleaner|DebounceKey0|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_dirtyIn~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \InputCleaner|DebounceKey0|s_dirtyIn~0_combout\);

-- Location: FF_X84_Y36_N25
\InputCleaner|DebounceKey0|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_dirtyIn~q\);

-- Location: FF_X77_Y36_N17
\InputCleaner|DebounceKey0|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \InputCleaner|DebounceKey0|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_previousIn~q\);

-- Location: LCCOMB_X76_Y37_N10
\InputCleaner|DebounceKey0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|Add0~0_combout\ = \InputCleaner|DebounceKey0|s_debounceCnt\(0) $ (VCC)
-- \InputCleaner|DebounceKey0|Add0~1\ = CARRY(\InputCleaner|DebounceKey0|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_debounceCnt\(0),
	datad => VCC,
	combout => \InputCleaner|DebounceKey0|Add0~0_combout\,
	cout => \InputCleaner|DebounceKey0|Add0~1\);

-- Location: LCCOMB_X77_Y36_N16
\InputCleaner|DebounceKey0|s_debounceCnt[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\ = ((\InputCleaner|DebounceKey0|s_debounceCnt\(22)) # ((\InputCleaner|DebounceKey0|s_debounceCnt[5]~29_combout\) # (!\InputCleaner|DebounceKey0|s_previousIn~q\))) # 
-- (!\InputCleaner|DebounceKey0|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_dirtyIn~q\,
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(22),
	datac => \InputCleaner|DebounceKey0|s_previousIn~q\,
	datad => \InputCleaner|DebounceKey0|s_debounceCnt[5]~29_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\);

-- Location: LCCOMB_X76_Y37_N16
\InputCleaner|DebounceKey0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|Add0~6_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(3) & (\InputCleaner|DebounceKey0|Add0~5\ & VCC)) # (!\InputCleaner|DebounceKey0|s_debounceCnt\(3) & (!\InputCleaner|DebounceKey0|Add0~5\))
-- \InputCleaner|DebounceKey0|Add0~7\ = CARRY((!\InputCleaner|DebounceKey0|s_debounceCnt\(3) & !\InputCleaner|DebounceKey0|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_debounceCnt\(3),
	datad => VCC,
	cin => \InputCleaner|DebounceKey0|Add0~5\,
	combout => \InputCleaner|DebounceKey0|Add0~6_combout\,
	cout => \InputCleaner|DebounceKey0|Add0~7\);

-- Location: LCCOMB_X76_Y37_N18
\InputCleaner|DebounceKey0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|Add0~8_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(4) & ((GND) # (!\InputCleaner|DebounceKey0|Add0~7\))) # (!\InputCleaner|DebounceKey0|s_debounceCnt\(4) & (\InputCleaner|DebounceKey0|Add0~7\ $ (GND)))
-- \InputCleaner|DebounceKey0|Add0~9\ = CARRY((\InputCleaner|DebounceKey0|s_debounceCnt\(4)) # (!\InputCleaner|DebounceKey0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(4),
	datad => VCC,
	cin => \InputCleaner|DebounceKey0|Add0~7\,
	combout => \InputCleaner|DebounceKey0|Add0~8_combout\,
	cout => \InputCleaner|DebounceKey0|Add0~9\);

-- Location: LCCOMB_X74_Y36_N22
\InputCleaner|DebounceKey0|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt~24_combout\ = (\InputCleaner|DebounceKey0|Add0~8_combout\ & \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey0|Add0~8_combout\,
	datad => \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt~24_combout\);

-- Location: FF_X74_Y36_N23
\InputCleaner|DebounceKey0|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_debounceCnt~24_combout\,
	ena => \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_debounceCnt\(4));

-- Location: LCCOMB_X76_Y37_N20
\InputCleaner|DebounceKey0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|Add0~10_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(5) & (\InputCleaner|DebounceKey0|Add0~9\ & VCC)) # (!\InputCleaner|DebounceKey0|s_debounceCnt\(5) & (!\InputCleaner|DebounceKey0|Add0~9\))
-- \InputCleaner|DebounceKey0|Add0~11\ = CARRY((!\InputCleaner|DebounceKey0|s_debounceCnt\(5) & !\InputCleaner|DebounceKey0|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(5),
	datad => VCC,
	cin => \InputCleaner|DebounceKey0|Add0~9\,
	combout => \InputCleaner|DebounceKey0|Add0~10_combout\,
	cout => \InputCleaner|DebounceKey0|Add0~11\);

-- Location: LCCOMB_X74_Y36_N26
\InputCleaner|DebounceKey0|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt~25_combout\ = (\InputCleaner|DebounceKey0|Add0~10_combout\ & \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey0|Add0~10_combout\,
	datad => \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt~25_combout\);

-- Location: FF_X74_Y36_N27
\InputCleaner|DebounceKey0|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_debounceCnt~25_combout\,
	ena => \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_debounceCnt\(5));

-- Location: LCCOMB_X76_Y37_N22
\InputCleaner|DebounceKey0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|Add0~12_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(6) & ((GND) # (!\InputCleaner|DebounceKey0|Add0~11\))) # (!\InputCleaner|DebounceKey0|s_debounceCnt\(6) & (\InputCleaner|DebounceKey0|Add0~11\ $ (GND)))
-- \InputCleaner|DebounceKey0|Add0~13\ = CARRY((\InputCleaner|DebounceKey0|s_debounceCnt\(6)) # (!\InputCleaner|DebounceKey0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(6),
	datad => VCC,
	cin => \InputCleaner|DebounceKey0|Add0~11\,
	combout => \InputCleaner|DebounceKey0|Add0~12_combout\,
	cout => \InputCleaner|DebounceKey0|Add0~13\);

-- Location: LCCOMB_X77_Y36_N28
\InputCleaner|DebounceKey0|s_debounceCnt[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt[5]~2_combout\ = (\InputCleaner|DebounceKey0|s_dirtyIn~q\ & ((!\InputCleaner|DebounceKey0|LessThan0~5_combout\) # (!\InputCleaner|DebounceKey0|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(22),
	datac => \InputCleaner|DebounceKey0|s_dirtyIn~q\,
	datad => \InputCleaner|DebounceKey0|LessThan0~5_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt[5]~2_combout\);

-- Location: LCCOMB_X77_Y36_N14
\InputCleaner|DebounceKey0|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt~3_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt[5]~2_combout\ & ((\InputCleaner|DebounceKey0|Add0~12_combout\) # (!\InputCleaner|DebounceKey0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_previousIn~q\,
	datac => \InputCleaner|DebounceKey0|Add0~12_combout\,
	datad => \InputCleaner|DebounceKey0|s_debounceCnt[5]~2_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt~3_combout\);

-- Location: FF_X77_Y36_N15
\InputCleaner|DebounceKey0|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_debounceCnt~3_combout\,
	ena => \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_debounceCnt\(6));

-- Location: LCCOMB_X76_Y37_N24
\InputCleaner|DebounceKey0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|Add0~14_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(7) & (\InputCleaner|DebounceKey0|Add0~13\ & VCC)) # (!\InputCleaner|DebounceKey0|s_debounceCnt\(7) & (!\InputCleaner|DebounceKey0|Add0~13\))
-- \InputCleaner|DebounceKey0|Add0~15\ = CARRY((!\InputCleaner|DebounceKey0|s_debounceCnt\(7) & !\InputCleaner|DebounceKey0|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_debounceCnt\(7),
	datad => VCC,
	cin => \InputCleaner|DebounceKey0|Add0~13\,
	combout => \InputCleaner|DebounceKey0|Add0~14_combout\,
	cout => \InputCleaner|DebounceKey0|Add0~15\);

-- Location: LCCOMB_X75_Y36_N30
\InputCleaner|DebounceKey0|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt~13_combout\ = (\InputCleaner|DebounceKey0|Add0~14_combout\ & \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|Add0~14_combout\,
	datad => \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt~13_combout\);

-- Location: FF_X75_Y36_N31
\InputCleaner|DebounceKey0|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_debounceCnt~13_combout\,
	ena => \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_debounceCnt\(7));

-- Location: LCCOMB_X76_Y37_N26
\InputCleaner|DebounceKey0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|Add0~16_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(8) & ((GND) # (!\InputCleaner|DebounceKey0|Add0~15\))) # (!\InputCleaner|DebounceKey0|s_debounceCnt\(8) & (\InputCleaner|DebounceKey0|Add0~15\ $ (GND)))
-- \InputCleaner|DebounceKey0|Add0~17\ = CARRY((\InputCleaner|DebounceKey0|s_debounceCnt\(8)) # (!\InputCleaner|DebounceKey0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(8),
	datad => VCC,
	cin => \InputCleaner|DebounceKey0|Add0~15\,
	combout => \InputCleaner|DebounceKey0|Add0~16_combout\,
	cout => \InputCleaner|DebounceKey0|Add0~17\);

-- Location: LCCOMB_X77_Y36_N30
\InputCleaner|DebounceKey0|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt~14_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt[5]~2_combout\ & ((\InputCleaner|DebounceKey0|Add0~16_combout\) # (!\InputCleaner|DebounceKey0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_previousIn~q\,
	datac => \InputCleaner|DebounceKey0|Add0~16_combout\,
	datad => \InputCleaner|DebounceKey0|s_debounceCnt[5]~2_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt~14_combout\);

-- Location: FF_X77_Y36_N31
\InputCleaner|DebounceKey0|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_debounceCnt~14_combout\,
	ena => \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_debounceCnt\(8));

-- Location: LCCOMB_X76_Y37_N28
\InputCleaner|DebounceKey0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|Add0~18_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(9) & (\InputCleaner|DebounceKey0|Add0~17\ & VCC)) # (!\InputCleaner|DebounceKey0|s_debounceCnt\(9) & (!\InputCleaner|DebounceKey0|Add0~17\))
-- \InputCleaner|DebounceKey0|Add0~19\ = CARRY((!\InputCleaner|DebounceKey0|s_debounceCnt\(9) & !\InputCleaner|DebounceKey0|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(9),
	datad => VCC,
	cin => \InputCleaner|DebounceKey0|Add0~17\,
	combout => \InputCleaner|DebounceKey0|Add0~18_combout\,
	cout => \InputCleaner|DebounceKey0|Add0~19\);

-- Location: LCCOMB_X77_Y36_N4
\InputCleaner|DebounceKey0|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt~15_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt[5]~2_combout\ & ((\InputCleaner|DebounceKey0|Add0~18_combout\) # (!\InputCleaner|DebounceKey0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|Add0~18_combout\,
	datab => \InputCleaner|DebounceKey0|s_previousIn~q\,
	datad => \InputCleaner|DebounceKey0|s_debounceCnt[5]~2_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt~15_combout\);

-- Location: FF_X77_Y36_N5
\InputCleaner|DebounceKey0|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_debounceCnt~15_combout\,
	ena => \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_debounceCnt\(9));

-- Location: LCCOMB_X76_Y37_N30
\InputCleaner|DebounceKey0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|Add0~20_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(10) & ((GND) # (!\InputCleaner|DebounceKey0|Add0~19\))) # (!\InputCleaner|DebounceKey0|s_debounceCnt\(10) & (\InputCleaner|DebounceKey0|Add0~19\ $ (GND)))
-- \InputCleaner|DebounceKey0|Add0~21\ = CARRY((\InputCleaner|DebounceKey0|s_debounceCnt\(10)) # (!\InputCleaner|DebounceKey0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_debounceCnt\(10),
	datad => VCC,
	cin => \InputCleaner|DebounceKey0|Add0~19\,
	combout => \InputCleaner|DebounceKey0|Add0~20_combout\,
	cout => \InputCleaner|DebounceKey0|Add0~21\);

-- Location: LCCOMB_X75_Y36_N20
\InputCleaner|DebounceKey0|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt~16_combout\ = (\InputCleaner|DebounceKey0|Add0~20_combout\ & \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey0|Add0~20_combout\,
	datad => \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt~16_combout\);

-- Location: FF_X75_Y36_N21
\InputCleaner|DebounceKey0|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_debounceCnt~16_combout\,
	ena => \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_debounceCnt\(10));

-- Location: LCCOMB_X76_Y36_N0
\InputCleaner|DebounceKey0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|Add0~22_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(11) & (\InputCleaner|DebounceKey0|Add0~21\ & VCC)) # (!\InputCleaner|DebounceKey0|s_debounceCnt\(11) & (!\InputCleaner|DebounceKey0|Add0~21\))
-- \InputCleaner|DebounceKey0|Add0~23\ = CARRY((!\InputCleaner|DebounceKey0|s_debounceCnt\(11) & !\InputCleaner|DebounceKey0|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_debounceCnt\(11),
	datad => VCC,
	cin => \InputCleaner|DebounceKey0|Add0~21\,
	combout => \InputCleaner|DebounceKey0|Add0~22_combout\,
	cout => \InputCleaner|DebounceKey0|Add0~23\);

-- Location: LCCOMB_X77_Y36_N20
\InputCleaner|DebounceKey0|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt~17_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt[5]~2_combout\ & ((\InputCleaner|DebounceKey0|Add0~22_combout\) # (!\InputCleaner|DebounceKey0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_previousIn~q\,
	datac => \InputCleaner|DebounceKey0|Add0~22_combout\,
	datad => \InputCleaner|DebounceKey0|s_debounceCnt[5]~2_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt~17_combout\);

-- Location: FF_X77_Y36_N21
\InputCleaner|DebounceKey0|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_debounceCnt~17_combout\,
	ena => \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_debounceCnt\(11));

-- Location: LCCOMB_X76_Y36_N2
\InputCleaner|DebounceKey0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|Add0~24_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(12) & ((GND) # (!\InputCleaner|DebounceKey0|Add0~23\))) # (!\InputCleaner|DebounceKey0|s_debounceCnt\(12) & (\InputCleaner|DebounceKey0|Add0~23\ $ (GND)))
-- \InputCleaner|DebounceKey0|Add0~25\ = CARRY((\InputCleaner|DebounceKey0|s_debounceCnt\(12)) # (!\InputCleaner|DebounceKey0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(12),
	datad => VCC,
	cin => \InputCleaner|DebounceKey0|Add0~23\,
	combout => \InputCleaner|DebounceKey0|Add0~24_combout\,
	cout => \InputCleaner|DebounceKey0|Add0~25\);

-- Location: LCCOMB_X75_Y36_N4
\InputCleaner|DebounceKey0|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt~11_combout\ = (\InputCleaner|DebounceKey0|Add0~24_combout\ & \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|Add0~24_combout\,
	datad => \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt~11_combout\);

-- Location: FF_X75_Y36_N5
\InputCleaner|DebounceKey0|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_debounceCnt~11_combout\,
	ena => \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_debounceCnt\(12));

-- Location: LCCOMB_X76_Y36_N4
\InputCleaner|DebounceKey0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|Add0~26_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(13) & (\InputCleaner|DebounceKey0|Add0~25\ & VCC)) # (!\InputCleaner|DebounceKey0|s_debounceCnt\(13) & (!\InputCleaner|DebounceKey0|Add0~25\))
-- \InputCleaner|DebounceKey0|Add0~27\ = CARRY((!\InputCleaner|DebounceKey0|s_debounceCnt\(13) & !\InputCleaner|DebounceKey0|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(13),
	datad => VCC,
	cin => \InputCleaner|DebounceKey0|Add0~25\,
	combout => \InputCleaner|DebounceKey0|Add0~26_combout\,
	cout => \InputCleaner|DebounceKey0|Add0~27\);

-- Location: LCCOMB_X75_Y36_N6
\InputCleaner|DebounceKey0|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt~12_combout\ = (\InputCleaner|DebounceKey0|Add0~26_combout\ & \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|Add0~26_combout\,
	datad => \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt~12_combout\);

-- Location: FF_X75_Y36_N7
\InputCleaner|DebounceKey0|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_debounceCnt~12_combout\,
	ena => \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_debounceCnt\(13));

-- Location: LCCOMB_X76_Y36_N6
\InputCleaner|DebounceKey0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|Add0~28_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(14) & ((GND) # (!\InputCleaner|DebounceKey0|Add0~27\))) # (!\InputCleaner|DebounceKey0|s_debounceCnt\(14) & (\InputCleaner|DebounceKey0|Add0~27\ $ (GND)))
-- \InputCleaner|DebounceKey0|Add0~29\ = CARRY((\InputCleaner|DebounceKey0|s_debounceCnt\(14)) # (!\InputCleaner|DebounceKey0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_debounceCnt\(14),
	datad => VCC,
	cin => \InputCleaner|DebounceKey0|Add0~27\,
	combout => \InputCleaner|DebounceKey0|Add0~28_combout\,
	cout => \InputCleaner|DebounceKey0|Add0~29\);

-- Location: LCCOMB_X77_Y36_N6
\InputCleaner|DebounceKey0|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt~18_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt[5]~2_combout\ & ((\InputCleaner|DebounceKey0|Add0~28_combout\) # (!\InputCleaner|DebounceKey0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_previousIn~q\,
	datac => \InputCleaner|DebounceKey0|Add0~28_combout\,
	datad => \InputCleaner|DebounceKey0|s_debounceCnt[5]~2_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt~18_combout\);

-- Location: FF_X77_Y36_N7
\InputCleaner|DebounceKey0|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_debounceCnt~18_combout\,
	ena => \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_debounceCnt\(14));

-- Location: LCCOMB_X76_Y36_N8
\InputCleaner|DebounceKey0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|Add0~30_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(15) & (\InputCleaner|DebounceKey0|Add0~29\ & VCC)) # (!\InputCleaner|DebounceKey0|s_debounceCnt\(15) & (!\InputCleaner|DebounceKey0|Add0~29\))
-- \InputCleaner|DebounceKey0|Add0~31\ = CARRY((!\InputCleaner|DebounceKey0|s_debounceCnt\(15) & !\InputCleaner|DebounceKey0|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(15),
	datad => VCC,
	cin => \InputCleaner|DebounceKey0|Add0~29\,
	combout => \InputCleaner|DebounceKey0|Add0~30_combout\,
	cout => \InputCleaner|DebounceKey0|Add0~31\);

-- Location: LCCOMB_X76_Y36_N28
\InputCleaner|DebounceKey0|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt~6_combout\ = (\InputCleaner|DebounceKey0|Add0~30_combout\ & \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey0|Add0~30_combout\,
	datad => \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt~6_combout\);

-- Location: FF_X76_Y36_N29
\InputCleaner|DebounceKey0|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_debounceCnt~6_combout\,
	ena => \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_debounceCnt\(15));

-- Location: LCCOMB_X76_Y36_N10
\InputCleaner|DebounceKey0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|Add0~32_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(16) & ((GND) # (!\InputCleaner|DebounceKey0|Add0~31\))) # (!\InputCleaner|DebounceKey0|s_debounceCnt\(16) & (\InputCleaner|DebounceKey0|Add0~31\ $ (GND)))
-- \InputCleaner|DebounceKey0|Add0~33\ = CARRY((\InputCleaner|DebounceKey0|s_debounceCnt\(16)) # (!\InputCleaner|DebounceKey0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_debounceCnt\(16),
	datad => VCC,
	cin => \InputCleaner|DebounceKey0|Add0~31\,
	combout => \InputCleaner|DebounceKey0|Add0~32_combout\,
	cout => \InputCleaner|DebounceKey0|Add0~33\);

-- Location: LCCOMB_X76_Y36_N26
\InputCleaner|DebounceKey0|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt~7_combout\ = (\InputCleaner|DebounceKey0|Add0~32_combout\ & \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|Add0~32_combout\,
	datad => \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt~7_combout\);

-- Location: FF_X76_Y36_N27
\InputCleaner|DebounceKey0|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_debounceCnt~7_combout\,
	ena => \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_debounceCnt\(16));

-- Location: LCCOMB_X76_Y36_N12
\InputCleaner|DebounceKey0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|Add0~34_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(17) & (\InputCleaner|DebounceKey0|Add0~33\ & VCC)) # (!\InputCleaner|DebounceKey0|s_debounceCnt\(17) & (!\InputCleaner|DebounceKey0|Add0~33\))
-- \InputCleaner|DebounceKey0|Add0~35\ = CARRY((!\InputCleaner|DebounceKey0|s_debounceCnt\(17) & !\InputCleaner|DebounceKey0|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(17),
	datad => VCC,
	cin => \InputCleaner|DebounceKey0|Add0~33\,
	combout => \InputCleaner|DebounceKey0|Add0~34_combout\,
	cout => \InputCleaner|DebounceKey0|Add0~35\);

-- Location: LCCOMB_X76_Y36_N24
\InputCleaner|DebounceKey0|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt~8_combout\ = (\InputCleaner|DebounceKey0|Add0~34_combout\ & \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|Add0~34_combout\,
	datad => \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt~8_combout\);

-- Location: FF_X76_Y36_N25
\InputCleaner|DebounceKey0|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_debounceCnt~8_combout\,
	ena => \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_debounceCnt\(17));

-- Location: LCCOMB_X76_Y36_N14
\InputCleaner|DebounceKey0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|Add0~36_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(18) & ((GND) # (!\InputCleaner|DebounceKey0|Add0~35\))) # (!\InputCleaner|DebounceKey0|s_debounceCnt\(18) & (\InputCleaner|DebounceKey0|Add0~35\ $ (GND)))
-- \InputCleaner|DebounceKey0|Add0~37\ = CARRY((\InputCleaner|DebounceKey0|s_debounceCnt\(18)) # (!\InputCleaner|DebounceKey0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(18),
	datad => VCC,
	cin => \InputCleaner|DebounceKey0|Add0~35\,
	combout => \InputCleaner|DebounceKey0|Add0~36_combout\,
	cout => \InputCleaner|DebounceKey0|Add0~37\);

-- Location: LCCOMB_X77_Y36_N0
\InputCleaner|DebounceKey0|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt[18]~19_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\ & (\InputCleaner|DebounceKey0|s_debounceCnt[5]~2_combout\ & ((\InputCleaner|DebounceKey0|Add0~36_combout\) # 
-- (!\InputCleaner|DebounceKey0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_previousIn~q\,
	datab => \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\,
	datac => \InputCleaner|DebounceKey0|Add0~36_combout\,
	datad => \InputCleaner|DebounceKey0|s_debounceCnt[5]~2_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt[18]~19_combout\);

-- Location: FF_X77_Y36_N1
\InputCleaner|DebounceKey0|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_debounceCnt\(18));

-- Location: LCCOMB_X76_Y36_N16
\InputCleaner|DebounceKey0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|Add0~38_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(19) & (\InputCleaner|DebounceKey0|Add0~37\ & VCC)) # (!\InputCleaner|DebounceKey0|s_debounceCnt\(19) & (!\InputCleaner|DebounceKey0|Add0~37\))
-- \InputCleaner|DebounceKey0|Add0~39\ = CARRY((!\InputCleaner|DebounceKey0|s_debounceCnt\(19) & !\InputCleaner|DebounceKey0|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(19),
	datad => VCC,
	cin => \InputCleaner|DebounceKey0|Add0~37\,
	combout => \InputCleaner|DebounceKey0|Add0~38_combout\,
	cout => \InputCleaner|DebounceKey0|Add0~39\);

-- Location: LCCOMB_X77_Y36_N26
\InputCleaner|DebounceKey0|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt[19]~20_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\ & (\InputCleaner|DebounceKey0|s_debounceCnt[5]~2_combout\ & ((\InputCleaner|DebounceKey0|Add0~38_combout\) # 
-- (!\InputCleaner|DebounceKey0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_previousIn~q\,
	datab => \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\,
	datac => \InputCleaner|DebounceKey0|Add0~38_combout\,
	datad => \InputCleaner|DebounceKey0|s_debounceCnt[5]~2_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt[19]~20_combout\);

-- Location: FF_X77_Y36_N27
\InputCleaner|DebounceKey0|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_debounceCnt\(19));

-- Location: LCCOMB_X76_Y36_N18
\InputCleaner|DebounceKey0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|Add0~40_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(20) & ((GND) # (!\InputCleaner|DebounceKey0|Add0~39\))) # (!\InputCleaner|DebounceKey0|s_debounceCnt\(20) & (\InputCleaner|DebounceKey0|Add0~39\ $ (GND)))
-- \InputCleaner|DebounceKey0|Add0~41\ = CARRY((\InputCleaner|DebounceKey0|s_debounceCnt\(20)) # (!\InputCleaner|DebounceKey0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_debounceCnt\(20),
	datad => VCC,
	cin => \InputCleaner|DebounceKey0|Add0~39\,
	combout => \InputCleaner|DebounceKey0|Add0~40_combout\,
	cout => \InputCleaner|DebounceKey0|Add0~41\);

-- Location: LCCOMB_X75_Y36_N8
\InputCleaner|DebounceKey0|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt[20]~9_combout\ = (\InputCleaner|DebounceKey0|Add0~40_combout\ & (\InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\ & \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey0|Add0~40_combout\,
	datac => \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\,
	datad => \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt[20]~9_combout\);

-- Location: FF_X75_Y36_N9
\InputCleaner|DebounceKey0|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_debounceCnt\(20));

-- Location: LCCOMB_X76_Y36_N20
\InputCleaner|DebounceKey0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|Add0~42_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(21) & (\InputCleaner|DebounceKey0|Add0~41\ & VCC)) # (!\InputCleaner|DebounceKey0|s_debounceCnt\(21) & (!\InputCleaner|DebounceKey0|Add0~41\))
-- \InputCleaner|DebounceKey0|Add0~43\ = CARRY((!\InputCleaner|DebounceKey0|s_debounceCnt\(21) & !\InputCleaner|DebounceKey0|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_debounceCnt\(21),
	datad => VCC,
	cin => \InputCleaner|DebounceKey0|Add0~41\,
	combout => \InputCleaner|DebounceKey0|Add0~42_combout\,
	cout => \InputCleaner|DebounceKey0|Add0~43\);

-- Location: LCCOMB_X75_Y36_N26
\InputCleaner|DebounceKey0|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt[21]~10_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\ & (\InputCleaner|DebounceKey0|Add0~42_combout\ & \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\,
	datac => \InputCleaner|DebounceKey0|Add0~42_combout\,
	datad => \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt[21]~10_combout\);

-- Location: FF_X75_Y36_N27
\InputCleaner|DebounceKey0|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_debounceCnt\(21));

-- Location: LCCOMB_X76_Y36_N30
\InputCleaner|DebounceKey0|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|LessThan0~3_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(15)) # ((\InputCleaner|DebounceKey0|s_debounceCnt\(16)) # (\InputCleaner|DebounceKey0|s_debounceCnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(15),
	datac => \InputCleaner|DebounceKey0|s_debounceCnt\(16),
	datad => \InputCleaner|DebounceKey0|s_debounceCnt\(17),
	combout => \InputCleaner|DebounceKey0|LessThan0~3_combout\);

-- Location: LCCOMB_X74_Y36_N20
\InputCleaner|DebounceKey0|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_pulsedOut~8_combout\ = (!\InputCleaner|DebounceKey0|s_debounceCnt\(5) & \InputCleaner|DebounceKey0|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey0|s_debounceCnt\(5),
	datad => \InputCleaner|DebounceKey0|s_pulsedOut~7_combout\,
	combout => \InputCleaner|DebounceKey0|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X75_Y36_N18
\InputCleaner|DebounceKey0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|LessThan0~0_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(7)) # ((\InputCleaner|DebounceKey0|s_debounceCnt\(6) & ((\InputCleaner|DebounceKey0|s_debounceCnt\(0)) # (!\InputCleaner|DebounceKey0|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_debounceCnt\(7),
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(0),
	datac => \InputCleaner|DebounceKey0|s_debounceCnt\(6),
	datad => \InputCleaner|DebounceKey0|s_pulsedOut~8_combout\,
	combout => \InputCleaner|DebounceKey0|LessThan0~0_combout\);

-- Location: LCCOMB_X75_Y36_N0
\InputCleaner|DebounceKey0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|LessThan0~1_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(10)) # ((\InputCleaner|DebounceKey0|s_debounceCnt\(8) & (\InputCleaner|DebounceKey0|s_debounceCnt\(9) & \InputCleaner|DebounceKey0|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_debounceCnt\(8),
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(10),
	datac => \InputCleaner|DebounceKey0|s_debounceCnt\(9),
	datad => \InputCleaner|DebounceKey0|LessThan0~0_combout\,
	combout => \InputCleaner|DebounceKey0|LessThan0~1_combout\);

-- Location: LCCOMB_X75_Y36_N2
\InputCleaner|DebounceKey0|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|LessThan0~2_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(13)) # ((\InputCleaner|DebounceKey0|s_debounceCnt\(12)) # ((\InputCleaner|DebounceKey0|s_debounceCnt\(11) & \InputCleaner|DebounceKey0|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_debounceCnt\(13),
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(12),
	datac => \InputCleaner|DebounceKey0|s_debounceCnt\(11),
	datad => \InputCleaner|DebounceKey0|LessThan0~1_combout\,
	combout => \InputCleaner|DebounceKey0|LessThan0~2_combout\);

-- Location: LCCOMB_X75_Y36_N12
\InputCleaner|DebounceKey0|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|LessThan0~4_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(18) & ((\InputCleaner|DebounceKey0|LessThan0~3_combout\) # ((\InputCleaner|DebounceKey0|s_debounceCnt\(14) & \InputCleaner|DebounceKey0|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_debounceCnt\(14),
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(18),
	datac => \InputCleaner|DebounceKey0|LessThan0~3_combout\,
	datad => \InputCleaner|DebounceKey0|LessThan0~2_combout\,
	combout => \InputCleaner|DebounceKey0|LessThan0~4_combout\);

-- Location: LCCOMB_X75_Y36_N10
\InputCleaner|DebounceKey0|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|LessThan0~5_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(21)) # ((\InputCleaner|DebounceKey0|s_debounceCnt\(20)) # ((\InputCleaner|DebounceKey0|s_debounceCnt\(19) & \InputCleaner|DebounceKey0|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_debounceCnt\(21),
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(19),
	datac => \InputCleaner|DebounceKey0|s_debounceCnt\(20),
	datad => \InputCleaner|DebounceKey0|LessThan0~4_combout\,
	combout => \InputCleaner|DebounceKey0|LessThan0~5_combout\);

-- Location: LCCOMB_X75_Y36_N24
\InputCleaner|DebounceKey0|s_debounceCnt[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\ = (\InputCleaner|DebounceKey0|s_previousIn~q\ & (\InputCleaner|DebounceKey0|s_dirtyIn~q\ & ((!\InputCleaner|DebounceKey0|LessThan0~5_combout\) # (!\InputCleaner|DebounceKey0|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_previousIn~q\,
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(22),
	datac => \InputCleaner|DebounceKey0|s_dirtyIn~q\,
	datad => \InputCleaner|DebounceKey0|LessThan0~5_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\);

-- Location: LCCOMB_X75_Y36_N22
\InputCleaner|DebounceKey0|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt~26_combout\ = (\InputCleaner|DebounceKey0|Add0~0_combout\ & \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey0|Add0~0_combout\,
	datad => \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt~26_combout\);

-- Location: FF_X75_Y36_N23
\InputCleaner|DebounceKey0|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_debounceCnt~26_combout\,
	ena => \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_debounceCnt\(0));

-- Location: LCCOMB_X76_Y37_N12
\InputCleaner|DebounceKey0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|Add0~2_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(1) & (\InputCleaner|DebounceKey0|Add0~1\ & VCC)) # (!\InputCleaner|DebounceKey0|s_debounceCnt\(1) & (!\InputCleaner|DebounceKey0|Add0~1\))
-- \InputCleaner|DebounceKey0|Add0~3\ = CARRY((!\InputCleaner|DebounceKey0|s_debounceCnt\(1) & !\InputCleaner|DebounceKey0|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_debounceCnt\(1),
	datad => VCC,
	cin => \InputCleaner|DebounceKey0|Add0~1\,
	combout => \InputCleaner|DebounceKey0|Add0~2_combout\,
	cout => \InputCleaner|DebounceKey0|Add0~3\);

-- Location: LCCOMB_X74_Y36_N16
\InputCleaner|DebounceKey0|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt~21_combout\ = (\InputCleaner|DebounceKey0|Add0~2_combout\ & \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey0|Add0~2_combout\,
	datad => \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt~21_combout\);

-- Location: FF_X74_Y36_N17
\InputCleaner|DebounceKey0|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_debounceCnt~21_combout\,
	ena => \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_debounceCnt\(1));

-- Location: LCCOMB_X76_Y37_N14
\InputCleaner|DebounceKey0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|Add0~4_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(2) & ((GND) # (!\InputCleaner|DebounceKey0|Add0~3\))) # (!\InputCleaner|DebounceKey0|s_debounceCnt\(2) & (\InputCleaner|DebounceKey0|Add0~3\ $ (GND)))
-- \InputCleaner|DebounceKey0|Add0~5\ = CARRY((\InputCleaner|DebounceKey0|s_debounceCnt\(2)) # (!\InputCleaner|DebounceKey0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(2),
	datad => VCC,
	cin => \InputCleaner|DebounceKey0|Add0~3\,
	combout => \InputCleaner|DebounceKey0|Add0~4_combout\,
	cout => \InputCleaner|DebounceKey0|Add0~5\);

-- Location: LCCOMB_X74_Y36_N14
\InputCleaner|DebounceKey0|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt~22_combout\ = (\InputCleaner|DebounceKey0|Add0~4_combout\ & \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey0|Add0~4_combout\,
	datad => \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt~22_combout\);

-- Location: FF_X74_Y36_N15
\InputCleaner|DebounceKey0|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_debounceCnt~22_combout\,
	ena => \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_debounceCnt\(2));

-- Location: LCCOMB_X74_Y36_N12
\InputCleaner|DebounceKey0|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt~23_combout\ = (\InputCleaner|DebounceKey0|Add0~6_combout\ & \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InputCleaner|DebounceKey0|Add0~6_combout\,
	datad => \InputCleaner|DebounceKey0|s_debounceCnt[5]~5_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt~23_combout\);

-- Location: FF_X74_Y36_N13
\InputCleaner|DebounceKey0|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_debounceCnt~23_combout\,
	ena => \InputCleaner|DebounceKey0|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_debounceCnt\(3));

-- Location: LCCOMB_X74_Y36_N24
\InputCleaner|DebounceKey0|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_pulsedOut~7_combout\ = (!\InputCleaner|DebounceKey0|s_debounceCnt\(3) & (!\InputCleaner|DebounceKey0|s_debounceCnt\(2) & (!\InputCleaner|DebounceKey0|s_debounceCnt\(4) & !\InputCleaner|DebounceKey0|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_debounceCnt\(3),
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(2),
	datac => \InputCleaner|DebounceKey0|s_debounceCnt\(4),
	datad => \InputCleaner|DebounceKey0|s_debounceCnt\(1),
	combout => \InputCleaner|DebounceKey0|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X77_Y36_N12
\InputCleaner|DebounceKey0|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_pulsedOut~5_combout\ = (!\InputCleaner|DebounceKey0|s_debounceCnt\(19) & (!\InputCleaner|DebounceKey0|s_debounceCnt\(18) & (!\InputCleaner|DebounceKey0|s_debounceCnt\(11) & !\InputCleaner|DebounceKey0|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_debounceCnt\(19),
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(18),
	datac => \InputCleaner|DebounceKey0|s_debounceCnt\(11),
	datad => \InputCleaner|DebounceKey0|s_debounceCnt\(14),
	combout => \InputCleaner|DebounceKey0|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X77_Y36_N8
\InputCleaner|DebounceKey0|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_pulsedOut~2_combout\ = (!\InputCleaner|DebounceKey0|s_debounceCnt\(16) & (!\InputCleaner|DebounceKey0|s_debounceCnt\(15) & (!\InputCleaner|DebounceKey0|s_debounceCnt\(6) & !\InputCleaner|DebounceKey0|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_debounceCnt\(16),
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(15),
	datac => \InputCleaner|DebounceKey0|s_debounceCnt\(6),
	datad => \InputCleaner|DebounceKey0|s_debounceCnt\(17),
	combout => \InputCleaner|DebounceKey0|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X77_Y36_N22
\InputCleaner|DebounceKey0|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_pulsedOut~4_combout\ = (!\InputCleaner|DebounceKey0|s_debounceCnt\(7) & (!\InputCleaner|DebounceKey0|s_debounceCnt\(9) & (!\InputCleaner|DebounceKey0|s_debounceCnt\(10) & !\InputCleaner|DebounceKey0|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_debounceCnt\(7),
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(9),
	datac => \InputCleaner|DebounceKey0|s_debounceCnt\(10),
	datad => \InputCleaner|DebounceKey0|s_debounceCnt\(8),
	combout => \InputCleaner|DebounceKey0|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X75_Y36_N16
\InputCleaner|DebounceKey0|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_pulsedOut~3_combout\ = (!\InputCleaner|DebounceKey0|s_debounceCnt\(21) & (!\InputCleaner|DebounceKey0|s_debounceCnt\(12) & (!\InputCleaner|DebounceKey0|s_debounceCnt\(20) & !\InputCleaner|DebounceKey0|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_debounceCnt\(21),
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(12),
	datac => \InputCleaner|DebounceKey0|s_debounceCnt\(20),
	datad => \InputCleaner|DebounceKey0|s_debounceCnt\(13),
	combout => \InputCleaner|DebounceKey0|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X77_Y36_N18
\InputCleaner|DebounceKey0|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_pulsedOut~6_combout\ = (\InputCleaner|DebounceKey0|s_pulsedOut~5_combout\ & (\InputCleaner|DebounceKey0|s_pulsedOut~2_combout\ & (\InputCleaner|DebounceKey0|s_pulsedOut~4_combout\ & 
-- \InputCleaner|DebounceKey0|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_pulsedOut~5_combout\,
	datab => \InputCleaner|DebounceKey0|s_pulsedOut~2_combout\,
	datac => \InputCleaner|DebounceKey0|s_pulsedOut~4_combout\,
	datad => \InputCleaner|DebounceKey0|s_pulsedOut~3_combout\,
	combout => \InputCleaner|DebounceKey0|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X77_Y36_N2
\InputCleaner|DebounceKey0|s_debounceCnt[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt[5]~29_combout\ = ((\InputCleaner|DebounceKey0|s_debounceCnt\(5)) # ((\InputCleaner|DebounceKey0|s_debounceCnt\(0)) # (!\InputCleaner|DebounceKey0|s_pulsedOut~6_combout\))) # 
-- (!\InputCleaner|DebounceKey0|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_pulsedOut~7_combout\,
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(5),
	datac => \InputCleaner|DebounceKey0|s_debounceCnt\(0),
	datad => \InputCleaner|DebounceKey0|s_pulsedOut~6_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt[5]~29_combout\);

-- Location: LCCOMB_X75_Y36_N14
\InputCleaner|DebounceKey0|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt[22]~27_combout\ = (\InputCleaner|DebounceKey0|s_debounceCnt\(22) & (((!\InputCleaner|DebounceKey0|LessThan0~5_combout\)))) # (!\InputCleaner|DebounceKey0|s_debounceCnt\(22) & 
-- (((\InputCleaner|DebounceKey0|s_debounceCnt[5]~29_combout\)) # (!\InputCleaner|DebounceKey0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_previousIn~q\,
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(22),
	datac => \InputCleaner|DebounceKey0|s_debounceCnt[5]~29_combout\,
	datad => \InputCleaner|DebounceKey0|LessThan0~5_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X76_Y36_N22
\InputCleaner|DebounceKey0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|Add0~44_combout\ = \InputCleaner|DebounceKey0|Add0~43\ $ (\InputCleaner|DebounceKey0|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \InputCleaner|DebounceKey0|s_debounceCnt\(22),
	cin => \InputCleaner|DebounceKey0|Add0~43\,
	combout => \InputCleaner|DebounceKey0|Add0~44_combout\);

-- Location: LCCOMB_X75_Y36_N28
\InputCleaner|DebounceKey0|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_debounceCnt[22]~28_combout\ = (\InputCleaner|DebounceKey0|s_dirtyIn~q\ & (\InputCleaner|DebounceKey0|s_debounceCnt[22]~27_combout\ & ((\InputCleaner|DebounceKey0|Add0~44_combout\) # 
-- (!\InputCleaner|DebounceKey0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_previousIn~q\,
	datab => \InputCleaner|DebounceKey0|s_dirtyIn~q\,
	datac => \InputCleaner|DebounceKey0|s_debounceCnt[22]~27_combout\,
	datad => \InputCleaner|DebounceKey0|Add0~44_combout\,
	combout => \InputCleaner|DebounceKey0|s_debounceCnt[22]~28_combout\);

-- Location: FF_X75_Y36_N29
\InputCleaner|DebounceKey0|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_debounceCnt\(22));

-- Location: LCCOMB_X77_Y36_N10
\InputCleaner|DebounceKey0|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_pulsedOut~9_combout\ = (\InputCleaner|DebounceKey0|s_dirtyIn~q\ & (!\InputCleaner|DebounceKey0|s_debounceCnt\(22) & (\InputCleaner|DebounceKey0|s_debounceCnt\(0) & \InputCleaner|DebounceKey0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_dirtyIn~q\,
	datab => \InputCleaner|DebounceKey0|s_debounceCnt\(22),
	datac => \InputCleaner|DebounceKey0|s_debounceCnt\(0),
	datad => \InputCleaner|DebounceKey0|s_previousIn~q\,
	combout => \InputCleaner|DebounceKey0|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X77_Y36_N24
\InputCleaner|DebounceKey0|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|DebounceKey0|s_pulsedOut~10_combout\ = (\InputCleaner|DebounceKey0|s_pulsedOut~9_combout\ & (\InputCleaner|DebounceKey0|s_pulsedOut~6_combout\ & (!\InputCleaner|DebounceKey0|s_debounceCnt\(5) & 
-- \InputCleaner|DebounceKey0|s_pulsedOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_pulsedOut~9_combout\,
	datab => \InputCleaner|DebounceKey0|s_pulsedOut~6_combout\,
	datac => \InputCleaner|DebounceKey0|s_debounceCnt\(5),
	datad => \InputCleaner|DebounceKey0|s_pulsedOut~7_combout\,
	combout => \InputCleaner|DebounceKey0|s_pulsedOut~10_combout\);

-- Location: FF_X77_Y36_N25
\InputCleaner|DebounceKey0|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|DebounceKey0|s_pulsedOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|DebounceKey0|s_pulsedOut~q\);

-- Location: LCCOMB_X76_Y33_N20
\StateController|debugStateVector[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|debugStateVector[1]~0_combout\ = (!\InputCleaner|DebounceKey1|s_pulsedOut~q\ & !\InputCleaner|DebounceKey2|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey1|s_pulsedOut~q\,
	datad => \InputCleaner|DebounceKey2|s_pulsedOut~q\,
	combout => \StateController|debugStateVector[1]~0_combout\);

-- Location: LCCOMB_X77_Y33_N14
\StateController|currState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|currState~10_combout\ = (!\StateController|currState.t_RUNNING~q\ & (\StateController|currState.t_RAMRESET~q\ & \StateController|LessThan0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateController|currState.t_RUNNING~q\,
	datac => \StateController|currState.t_RAMRESET~q\,
	datad => \StateController|LessThan0~7_combout\,
	combout => \StateController|currState~10_combout\);

-- Location: LCCOMB_X77_Y33_N26
\StateController|currState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|currState~12_combout\ = (\InputCleaner|DebounceKey0|s_pulsedOut~q\ & (!\StateController|currState~11_combout\ & (\StateController|currState~10_combout\))) # (!\InputCleaner|DebounceKey0|s_pulsedOut~q\ & 
-- ((\StateController|currState.t_RUNNING~q\) # ((!\StateController|currState~11_combout\ & \StateController|currState~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_pulsedOut~q\,
	datab => \StateController|currState~11_combout\,
	datac => \StateController|currState~10_combout\,
	datad => \StateController|currState.t_RUNNING~q\,
	combout => \StateController|currState~12_combout\);

-- Location: LCCOMB_X77_Y33_N30
\StateController|currState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|currState~13_combout\ = (\StateController|debugStateVector[1]~0_combout\ & ((\StateController|currState.t_STOPPED~q\ & (\InputCleaner|DebounceKey0|s_pulsedOut~q\)) # (!\StateController|currState.t_STOPPED~q\ & 
-- ((\StateController|currState~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_pulsedOut~q\,
	datab => \StateController|currState.t_STOPPED~q\,
	datac => \StateController|currState~12_combout\,
	datad => \StateController|debugStateVector[1]~0_combout\,
	combout => \StateController|currState~13_combout\);

-- Location: FF_X77_Y33_N31
\StateController|currState.t_RUNNING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|currState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|currState.t_RUNNING~q\);

-- Location: LCCOMB_X77_Y33_N22
\StateController|keepRunningState.t_RUNNING~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|keepRunningState.t_RUNNING~0_combout\ = (\InputCleaner|DebounceKey2|s_pulsedOut~q\ & (((\StateController|keepRunningState.t_RUNNING~q\)))) # (!\InputCleaner|DebounceKey2|s_pulsedOut~q\ & ((\InputCleaner|DebounceKey1|s_pulsedOut~q\ & 
-- (\StateController|currState.t_RUNNING~q\)) # (!\InputCleaner|DebounceKey1|s_pulsedOut~q\ & ((\StateController|keepRunningState.t_RUNNING~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey2|s_pulsedOut~q\,
	datab => \StateController|currState.t_RUNNING~q\,
	datac => \StateController|keepRunningState.t_RUNNING~q\,
	datad => \InputCleaner|DebounceKey1|s_pulsedOut~q\,
	combout => \StateController|keepRunningState.t_RUNNING~0_combout\);

-- Location: FF_X77_Y33_N23
\StateController|keepRunningState.t_RUNNING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|keepRunningState.t_RUNNING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|keepRunningState.t_RUNNING~q\);

-- Location: LCCOMB_X77_Y33_N18
\StateController|firstExec~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|firstExec~0_combout\ = (\StateController|debugStateVector[1]~0_combout\ & (\StateController|LessThan0~7_combout\ & ((\StateController|currState.t_RAMRESET~q\) # (!\StateController|currState.t_GLOBALRESET~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateController|currState.t_GLOBALRESET~q\,
	datab => \StateController|debugStateVector[1]~0_combout\,
	datac => \StateController|currState.t_RAMRESET~q\,
	datad => \StateController|LessThan0~7_combout\,
	combout => \StateController|firstExec~0_combout\);

-- Location: LCCOMB_X77_Y33_N16
\StateController|firstExec~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|firstExec~1_combout\ = (\StateController|firstExec~0_combout\ & (\StateController|currState.t_GLOBALRESET~q\)) # (!\StateController|firstExec~0_combout\ & ((\StateController|firstExec~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateController|currState.t_GLOBALRESET~q\,
	datac => \StateController|firstExec~q\,
	datad => \StateController|firstExec~0_combout\,
	combout => \StateController|firstExec~1_combout\);

-- Location: FF_X77_Y33_N17
\StateController|firstExec\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|firstExec~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|firstExec~q\);

-- Location: LCCOMB_X77_Y33_N28
\StateController|currState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|currState~11_combout\ = (!\StateController|keepRunningState.t_RUNNING~q\ & \StateController|firstExec~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \StateController|keepRunningState.t_RUNNING~q\,
	datad => \StateController|firstExec~q\,
	combout => \StateController|currState~11_combout\);

-- Location: LCCOMB_X77_Y33_N24
\StateController|currState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|currState~14_combout\ = (\InputCleaner|DebounceKey0|s_pulsedOut~q\ & ((\StateController|currState.t_RUNNING~q\) # ((\StateController|currState~11_combout\ & \StateController|currState~10_combout\)))) # 
-- (!\InputCleaner|DebounceKey0|s_pulsedOut~q\ & (\StateController|currState~11_combout\ & (\StateController|currState~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_pulsedOut~q\,
	datab => \StateController|currState~11_combout\,
	datac => \StateController|currState~10_combout\,
	datad => \StateController|currState.t_RUNNING~q\,
	combout => \StateController|currState~14_combout\);

-- Location: LCCOMB_X77_Y33_N20
\StateController|currState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|currState~15_combout\ = (\StateController|debugStateVector[1]~0_combout\ & ((\StateController|currState.t_STOPPED~q\ & (!\InputCleaner|DebounceKey0|s_pulsedOut~q\)) # (!\StateController|currState.t_STOPPED~q\ & 
-- ((\StateController|currState~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InputCleaner|DebounceKey0|s_pulsedOut~q\,
	datab => \StateController|debugStateVector[1]~0_combout\,
	datac => \StateController|currState.t_STOPPED~q\,
	datad => \StateController|currState~14_combout\,
	combout => \StateController|currState~15_combout\);

-- Location: FF_X77_Y33_N21
\StateController|currState.t_STOPPED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|currState~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|currState.t_STOPPED~q\);

-- Location: LCCOMB_X76_Y33_N0
\StateController|cycleDelay[1]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[1]~52_combout\ = (\StateController|currState.t_STOPPED~q\) # (\StateController|currState.t_RUNNING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateController|currState.t_STOPPED~q\,
	datac => \StateController|currState.t_RUNNING~q\,
	combout => \StateController|cycleDelay[1]~52_combout\);

-- Location: LCCOMB_X76_Y33_N2
\StateController|cycleDelay[1]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[1]~53_combout\ = ((!\StateController|cycleDelay[1]~52_combout\ & ((!\StateController|LessThan0~7_combout\) # (!\StateController|currState.t_RAMRESET~q\)))) # (!\StateController|debugStateVector[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateController|currState.t_RAMRESET~q\,
	datab => \StateController|cycleDelay[1]~52_combout\,
	datac => \StateController|LessThan0~7_combout\,
	datad => \StateController|debugStateVector[1]~0_combout\,
	combout => \StateController|cycleDelay[1]~53_combout\);

-- Location: FF_X75_Y34_N1
\StateController|cycleDelay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[0]~34_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(0));

-- Location: LCCOMB_X75_Y34_N2
\StateController|cycleDelay[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[1]~36_combout\ = (\StateController|cycleDelay\(1) & (!\StateController|cycleDelay[0]~35\)) # (!\StateController|cycleDelay\(1) & ((\StateController|cycleDelay[0]~35\) # (GND)))
-- \StateController|cycleDelay[1]~37\ = CARRY((!\StateController|cycleDelay[0]~35\) # (!\StateController|cycleDelay\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StateController|cycleDelay\(1),
	datad => VCC,
	cin => \StateController|cycleDelay[0]~35\,
	combout => \StateController|cycleDelay[1]~36_combout\,
	cout => \StateController|cycleDelay[1]~37\);

-- Location: FF_X75_Y34_N3
\StateController|cycleDelay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[1]~36_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(1));

-- Location: LCCOMB_X75_Y34_N4
\StateController|cycleDelay[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[2]~38_combout\ = (\StateController|cycleDelay\(2) & (\StateController|cycleDelay[1]~37\ $ (GND))) # (!\StateController|cycleDelay\(2) & (!\StateController|cycleDelay[1]~37\ & VCC))
-- \StateController|cycleDelay[2]~39\ = CARRY((\StateController|cycleDelay\(2) & !\StateController|cycleDelay[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StateController|cycleDelay\(2),
	datad => VCC,
	cin => \StateController|cycleDelay[1]~37\,
	combout => \StateController|cycleDelay[2]~38_combout\,
	cout => \StateController|cycleDelay[2]~39\);

-- Location: FF_X75_Y34_N5
\StateController|cycleDelay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[2]~38_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(2));

-- Location: LCCOMB_X75_Y34_N6
\StateController|cycleDelay[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[3]~40_combout\ = (\StateController|cycleDelay\(3) & (!\StateController|cycleDelay[2]~39\)) # (!\StateController|cycleDelay\(3) & ((\StateController|cycleDelay[2]~39\) # (GND)))
-- \StateController|cycleDelay[3]~41\ = CARRY((!\StateController|cycleDelay[2]~39\) # (!\StateController|cycleDelay\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StateController|cycleDelay\(3),
	datad => VCC,
	cin => \StateController|cycleDelay[2]~39\,
	combout => \StateController|cycleDelay[3]~40_combout\,
	cout => \StateController|cycleDelay[3]~41\);

-- Location: FF_X75_Y34_N7
\StateController|cycleDelay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[3]~40_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(3));

-- Location: LCCOMB_X75_Y34_N8
\StateController|cycleDelay[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[4]~42_combout\ = (\StateController|cycleDelay\(4) & (\StateController|cycleDelay[3]~41\ $ (GND))) # (!\StateController|cycleDelay\(4) & (!\StateController|cycleDelay[3]~41\ & VCC))
-- \StateController|cycleDelay[4]~43\ = CARRY((\StateController|cycleDelay\(4) & !\StateController|cycleDelay[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StateController|cycleDelay\(4),
	datad => VCC,
	cin => \StateController|cycleDelay[3]~41\,
	combout => \StateController|cycleDelay[4]~42_combout\,
	cout => \StateController|cycleDelay[4]~43\);

-- Location: FF_X75_Y34_N9
\StateController|cycleDelay[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[4]~42_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(4));

-- Location: LCCOMB_X75_Y34_N10
\StateController|cycleDelay[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[5]~44_combout\ = (\StateController|cycleDelay\(5) & (!\StateController|cycleDelay[4]~43\)) # (!\StateController|cycleDelay\(5) & ((\StateController|cycleDelay[4]~43\) # (GND)))
-- \StateController|cycleDelay[5]~45\ = CARRY((!\StateController|cycleDelay[4]~43\) # (!\StateController|cycleDelay\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StateController|cycleDelay\(5),
	datad => VCC,
	cin => \StateController|cycleDelay[4]~43\,
	combout => \StateController|cycleDelay[5]~44_combout\,
	cout => \StateController|cycleDelay[5]~45\);

-- Location: FF_X75_Y34_N11
\StateController|cycleDelay[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[5]~44_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(5));

-- Location: LCCOMB_X75_Y34_N12
\StateController|cycleDelay[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[6]~46_combout\ = (\StateController|cycleDelay\(6) & (\StateController|cycleDelay[5]~45\ $ (GND))) # (!\StateController|cycleDelay\(6) & (!\StateController|cycleDelay[5]~45\ & VCC))
-- \StateController|cycleDelay[6]~47\ = CARRY((\StateController|cycleDelay\(6) & !\StateController|cycleDelay[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StateController|cycleDelay\(6),
	datad => VCC,
	cin => \StateController|cycleDelay[5]~45\,
	combout => \StateController|cycleDelay[6]~46_combout\,
	cout => \StateController|cycleDelay[6]~47\);

-- Location: FF_X75_Y34_N13
\StateController|cycleDelay[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[6]~46_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(6));

-- Location: LCCOMB_X75_Y34_N14
\StateController|cycleDelay[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[7]~48_combout\ = (\StateController|cycleDelay\(7) & (!\StateController|cycleDelay[6]~47\)) # (!\StateController|cycleDelay\(7) & ((\StateController|cycleDelay[6]~47\) # (GND)))
-- \StateController|cycleDelay[7]~49\ = CARRY((!\StateController|cycleDelay[6]~47\) # (!\StateController|cycleDelay\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StateController|cycleDelay\(7),
	datad => VCC,
	cin => \StateController|cycleDelay[6]~47\,
	combout => \StateController|cycleDelay[7]~48_combout\,
	cout => \StateController|cycleDelay[7]~49\);

-- Location: FF_X75_Y34_N15
\StateController|cycleDelay[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[7]~48_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(7));

-- Location: LCCOMB_X75_Y34_N16
\StateController|cycleDelay[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[8]~50_combout\ = (\StateController|cycleDelay\(8) & (\StateController|cycleDelay[7]~49\ $ (GND))) # (!\StateController|cycleDelay\(8) & (!\StateController|cycleDelay[7]~49\ & VCC))
-- \StateController|cycleDelay[8]~51\ = CARRY((\StateController|cycleDelay\(8) & !\StateController|cycleDelay[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StateController|cycleDelay\(8),
	datad => VCC,
	cin => \StateController|cycleDelay[7]~49\,
	combout => \StateController|cycleDelay[8]~50_combout\,
	cout => \StateController|cycleDelay[8]~51\);

-- Location: FF_X75_Y34_N17
\StateController|cycleDelay[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[8]~50_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(8));

-- Location: LCCOMB_X75_Y34_N18
\StateController|cycleDelay[9]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[9]~54_combout\ = (\StateController|cycleDelay\(9) & (!\StateController|cycleDelay[8]~51\)) # (!\StateController|cycleDelay\(9) & ((\StateController|cycleDelay[8]~51\) # (GND)))
-- \StateController|cycleDelay[9]~55\ = CARRY((!\StateController|cycleDelay[8]~51\) # (!\StateController|cycleDelay\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StateController|cycleDelay\(9),
	datad => VCC,
	cin => \StateController|cycleDelay[8]~51\,
	combout => \StateController|cycleDelay[9]~54_combout\,
	cout => \StateController|cycleDelay[9]~55\);

-- Location: FF_X75_Y34_N19
\StateController|cycleDelay[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[9]~54_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(9));

-- Location: LCCOMB_X75_Y34_N20
\StateController|cycleDelay[10]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[10]~56_combout\ = (\StateController|cycleDelay\(10) & (\StateController|cycleDelay[9]~55\ $ (GND))) # (!\StateController|cycleDelay\(10) & (!\StateController|cycleDelay[9]~55\ & VCC))
-- \StateController|cycleDelay[10]~57\ = CARRY((\StateController|cycleDelay\(10) & !\StateController|cycleDelay[9]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StateController|cycleDelay\(10),
	datad => VCC,
	cin => \StateController|cycleDelay[9]~55\,
	combout => \StateController|cycleDelay[10]~56_combout\,
	cout => \StateController|cycleDelay[10]~57\);

-- Location: FF_X75_Y34_N21
\StateController|cycleDelay[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[10]~56_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(10));

-- Location: LCCOMB_X75_Y34_N22
\StateController|cycleDelay[11]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[11]~58_combout\ = (\StateController|cycleDelay\(11) & (!\StateController|cycleDelay[10]~57\)) # (!\StateController|cycleDelay\(11) & ((\StateController|cycleDelay[10]~57\) # (GND)))
-- \StateController|cycleDelay[11]~59\ = CARRY((!\StateController|cycleDelay[10]~57\) # (!\StateController|cycleDelay\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StateController|cycleDelay\(11),
	datad => VCC,
	cin => \StateController|cycleDelay[10]~57\,
	combout => \StateController|cycleDelay[11]~58_combout\,
	cout => \StateController|cycleDelay[11]~59\);

-- Location: FF_X75_Y34_N23
\StateController|cycleDelay[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[11]~58_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(11));

-- Location: LCCOMB_X75_Y34_N24
\StateController|cycleDelay[12]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[12]~60_combout\ = (\StateController|cycleDelay\(12) & (\StateController|cycleDelay[11]~59\ $ (GND))) # (!\StateController|cycleDelay\(12) & (!\StateController|cycleDelay[11]~59\ & VCC))
-- \StateController|cycleDelay[12]~61\ = CARRY((\StateController|cycleDelay\(12) & !\StateController|cycleDelay[11]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StateController|cycleDelay\(12),
	datad => VCC,
	cin => \StateController|cycleDelay[11]~59\,
	combout => \StateController|cycleDelay[12]~60_combout\,
	cout => \StateController|cycleDelay[12]~61\);

-- Location: FF_X75_Y34_N25
\StateController|cycleDelay[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[12]~60_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(12));

-- Location: LCCOMB_X75_Y34_N26
\StateController|cycleDelay[13]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[13]~62_combout\ = (\StateController|cycleDelay\(13) & (!\StateController|cycleDelay[12]~61\)) # (!\StateController|cycleDelay\(13) & ((\StateController|cycleDelay[12]~61\) # (GND)))
-- \StateController|cycleDelay[13]~63\ = CARRY((!\StateController|cycleDelay[12]~61\) # (!\StateController|cycleDelay\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StateController|cycleDelay\(13),
	datad => VCC,
	cin => \StateController|cycleDelay[12]~61\,
	combout => \StateController|cycleDelay[13]~62_combout\,
	cout => \StateController|cycleDelay[13]~63\);

-- Location: FF_X75_Y34_N27
\StateController|cycleDelay[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[13]~62_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(13));

-- Location: LCCOMB_X75_Y34_N28
\StateController|cycleDelay[14]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[14]~64_combout\ = (\StateController|cycleDelay\(14) & (\StateController|cycleDelay[13]~63\ $ (GND))) # (!\StateController|cycleDelay\(14) & (!\StateController|cycleDelay[13]~63\ & VCC))
-- \StateController|cycleDelay[14]~65\ = CARRY((\StateController|cycleDelay\(14) & !\StateController|cycleDelay[13]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StateController|cycleDelay\(14),
	datad => VCC,
	cin => \StateController|cycleDelay[13]~63\,
	combout => \StateController|cycleDelay[14]~64_combout\,
	cout => \StateController|cycleDelay[14]~65\);

-- Location: FF_X75_Y34_N29
\StateController|cycleDelay[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[14]~64_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(14));

-- Location: LCCOMB_X75_Y34_N30
\StateController|cycleDelay[15]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[15]~66_combout\ = (\StateController|cycleDelay\(15) & (!\StateController|cycleDelay[14]~65\)) # (!\StateController|cycleDelay\(15) & ((\StateController|cycleDelay[14]~65\) # (GND)))
-- \StateController|cycleDelay[15]~67\ = CARRY((!\StateController|cycleDelay[14]~65\) # (!\StateController|cycleDelay\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StateController|cycleDelay\(15),
	datad => VCC,
	cin => \StateController|cycleDelay[14]~65\,
	combout => \StateController|cycleDelay[15]~66_combout\,
	cout => \StateController|cycleDelay[15]~67\);

-- Location: FF_X75_Y34_N31
\StateController|cycleDelay[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[15]~66_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(15));

-- Location: LCCOMB_X75_Y33_N0
\StateController|cycleDelay[16]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[16]~68_combout\ = (\StateController|cycleDelay\(16) & (\StateController|cycleDelay[15]~67\ $ (GND))) # (!\StateController|cycleDelay\(16) & (!\StateController|cycleDelay[15]~67\ & VCC))
-- \StateController|cycleDelay[16]~69\ = CARRY((\StateController|cycleDelay\(16) & !\StateController|cycleDelay[15]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StateController|cycleDelay\(16),
	datad => VCC,
	cin => \StateController|cycleDelay[15]~67\,
	combout => \StateController|cycleDelay[16]~68_combout\,
	cout => \StateController|cycleDelay[16]~69\);

-- Location: FF_X75_Y33_N1
\StateController|cycleDelay[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[16]~68_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(16));

-- Location: LCCOMB_X75_Y33_N2
\StateController|cycleDelay[17]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[17]~70_combout\ = (\StateController|cycleDelay\(17) & (!\StateController|cycleDelay[16]~69\)) # (!\StateController|cycleDelay\(17) & ((\StateController|cycleDelay[16]~69\) # (GND)))
-- \StateController|cycleDelay[17]~71\ = CARRY((!\StateController|cycleDelay[16]~69\) # (!\StateController|cycleDelay\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StateController|cycleDelay\(17),
	datad => VCC,
	cin => \StateController|cycleDelay[16]~69\,
	combout => \StateController|cycleDelay[17]~70_combout\,
	cout => \StateController|cycleDelay[17]~71\);

-- Location: FF_X75_Y33_N3
\StateController|cycleDelay[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[17]~70_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(17));

-- Location: LCCOMB_X75_Y33_N4
\StateController|cycleDelay[18]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[18]~72_combout\ = (\StateController|cycleDelay\(18) & (\StateController|cycleDelay[17]~71\ $ (GND))) # (!\StateController|cycleDelay\(18) & (!\StateController|cycleDelay[17]~71\ & VCC))
-- \StateController|cycleDelay[18]~73\ = CARRY((\StateController|cycleDelay\(18) & !\StateController|cycleDelay[17]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StateController|cycleDelay\(18),
	datad => VCC,
	cin => \StateController|cycleDelay[17]~71\,
	combout => \StateController|cycleDelay[18]~72_combout\,
	cout => \StateController|cycleDelay[18]~73\);

-- Location: FF_X75_Y33_N5
\StateController|cycleDelay[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[18]~72_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(18));

-- Location: LCCOMB_X75_Y33_N6
\StateController|cycleDelay[19]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[19]~74_combout\ = (\StateController|cycleDelay\(19) & (!\StateController|cycleDelay[18]~73\)) # (!\StateController|cycleDelay\(19) & ((\StateController|cycleDelay[18]~73\) # (GND)))
-- \StateController|cycleDelay[19]~75\ = CARRY((!\StateController|cycleDelay[18]~73\) # (!\StateController|cycleDelay\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StateController|cycleDelay\(19),
	datad => VCC,
	cin => \StateController|cycleDelay[18]~73\,
	combout => \StateController|cycleDelay[19]~74_combout\,
	cout => \StateController|cycleDelay[19]~75\);

-- Location: FF_X75_Y33_N7
\StateController|cycleDelay[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[19]~74_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(19));

-- Location: LCCOMB_X75_Y33_N8
\StateController|cycleDelay[20]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[20]~76_combout\ = (\StateController|cycleDelay\(20) & (\StateController|cycleDelay[19]~75\ $ (GND))) # (!\StateController|cycleDelay\(20) & (!\StateController|cycleDelay[19]~75\ & VCC))
-- \StateController|cycleDelay[20]~77\ = CARRY((\StateController|cycleDelay\(20) & !\StateController|cycleDelay[19]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StateController|cycleDelay\(20),
	datad => VCC,
	cin => \StateController|cycleDelay[19]~75\,
	combout => \StateController|cycleDelay[20]~76_combout\,
	cout => \StateController|cycleDelay[20]~77\);

-- Location: FF_X75_Y33_N9
\StateController|cycleDelay[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[20]~76_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(20));

-- Location: LCCOMB_X75_Y33_N10
\StateController|cycleDelay[21]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[21]~78_combout\ = (\StateController|cycleDelay\(21) & (!\StateController|cycleDelay[20]~77\)) # (!\StateController|cycleDelay\(21) & ((\StateController|cycleDelay[20]~77\) # (GND)))
-- \StateController|cycleDelay[21]~79\ = CARRY((!\StateController|cycleDelay[20]~77\) # (!\StateController|cycleDelay\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StateController|cycleDelay\(21),
	datad => VCC,
	cin => \StateController|cycleDelay[20]~77\,
	combout => \StateController|cycleDelay[21]~78_combout\,
	cout => \StateController|cycleDelay[21]~79\);

-- Location: FF_X75_Y33_N11
\StateController|cycleDelay[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[21]~78_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(21));

-- Location: LCCOMB_X75_Y33_N12
\StateController|cycleDelay[22]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[22]~80_combout\ = (\StateController|cycleDelay\(22) & (\StateController|cycleDelay[21]~79\ $ (GND))) # (!\StateController|cycleDelay\(22) & (!\StateController|cycleDelay[21]~79\ & VCC))
-- \StateController|cycleDelay[22]~81\ = CARRY((\StateController|cycleDelay\(22) & !\StateController|cycleDelay[21]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StateController|cycleDelay\(22),
	datad => VCC,
	cin => \StateController|cycleDelay[21]~79\,
	combout => \StateController|cycleDelay[22]~80_combout\,
	cout => \StateController|cycleDelay[22]~81\);

-- Location: FF_X75_Y33_N13
\StateController|cycleDelay[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[22]~80_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(22));

-- Location: LCCOMB_X75_Y33_N14
\StateController|cycleDelay[23]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[23]~82_combout\ = (\StateController|cycleDelay\(23) & (!\StateController|cycleDelay[22]~81\)) # (!\StateController|cycleDelay\(23) & ((\StateController|cycleDelay[22]~81\) # (GND)))
-- \StateController|cycleDelay[23]~83\ = CARRY((!\StateController|cycleDelay[22]~81\) # (!\StateController|cycleDelay\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StateController|cycleDelay\(23),
	datad => VCC,
	cin => \StateController|cycleDelay[22]~81\,
	combout => \StateController|cycleDelay[23]~82_combout\,
	cout => \StateController|cycleDelay[23]~83\);

-- Location: FF_X75_Y33_N15
\StateController|cycleDelay[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[23]~82_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(23));

-- Location: LCCOMB_X75_Y33_N16
\StateController|cycleDelay[24]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[24]~84_combout\ = (\StateController|cycleDelay\(24) & (\StateController|cycleDelay[23]~83\ $ (GND))) # (!\StateController|cycleDelay\(24) & (!\StateController|cycleDelay[23]~83\ & VCC))
-- \StateController|cycleDelay[24]~85\ = CARRY((\StateController|cycleDelay\(24) & !\StateController|cycleDelay[23]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StateController|cycleDelay\(24),
	datad => VCC,
	cin => \StateController|cycleDelay[23]~83\,
	combout => \StateController|cycleDelay[24]~84_combout\,
	cout => \StateController|cycleDelay[24]~85\);

-- Location: FF_X75_Y33_N17
\StateController|cycleDelay[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[24]~84_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(24));

-- Location: LCCOMB_X75_Y33_N18
\StateController|cycleDelay[25]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[25]~86_combout\ = (\StateController|cycleDelay\(25) & (!\StateController|cycleDelay[24]~85\)) # (!\StateController|cycleDelay\(25) & ((\StateController|cycleDelay[24]~85\) # (GND)))
-- \StateController|cycleDelay[25]~87\ = CARRY((!\StateController|cycleDelay[24]~85\) # (!\StateController|cycleDelay\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StateController|cycleDelay\(25),
	datad => VCC,
	cin => \StateController|cycleDelay[24]~85\,
	combout => \StateController|cycleDelay[25]~86_combout\,
	cout => \StateController|cycleDelay[25]~87\);

-- Location: FF_X75_Y33_N19
\StateController|cycleDelay[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[25]~86_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(25));

-- Location: LCCOMB_X75_Y33_N20
\StateController|cycleDelay[26]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[26]~88_combout\ = (\StateController|cycleDelay\(26) & (\StateController|cycleDelay[25]~87\ $ (GND))) # (!\StateController|cycleDelay\(26) & (!\StateController|cycleDelay[25]~87\ & VCC))
-- \StateController|cycleDelay[26]~89\ = CARRY((\StateController|cycleDelay\(26) & !\StateController|cycleDelay[25]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StateController|cycleDelay\(26),
	datad => VCC,
	cin => \StateController|cycleDelay[25]~87\,
	combout => \StateController|cycleDelay[26]~88_combout\,
	cout => \StateController|cycleDelay[26]~89\);

-- Location: FF_X75_Y33_N21
\StateController|cycleDelay[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[26]~88_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(26));

-- Location: LCCOMB_X75_Y33_N22
\StateController|cycleDelay[27]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[27]~90_combout\ = (\StateController|cycleDelay\(27) & (!\StateController|cycleDelay[26]~89\)) # (!\StateController|cycleDelay\(27) & ((\StateController|cycleDelay[26]~89\) # (GND)))
-- \StateController|cycleDelay[27]~91\ = CARRY((!\StateController|cycleDelay[26]~89\) # (!\StateController|cycleDelay\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StateController|cycleDelay\(27),
	datad => VCC,
	cin => \StateController|cycleDelay[26]~89\,
	combout => \StateController|cycleDelay[27]~90_combout\,
	cout => \StateController|cycleDelay[27]~91\);

-- Location: FF_X75_Y33_N23
\StateController|cycleDelay[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[27]~90_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(27));

-- Location: LCCOMB_X75_Y33_N24
\StateController|cycleDelay[28]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[28]~92_combout\ = (\StateController|cycleDelay\(28) & (\StateController|cycleDelay[27]~91\ $ (GND))) # (!\StateController|cycleDelay\(28) & (!\StateController|cycleDelay[27]~91\ & VCC))
-- \StateController|cycleDelay[28]~93\ = CARRY((\StateController|cycleDelay\(28) & !\StateController|cycleDelay[27]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StateController|cycleDelay\(28),
	datad => VCC,
	cin => \StateController|cycleDelay[27]~91\,
	combout => \StateController|cycleDelay[28]~92_combout\,
	cout => \StateController|cycleDelay[28]~93\);

-- Location: FF_X75_Y33_N25
\StateController|cycleDelay[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[28]~92_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(28));

-- Location: LCCOMB_X75_Y33_N26
\StateController|cycleDelay[29]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[29]~94_combout\ = (\StateController|cycleDelay\(29) & (!\StateController|cycleDelay[28]~93\)) # (!\StateController|cycleDelay\(29) & ((\StateController|cycleDelay[28]~93\) # (GND)))
-- \StateController|cycleDelay[29]~95\ = CARRY((!\StateController|cycleDelay[28]~93\) # (!\StateController|cycleDelay\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StateController|cycleDelay\(29),
	datad => VCC,
	cin => \StateController|cycleDelay[28]~93\,
	combout => \StateController|cycleDelay[29]~94_combout\,
	cout => \StateController|cycleDelay[29]~95\);

-- Location: FF_X75_Y33_N27
\StateController|cycleDelay[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[29]~94_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(29));

-- Location: LCCOMB_X75_Y33_N28
\StateController|cycleDelay[30]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[30]~96_combout\ = (\StateController|cycleDelay\(30) & (\StateController|cycleDelay[29]~95\ $ (GND))) # (!\StateController|cycleDelay\(30) & (!\StateController|cycleDelay[29]~95\ & VCC))
-- \StateController|cycleDelay[30]~97\ = CARRY((\StateController|cycleDelay\(30) & !\StateController|cycleDelay[29]~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StateController|cycleDelay\(30),
	datad => VCC,
	cin => \StateController|cycleDelay[29]~95\,
	combout => \StateController|cycleDelay[30]~96_combout\,
	cout => \StateController|cycleDelay[30]~97\);

-- Location: FF_X75_Y33_N29
\StateController|cycleDelay[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[30]~96_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(30));

-- Location: LCCOMB_X76_Y33_N6
\StateController|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|LessThan0~6_combout\ = (\StateController|cycleDelay\(28)) # ((\StateController|cycleDelay\(29)) # (\StateController|cycleDelay\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateController|cycleDelay\(28),
	datac => \StateController|cycleDelay\(29),
	datad => \StateController|cycleDelay\(30),
	combout => \StateController|LessThan0~6_combout\);

-- Location: LCCOMB_X75_Y33_N30
\StateController|cycleDelay[31]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|cycleDelay[31]~98_combout\ = \StateController|cycleDelay\(31) $ (\StateController|cycleDelay[30]~97\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StateController|cycleDelay\(31),
	cin => \StateController|cycleDelay[30]~97\,
	combout => \StateController|cycleDelay[31]~98_combout\);

-- Location: FF_X75_Y33_N31
\StateController|cycleDelay[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|cycleDelay[31]~98_combout\,
	sclr => \StateController|cycleDelay[1]~100_combout\,
	ena => \StateController|cycleDelay[1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|cycleDelay\(31));

-- Location: LCCOMB_X76_Y33_N4
\StateController|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|LessThan0~5_combout\ = (\StateController|cycleDelay\(24)) # ((\StateController|cycleDelay\(25)) # ((\StateController|cycleDelay\(26)) # (\StateController|cycleDelay\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateController|cycleDelay\(24),
	datab => \StateController|cycleDelay\(25),
	datac => \StateController|cycleDelay\(26),
	datad => \StateController|cycleDelay\(27),
	combout => \StateController|LessThan0~5_combout\);

-- Location: LCCOMB_X76_Y33_N30
\StateController|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|LessThan0~2_combout\ = (\StateController|cycleDelay\(16)) # ((\StateController|cycleDelay\(17)) # ((\StateController|cycleDelay\(18)) # (\StateController|cycleDelay\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateController|cycleDelay\(16),
	datab => \StateController|cycleDelay\(17),
	datac => \StateController|cycleDelay\(18),
	datad => \StateController|cycleDelay\(19),
	combout => \StateController|LessThan0~2_combout\);

-- Location: LCCOMB_X76_Y33_N24
\StateController|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|LessThan0~1_combout\ = (\StateController|cycleDelay\(13)) # ((\StateController|cycleDelay\(15)) # ((\StateController|cycleDelay\(14)) # (\StateController|cycleDelay\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateController|cycleDelay\(13),
	datab => \StateController|cycleDelay\(15),
	datac => \StateController|cycleDelay\(14),
	datad => \StateController|cycleDelay\(12),
	combout => \StateController|LessThan0~1_combout\);

-- Location: LCCOMB_X76_Y33_N22
\StateController|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|LessThan0~0_combout\ = (\StateController|cycleDelay\(11)) # ((\StateController|cycleDelay\(10)) # ((\StateController|cycleDelay\(8)) # (\StateController|cycleDelay\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateController|cycleDelay\(11),
	datab => \StateController|cycleDelay\(10),
	datac => \StateController|cycleDelay\(8),
	datad => \StateController|cycleDelay\(9),
	combout => \StateController|LessThan0~0_combout\);

-- Location: LCCOMB_X76_Y33_N28
\StateController|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|LessThan0~3_combout\ = (\StateController|cycleDelay\(21)) # ((\StateController|cycleDelay\(22)) # ((\StateController|cycleDelay\(20)) # (\StateController|cycleDelay\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateController|cycleDelay\(21),
	datab => \StateController|cycleDelay\(22),
	datac => \StateController|cycleDelay\(20),
	datad => \StateController|cycleDelay\(23),
	combout => \StateController|LessThan0~3_combout\);

-- Location: LCCOMB_X76_Y33_N18
\StateController|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|LessThan0~4_combout\ = (\StateController|LessThan0~2_combout\) # ((\StateController|LessThan0~1_combout\) # ((\StateController|LessThan0~0_combout\) # (\StateController|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateController|LessThan0~2_combout\,
	datab => \StateController|LessThan0~1_combout\,
	datac => \StateController|LessThan0~0_combout\,
	datad => \StateController|LessThan0~3_combout\,
	combout => \StateController|LessThan0~4_combout\);

-- Location: LCCOMB_X76_Y33_N8
\StateController|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|LessThan0~7_combout\ = (!\StateController|cycleDelay\(31) & ((\StateController|LessThan0~6_combout\) # ((\StateController|LessThan0~5_combout\) # (\StateController|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateController|LessThan0~6_combout\,
	datab => \StateController|cycleDelay\(31),
	datac => \StateController|LessThan0~5_combout\,
	datad => \StateController|LessThan0~4_combout\,
	combout => \StateController|LessThan0~7_combout\);

-- Location: LCCOMB_X76_Y33_N16
\StateController|currState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|currState~16_combout\ = (\InputCleaner|DebounceKey1|s_pulsedOut~q\) # ((\StateController|LessThan0~7_combout\) # (\InputCleaner|DebounceKey2|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InputCleaner|DebounceKey1|s_pulsedOut~q\,
	datac => \StateController|LessThan0~7_combout\,
	datad => \InputCleaner|DebounceKey2|s_pulsedOut~q\,
	combout => \StateController|currState~16_combout\);

-- Location: FF_X76_Y33_N15
\StateController|currState.t_GLOBALRESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|currState.t_GLOBALRESET~0_combout\,
	ena => \StateController|currState~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|currState.t_GLOBALRESET~q\);

-- Location: LCCOMB_X77_Y33_N8
\StateController|debugStateVector[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|debugStateVector[1]~1_combout\ = !\StateController|currState.t_GLOBALRESET~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \StateController|currState.t_GLOBALRESET~q\,
	combout => \StateController|debugStateVector[1]~1_combout\);

-- Location: FF_X77_Y33_N9
\StateController|debugStateVector[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|debugStateVector[1]~1_combout\,
	ena => \StateController|debugStateVector[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|debugStateVector\(1));

-- Location: LCCOMB_X77_Y33_N10
\StateController|debugStateVector[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|debugStateVector[2]~feeder_combout\ = \StateController|currState.t_RAMRESET~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \StateController|currState.t_RAMRESET~q\,
	combout => \StateController|debugStateVector[2]~feeder_combout\);

-- Location: FF_X77_Y33_N11
\StateController|debugStateVector[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|debugStateVector[2]~feeder_combout\,
	ena => \StateController|debugStateVector[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|debugStateVector\(2));

-- Location: LCCOMB_X77_Y33_N12
\StateController|debugStateVector[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|debugStateVector[3]~feeder_combout\ = \StateController|currState.t_RUNNING~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \StateController|currState.t_RUNNING~q\,
	combout => \StateController|debugStateVector[3]~feeder_combout\);

-- Location: FF_X77_Y33_N13
\StateController|debugStateVector[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|debugStateVector[3]~feeder_combout\,
	ena => \StateController|debugStateVector[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|debugStateVector\(3));

-- Location: FF_X76_Y33_N21
\StateController|debugStateVector[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \StateController|currState.t_STOPPED~q\,
	sload => VCC,
	ena => \StateController|debugStateVector[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|debugStateVector\(4));

-- Location: LCCOMB_X76_Y17_N16
\RomManagment|currState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomManagment|currState~0_combout\ = !\RomManagment|currState~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomManagment|currState~q\,
	combout => \RomManagment|currState~0_combout\);

-- Location: FF_X76_Y17_N17
\RomManagment|currState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RomManagment|currState~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RomManagment|currState~q\);

-- Location: LCCOMB_X76_Y33_N26
\StateController|callGlobalReset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateController|callGlobalReset~0_combout\ = !\StateController|currState.t_GLOBALRESET~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \StateController|currState.t_GLOBALRESET~q\,
	combout => \StateController|callGlobalReset~0_combout\);

-- Location: FF_X76_Y33_N27
\StateController|callGlobalReset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StateController|callGlobalReset~0_combout\,
	ena => \StateController|debugStateVector[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|callGlobalReset~q\);

-- Location: LCCOMB_X73_Y34_N8
\Hz2Lane|s_Cnt[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[0]~25_combout\ = \Hz2Lane|s_Cnt\(0) $ (VCC)
-- \Hz2Lane|s_Cnt[0]~26\ = CARRY(\Hz2Lane|s_Cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_Cnt\(0),
	datad => VCC,
	combout => \Hz2Lane|s_Cnt[0]~25_combout\,
	cout => \Hz2Lane|s_Cnt[0]~26\);

-- Location: LCCOMB_X74_Y33_N2
\Hz2Lane|s_Cnt[17]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[17]~27_combout\ = (\StateController|callGlobalReset~q\) # (!\Hz2Lane|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateController|callGlobalReset~q\,
	datad => \Hz2Lane|Equal0~7_combout\,
	combout => \Hz2Lane|s_Cnt[17]~27_combout\);

-- Location: FF_X76_Y33_N1
\StateController|callStartStop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \StateController|currState.t_RUNNING~q\,
	sload => VCC,
	ena => \StateController|debugStateVector[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateController|callStartStop~q\);

-- Location: FF_X73_Y34_N9
\Hz2Lane|s_Cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[0]~25_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(0));

-- Location: LCCOMB_X73_Y34_N10
\Hz2Lane|s_Cnt[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[1]~28_combout\ = (\Hz2Lane|s_Cnt\(1) & (!\Hz2Lane|s_Cnt[0]~26\)) # (!\Hz2Lane|s_Cnt\(1) & ((\Hz2Lane|s_Cnt[0]~26\) # (GND)))
-- \Hz2Lane|s_Cnt[1]~29\ = CARRY((!\Hz2Lane|s_Cnt[0]~26\) # (!\Hz2Lane|s_Cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_Cnt\(1),
	datad => VCC,
	cin => \Hz2Lane|s_Cnt[0]~26\,
	combout => \Hz2Lane|s_Cnt[1]~28_combout\,
	cout => \Hz2Lane|s_Cnt[1]~29\);

-- Location: FF_X73_Y34_N11
\Hz2Lane|s_Cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[1]~28_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(1));

-- Location: LCCOMB_X73_Y34_N12
\Hz2Lane|s_Cnt[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[2]~30_combout\ = (\Hz2Lane|s_Cnt\(2) & (\Hz2Lane|s_Cnt[1]~29\ $ (GND))) # (!\Hz2Lane|s_Cnt\(2) & (!\Hz2Lane|s_Cnt[1]~29\ & VCC))
-- \Hz2Lane|s_Cnt[2]~31\ = CARRY((\Hz2Lane|s_Cnt\(2) & !\Hz2Lane|s_Cnt[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_Cnt\(2),
	datad => VCC,
	cin => \Hz2Lane|s_Cnt[1]~29\,
	combout => \Hz2Lane|s_Cnt[2]~30_combout\,
	cout => \Hz2Lane|s_Cnt[2]~31\);

-- Location: FF_X73_Y34_N13
\Hz2Lane|s_Cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[2]~30_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(2));

-- Location: LCCOMB_X73_Y34_N14
\Hz2Lane|s_Cnt[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[3]~32_combout\ = (\Hz2Lane|s_Cnt\(3) & (!\Hz2Lane|s_Cnt[2]~31\)) # (!\Hz2Lane|s_Cnt\(3) & ((\Hz2Lane|s_Cnt[2]~31\) # (GND)))
-- \Hz2Lane|s_Cnt[3]~33\ = CARRY((!\Hz2Lane|s_Cnt[2]~31\) # (!\Hz2Lane|s_Cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_Cnt\(3),
	datad => VCC,
	cin => \Hz2Lane|s_Cnt[2]~31\,
	combout => \Hz2Lane|s_Cnt[3]~32_combout\,
	cout => \Hz2Lane|s_Cnt[3]~33\);

-- Location: FF_X73_Y34_N15
\Hz2Lane|s_Cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[3]~32_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(3));

-- Location: LCCOMB_X73_Y34_N16
\Hz2Lane|s_Cnt[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[4]~34_combout\ = (\Hz2Lane|s_Cnt\(4) & (\Hz2Lane|s_Cnt[3]~33\ $ (GND))) # (!\Hz2Lane|s_Cnt\(4) & (!\Hz2Lane|s_Cnt[3]~33\ & VCC))
-- \Hz2Lane|s_Cnt[4]~35\ = CARRY((\Hz2Lane|s_Cnt\(4) & !\Hz2Lane|s_Cnt[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_Cnt\(4),
	datad => VCC,
	cin => \Hz2Lane|s_Cnt[3]~33\,
	combout => \Hz2Lane|s_Cnt[4]~34_combout\,
	cout => \Hz2Lane|s_Cnt[4]~35\);

-- Location: FF_X73_Y34_N17
\Hz2Lane|s_Cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[4]~34_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(4));

-- Location: LCCOMB_X73_Y34_N18
\Hz2Lane|s_Cnt[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[5]~36_combout\ = (\Hz2Lane|s_Cnt\(5) & (!\Hz2Lane|s_Cnt[4]~35\)) # (!\Hz2Lane|s_Cnt\(5) & ((\Hz2Lane|s_Cnt[4]~35\) # (GND)))
-- \Hz2Lane|s_Cnt[5]~37\ = CARRY((!\Hz2Lane|s_Cnt[4]~35\) # (!\Hz2Lane|s_Cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_Cnt\(5),
	datad => VCC,
	cin => \Hz2Lane|s_Cnt[4]~35\,
	combout => \Hz2Lane|s_Cnt[5]~36_combout\,
	cout => \Hz2Lane|s_Cnt[5]~37\);

-- Location: FF_X73_Y34_N19
\Hz2Lane|s_Cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[5]~36_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(5));

-- Location: LCCOMB_X73_Y34_N20
\Hz2Lane|s_Cnt[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[6]~38_combout\ = (\Hz2Lane|s_Cnt\(6) & (\Hz2Lane|s_Cnt[5]~37\ $ (GND))) # (!\Hz2Lane|s_Cnt\(6) & (!\Hz2Lane|s_Cnt[5]~37\ & VCC))
-- \Hz2Lane|s_Cnt[6]~39\ = CARRY((\Hz2Lane|s_Cnt\(6) & !\Hz2Lane|s_Cnt[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_Cnt\(6),
	datad => VCC,
	cin => \Hz2Lane|s_Cnt[5]~37\,
	combout => \Hz2Lane|s_Cnt[6]~38_combout\,
	cout => \Hz2Lane|s_Cnt[6]~39\);

-- Location: FF_X73_Y34_N21
\Hz2Lane|s_Cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[6]~38_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(6));

-- Location: LCCOMB_X73_Y34_N22
\Hz2Lane|s_Cnt[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[7]~40_combout\ = (\Hz2Lane|s_Cnt\(7) & (!\Hz2Lane|s_Cnt[6]~39\)) # (!\Hz2Lane|s_Cnt\(7) & ((\Hz2Lane|s_Cnt[6]~39\) # (GND)))
-- \Hz2Lane|s_Cnt[7]~41\ = CARRY((!\Hz2Lane|s_Cnt[6]~39\) # (!\Hz2Lane|s_Cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_Cnt\(7),
	datad => VCC,
	cin => \Hz2Lane|s_Cnt[6]~39\,
	combout => \Hz2Lane|s_Cnt[7]~40_combout\,
	cout => \Hz2Lane|s_Cnt[7]~41\);

-- Location: FF_X73_Y34_N23
\Hz2Lane|s_Cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[7]~40_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(7));

-- Location: LCCOMB_X73_Y34_N24
\Hz2Lane|s_Cnt[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[8]~42_combout\ = (\Hz2Lane|s_Cnt\(8) & (\Hz2Lane|s_Cnt[7]~41\ $ (GND))) # (!\Hz2Lane|s_Cnt\(8) & (!\Hz2Lane|s_Cnt[7]~41\ & VCC))
-- \Hz2Lane|s_Cnt[8]~43\ = CARRY((\Hz2Lane|s_Cnt\(8) & !\Hz2Lane|s_Cnt[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_Cnt\(8),
	datad => VCC,
	cin => \Hz2Lane|s_Cnt[7]~41\,
	combout => \Hz2Lane|s_Cnt[8]~42_combout\,
	cout => \Hz2Lane|s_Cnt[8]~43\);

-- Location: FF_X73_Y34_N25
\Hz2Lane|s_Cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[8]~42_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(8));

-- Location: LCCOMB_X73_Y34_N26
\Hz2Lane|s_Cnt[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[9]~44_combout\ = (\Hz2Lane|s_Cnt\(9) & (!\Hz2Lane|s_Cnt[8]~43\)) # (!\Hz2Lane|s_Cnt\(9) & ((\Hz2Lane|s_Cnt[8]~43\) # (GND)))
-- \Hz2Lane|s_Cnt[9]~45\ = CARRY((!\Hz2Lane|s_Cnt[8]~43\) # (!\Hz2Lane|s_Cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_Cnt\(9),
	datad => VCC,
	cin => \Hz2Lane|s_Cnt[8]~43\,
	combout => \Hz2Lane|s_Cnt[9]~44_combout\,
	cout => \Hz2Lane|s_Cnt[9]~45\);

-- Location: FF_X73_Y34_N27
\Hz2Lane|s_Cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[9]~44_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(9));

-- Location: LCCOMB_X73_Y34_N28
\Hz2Lane|s_Cnt[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[10]~46_combout\ = (\Hz2Lane|s_Cnt\(10) & (\Hz2Lane|s_Cnt[9]~45\ $ (GND))) # (!\Hz2Lane|s_Cnt\(10) & (!\Hz2Lane|s_Cnt[9]~45\ & VCC))
-- \Hz2Lane|s_Cnt[10]~47\ = CARRY((\Hz2Lane|s_Cnt\(10) & !\Hz2Lane|s_Cnt[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_Cnt\(10),
	datad => VCC,
	cin => \Hz2Lane|s_Cnt[9]~45\,
	combout => \Hz2Lane|s_Cnt[10]~46_combout\,
	cout => \Hz2Lane|s_Cnt[10]~47\);

-- Location: FF_X73_Y34_N29
\Hz2Lane|s_Cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[10]~46_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(10));

-- Location: LCCOMB_X73_Y34_N30
\Hz2Lane|s_Cnt[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[11]~48_combout\ = (\Hz2Lane|s_Cnt\(11) & (!\Hz2Lane|s_Cnt[10]~47\)) # (!\Hz2Lane|s_Cnt\(11) & ((\Hz2Lane|s_Cnt[10]~47\) # (GND)))
-- \Hz2Lane|s_Cnt[11]~49\ = CARRY((!\Hz2Lane|s_Cnt[10]~47\) # (!\Hz2Lane|s_Cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_Cnt\(11),
	datad => VCC,
	cin => \Hz2Lane|s_Cnt[10]~47\,
	combout => \Hz2Lane|s_Cnt[11]~48_combout\,
	cout => \Hz2Lane|s_Cnt[11]~49\);

-- Location: FF_X73_Y34_N31
\Hz2Lane|s_Cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[11]~48_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(11));

-- Location: LCCOMB_X73_Y33_N0
\Hz2Lane|s_Cnt[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[12]~50_combout\ = (\Hz2Lane|s_Cnt\(12) & (\Hz2Lane|s_Cnt[11]~49\ $ (GND))) # (!\Hz2Lane|s_Cnt\(12) & (!\Hz2Lane|s_Cnt[11]~49\ & VCC))
-- \Hz2Lane|s_Cnt[12]~51\ = CARRY((\Hz2Lane|s_Cnt\(12) & !\Hz2Lane|s_Cnt[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_Cnt\(12),
	datad => VCC,
	cin => \Hz2Lane|s_Cnt[11]~49\,
	combout => \Hz2Lane|s_Cnt[12]~50_combout\,
	cout => \Hz2Lane|s_Cnt[12]~51\);

-- Location: FF_X73_Y33_N1
\Hz2Lane|s_Cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[12]~50_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(12));

-- Location: LCCOMB_X73_Y33_N2
\Hz2Lane|s_Cnt[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[13]~52_combout\ = (\Hz2Lane|s_Cnt\(13) & (!\Hz2Lane|s_Cnt[12]~51\)) # (!\Hz2Lane|s_Cnt\(13) & ((\Hz2Lane|s_Cnt[12]~51\) # (GND)))
-- \Hz2Lane|s_Cnt[13]~53\ = CARRY((!\Hz2Lane|s_Cnt[12]~51\) # (!\Hz2Lane|s_Cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_Cnt\(13),
	datad => VCC,
	cin => \Hz2Lane|s_Cnt[12]~51\,
	combout => \Hz2Lane|s_Cnt[13]~52_combout\,
	cout => \Hz2Lane|s_Cnt[13]~53\);

-- Location: FF_X73_Y33_N3
\Hz2Lane|s_Cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[13]~52_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(13));

-- Location: LCCOMB_X73_Y33_N4
\Hz2Lane|s_Cnt[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[14]~54_combout\ = (\Hz2Lane|s_Cnt\(14) & (\Hz2Lane|s_Cnt[13]~53\ $ (GND))) # (!\Hz2Lane|s_Cnt\(14) & (!\Hz2Lane|s_Cnt[13]~53\ & VCC))
-- \Hz2Lane|s_Cnt[14]~55\ = CARRY((\Hz2Lane|s_Cnt\(14) & !\Hz2Lane|s_Cnt[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_Cnt\(14),
	datad => VCC,
	cin => \Hz2Lane|s_Cnt[13]~53\,
	combout => \Hz2Lane|s_Cnt[14]~54_combout\,
	cout => \Hz2Lane|s_Cnt[14]~55\);

-- Location: FF_X73_Y33_N5
\Hz2Lane|s_Cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[14]~54_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(14));

-- Location: LCCOMB_X73_Y33_N6
\Hz2Lane|s_Cnt[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[15]~56_combout\ = (\Hz2Lane|s_Cnt\(15) & (!\Hz2Lane|s_Cnt[14]~55\)) # (!\Hz2Lane|s_Cnt\(15) & ((\Hz2Lane|s_Cnt[14]~55\) # (GND)))
-- \Hz2Lane|s_Cnt[15]~57\ = CARRY((!\Hz2Lane|s_Cnt[14]~55\) # (!\Hz2Lane|s_Cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_Cnt\(15),
	datad => VCC,
	cin => \Hz2Lane|s_Cnt[14]~55\,
	combout => \Hz2Lane|s_Cnt[15]~56_combout\,
	cout => \Hz2Lane|s_Cnt[15]~57\);

-- Location: FF_X73_Y33_N7
\Hz2Lane|s_Cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[15]~56_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(15));

-- Location: LCCOMB_X73_Y33_N8
\Hz2Lane|s_Cnt[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[16]~58_combout\ = (\Hz2Lane|s_Cnt\(16) & (\Hz2Lane|s_Cnt[15]~57\ $ (GND))) # (!\Hz2Lane|s_Cnt\(16) & (!\Hz2Lane|s_Cnt[15]~57\ & VCC))
-- \Hz2Lane|s_Cnt[16]~59\ = CARRY((\Hz2Lane|s_Cnt\(16) & !\Hz2Lane|s_Cnt[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_Cnt\(16),
	datad => VCC,
	cin => \Hz2Lane|s_Cnt[15]~57\,
	combout => \Hz2Lane|s_Cnt[16]~58_combout\,
	cout => \Hz2Lane|s_Cnt[16]~59\);

-- Location: FF_X73_Y33_N9
\Hz2Lane|s_Cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[16]~58_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(16));

-- Location: LCCOMB_X73_Y33_N10
\Hz2Lane|s_Cnt[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[17]~60_combout\ = (\Hz2Lane|s_Cnt\(17) & (!\Hz2Lane|s_Cnt[16]~59\)) # (!\Hz2Lane|s_Cnt\(17) & ((\Hz2Lane|s_Cnt[16]~59\) # (GND)))
-- \Hz2Lane|s_Cnt[17]~61\ = CARRY((!\Hz2Lane|s_Cnt[16]~59\) # (!\Hz2Lane|s_Cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_Cnt\(17),
	datad => VCC,
	cin => \Hz2Lane|s_Cnt[16]~59\,
	combout => \Hz2Lane|s_Cnt[17]~60_combout\,
	cout => \Hz2Lane|s_Cnt[17]~61\);

-- Location: FF_X73_Y33_N11
\Hz2Lane|s_Cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[17]~60_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(17));

-- Location: LCCOMB_X73_Y33_N12
\Hz2Lane|s_Cnt[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[18]~62_combout\ = (\Hz2Lane|s_Cnt\(18) & (\Hz2Lane|s_Cnt[17]~61\ $ (GND))) # (!\Hz2Lane|s_Cnt\(18) & (!\Hz2Lane|s_Cnt[17]~61\ & VCC))
-- \Hz2Lane|s_Cnt[18]~63\ = CARRY((\Hz2Lane|s_Cnt\(18) & !\Hz2Lane|s_Cnt[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_Cnt\(18),
	datad => VCC,
	cin => \Hz2Lane|s_Cnt[17]~61\,
	combout => \Hz2Lane|s_Cnt[18]~62_combout\,
	cout => \Hz2Lane|s_Cnt[18]~63\);

-- Location: FF_X73_Y33_N13
\Hz2Lane|s_Cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[18]~62_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(18));

-- Location: LCCOMB_X73_Y33_N14
\Hz2Lane|s_Cnt[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[19]~64_combout\ = (\Hz2Lane|s_Cnt\(19) & (!\Hz2Lane|s_Cnt[18]~63\)) # (!\Hz2Lane|s_Cnt\(19) & ((\Hz2Lane|s_Cnt[18]~63\) # (GND)))
-- \Hz2Lane|s_Cnt[19]~65\ = CARRY((!\Hz2Lane|s_Cnt[18]~63\) # (!\Hz2Lane|s_Cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_Cnt\(19),
	datad => VCC,
	cin => \Hz2Lane|s_Cnt[18]~63\,
	combout => \Hz2Lane|s_Cnt[19]~64_combout\,
	cout => \Hz2Lane|s_Cnt[19]~65\);

-- Location: FF_X73_Y33_N15
\Hz2Lane|s_Cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[19]~64_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(19));

-- Location: LCCOMB_X73_Y33_N16
\Hz2Lane|s_Cnt[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[20]~66_combout\ = (\Hz2Lane|s_Cnt\(20) & (\Hz2Lane|s_Cnt[19]~65\ $ (GND))) # (!\Hz2Lane|s_Cnt\(20) & (!\Hz2Lane|s_Cnt[19]~65\ & VCC))
-- \Hz2Lane|s_Cnt[20]~67\ = CARRY((\Hz2Lane|s_Cnt\(20) & !\Hz2Lane|s_Cnt[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_Cnt\(20),
	datad => VCC,
	cin => \Hz2Lane|s_Cnt[19]~65\,
	combout => \Hz2Lane|s_Cnt[20]~66_combout\,
	cout => \Hz2Lane|s_Cnt[20]~67\);

-- Location: FF_X73_Y33_N17
\Hz2Lane|s_Cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[20]~66_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(20));

-- Location: LCCOMB_X73_Y33_N18
\Hz2Lane|s_Cnt[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[21]~68_combout\ = (\Hz2Lane|s_Cnt\(21) & (!\Hz2Lane|s_Cnt[20]~67\)) # (!\Hz2Lane|s_Cnt\(21) & ((\Hz2Lane|s_Cnt[20]~67\) # (GND)))
-- \Hz2Lane|s_Cnt[21]~69\ = CARRY((!\Hz2Lane|s_Cnt[20]~67\) # (!\Hz2Lane|s_Cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_Cnt\(21),
	datad => VCC,
	cin => \Hz2Lane|s_Cnt[20]~67\,
	combout => \Hz2Lane|s_Cnt[21]~68_combout\,
	cout => \Hz2Lane|s_Cnt[21]~69\);

-- Location: FF_X73_Y33_N19
\Hz2Lane|s_Cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[21]~68_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(21));

-- Location: LCCOMB_X73_Y33_N20
\Hz2Lane|s_Cnt[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[22]~70_combout\ = (\Hz2Lane|s_Cnt\(22) & (\Hz2Lane|s_Cnt[21]~69\ $ (GND))) # (!\Hz2Lane|s_Cnt\(22) & (!\Hz2Lane|s_Cnt[21]~69\ & VCC))
-- \Hz2Lane|s_Cnt[22]~71\ = CARRY((\Hz2Lane|s_Cnt\(22) & !\Hz2Lane|s_Cnt[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_Cnt\(22),
	datad => VCC,
	cin => \Hz2Lane|s_Cnt[21]~69\,
	combout => \Hz2Lane|s_Cnt[22]~70_combout\,
	cout => \Hz2Lane|s_Cnt[22]~71\);

-- Location: FF_X73_Y33_N21
\Hz2Lane|s_Cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[22]~70_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(22));

-- Location: LCCOMB_X73_Y33_N22
\Hz2Lane|s_Cnt[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[23]~72_combout\ = (\Hz2Lane|s_Cnt\(23) & (!\Hz2Lane|s_Cnt[22]~71\)) # (!\Hz2Lane|s_Cnt\(23) & ((\Hz2Lane|s_Cnt[22]~71\) # (GND)))
-- \Hz2Lane|s_Cnt[23]~73\ = CARRY((!\Hz2Lane|s_Cnt[22]~71\) # (!\Hz2Lane|s_Cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_Cnt\(23),
	datad => VCC,
	cin => \Hz2Lane|s_Cnt[22]~71\,
	combout => \Hz2Lane|s_Cnt[23]~72_combout\,
	cout => \Hz2Lane|s_Cnt[23]~73\);

-- Location: FF_X73_Y33_N23
\Hz2Lane|s_Cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[23]~72_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(23));

-- Location: LCCOMB_X73_Y33_N26
\Hz2Lane|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Equal0~6_combout\ = (((\Hz2Lane|s_Cnt\(23)) # (!\Hz2Lane|s_Cnt\(22))) # (!\Hz2Lane|s_Cnt\(20))) # (!\Hz2Lane|s_Cnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_Cnt\(21),
	datab => \Hz2Lane|s_Cnt\(20),
	datac => \Hz2Lane|s_Cnt\(23),
	datad => \Hz2Lane|s_Cnt\(22),
	combout => \Hz2Lane|Equal0~6_combout\);

-- Location: LCCOMB_X73_Y33_N28
\Hz2Lane|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Equal0~5_combout\ = (\Hz2Lane|s_Cnt\(17)) # (((!\Hz2Lane|s_Cnt\(18)) # (!\Hz2Lane|s_Cnt\(19))) # (!\Hz2Lane|s_Cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_Cnt\(17),
	datab => \Hz2Lane|s_Cnt\(16),
	datac => \Hz2Lane|s_Cnt\(19),
	datad => \Hz2Lane|s_Cnt\(18),
	combout => \Hz2Lane|Equal0~5_combout\);

-- Location: LCCOMB_X73_Y33_N24
\Hz2Lane|s_Cnt[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_Cnt[24]~74_combout\ = \Hz2Lane|s_Cnt[23]~73\ $ (!\Hz2Lane|s_Cnt\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Hz2Lane|s_Cnt\(24),
	cin => \Hz2Lane|s_Cnt[23]~73\,
	combout => \Hz2Lane|s_Cnt[24]~74_combout\);

-- Location: FF_X73_Y33_N25
\Hz2Lane|s_Cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_Cnt[24]~74_combout\,
	sclr => \Hz2Lane|s_Cnt[17]~27_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_Cnt\(24));

-- Location: LCCOMB_X73_Y34_N6
\Hz2Lane|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Equal0~1_combout\ = (\Hz2Lane|s_Cnt\(7)) # (((\Hz2Lane|s_Cnt\(6)) # (!\Hz2Lane|s_Cnt\(5))) # (!\Hz2Lane|s_Cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_Cnt\(7),
	datab => \Hz2Lane|s_Cnt\(4),
	datac => \Hz2Lane|s_Cnt\(6),
	datad => \Hz2Lane|s_Cnt\(5),
	combout => \Hz2Lane|Equal0~1_combout\);

-- Location: LCCOMB_X73_Y33_N30
\Hz2Lane|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Equal0~3_combout\ = (\Hz2Lane|s_Cnt\(15)) # (((!\Hz2Lane|s_Cnt\(12)) # (!\Hz2Lane|s_Cnt\(14))) # (!\Hz2Lane|s_Cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_Cnt\(15),
	datab => \Hz2Lane|s_Cnt\(13),
	datac => \Hz2Lane|s_Cnt\(14),
	datad => \Hz2Lane|s_Cnt\(12),
	combout => \Hz2Lane|Equal0~3_combout\);

-- Location: LCCOMB_X73_Y34_N0
\Hz2Lane|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Equal0~2_combout\ = ((\Hz2Lane|s_Cnt\(10)) # ((\Hz2Lane|s_Cnt\(9)) # (\Hz2Lane|s_Cnt\(8)))) # (!\Hz2Lane|s_Cnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_Cnt\(11),
	datab => \Hz2Lane|s_Cnt\(10),
	datac => \Hz2Lane|s_Cnt\(9),
	datad => \Hz2Lane|s_Cnt\(8),
	combout => \Hz2Lane|Equal0~2_combout\);

-- Location: LCCOMB_X73_Y34_N4
\Hz2Lane|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Equal0~0_combout\ = (((!\Hz2Lane|s_Cnt\(2)) # (!\Hz2Lane|s_Cnt\(0))) # (!\Hz2Lane|s_Cnt\(3))) # (!\Hz2Lane|s_Cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_Cnt\(1),
	datab => \Hz2Lane|s_Cnt\(3),
	datac => \Hz2Lane|s_Cnt\(0),
	datad => \Hz2Lane|s_Cnt\(2),
	combout => \Hz2Lane|Equal0~0_combout\);

-- Location: LCCOMB_X74_Y33_N18
\Hz2Lane|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Equal0~4_combout\ = (\Hz2Lane|Equal0~1_combout\) # ((\Hz2Lane|Equal0~3_combout\) # ((\Hz2Lane|Equal0~2_combout\) # (\Hz2Lane|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|Equal0~1_combout\,
	datab => \Hz2Lane|Equal0~3_combout\,
	datac => \Hz2Lane|Equal0~2_combout\,
	datad => \Hz2Lane|Equal0~0_combout\,
	combout => \Hz2Lane|Equal0~4_combout\);

-- Location: LCCOMB_X74_Y33_N20
\Hz2Lane|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Equal0~7_combout\ = (\Hz2Lane|Equal0~6_combout\) # ((\Hz2Lane|Equal0~5_combout\) # ((\Hz2Lane|Equal0~4_combout\) # (!\Hz2Lane|s_Cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|Equal0~6_combout\,
	datab => \Hz2Lane|Equal0~5_combout\,
	datac => \Hz2Lane|s_Cnt\(24),
	datad => \Hz2Lane|Equal0~4_combout\,
	combout => \Hz2Lane|Equal0~7_combout\);

-- Location: LCCOMB_X74_Y33_N16
\Hz2Lane|pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|pulse~0_combout\ = (!\StateController|callGlobalReset~q\ & !\Hz2Lane|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateController|callGlobalReset~q\,
	datad => \Hz2Lane|Equal0~7_combout\,
	combout => \Hz2Lane|pulse~0_combout\);

-- Location: FF_X74_Y33_N17
\Hz2Lane|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|pulse~0_combout\,
	ena => \StateController|callStartStop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|pulse~q\);

-- Location: LCCOMB_X77_Y17_N0
\AddressGenerator|s_address[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddressGenerator|s_address[0]~8_combout\ = (\Hz2Lane|pulse~q\ & (\AddressGenerator|s_address\(0) $ (VCC))) # (!\Hz2Lane|pulse~q\ & (\AddressGenerator|s_address\(0) & VCC))
-- \AddressGenerator|s_address[0]~9\ = CARRY((\Hz2Lane|pulse~q\ & \AddressGenerator|s_address\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|pulse~q\,
	datab => \AddressGenerator|s_address\(0),
	datad => VCC,
	combout => \AddressGenerator|s_address[0]~8_combout\,
	cout => \AddressGenerator|s_address[0]~9\);

-- Location: FF_X77_Y17_N1
\AddressGenerator|s_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \AddressGenerator|s_address[0]~8_combout\,
	sclr => \StateController|callGlobalReset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressGenerator|s_address\(0));

-- Location: LCCOMB_X77_Y17_N16
\RomManagment|s_SearchAddress[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomManagment|s_SearchAddress[0]~8_combout\ = (\RomManagment|currState~q\ & (\AddressGenerator|s_address\(0) $ (VCC))) # (!\RomManagment|currState~q\ & (\AddressGenerator|s_address\(0) & VCC))
-- \RomManagment|s_SearchAddress[0]~9\ = CARRY((\RomManagment|currState~q\ & \AddressGenerator|s_address\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomManagment|currState~q\,
	datab => \AddressGenerator|s_address\(0),
	datad => VCC,
	combout => \RomManagment|s_SearchAddress[0]~8_combout\,
	cout => \RomManagment|s_SearchAddress[0]~9\);

-- Location: FF_X77_Y17_N17
\RomManagment|s_SearchAddress[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RomManagment|s_SearchAddress[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RomManagment|s_SearchAddress\(0));

-- Location: LCCOMB_X77_Y17_N2
\AddressGenerator|s_address[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddressGenerator|s_address[1]~10_combout\ = (\AddressGenerator|s_address\(1) & (!\AddressGenerator|s_address[0]~9\)) # (!\AddressGenerator|s_address\(1) & ((\AddressGenerator|s_address[0]~9\) # (GND)))
-- \AddressGenerator|s_address[1]~11\ = CARRY((!\AddressGenerator|s_address[0]~9\) # (!\AddressGenerator|s_address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AddressGenerator|s_address\(1),
	datad => VCC,
	cin => \AddressGenerator|s_address[0]~9\,
	combout => \AddressGenerator|s_address[1]~10_combout\,
	cout => \AddressGenerator|s_address[1]~11\);

-- Location: FF_X77_Y17_N3
\AddressGenerator|s_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \AddressGenerator|s_address[1]~10_combout\,
	sclr => \StateController|callGlobalReset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressGenerator|s_address\(1));

-- Location: LCCOMB_X77_Y17_N18
\RomManagment|s_SearchAddress[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomManagment|s_SearchAddress[1]~10_combout\ = (\AddressGenerator|s_address\(1) & (!\RomManagment|s_SearchAddress[0]~9\)) # (!\AddressGenerator|s_address\(1) & ((\RomManagment|s_SearchAddress[0]~9\) # (GND)))
-- \RomManagment|s_SearchAddress[1]~11\ = CARRY((!\RomManagment|s_SearchAddress[0]~9\) # (!\AddressGenerator|s_address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AddressGenerator|s_address\(1),
	datad => VCC,
	cin => \RomManagment|s_SearchAddress[0]~9\,
	combout => \RomManagment|s_SearchAddress[1]~10_combout\,
	cout => \RomManagment|s_SearchAddress[1]~11\);

-- Location: FF_X77_Y17_N19
\RomManagment|s_SearchAddress[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RomManagment|s_SearchAddress[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RomManagment|s_SearchAddress\(1));

-- Location: LCCOMB_X77_Y17_N4
\AddressGenerator|s_address[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddressGenerator|s_address[2]~12_combout\ = (\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address[1]~11\ $ (GND))) # (!\AddressGenerator|s_address\(2) & (!\AddressGenerator|s_address[1]~11\ & VCC))
-- \AddressGenerator|s_address[2]~13\ = CARRY((\AddressGenerator|s_address\(2) & !\AddressGenerator|s_address[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AddressGenerator|s_address\(2),
	datad => VCC,
	cin => \AddressGenerator|s_address[1]~11\,
	combout => \AddressGenerator|s_address[2]~12_combout\,
	cout => \AddressGenerator|s_address[2]~13\);

-- Location: FF_X77_Y17_N5
\AddressGenerator|s_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \AddressGenerator|s_address[2]~12_combout\,
	sclr => \StateController|callGlobalReset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressGenerator|s_address\(2));

-- Location: LCCOMB_X77_Y17_N20
\RomManagment|s_SearchAddress[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomManagment|s_SearchAddress[2]~12_combout\ = (\AddressGenerator|s_address\(2) & (\RomManagment|s_SearchAddress[1]~11\ $ (GND))) # (!\AddressGenerator|s_address\(2) & (!\RomManagment|s_SearchAddress[1]~11\ & VCC))
-- \RomManagment|s_SearchAddress[2]~13\ = CARRY((\AddressGenerator|s_address\(2) & !\RomManagment|s_SearchAddress[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AddressGenerator|s_address\(2),
	datad => VCC,
	cin => \RomManagment|s_SearchAddress[1]~11\,
	combout => \RomManagment|s_SearchAddress[2]~12_combout\,
	cout => \RomManagment|s_SearchAddress[2]~13\);

-- Location: FF_X77_Y17_N21
\RomManagment|s_SearchAddress[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RomManagment|s_SearchAddress[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RomManagment|s_SearchAddress\(2));

-- Location: LCCOMB_X77_Y17_N6
\AddressGenerator|s_address[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddressGenerator|s_address[3]~14_combout\ = (\AddressGenerator|s_address\(3) & (!\AddressGenerator|s_address[2]~13\)) # (!\AddressGenerator|s_address\(3) & ((\AddressGenerator|s_address[2]~13\) # (GND)))
-- \AddressGenerator|s_address[3]~15\ = CARRY((!\AddressGenerator|s_address[2]~13\) # (!\AddressGenerator|s_address\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datad => VCC,
	cin => \AddressGenerator|s_address[2]~13\,
	combout => \AddressGenerator|s_address[3]~14_combout\,
	cout => \AddressGenerator|s_address[3]~15\);

-- Location: FF_X77_Y17_N7
\AddressGenerator|s_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \AddressGenerator|s_address[3]~14_combout\,
	sclr => \StateController|callGlobalReset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressGenerator|s_address\(3));

-- Location: LCCOMB_X77_Y17_N22
\RomManagment|s_SearchAddress[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomManagment|s_SearchAddress[3]~14_combout\ = (\AddressGenerator|s_address\(3) & (!\RomManagment|s_SearchAddress[2]~13\)) # (!\AddressGenerator|s_address\(3) & ((\RomManagment|s_SearchAddress[2]~13\) # (GND)))
-- \RomManagment|s_SearchAddress[3]~15\ = CARRY((!\RomManagment|s_SearchAddress[2]~13\) # (!\AddressGenerator|s_address\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datad => VCC,
	cin => \RomManagment|s_SearchAddress[2]~13\,
	combout => \RomManagment|s_SearchAddress[3]~14_combout\,
	cout => \RomManagment|s_SearchAddress[3]~15\);

-- Location: FF_X77_Y17_N23
\RomManagment|s_SearchAddress[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RomManagment|s_SearchAddress[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RomManagment|s_SearchAddress\(3));

-- Location: LCCOMB_X77_Y17_N8
\AddressGenerator|s_address[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddressGenerator|s_address[4]~16_combout\ = (\AddressGenerator|s_address\(4) & (\AddressGenerator|s_address[3]~15\ $ (GND))) # (!\AddressGenerator|s_address\(4) & (!\AddressGenerator|s_address[3]~15\ & VCC))
-- \AddressGenerator|s_address[4]~17\ = CARRY((\AddressGenerator|s_address\(4) & !\AddressGenerator|s_address[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AddressGenerator|s_address\(4),
	datad => VCC,
	cin => \AddressGenerator|s_address[3]~15\,
	combout => \AddressGenerator|s_address[4]~16_combout\,
	cout => \AddressGenerator|s_address[4]~17\);

-- Location: FF_X77_Y17_N9
\AddressGenerator|s_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \AddressGenerator|s_address[4]~16_combout\,
	sclr => \StateController|callGlobalReset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressGenerator|s_address\(4));

-- Location: LCCOMB_X77_Y17_N24
\RomManagment|s_SearchAddress[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomManagment|s_SearchAddress[4]~16_combout\ = (\AddressGenerator|s_address\(4) & (\RomManagment|s_SearchAddress[3]~15\ $ (GND))) # (!\AddressGenerator|s_address\(4) & (!\RomManagment|s_SearchAddress[3]~15\ & VCC))
-- \RomManagment|s_SearchAddress[4]~17\ = CARRY((\AddressGenerator|s_address\(4) & !\RomManagment|s_SearchAddress[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AddressGenerator|s_address\(4),
	datad => VCC,
	cin => \RomManagment|s_SearchAddress[3]~15\,
	combout => \RomManagment|s_SearchAddress[4]~16_combout\,
	cout => \RomManagment|s_SearchAddress[4]~17\);

-- Location: FF_X77_Y17_N25
\RomManagment|s_SearchAddress[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RomManagment|s_SearchAddress[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RomManagment|s_SearchAddress\(4));

-- Location: LCCOMB_X77_Y17_N10
\AddressGenerator|s_address[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddressGenerator|s_address[5]~18_combout\ = (\AddressGenerator|s_address\(5) & (!\AddressGenerator|s_address[4]~17\)) # (!\AddressGenerator|s_address\(5) & ((\AddressGenerator|s_address[4]~17\) # (GND)))
-- \AddressGenerator|s_address[5]~19\ = CARRY((!\AddressGenerator|s_address[4]~17\) # (!\AddressGenerator|s_address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(5),
	datad => VCC,
	cin => \AddressGenerator|s_address[4]~17\,
	combout => \AddressGenerator|s_address[5]~18_combout\,
	cout => \AddressGenerator|s_address[5]~19\);

-- Location: FF_X77_Y17_N11
\AddressGenerator|s_address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \AddressGenerator|s_address[5]~18_combout\,
	sclr => \StateController|callGlobalReset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressGenerator|s_address\(5));

-- Location: LCCOMB_X77_Y17_N26
\RomManagment|s_SearchAddress[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomManagment|s_SearchAddress[5]~18_combout\ = (\AddressGenerator|s_address\(5) & (!\RomManagment|s_SearchAddress[4]~17\)) # (!\AddressGenerator|s_address\(5) & ((\RomManagment|s_SearchAddress[4]~17\) # (GND)))
-- \RomManagment|s_SearchAddress[5]~19\ = CARRY((!\RomManagment|s_SearchAddress[4]~17\) # (!\AddressGenerator|s_address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(5),
	datad => VCC,
	cin => \RomManagment|s_SearchAddress[4]~17\,
	combout => \RomManagment|s_SearchAddress[5]~18_combout\,
	cout => \RomManagment|s_SearchAddress[5]~19\);

-- Location: FF_X77_Y17_N27
\RomManagment|s_SearchAddress[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RomManagment|s_SearchAddress[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RomManagment|s_SearchAddress\(5));

-- Location: LCCOMB_X77_Y17_N12
\AddressGenerator|s_address[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddressGenerator|s_address[6]~20_combout\ = (\AddressGenerator|s_address\(6) & (\AddressGenerator|s_address[5]~19\ $ (GND))) # (!\AddressGenerator|s_address\(6) & (!\AddressGenerator|s_address[5]~19\ & VCC))
-- \AddressGenerator|s_address[6]~21\ = CARRY((\AddressGenerator|s_address\(6) & !\AddressGenerator|s_address[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(6),
	datad => VCC,
	cin => \AddressGenerator|s_address[5]~19\,
	combout => \AddressGenerator|s_address[6]~20_combout\,
	cout => \AddressGenerator|s_address[6]~21\);

-- Location: FF_X77_Y17_N13
\AddressGenerator|s_address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \AddressGenerator|s_address[6]~20_combout\,
	sclr => \StateController|callGlobalReset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressGenerator|s_address\(6));

-- Location: LCCOMB_X77_Y17_N28
\RomManagment|s_SearchAddress[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomManagment|s_SearchAddress[6]~20_combout\ = (\AddressGenerator|s_address\(6) & (\RomManagment|s_SearchAddress[5]~19\ $ (GND))) # (!\AddressGenerator|s_address\(6) & (!\RomManagment|s_SearchAddress[5]~19\ & VCC))
-- \RomManagment|s_SearchAddress[6]~21\ = CARRY((\AddressGenerator|s_address\(6) & !\RomManagment|s_SearchAddress[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(6),
	datad => VCC,
	cin => \RomManagment|s_SearchAddress[5]~19\,
	combout => \RomManagment|s_SearchAddress[6]~20_combout\,
	cout => \RomManagment|s_SearchAddress[6]~21\);

-- Location: FF_X77_Y17_N29
\RomManagment|s_SearchAddress[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RomManagment|s_SearchAddress[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RomManagment|s_SearchAddress\(6));

-- Location: LCCOMB_X77_Y17_N14
\AddressGenerator|s_address[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddressGenerator|s_address[7]~22_combout\ = \AddressGenerator|s_address\(7) $ (\AddressGenerator|s_address[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AddressGenerator|s_address\(7),
	cin => \AddressGenerator|s_address[6]~21\,
	combout => \AddressGenerator|s_address[7]~22_combout\);

-- Location: FF_X77_Y17_N15
\AddressGenerator|s_address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \AddressGenerator|s_address[7]~22_combout\,
	sclr => \StateController|callGlobalReset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressGenerator|s_address\(7));

-- Location: LCCOMB_X77_Y17_N30
\RomManagment|s_SearchAddress[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomManagment|s_SearchAddress[7]~22_combout\ = \AddressGenerator|s_address\(7) $ (\RomManagment|s_SearchAddress[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AddressGenerator|s_address\(7),
	cin => \RomManagment|s_SearchAddress[6]~21\,
	combout => \RomManagment|s_SearchAddress[7]~22_combout\);

-- Location: FF_X77_Y17_N31
\RomManagment|s_SearchAddress[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RomManagment|s_SearchAddress[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RomManagment|s_SearchAddress\(7));

-- Location: M9K_X78_Y17_N0
\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"0032000C40034C00CA0030800C40032400B1002C800B0002E0009A002E800B20025800A00025800AF002E400BC002E400BB002DC00AB0032000CD0030C00B200",
	mem_init1 => X"2E400D30030000C90037400D2003A400EE0039000E0003F800E4003FC00EC003F800F6003AC00F5003F4000300030001200010001900044001A000BC0020000900021000540037000800034000A8003E0011800430011C005100138005200140004D0014C00470019800680016C0054001A000550014C004B00104004A0010C004B000C0002C000F4002700094002A000A4001B000D40016000AC001A000B0001C00040001900010000F003F40000003D400FA003D400DF003D400F0003D000E50038800E2003B400D30030000C40036000D50033000C30033000BA002F800C9002E000B60032400B0002A800A8002AC00A300278009D0028C009D002B000B70",
	mem_init0 => X"031400B00030400BF0034400C9002F800CE0038000DD0035C00DF0036000DF0034400E00038400E9003A800E50003800FD003E400E900004000500020000800060001D00044000E000A4001F0007C0027000CC0036000DC0039000F00043000D0003D0011C00410012C00470011000570013C005B00174005100178005A0013400550014C005E0013C005A000D40045001180032001200024000900024000C800400009800240007C002200068001600038001F00024000500030000F0000400F5003F400ED003C000F60038000E10037400E30038800DB0035000D70033400D00033C00CF002FC00BF002F800A9002BC00C4002AC00A4002A40092002B400A9",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "FiltroMediaMovel.FiltroMediaMovel0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RomManager:RomManagment|NoisyTriangSignalROM256x8:NoisyROM|altsyncram:Mux7_rtl_0|altsyncram_c921:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \RomManagment|currState~q\,
	portaaddr => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X79_Y17_N4
\DataBank|s_data0[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataBank|s_data0[7]~feeder_combout\ = \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\,
	combout => \DataBank|s_data0[7]~feeder_combout\);

-- Location: FF_X79_Y17_N5
\DataBank|s_data0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DataBank|s_data0[7]~feeder_combout\,
	ena => \Hz2Lane|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataBank|s_data0\(7));

-- Location: LCCOMB_X79_Y17_N18
\DataBank|s_data0[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataBank|s_data0[6]~feeder_combout\ = \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a6\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a6\,
	combout => \DataBank|s_data0[6]~feeder_combout\);

-- Location: FF_X79_Y17_N19
\DataBank|s_data0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DataBank|s_data0[6]~feeder_combout\,
	ena => \Hz2Lane|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataBank|s_data0\(6));

-- Location: FF_X79_Y17_N13
\DataBank|s_data0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a5\,
	sload => VCC,
	ena => \Hz2Lane|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataBank|s_data0\(5));

-- Location: LCCOMB_X79_Y17_N10
\DataBank|s_data0[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataBank|s_data0[4]~feeder_combout\ = \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a4\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a4\,
	combout => \DataBank|s_data0[4]~feeder_combout\);

-- Location: FF_X79_Y17_N11
\DataBank|s_data0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DataBank|s_data0[4]~feeder_combout\,
	ena => \Hz2Lane|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataBank|s_data0\(4));

-- Location: FF_X79_Y17_N25
\DataBank|s_data0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a3\,
	sload => VCC,
	ena => \Hz2Lane|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataBank|s_data0\(3));

-- Location: LCCOMB_X79_Y17_N14
\DataBank|s_data0[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataBank|s_data0[2]~feeder_combout\ = \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a2\,
	combout => \DataBank|s_data0[2]~feeder_combout\);

-- Location: FF_X79_Y17_N15
\DataBank|s_data0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DataBank|s_data0[2]~feeder_combout\,
	ena => \Hz2Lane|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataBank|s_data0\(2));

-- Location: LCCOMB_X79_Y17_N0
\DataBank|s_data0[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataBank|s_data0[1]~feeder_combout\ = \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a1\,
	combout => \DataBank|s_data0[1]~feeder_combout\);

-- Location: FF_X79_Y17_N1
\DataBank|s_data0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DataBank|s_data0[1]~feeder_combout\,
	ena => \Hz2Lane|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataBank|s_data0\(1));

-- Location: FF_X79_Y17_N31
\DataBank|s_data0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\,
	sload => VCC,
	ena => \Hz2Lane|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataBank|s_data0\(0));

-- Location: LCCOMB_X79_Y17_N28
\RamDisplay|s_DataIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|s_DataIn~0_combout\ = \DataBank|s_data0\(0) $ (\DataBank|s_data0\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataBank|s_data0\(0),
	datac => \DataBank|s_data0\(7),
	combout => \RamDisplay|s_DataIn~0_combout\);

-- Location: LCCOMB_X79_Y13_N4
\RamDisplay|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Add0~0_combout\ = (\RamDisplay|s_DataIn~0_combout\ & (\DataBank|s_data0\(7) $ (VCC))) # (!\RamDisplay|s_DataIn~0_combout\ & (\DataBank|s_data0\(7) & VCC))
-- \RamDisplay|Add0~1\ = CARRY((\RamDisplay|s_DataIn~0_combout\ & \DataBank|s_data0\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|s_DataIn~0_combout\,
	datab => \DataBank|s_data0\(7),
	datad => VCC,
	combout => \RamDisplay|Add0~0_combout\,
	cout => \RamDisplay|Add0~1\);

-- Location: LCCOMB_X79_Y13_N6
\RamDisplay|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Add0~2_combout\ = (\RamDisplay|Add0~1\ & (\DataBank|s_data0\(1) $ ((!\DataBank|s_data0\(7))))) # (!\RamDisplay|Add0~1\ & ((\DataBank|s_data0\(1) $ (\DataBank|s_data0\(7))) # (GND)))
-- \RamDisplay|Add0~3\ = CARRY((\DataBank|s_data0\(1) $ (!\DataBank|s_data0\(7))) # (!\RamDisplay|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataBank|s_data0\(1),
	datab => \DataBank|s_data0\(7),
	datad => VCC,
	cin => \RamDisplay|Add0~1\,
	combout => \RamDisplay|Add0~2_combout\,
	cout => \RamDisplay|Add0~3\);

-- Location: LCCOMB_X79_Y13_N8
\RamDisplay|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Add0~4_combout\ = (\RamDisplay|Add0~3\ & ((\DataBank|s_data0\(2) $ (\DataBank|s_data0\(7))))) # (!\RamDisplay|Add0~3\ & (\DataBank|s_data0\(2) $ (\DataBank|s_data0\(7) $ (VCC))))
-- \RamDisplay|Add0~5\ = CARRY((!\RamDisplay|Add0~3\ & (\DataBank|s_data0\(2) $ (\DataBank|s_data0\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataBank|s_data0\(2),
	datab => \DataBank|s_data0\(7),
	datad => VCC,
	cin => \RamDisplay|Add0~3\,
	combout => \RamDisplay|Add0~4_combout\,
	cout => \RamDisplay|Add0~5\);

-- Location: LCCOMB_X79_Y13_N10
\RamDisplay|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Add0~6_combout\ = (\RamDisplay|Add0~5\ & (\DataBank|s_data0\(3) $ ((!\DataBank|s_data0\(7))))) # (!\RamDisplay|Add0~5\ & ((\DataBank|s_data0\(3) $ (\DataBank|s_data0\(7))) # (GND)))
-- \RamDisplay|Add0~7\ = CARRY((\DataBank|s_data0\(3) $ (!\DataBank|s_data0\(7))) # (!\RamDisplay|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataBank|s_data0\(3),
	datab => \DataBank|s_data0\(7),
	datad => VCC,
	cin => \RamDisplay|Add0~5\,
	combout => \RamDisplay|Add0~6_combout\,
	cout => \RamDisplay|Add0~7\);

-- Location: LCCOMB_X79_Y13_N12
\RamDisplay|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Add0~8_combout\ = (\RamDisplay|Add0~7\ & ((\DataBank|s_data0\(4) $ (\DataBank|s_data0\(7))))) # (!\RamDisplay|Add0~7\ & (\DataBank|s_data0\(4) $ (\DataBank|s_data0\(7) $ (VCC))))
-- \RamDisplay|Add0~9\ = CARRY((!\RamDisplay|Add0~7\ & (\DataBank|s_data0\(4) $ (\DataBank|s_data0\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataBank|s_data0\(4),
	datab => \DataBank|s_data0\(7),
	datad => VCC,
	cin => \RamDisplay|Add0~7\,
	combout => \RamDisplay|Add0~8_combout\,
	cout => \RamDisplay|Add0~9\);

-- Location: LCCOMB_X79_Y13_N14
\RamDisplay|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Add0~10_combout\ = (\RamDisplay|Add0~9\ & (\DataBank|s_data0\(5) $ ((!\DataBank|s_data0\(7))))) # (!\RamDisplay|Add0~9\ & ((\DataBank|s_data0\(5) $ (\DataBank|s_data0\(7))) # (GND)))
-- \RamDisplay|Add0~11\ = CARRY((\DataBank|s_data0\(5) $ (!\DataBank|s_data0\(7))) # (!\RamDisplay|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataBank|s_data0\(5),
	datab => \DataBank|s_data0\(7),
	datad => VCC,
	cin => \RamDisplay|Add0~9\,
	combout => \RamDisplay|Add0~10_combout\,
	cout => \RamDisplay|Add0~11\);

-- Location: LCCOMB_X79_Y13_N16
\RamDisplay|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Add0~12_combout\ = (\RamDisplay|Add0~11\ & ((\DataBank|s_data0\(7) $ (\DataBank|s_data0\(6))))) # (!\RamDisplay|Add0~11\ & (\DataBank|s_data0\(7) $ (\DataBank|s_data0\(6) $ (VCC))))
-- \RamDisplay|Add0~13\ = CARRY((!\RamDisplay|Add0~11\ & (\DataBank|s_data0\(7) $ (\DataBank|s_data0\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataBank|s_data0\(7),
	datab => \DataBank|s_data0\(6),
	datad => VCC,
	cin => \RamDisplay|Add0~11\,
	combout => \RamDisplay|Add0~12_combout\,
	cout => \RamDisplay|Add0~13\);

-- Location: LCCOMB_X79_Y13_N18
\RamDisplay|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Add0~14_combout\ = \RamDisplay|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RamDisplay|Add0~13\,
	combout => \RamDisplay|Add0~14_combout\);

-- Location: LCCOMB_X81_Y13_N14
\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \RamDisplay|Add0~6_combout\ $ (VCC)
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\RamDisplay|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Add0~6_combout\,
	datad => VCC,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X81_Y13_N16
\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\RamDisplay|Add0~8_combout\ & (\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\RamDisplay|Add0~8_combout\ & 
-- (!\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\RamDisplay|Add0~8_combout\ & !\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Add0~8_combout\,
	datad => VCC,
	cin => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X81_Y13_N18
\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\RamDisplay|Add0~10_combout\ & ((GND) # (!\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\RamDisplay|Add0~10_combout\ & 
-- (\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\RamDisplay|Add0~10_combout\) # (!\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Add0~10_combout\,
	datad => VCC,
	cin => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X81_Y13_N20
\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\RamDisplay|Add0~12_combout\ & (!\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\RamDisplay|Add0~12_combout\ & 
-- ((\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\RamDisplay|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Add0~12_combout\,
	datad => VCC,
	cin => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X81_Y13_N22
\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\RamDisplay|Add0~14_combout\ & (\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\RamDisplay|Add0~14_combout\ & 
-- (!\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\RamDisplay|Add0~14_combout\ & !\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Add0~14_combout\,
	datad => VCC,
	cin => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X81_Y13_N24
\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X81_Y13_N2
\RamDisplay|Div0|auto_generated|divider|divider|StageOut[54]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ = (\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X81_Y13_N28
\RamDisplay|Div0|auto_generated|divider|divider|StageOut[54]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\RamDisplay|Add0~14_combout\ & \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Add0~14_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X80_Y13_N28
\RamDisplay|Div0|auto_generated|divider|divider|StageOut[53]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\RamDisplay|Add0~12_combout\ & \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Add0~12_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X81_Y13_N8
\RamDisplay|Div0|auto_generated|divider|divider|StageOut[53]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ = (\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X80_Y13_N22
\RamDisplay|Div0|auto_generated|divider|divider|StageOut[52]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\RamDisplay|Add0~10_combout\ & \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Add0~10_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X81_Y13_N10
\RamDisplay|Div0|auto_generated|divider|divider|StageOut[52]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ = (\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: LCCOMB_X80_Y13_N24
\RamDisplay|Div0|auto_generated|divider|divider|StageOut[51]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\RamDisplay|Add0~8_combout\ & \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Add0~8_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X81_Y13_N12
\RamDisplay|Div0|auto_generated|divider|divider|StageOut[51]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ = (\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X81_Y13_N4
\RamDisplay|Div0|auto_generated|divider|divider|StageOut[50]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ = (\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LCCOMB_X81_Y13_N26
\RamDisplay|Div0|auto_generated|divider|divider|StageOut[50]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\RamDisplay|Add0~6_combout\ & \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Add0~6_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X80_Y13_N26
\RamDisplay|Div0|auto_generated|divider|divider|StageOut[49]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\RamDisplay|Add0~4_combout\ & \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Add0~4_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X80_Y13_N2
\RamDisplay|Div0|auto_generated|divider|divider|StageOut[49]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ = (\RamDisplay|Add0~4_combout\ & !\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Add0~4_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LCCOMB_X80_Y13_N8
\RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY((\RamDisplay|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\) # (\RamDisplay|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datab => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\,
	datad => VCC,
	cout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

-- Location: LCCOMB_X80_Y13_N10
\RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ = CARRY((!\RamDisplay|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ & (!\RamDisplay|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ & 
-- !\RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\,
	datab => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datad => VCC,
	cin => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\,
	cout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\);

-- Location: LCCOMB_X80_Y13_N12
\RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\RamDisplay|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\) # ((\RamDisplay|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\) # 
-- (!\RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datab => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datad => VCC,
	cin => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X80_Y13_N14
\RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ = CARRY(((!\RamDisplay|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ & !\RamDisplay|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\)) # 
-- (!\RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datab => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\,
	datad => VCC,
	cin => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\,
	cout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\);

-- Location: LCCOMB_X80_Y13_N16
\RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & ((\RamDisplay|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\) # 
-- (\RamDisplay|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datab => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datad => VCC,
	cin => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X80_Y13_N18
\RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\RamDisplay|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ & (!\RamDisplay|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ & 
-- !\RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datab => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datad => VCC,
	cin => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X80_Y13_N20
\RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X81_Y13_N30
\RamDisplay|hundredsDisplayProc|dataOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|hundredsDisplayProc|dataOut[0]~0_combout\ = (!\RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|hundredsDisplayProc|dataOut[0]~0_combout\);

-- Location: LCCOMB_X80_Y13_N4
\RamDisplay|hundredsDisplayProc|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|hundredsDisplayProc|Equal9~0_combout\ = (\RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|hundredsDisplayProc|Equal9~0_combout\);

-- Location: LCCOMB_X79_Y17_N30
\RamDisplay|hundredsDisplayProc|dataOut[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|hundredsDisplayProc|dataOut[4]~1_combout\ = (\DataBank|s_data0\(2) & (((\DataBank|s_data0\(0)) # (\DataBank|s_data0\(1))) # (!\DataBank|s_data0\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataBank|s_data0\(2),
	datab => \DataBank|s_data0\(4),
	datac => \DataBank|s_data0\(0),
	datad => \DataBank|s_data0\(1),
	combout => \RamDisplay|hundredsDisplayProc|dataOut[4]~1_combout\);

-- Location: LCCOMB_X79_Y17_N24
\RamDisplay|hundredsDisplayProc|dataOut[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|hundredsDisplayProc|dataOut[4]~2_combout\ = (\DataBank|s_data0\(4) & (((\DataBank|s_data0\(3) & \RamDisplay|hundredsDisplayProc|dataOut[4]~1_combout\)) # (!\DataBank|s_data0\(7)))) # (!\DataBank|s_data0\(4) & (!\DataBank|s_data0\(7) & 
-- ((\DataBank|s_data0\(3)) # (\RamDisplay|hundredsDisplayProc|dataOut[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataBank|s_data0\(4),
	datab => \DataBank|s_data0\(7),
	datac => \DataBank|s_data0\(3),
	datad => \RamDisplay|hundredsDisplayProc|dataOut[4]~1_combout\,
	combout => \RamDisplay|hundredsDisplayProc|dataOut[4]~2_combout\);

-- Location: LCCOMB_X79_Y17_N12
\RamDisplay|hundredsDisplayProc|dataOut[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|hundredsDisplayProc|dataOut[4]~3_combout\ = (\DataBank|s_data0\(6) & (!\DataBank|s_data0\(7) & (\DataBank|s_data0\(5) & \RamDisplay|hundredsDisplayProc|dataOut[4]~2_combout\))) # (!\DataBank|s_data0\(6) & (\DataBank|s_data0\(7) & 
-- (!\DataBank|s_data0\(5) & !\RamDisplay|hundredsDisplayProc|dataOut[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataBank|s_data0\(6),
	datab => \DataBank|s_data0\(7),
	datac => \DataBank|s_data0\(5),
	datad => \RamDisplay|hundredsDisplayProc|dataOut[4]~2_combout\,
	combout => \RamDisplay|hundredsDisplayProc|dataOut[4]~3_combout\);

-- Location: LCCOMB_X80_Y13_N30
\RamDisplay|hundredsDisplayProc|dataOut[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|hundredsDisplayProc|dataOut[3]~4_combout\ = (\RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|hundredsDisplayProc|dataOut[3]~4_combout\);

-- Location: LCCOMB_X82_Y11_N10
\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \RamDisplay|Add0~6_combout\ $ (VCC)
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\RamDisplay|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Add0~6_combout\,
	datad => VCC,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X82_Y11_N12
\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\RamDisplay|Add0~8_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\RamDisplay|Add0~8_combout\ & 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\RamDisplay|Add0~8_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Add0~8_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X82_Y11_N14
\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\RamDisplay|Add0~10_combout\ & ((GND) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\RamDisplay|Add0~10_combout\ & 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\RamDisplay|Add0~10_combout\) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Add0~10_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X82_Y11_N16
\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\RamDisplay|Add0~12_combout\ & (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\RamDisplay|Add0~12_combout\ & 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\RamDisplay|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Add0~12_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X82_Y11_N18
\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\RamDisplay|Add0~14_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\RamDisplay|Add0~14_combout\ & 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\RamDisplay|Add0~14_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Add0~14_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X82_Y11_N20
\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X81_Y13_N0
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ = (\RamDisplay|Add0~14_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Add0~14_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\);

-- Location: LCCOMB_X82_Y11_N28
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\);

-- Location: LCCOMB_X82_Y11_N2
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\);

-- Location: LCCOMB_X80_Y11_N0
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\ = (\RamDisplay|Add0~12_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Add0~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\);

-- Location: LCCOMB_X82_Y11_N4
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\);

-- Location: LCCOMB_X80_Y11_N14
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ = (\RamDisplay|Add0~10_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Add0~10_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\);

-- Location: LCCOMB_X82_Y11_N6
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\);

-- Location: LCCOMB_X80_Y11_N16
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\ = (\RamDisplay|Add0~8_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Add0~8_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\);

-- Location: LCCOMB_X81_Y13_N6
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RamDisplay|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RamDisplay|Add0~6_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\);

-- Location: LCCOMB_X82_Y11_N24
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\);

-- Location: LCCOMB_X80_Y11_N12
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\ = (\RamDisplay|Add0~4_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Add0~4_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\);

-- Location: LCCOMB_X80_Y11_N6
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\ = (\RamDisplay|Add0~4_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Add0~4_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\);

-- Location: LCCOMB_X81_Y11_N10
\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\)))
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\,
	datad => VCC,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X81_Y11_N12
\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\) # 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\)))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ & 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\)))
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ & (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\ & 
-- !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X81_Y11_N14
\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\) # 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\))))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\) # 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\) # (GND))))
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\) # ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\) # 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X81_Y11_N16
\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ & (((!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ & (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\)) # 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X81_Y11_N18
\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\) # 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\)))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\) # 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\)))))
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\) # 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X81_Y11_N20
\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\) # 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\)))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ & 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\)))
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ = CARRY((!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ & (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ & 
-- !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	cout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\);

-- Location: LCCOMB_X81_Y11_N22
\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X82_Y8_N20
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\ = (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\);

-- Location: LCCOMB_X82_Y11_N22
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\RamDisplay|Add0~14_combout\))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datac => \RamDisplay|Add0~14_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\);

-- Location: LCCOMB_X82_Y7_N10
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\ = (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\);

-- Location: LCCOMB_X82_Y11_N8
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\RamDisplay|Add0~12_combout\))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datac => \RamDisplay|Add0~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\);

-- Location: LCCOMB_X82_Y11_N26
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\RamDisplay|Add0~10_combout\)) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Add0~10_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\);

-- Location: LCCOMB_X82_Y8_N30
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\ = (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\);

-- Location: LCCOMB_X82_Y7_N24
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\)))
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\,
	datad => VCC,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X82_Y7_N26
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\) # 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\)))) # (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\ & 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\)))
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\ & (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\ & 
-- !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\,
	datad => VCC,
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X82_Y7_N28
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\) # 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\)))) # (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\) # 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\)))))
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\) # 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\,
	datad => VCC,
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X82_Y7_N30
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X82_Y7_N14
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ = (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\);

-- Location: LCCOMB_X82_Y8_N4
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\) # 
-- ((!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\);

-- Location: LCCOMB_X82_Y11_N0
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\RamDisplay|Add0~8_combout\))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RamDisplay|Add0~8_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\);

-- Location: LCCOMB_X81_Y8_N14
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\) # 
-- ((!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\);

-- Location: LCCOMB_X81_Y8_N16
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\);

-- Location: LCCOMB_X82_Y8_N24
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X82_Y8_N16
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\ = (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\);

-- Location: LCCOMB_X82_Y4_N14
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\) # (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\)))
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\) # (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\,
	datad => VCC,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X82_Y4_N16
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\) # 
-- (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\)))) # (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ & 
-- (!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\)))
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ & (!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ & 
-- !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\,
	datad => VCC,
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X81_Y7_N16
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[18]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ = (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\);

-- Location: LCCOMB_X82_Y8_N14
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\) # 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\);

-- Location: LCCOMB_X82_Y7_N18
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\) # 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\);

-- Location: LCCOMB_X82_Y7_N20
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\);

-- Location: LCCOMB_X82_Y4_N18
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\)))) # (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\)))))
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\,
	datad => VCC,
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X82_Y4_N20
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ & (!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ & 
-- !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\,
	datad => VCC,
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X82_Y4_N22
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X82_Y7_N22
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\) # 
-- ((\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X82_Y4_N24
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[23]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ = (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\);

-- Location: LCCOMB_X82_Y7_N8
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- ((\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X82_Y4_N6
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\ = (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\);

-- Location: LCCOMB_X82_Y6_N20
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ = (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\);

-- Location: LCCOMB_X82_Y6_N24
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\) # 
-- ((\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\);

-- Location: LCCOMB_X80_Y6_N12
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\ = (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\);

-- Location: LCCOMB_X82_Y11_N30
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\RamDisplay|Add0~6_combout\))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RamDisplay|Add0~6_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\);

-- Location: LCCOMB_X80_Y6_N28
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X82_Y6_N6
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\);

-- Location: LCCOMB_X82_Y6_N28
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\) # 
-- ((!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\);

-- Location: LCCOMB_X82_Y6_N10
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\) # (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\)))
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\) # (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\,
	datad => VCC,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X82_Y6_N12
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\) # 
-- (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\)))) # (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ & 
-- (!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\)))
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ & (!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & 
-- !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datad => VCC,
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X82_Y6_N14
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\)))) # (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\)))))
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\,
	datad => VCC,
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X82_Y6_N16
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ & (!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ & 
-- !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datad => VCC,
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X82_Y6_N18
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X82_Y6_N30
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[28]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\);

-- Location: LCCOMB_X82_Y6_N0
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X82_Y6_N4
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- ((\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\);

-- Location: LCCOMB_X82_Y6_N26
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\);

-- Location: LCCOMB_X82_Y6_N2
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\) # 
-- ((\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\);

-- Location: LCCOMB_X81_Y6_N14
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\);

-- Location: LCCOMB_X80_Y6_N16
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\RamDisplay|Add0~4_combout\)) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Add0~4_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\);

-- Location: LCCOMB_X80_Y6_N8
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\ = (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\);

-- Location: LCCOMB_X80_Y6_N10
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\ = (\RamDisplay|Add0~4_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Add0~4_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\);

-- Location: LCCOMB_X80_Y6_N6
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\);

-- Location: LCCOMB_X81_Y6_N16
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X81_Y6_N20
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\)))
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datad => VCC,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X81_Y6_N22
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\) # 
-- (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\)))) # (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ & 
-- (!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\)))
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ & (!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ & 
-- !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\,
	datad => VCC,
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X81_Y6_N24
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\)))) # (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\)))))
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\,
	datad => VCC,
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X81_Y6_N26
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ & (!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ & 
-- !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datad => VCC,
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X81_Y6_N28
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X81_Y6_N10
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X82_Y6_N8
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[33]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- ((\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\);

-- Location: LCCOMB_X81_Y6_N12
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X82_Y6_N22
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[32]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\) # 
-- ((\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\);

-- Location: LCCOMB_X81_Y6_N30
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[31]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # 
-- ((\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\);

-- Location: LCCOMB_X81_Y6_N18
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X80_Y10_N18
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\ = (\RamDisplay|Add0~2_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Add0~2_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\);

-- Location: LCCOMB_X81_Y10_N10
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\ = (\RamDisplay|Add0~2_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Add0~2_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\);

-- Location: LCCOMB_X80_Y10_N16
\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X81_Y10_N4
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\);

-- Location: LCCOMB_X81_Y10_N20
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\ = (\RamDisplay|Add0~2_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Add0~2_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\);

-- Location: LCCOMB_X81_Y10_N12
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\);

-- Location: LCCOMB_X81_Y10_N18
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[30]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ = (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\);

-- Location: LCCOMB_X81_Y10_N26
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[30]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\RamDisplay|Add0~2_combout\))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datab => \RamDisplay|Add0~2_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\);

-- Location: LCCOMB_X81_Y6_N0
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\) # (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\,
	datad => VCC,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X81_Y6_N2
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ & (!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ & 
-- !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => VCC,
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X81_Y6_N4
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\) # 
-- (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\,
	datad => VCC,
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X81_Y6_N6
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ & (!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ & 
-- !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\,
	datad => VCC,
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X81_Y6_N8
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X82_Y4_N28
\RamDisplay|dozensDisplayProc|dataOut[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[0]~2_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # 
-- (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (((!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[0]~2_combout\);

-- Location: LCCOMB_X82_Y4_N30
\RamDisplay|dozensDisplayProc|dataOut[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[1]~3_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))) # 
-- (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[1]~3_combout\);

-- Location: LCCOMB_X82_Y4_N12
\RamDisplay|dozensDisplayProc|dataOut[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[2]~4_combout\ = (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[2]~4_combout\);

-- Location: LCCOMB_X82_Y4_N2
\RamDisplay|dozensDisplayProc|dataOut[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[3]~5_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # 
-- (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # 
-- (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[3]~5_combout\);

-- Location: LCCOMB_X81_Y11_N6
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\) # 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\)))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\);

-- Location: LCCOMB_X81_Y11_N28
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\) # 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\)))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\);

-- Location: LCCOMB_X81_Y10_N28
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Add0~2_combout\))) # 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datac => \RamDisplay|Add0~2_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\);

-- Location: LCCOMB_X81_Y11_N8
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\) # 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\)))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\);

-- Location: LCCOMB_X81_Y7_N8
\RamDisplay|dozensDisplayProc|dataOut[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~18_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\) # ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & 
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~18_combout\);

-- Location: LCCOMB_X80_Y7_N4
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\RamDisplay|Add0~4_combout\)) # 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \RamDisplay|Add0~4_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\);

-- Location: LCCOMB_X81_Y7_N22
\RamDisplay|dozensDisplayProc|dataOut[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~19_combout\ = (\RamDisplay|dozensDisplayProc|dataOut[4]~18_combout\) # ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datab => \RamDisplay|dozensDisplayProc|dataOut[4]~18_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~19_combout\);

-- Location: LCCOMB_X81_Y11_N24
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\) # 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\)))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\);

-- Location: LCCOMB_X81_Y11_N2
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\) # 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\)))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\);

-- Location: LCCOMB_X81_Y7_N28
\RamDisplay|dozensDisplayProc|dataOut[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~20_combout\ = (\RamDisplay|dozensDisplayProc|dataOut[4]~19_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\)) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\)))) # (!\RamDisplay|dozensDisplayProc|dataOut[4]~19_combout\ & 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|dozensDisplayProc|dataOut[4]~19_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~20_combout\);

-- Location: LCCOMB_X81_Y7_N10
\RamDisplay|dozensDisplayProc|dataOut[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~7_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\)) # 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & ((!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~7_combout\);

-- Location: LCCOMB_X81_Y7_N20
\RamDisplay|dozensDisplayProc|dataOut[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~8_combout\ = (\RamDisplay|dozensDisplayProc|dataOut[4]~7_combout\) # ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\)) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|dozensDisplayProc|dataOut[4]~7_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~8_combout\);

-- Location: LCCOMB_X81_Y7_N4
\RamDisplay|dozensDisplayProc|dataOut[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~16_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ $ (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ $ 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~16_combout\);

-- Location: LCCOMB_X81_Y7_N6
\RamDisplay|dozensDisplayProc|dataOut[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~13_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\))) # 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~13_combout\);

-- Location: LCCOMB_X81_Y7_N12
\RamDisplay|dozensDisplayProc|dataOut[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~14_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ $ (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\)) # 
-- (!\RamDisplay|dozensDisplayProc|dataOut[4]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datad => \RamDisplay|dozensDisplayProc|dataOut[4]~13_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~14_combout\);

-- Location: LCCOMB_X81_Y11_N4
\RamDisplay|dozensDisplayProc|dataOut[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~11_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~11_combout\);

-- Location: LCCOMB_X81_Y11_N30
\RamDisplay|dozensDisplayProc|dataOut[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~10_combout\ = (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\) # 
-- ((!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~10_combout\);

-- Location: LCCOMB_X81_Y11_N0
\RamDisplay|dozensDisplayProc|dataOut[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~9_combout\ = (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\)) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~9_combout\);

-- Location: LCCOMB_X81_Y11_N26
\RamDisplay|dozensDisplayProc|dataOut[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~12_combout\ = (\RamDisplay|dozensDisplayProc|dataOut[4]~11_combout\) # ((\RamDisplay|dozensDisplayProc|dataOut[4]~10_combout\) # (\RamDisplay|dozensDisplayProc|dataOut[4]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|dozensDisplayProc|dataOut[4]~11_combout\,
	datac => \RamDisplay|dozensDisplayProc|dataOut[4]~10_combout\,
	datad => \RamDisplay|dozensDisplayProc|dataOut[4]~9_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~12_combout\);

-- Location: LCCOMB_X81_Y7_N2
\RamDisplay|dozensDisplayProc|dataOut[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~15_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & (((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\) # 
-- (\RamDisplay|dozensDisplayProc|dataOut[4]~12_combout\)))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & (\RamDisplay|dozensDisplayProc|dataOut[4]~14_combout\ & 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|dozensDisplayProc|dataOut[4]~14_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	datad => \RamDisplay|dozensDisplayProc|dataOut[4]~12_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~15_combout\);

-- Location: LCCOMB_X81_Y7_N14
\RamDisplay|dozensDisplayProc|dataOut[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~17_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ & ((\RamDisplay|dozensDisplayProc|dataOut[4]~15_combout\ & ((\RamDisplay|dozensDisplayProc|dataOut[4]~16_combout\))) # 
-- (!\RamDisplay|dozensDisplayProc|dataOut[4]~15_combout\ & (\RamDisplay|dozensDisplayProc|dataOut[4]~8_combout\)))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ & (((\RamDisplay|dozensDisplayProc|dataOut[4]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	datab => \RamDisplay|dozensDisplayProc|dataOut[4]~8_combout\,
	datac => \RamDisplay|dozensDisplayProc|dataOut[4]~16_combout\,
	datad => \RamDisplay|dozensDisplayProc|dataOut[4]~15_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~17_combout\);

-- Location: LCCOMB_X82_Y4_N0
\RamDisplay|dozensDisplayProc|dataOut[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~6_combout\ = (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~6_combout\);

-- Location: LCCOMB_X82_Y4_N8
\RamDisplay|dozensDisplayProc|dataOut[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~21_combout\ = (\RamDisplay|dozensDisplayProc|dataOut[4]~20_combout\ & ((\RamDisplay|dozensDisplayProc|dataOut[4]~6_combout\))) # (!\RamDisplay|dozensDisplayProc|dataOut[4]~20_combout\ & 
-- (\RamDisplay|dozensDisplayProc|dataOut[4]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|dozensDisplayProc|dataOut[4]~20_combout\,
	datac => \RamDisplay|dozensDisplayProc|dataOut[4]~17_combout\,
	datad => \RamDisplay|dozensDisplayProc|dataOut[4]~6_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~21_combout\);

-- Location: LCCOMB_X82_Y4_N26
\RamDisplay|dozensDisplayProc|dataOut[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[5]~22_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # 
-- (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # 
-- ((!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[5]~22_combout\);

-- Location: LCCOMB_X81_Y7_N30
\RamDisplay|dozensDisplayProc|dataOut[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[6]~28_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & (((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\)))) # 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\))) # 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[6]~28_combout\);

-- Location: LCCOMB_X81_Y7_N0
\RamDisplay|dozensDisplayProc|dataOut[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[6]~24_combout\ = (\RamDisplay|dozensDisplayProc|dataOut[6]~28_combout\) # ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ & 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datac => \RamDisplay|dozensDisplayProc|dataOut[6]~28_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[6]~24_combout\);

-- Location: LCCOMB_X81_Y7_N26
\RamDisplay|dozensDisplayProc|dataOut[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[6]~25_combout\ = (\RamDisplay|dozensDisplayProc|dataOut[6]~24_combout\ & (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\)) # (!\RamDisplay|dozensDisplayProc|dataOut[6]~24_combout\ & 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|dozensDisplayProc|dataOut[6]~24_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[6]~25_combout\);

-- Location: LCCOMB_X81_Y7_N18
\RamDisplay|dozensDisplayProc|dataOut[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[6]~23_combout\ = (\RamDisplay|dozensDisplayProc|dataOut[6]~28_combout\) # ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & 
-- ((!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ & 
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datac => \RamDisplay|dozensDisplayProc|dataOut[6]~28_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[6]~23_combout\);

-- Location: LCCOMB_X81_Y7_N24
\RamDisplay|dozensDisplayProc|dataOut[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[6]~26_combout\ = (\RamDisplay|dozensDisplayProc|dataOut[6]~25_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ $ (((!\RamDisplay|dozensDisplayProc|dataOut[6]~23_combout\ & 
-- !\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\))))) # (!\RamDisplay|dozensDisplayProc|dataOut[6]~25_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & 
-- (!\RamDisplay|dozensDisplayProc|dataOut[6]~23_combout\)) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & ((!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|dozensDisplayProc|dataOut[6]~25_combout\,
	datab => \RamDisplay|dozensDisplayProc|dataOut[6]~23_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[6]~26_combout\);

-- Location: LCCOMB_X82_Y4_N4
\RamDisplay|dozensDisplayProc|dataOut[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[6]~27_combout\ = (\RamDisplay|dozensDisplayProc|dataOut[4]~20_combout\ & (((!\RamDisplay|dozensDisplayProc|dataOut[4]~6_combout\)) # 
-- (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))) # (!\RamDisplay|dozensDisplayProc|dataOut[4]~20_combout\ & (((\RamDisplay|dozensDisplayProc|dataOut[6]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \RamDisplay|dozensDisplayProc|dataOut[4]~20_combout\,
	datac => \RamDisplay|dozensDisplayProc|dataOut[6]~26_combout\,
	datad => \RamDisplay|dozensDisplayProc|dataOut[4]~6_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[6]~27_combout\);

-- Location: LCCOMB_X82_Y8_N6
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\)))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\,
	datad => VCC,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X82_Y8_N8
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\) # 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\ & 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\)))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\ & (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\ & 
-- !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X82_Y8_N10
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\) # 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\) # 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\)))))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\) # 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X82_Y8_N12
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X81_Y8_N10
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56_combout\);

-- Location: LCCOMB_X82_Y8_N18
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\) # 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\);

-- Location: LCCOMB_X81_Y8_N4
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X82_Y8_N28
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\) # 
-- ((!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\);

-- Location: LCCOMB_X81_Y8_N6
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ = (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X82_Y8_N22
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\) # 
-- ((!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\);

-- Location: LCCOMB_X82_Y8_N26
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X81_Y8_N12
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~59_combout\ = (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~59_combout\);

-- Location: LCCOMB_X81_Y8_N20
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\) # 
-- ((!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\);

-- Location: LCCOMB_X81_Y8_N22
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~59_combout\) # (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\)))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~59_combout\) # (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~59_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\,
	datad => VCC,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X81_Y8_N24
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\)))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\ & 
-- !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X81_Y8_N26
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\)))))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X81_Y8_N28
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56_combout\ & 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\)))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56_combout\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\ & 
-- !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X81_Y8_N30
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X80_Y9_N12
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60_combout\);

-- Location: LCCOMB_X81_Y8_N2
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\);

-- Location: LCCOMB_X81_Y8_N8
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\);

-- Location: LCCOMB_X80_Y9_N18
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61_combout\);

-- Location: LCCOMB_X80_Y9_N16
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62_combout\);

-- Location: LCCOMB_X81_Y8_N18
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\);

-- Location: LCCOMB_X80_Y9_N26
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X81_Y8_N0
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\) # 
-- ((!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89_combout\);

-- Location: LCCOMB_X80_Y6_N20
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X80_Y6_N18
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~64_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~64_combout\);

-- Location: LCCOMB_X80_Y6_N14
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\) # 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90_combout\);

-- Location: LCCOMB_X80_Y9_N0
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~64_combout\) # (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90_combout\)))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~64_combout\) # (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~64_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90_combout\,
	datad => VCC,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X80_Y9_N2
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~63_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~63_combout\ & 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89_combout\)))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~63_combout\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89_combout\ & 
-- !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X80_Y9_N4
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\)))))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X80_Y9_N6
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\ & 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61_combout\)))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61_combout\ & 
-- !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X80_Y9_N8
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\))))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\) # (GND))))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60_combout\) # ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\) # 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X80_Y9_N10
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X80_Y9_N30
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\);

-- Location: LCCOMB_X80_Y8_N0
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65_combout\);

-- Location: LCCOMB_X80_Y8_N10
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~66_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~66_combout\);

-- Location: LCCOMB_X80_Y9_N28
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\);

-- Location: LCCOMB_X80_Y9_N14
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\) # 
-- ((!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\);

-- Location: LCCOMB_X80_Y8_N4
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67_combout\);

-- Location: LCCOMB_X80_Y9_N20
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\);

-- Location: LCCOMB_X80_Y8_N2
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68_combout\);

-- Location: LCCOMB_X80_Y6_N24
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90_combout\) # 
-- ((!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\);

-- Location: LCCOMB_X80_Y9_N24
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69_combout\);

-- Location: LCCOMB_X80_Y6_N30
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\);

-- Location: LCCOMB_X80_Y6_N4
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~70_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~70_combout\);

-- Location: LCCOMB_X80_Y6_N22
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\RamDisplay|Add0~4_combout\))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Add0~4_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\);

-- Location: LCCOMB_X80_Y8_N14
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~70_combout\) # (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\)))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~70_combout\) # (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~70_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\,
	datad => VCC,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X80_Y8_N16
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\ & 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69_combout\)))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69_combout\ & 
-- !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X80_Y8_N18
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68_combout\)))))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X80_Y8_N20
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\ & 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67_combout\)))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67_combout\ & 
-- !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X80_Y8_N22
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~66_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\))))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~66_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\) # (GND))))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~66_combout\) # ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\) # 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~66_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X80_Y8_N24
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\ & 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65_combout\)))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65_combout\ & 
-- !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X80_Y8_N26
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X80_Y8_N30
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~98_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~98_combout\);

-- Location: LCCOMB_X79_Y8_N0
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~74_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~74_combout\);

-- Location: LCCOMB_X80_Y8_N28
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~99_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~99_combout\);

-- Location: LCCOMB_X80_Y8_N8
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~75_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~75_combout\);

-- Location: LCCOMB_X79_Y8_N26
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~76_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~76_combout\);

-- Location: LCCOMB_X80_Y8_N12
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~100_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~100_combout\);

-- Location: LCCOMB_X80_Y8_N6
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~101_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~101_combout\);

-- Location: LCCOMB_X79_Y8_N4
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~77_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~77_combout\);

-- Location: LCCOMB_X79_Y8_N28
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\);

-- Location: LCCOMB_X80_Y9_N22
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\);

-- Location: LCCOMB_X79_Y8_N6
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\);

-- Location: LCCOMB_X80_Y6_N26
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\);

-- Location: LCCOMB_X81_Y10_N22
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\);

-- Location: LCCOMB_X80_Y10_N20
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\ = (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\);

-- Location: LCCOMB_X80_Y10_N14
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\RamDisplay|Add0~2_combout\)) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Add0~2_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\);

-- Location: LCCOMB_X79_Y8_N8
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\) # (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\)))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\) # (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\,
	datad => VCC,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X79_Y8_N10
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\ & 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\)))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\ & 
-- !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X79_Y8_N12
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\)))))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X79_Y8_N14
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~101_combout\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~77_combout\ & 
-- !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~101_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~77_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X79_Y8_N16
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~76_combout\) # ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~100_combout\) # 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~76_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~100_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X79_Y8_N18
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~99_combout\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~75_combout\ & 
-- !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~99_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~75_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X79_Y8_N20
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~98_combout\) # ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~74_combout\) # 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~98_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~74_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X79_Y8_N22
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X82_Y7_N4
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~70_combout\ = (\RamDisplay|Add0~0_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Add0~0_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~70_combout\);

-- Location: LCCOMB_X82_Y7_N6
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~71_combout\ = (\RamDisplay|Add0~0_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Add0~0_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~71_combout\);

-- Location: LCCOMB_X82_Y7_N12
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~70_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~71_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~70_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~71_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\);

-- Location: LCCOMB_X82_Y7_N16
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\RamDisplay|Add0~0_combout\)) # 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Add0~0_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\);

-- Location: LCCOMB_X79_Y8_N24
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (((\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\);

-- Location: LCCOMB_X79_Y8_N2
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\);

-- Location: LCCOMB_X79_Y8_N30
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (((\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\);

-- Location: LCCOMB_X83_Y4_N16
\RamDisplay|unitsDisplayProc|dataOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|unitsDisplayProc|dataOut[0]~0_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & 
-- !\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ $ (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	combout => \RamDisplay|unitsDisplayProc|dataOut[0]~0_combout\);

-- Location: LCCOMB_X83_Y4_N2
\RamDisplay|unitsDisplayProc|dataOut[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|unitsDisplayProc|dataOut[1]~1_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & 
-- !\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ $ (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	combout => \RamDisplay|unitsDisplayProc|dataOut[1]~1_combout\);

-- Location: LCCOMB_X83_Y4_N8
\RamDisplay|unitsDisplayProc|dataOut[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|unitsDisplayProc|dataOut[2]~2_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\) # (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	combout => \RamDisplay|unitsDisplayProc|dataOut[2]~2_combout\);

-- Location: LCCOMB_X83_Y4_N30
\RamDisplay|unitsDisplayProc|dataOut[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|unitsDisplayProc|dataOut[3]~3_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & 
-- ((!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ & 
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ $ (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	combout => \RamDisplay|unitsDisplayProc|dataOut[3]~3_combout\);

-- Location: LCCOMB_X83_Y4_N20
\RamDisplay|unitsDisplayProc|dataOut[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|unitsDisplayProc|dataOut[4]~4_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & 
-- ((!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\)))) # 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & ((!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\))) # 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	combout => \RamDisplay|unitsDisplayProc|dataOut[4]~4_combout\);

-- Location: LCCOMB_X83_Y4_N22
\RamDisplay|unitsDisplayProc|dataOut[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|unitsDisplayProc|dataOut[5]~5_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ & 
-- !\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\)) # (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	combout => \RamDisplay|unitsDisplayProc|dataOut[5]~5_combout\);

-- Location: LCCOMB_X83_Y4_N28
\RamDisplay|unitsDisplayProc|dataOut[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|unitsDisplayProc|dataOut[6]~6_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ & 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\) # (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ & 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ $ (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	combout => \RamDisplay|unitsDisplayProc|dataOut[6]~6_combout\);

-- Location: LCCOMB_X79_Y17_N26
\RomDisplay|s_DataIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|s_DataIn~0_combout\ = \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ $ (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\,
	combout => \RomDisplay|s_DataIn~0_combout\);

-- Location: LCCOMB_X102_Y21_N16
\RomDisplay|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Add0~0_combout\ = (\RomDisplay|s_DataIn~0_combout\ & (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\ $ (VCC))) # (!\RomDisplay|s_DataIn~0_combout\ & (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\ & VCC))
-- \RomDisplay|Add0~1\ = CARRY((\RomDisplay|s_DataIn~0_combout\ & \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|s_DataIn~0_combout\,
	datab => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\,
	datad => VCC,
	combout => \RomDisplay|Add0~0_combout\,
	cout => \RomDisplay|Add0~1\);

-- Location: LCCOMB_X102_Y21_N18
\RomDisplay|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Add0~2_combout\ = (\RomDisplay|Add0~1\ & (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a1\ $ ((!\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\)))) # (!\RomDisplay|Add0~1\ & 
-- ((\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a1\ $ (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\)) # (GND)))
-- \RomDisplay|Add0~3\ = CARRY((\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a1\ $ (!\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\)) # (!\RomDisplay|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a1\,
	datab => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\,
	datad => VCC,
	cin => \RomDisplay|Add0~1\,
	combout => \RomDisplay|Add0~2_combout\,
	cout => \RomDisplay|Add0~3\);

-- Location: LCCOMB_X102_Y21_N20
\RomDisplay|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Add0~4_combout\ = (\RomDisplay|Add0~3\ & ((\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a2\ $ (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\)))) # (!\RomDisplay|Add0~3\ & 
-- (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a2\ $ (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\ $ (VCC))))
-- \RomDisplay|Add0~5\ = CARRY((!\RomDisplay|Add0~3\ & (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a2\ $ (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a2\,
	datab => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\,
	datad => VCC,
	cin => \RomDisplay|Add0~3\,
	combout => \RomDisplay|Add0~4_combout\,
	cout => \RomDisplay|Add0~5\);

-- Location: LCCOMB_X102_Y21_N22
\RomDisplay|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Add0~6_combout\ = (\RomDisplay|Add0~5\ & (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a3\ $ ((!\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\)))) # (!\RomDisplay|Add0~5\ & 
-- ((\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a3\ $ (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\)) # (GND)))
-- \RomDisplay|Add0~7\ = CARRY((\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a3\ $ (!\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\)) # (!\RomDisplay|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a3\,
	datab => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\,
	datad => VCC,
	cin => \RomDisplay|Add0~5\,
	combout => \RomDisplay|Add0~6_combout\,
	cout => \RomDisplay|Add0~7\);

-- Location: LCCOMB_X102_Y21_N24
\RomDisplay|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Add0~8_combout\ = (\RomDisplay|Add0~7\ & ((\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a4\ $ (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\)))) # (!\RomDisplay|Add0~7\ & 
-- (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a4\ $ (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\ $ (VCC))))
-- \RomDisplay|Add0~9\ = CARRY((!\RomDisplay|Add0~7\ & (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a4\ $ (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a4\,
	datab => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\,
	datad => VCC,
	cin => \RomDisplay|Add0~7\,
	combout => \RomDisplay|Add0~8_combout\,
	cout => \RomDisplay|Add0~9\);

-- Location: LCCOMB_X102_Y21_N26
\RomDisplay|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Add0~10_combout\ = (\RomDisplay|Add0~9\ & (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a5\ $ ((!\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\)))) # (!\RomDisplay|Add0~9\ & 
-- ((\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a5\ $ (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\)) # (GND)))
-- \RomDisplay|Add0~11\ = CARRY((\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a5\ $ (!\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\)) # (!\RomDisplay|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a5\,
	datab => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\,
	datad => VCC,
	cin => \RomDisplay|Add0~9\,
	combout => \RomDisplay|Add0~10_combout\,
	cout => \RomDisplay|Add0~11\);

-- Location: LCCOMB_X102_Y21_N28
\RomDisplay|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Add0~12_combout\ = (\RomDisplay|Add0~11\ & ((\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a6\ $ (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\)))) # (!\RomDisplay|Add0~11\ & 
-- (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a6\ $ (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\ $ (VCC))))
-- \RomDisplay|Add0~13\ = CARRY((!\RomDisplay|Add0~11\ & (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a6\ $ (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a6\,
	datab => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\,
	datad => VCC,
	cin => \RomDisplay|Add0~11\,
	combout => \RomDisplay|Add0~12_combout\,
	cout => \RomDisplay|Add0~13\);

-- Location: LCCOMB_X102_Y21_N30
\RomDisplay|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Add0~14_combout\ = \RomDisplay|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RomDisplay|Add0~13\,
	combout => \RomDisplay|Add0~14_combout\);

-- Location: LCCOMB_X102_Y21_N4
\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \RomDisplay|Add0~6_combout\ $ (VCC)
-- \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\RomDisplay|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Add0~6_combout\,
	datad => VCC,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X102_Y21_N6
\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\RomDisplay|Add0~8_combout\ & (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\RomDisplay|Add0~8_combout\ & 
-- (!\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\RomDisplay|Add0~8_combout\ & !\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Add0~8_combout\,
	datad => VCC,
	cin => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X102_Y21_N8
\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\RomDisplay|Add0~10_combout\ & ((GND) # (!\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\RomDisplay|Add0~10_combout\ & 
-- (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\RomDisplay|Add0~10_combout\) # (!\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Add0~10_combout\,
	datad => VCC,
	cin => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X102_Y21_N10
\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\RomDisplay|Add0~12_combout\ & (!\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\RomDisplay|Add0~12_combout\ & 
-- ((\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\RomDisplay|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Add0~12_combout\,
	datad => VCC,
	cin => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X102_Y21_N12
\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\RomDisplay|Add0~14_combout\ & (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\RomDisplay|Add0~14_combout\ & 
-- (!\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\RomDisplay|Add0~14_combout\ & !\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Add0~14_combout\,
	datad => VCC,
	cin => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X102_Y21_N14
\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X103_Y21_N22
\RomDisplay|Div0|auto_generated|divider|divider|StageOut[54]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ = (!\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X103_Y21_N20
\RomDisplay|Div0|auto_generated|divider|divider|StageOut[54]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Add0~14_combout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X102_Y21_N0
\RomDisplay|Div0|auto_generated|divider|divider|StageOut[53]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Add0~12_combout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X103_Y21_N2
\RomDisplay|Div0|auto_generated|divider|divider|StageOut[53]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ = (!\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X103_Y25_N4
\RomDisplay|Div0|auto_generated|divider|divider|StageOut[52]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\RomDisplay|Add0~10_combout\ & \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Add0~10_combout\,
	datad => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X103_Y21_N24
\RomDisplay|Div0|auto_generated|divider|divider|StageOut[52]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ = (!\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: LCCOMB_X103_Y21_N26
\RomDisplay|Div0|auto_generated|divider|divider|StageOut[51]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ = (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X102_Y21_N2
\RomDisplay|Div0|auto_generated|divider|divider|StageOut[51]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Add0~8_combout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X103_Y22_N28
\RomDisplay|Div0|auto_generated|divider|divider|StageOut[50]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Add0~6_combout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X103_Y21_N0
\RomDisplay|Div0|auto_generated|divider|divider|StageOut[50]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ = (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LCCOMB_X103_Y24_N14
\RomDisplay|Div0|auto_generated|divider|divider|StageOut[49]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ = (!\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \RomDisplay|Add0~4_combout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LCCOMB_X103_Y24_N0
\RomDisplay|Div0|auto_generated|divider|divider|StageOut[49]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \RomDisplay|Add0~4_combout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X103_Y21_N4
\RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY((\RomDisplay|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\) # (\RomDisplay|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\,
	datab => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datad => VCC,
	cout => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

-- Location: LCCOMB_X103_Y21_N6
\RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ = CARRY((!\RomDisplay|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ & (!\RomDisplay|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ & 
-- !\RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datab => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\,
	datad => VCC,
	cin => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\,
	cout => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\);

-- Location: LCCOMB_X103_Y21_N8
\RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\RomDisplay|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\) # ((\RomDisplay|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\) # 
-- (!\RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datab => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datad => VCC,
	cin => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X103_Y21_N10
\RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ = CARRY(((!\RomDisplay|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ & !\RomDisplay|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\)) # 
-- (!\RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datab => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\,
	datad => VCC,
	cin => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\,
	cout => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\);

-- Location: LCCOMB_X103_Y21_N12
\RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & ((\RomDisplay|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\) # 
-- (\RomDisplay|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datab => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datad => VCC,
	cin => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X103_Y21_N14
\RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\RomDisplay|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ & (!\RomDisplay|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ & 
-- !\RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datab => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datad => VCC,
	cin => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X103_Y21_N16
\RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X103_Y21_N18
\RomDisplay|hundredsDisplayProc|dataOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|hundredsDisplayProc|dataOut[0]~0_combout\ = (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & !\RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|hundredsDisplayProc|dataOut[0]~0_combout\);

-- Location: LCCOMB_X103_Y21_N28
\RomDisplay|hundredsDisplayProc|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|hundredsDisplayProc|Equal9~0_combout\ = (!\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|hundredsDisplayProc|Equal9~0_combout\);

-- Location: LCCOMB_X79_Y17_N20
\RomDisplay|hundredsDisplayProc|dataOut[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|hundredsDisplayProc|dataOut[4]~1_combout\ = (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a3\ & ((\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a1\) # 
-- ((\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\) # (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a3\,
	datab => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a1\,
	datac => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a6\,
	combout => \RomDisplay|hundredsDisplayProc|dataOut[4]~1_combout\);

-- Location: LCCOMB_X79_Y17_N22
\RomDisplay|hundredsDisplayProc|dataOut[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|hundredsDisplayProc|dataOut[4]~2_combout\ = (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a4\ & (((\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a2\ & \RomDisplay|hundredsDisplayProc|dataOut[4]~1_combout\)) # 
-- (!\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\))) # (!\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a4\ & (!\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\ & 
-- ((\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a2\) # (\RomDisplay|hundredsDisplayProc|dataOut[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a4\,
	datab => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a2\,
	datac => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\,
	datad => \RomDisplay|hundredsDisplayProc|dataOut[4]~1_combout\,
	combout => \RomDisplay|hundredsDisplayProc|dataOut[4]~2_combout\);

-- Location: LCCOMB_X79_Y17_N16
\RomDisplay|hundredsDisplayProc|dataOut[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|hundredsDisplayProc|dataOut[4]~3_combout\ = (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\ & (!\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a5\ & (!\RomDisplay|hundredsDisplayProc|dataOut[4]~2_combout\ & 
-- !\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a6\))) # (!\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\ & (\RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a5\ & 
-- (\RomDisplay|hundredsDisplayProc|dataOut[4]~2_combout\ & \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a7\,
	datab => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a5\,
	datac => \RomDisplay|hundredsDisplayProc|dataOut[4]~2_combout\,
	datad => \RomManagment|NoisyROM|Mux7_rtl_0|auto_generated|ram_block1a6\,
	combout => \RomDisplay|hundredsDisplayProc|dataOut[4]~3_combout\);

-- Location: LCCOMB_X103_Y21_N30
\RomDisplay|hundredsDisplayProc|dataOut[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|hundredsDisplayProc|dataOut[0]~4_combout\ = (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|hundredsDisplayProc|dataOut[0]~4_combout\);

-- Location: LCCOMB_X103_Y25_N12
\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \RomDisplay|Add0~6_combout\ $ (VCC)
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\RomDisplay|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Add0~6_combout\,
	datad => VCC,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X103_Y25_N14
\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\RomDisplay|Add0~8_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\RomDisplay|Add0~8_combout\ & 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\RomDisplay|Add0~8_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Add0~8_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X103_Y25_N16
\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\RomDisplay|Add0~10_combout\ & ((GND) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\RomDisplay|Add0~10_combout\ & 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\RomDisplay|Add0~10_combout\) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Add0~10_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X103_Y25_N18
\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\RomDisplay|Add0~12_combout\ & (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\RomDisplay|Add0~12_combout\ & 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\RomDisplay|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Add0~12_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X103_Y25_N20
\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\RomDisplay|Add0~14_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\RomDisplay|Add0~14_combout\ & 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\RomDisplay|Add0~14_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Add0~14_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X103_Y25_N22
\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X103_Y25_N24
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ = (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\);

-- Location: LCCOMB_X103_Y25_N26
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ = (\RomDisplay|Add0~14_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Add0~14_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\);

-- Location: LCCOMB_X105_Y25_N0
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\ = (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\);

-- Location: LCCOMB_X105_Y25_N18
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\ = (\RomDisplay|Add0~12_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Add0~12_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\);

-- Location: LCCOMB_X103_Y25_N8
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ = (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\);

-- Location: LCCOMB_X103_Y25_N2
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ = (\RomDisplay|Add0~10_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Add0~10_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\);

-- Location: LCCOMB_X103_Y25_N28
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\);

-- Location: LCCOMB_X103_Y25_N6
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Add0~8_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\);

-- Location: LCCOMB_X105_Y25_N14
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ = (\RomDisplay|Add0~6_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Add0~6_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\);

-- Location: LCCOMB_X105_Y25_N16
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\ = (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\);

-- Location: LCCOMB_X105_Y25_N8
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\ = (\RomDisplay|Add0~4_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Add0~4_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\);

-- Location: LCCOMB_X105_Y25_N6
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\ = (\RomDisplay|Add0~4_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Add0~4_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\);

-- Location: LCCOMB_X106_Y25_N12
\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\)))
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\,
	datad => VCC,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X106_Y25_N14
\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\)))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ & 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\)))
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ & (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\ & 
-- !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X106_Y25_N16
\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\))))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\) # 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\) # (GND))))
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\) # ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\) # 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X106_Y25_N18
\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ & (((!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ & (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\)) # 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X106_Y25_N20
\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\)))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\)))))
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X106_Y25_N22
\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\)))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ & 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\)))
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ = CARRY((!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ & (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ & 
-- !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	cout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\);

-- Location: LCCOMB_X106_Y25_N24
\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X106_Y26_N22
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\ = (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\);

-- Location: LCCOMB_X103_Y25_N10
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\RomDisplay|Add0~14_combout\)) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Add0~14_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\);

-- Location: LCCOMB_X105_Y25_N24
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\RomDisplay|Add0~12_combout\))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \RomDisplay|Add0~12_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\);

-- Location: LCCOMB_X106_Y26_N16
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\);

-- Location: LCCOMB_X103_Y25_N0
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\RomDisplay|Add0~10_combout\)) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Add0~10_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\);

-- Location: LCCOMB_X105_Y26_N28
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\ = (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\);

-- Location: LCCOMB_X106_Y26_N24
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\)))
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\,
	datad => VCC,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X106_Y26_N26
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\)))) # (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\ & 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\)))
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\ & (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\ & 
-- !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\,
	datad => VCC,
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X106_Y26_N28
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\)))) # (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\)))))
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\,
	datad => VCC,
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X106_Y26_N30
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X106_Y26_N12
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\) # 
-- ((!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\);

-- Location: LCCOMB_X107_Y26_N8
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[18]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\);

-- Location: LCCOMB_X106_Y26_N14
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\) # 
-- ((!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\);

-- Location: LCCOMB_X107_Y26_N22
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\);

-- Location: LCCOMB_X107_Y26_N16
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\);

-- Location: LCCOMB_X105_Y26_N2
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\) # 
-- ((!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\);

-- Location: LCCOMB_X103_Y25_N30
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\RomDisplay|Add0~8_combout\)) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \RomDisplay|Add0~8_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\);

-- Location: LCCOMB_X107_Y26_N4
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\) # 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\);

-- Location: LCCOMB_X107_Y26_N26
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\ = (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\);

-- Location: LCCOMB_X107_Y26_N12
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X107_Y26_N28
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\ = (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\);

-- Location: LCCOMB_X108_Y26_N2
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\) # (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\)))
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\) # (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\,
	datad => VCC,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X108_Y26_N4
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\)))) # (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ & 
-- (!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\)))
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ & (!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ & 
-- !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\,
	datad => VCC,
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X108_Y26_N6
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\)))) # (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\)))))
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\,
	datad => VCC,
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X108_Y26_N8
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ & (!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ & 
-- !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\,
	datad => VCC,
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X108_Y26_N10
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X107_Y26_N2
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X108_Y26_N0
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[23]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\);

-- Location: LCCOMB_X108_Y26_N12
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\);

-- Location: LCCOMB_X107_Y26_N24
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\) # 
-- ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X107_Y26_N14
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\) # 
-- ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\);

-- Location: LCCOMB_X108_Y26_N14
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\);

-- Location: LCCOMB_X105_Y25_N26
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\);

-- Location: LCCOMB_X105_Y25_N10
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\RomDisplay|Add0~6_combout\))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \RomDisplay|Add0~6_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\);

-- Location: LCCOMB_X105_Y25_N28
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X109_Y25_N12
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\);

-- Location: LCCOMB_X105_Y25_N4
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\) # 
-- ((!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\);

-- Location: LCCOMB_X108_Y26_N22
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\) # (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\)))
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\) # (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\,
	datad => VCC,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X108_Y26_N24
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\)))) # (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & 
-- (!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\)))
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & (!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ & 
-- !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\,
	datad => VCC,
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X108_Y26_N26
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\)))) # (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\)))))
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => VCC,
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X108_Y26_N28
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ & (!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ & 
-- !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\,
	datad => VCC,
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X108_Y26_N30
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X108_Y26_N18
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[28]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\);

-- Location: LCCOMB_X108_Y26_N20
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X108_Y26_N16
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\);

-- Location: LCCOMB_X108_Y25_N28
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\);

-- Location: LCCOMB_X108_Y25_N6
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ = (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\);

-- Location: LCCOMB_X109_Y25_N24
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\) # 
-- ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\);

-- Location: LCCOMB_X108_Y25_N10
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\RomDisplay|Add0~4_combout\)) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Add0~4_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\);

-- Location: LCCOMB_X105_Y24_N10
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\ = (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\);

-- Location: LCCOMB_X105_Y24_N12
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RomDisplay|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Add0~4_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\);

-- Location: LCCOMB_X105_Y24_N0
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\);

-- Location: LCCOMB_X108_Y25_N0
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X108_Y25_N16
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\)))
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datad => VCC,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X108_Y25_N18
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\)))) # (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ & 
-- (!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\)))
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ & (!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ & 
-- !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	datad => VCC,
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X108_Y25_N20
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\)))) # (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\)))))
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\,
	datad => VCC,
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X108_Y25_N22
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ & (!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ & 
-- !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datad => VCC,
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X108_Y25_N24
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X108_Y25_N30
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[33]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- ((!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\);

-- Location: LCCOMB_X108_Y24_N24
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ = (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X108_Y24_N30
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ = (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X108_Y25_N26
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[32]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\) # 
-- ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\);

-- Location: LCCOMB_X108_Y24_N22
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ = (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X108_Y25_N8
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[31]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # 
-- ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\);

-- Location: LCCOMB_X105_Y25_N22
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\ = (\RomDisplay|Add0~2_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Add0~2_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\);

-- Location: LCCOMB_X105_Y25_N20
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\ = (\RomDisplay|Add0~2_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Add0~2_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\);

-- Location: LCCOMB_X105_Y25_N30
\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X108_Y24_N4
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[30]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\RomDisplay|Add0~2_combout\))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \RomDisplay|Add0~2_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\);

-- Location: LCCOMB_X108_Y24_N18
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\ = (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\);

-- Location: LCCOMB_X108_Y24_N28
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RomDisplay|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RomDisplay|Add0~2_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\);

-- Location: LCCOMB_X108_Y24_N20
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\);

-- Location: LCCOMB_X108_Y24_N0
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[30]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ = (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\);

-- Location: LCCOMB_X108_Y24_N8
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\) # (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\,
	datad => VCC,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X108_Y24_N10
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ & (!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ & 
-- !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\,
	datad => VCC,
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X108_Y24_N12
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\,
	datad => VCC,
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X108_Y24_N14
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ & (!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ & 
-- !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datad => VCC,
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X108_Y24_N16
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X109_Y25_N2
\RomDisplay|dozensDisplayProc|dataOut[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[0]~2_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # 
-- (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (((!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[0]~2_combout\);

-- Location: LCCOMB_X109_Y25_N0
\RomDisplay|dozensDisplayProc|dataOut[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[1]~3_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # 
-- (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[1]~3_combout\);

-- Location: LCCOMB_X109_Y25_N26
\RomDisplay|dozensDisplayProc|dataOut[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[2]~4_combout\ = (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[2]~4_combout\);

-- Location: LCCOMB_X109_Y25_N4
\RomDisplay|dozensDisplayProc|dataOut[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[3]~5_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # 
-- (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # 
-- (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[3]~5_combout\);

-- Location: LCCOMB_X106_Y25_N30
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\) # 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\)))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\);

-- Location: LCCOMB_X106_Y25_N4
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\) # 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\)))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\);

-- Location: LCCOMB_X106_Y25_N0
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\) # 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\)))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\);

-- Location: LCCOMB_X106_Y25_N6
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\)))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\);

-- Location: LCCOMB_X106_Y25_N28
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\) # 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\)))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\);

-- Location: LCCOMB_X107_Y25_N2
\RomDisplay|dozensDisplayProc|dataOut[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~13_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\))) # 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~13_combout\);

-- Location: LCCOMB_X107_Y25_N12
\RomDisplay|dozensDisplayProc|dataOut[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~14_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ $ (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\)) # 
-- (!\RomDisplay|dozensDisplayProc|dataOut[4]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	datad => \RomDisplay|dozensDisplayProc|dataOut[4]~13_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~14_combout\);

-- Location: LCCOMB_X107_Y25_N20
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RomDisplay|Add0~2_combout\))) # 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datac => \RomDisplay|Add0~2_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\);

-- Location: LCCOMB_X108_Y25_N12
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\RomDisplay|Add0~4_combout\)) # 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Add0~4_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\);

-- Location: LCCOMB_X106_Y25_N26
\RomDisplay|dozensDisplayProc|dataOut[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~10_combout\ = (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\) # 
-- ((!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~10_combout\);

-- Location: LCCOMB_X106_Y25_N8
\RomDisplay|dozensDisplayProc|dataOut[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~11_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\) # (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~11_combout\);

-- Location: LCCOMB_X106_Y25_N2
\RomDisplay|dozensDisplayProc|dataOut[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~9_combout\ = (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\)) # (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~9_combout\);

-- Location: LCCOMB_X106_Y25_N10
\RomDisplay|dozensDisplayProc|dataOut[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~12_combout\ = (\RomDisplay|dozensDisplayProc|dataOut[4]~10_combout\) # ((\RomDisplay|dozensDisplayProc|dataOut[4]~11_combout\) # (\RomDisplay|dozensDisplayProc|dataOut[4]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|dozensDisplayProc|dataOut[4]~10_combout\,
	datac => \RomDisplay|dozensDisplayProc|dataOut[4]~11_combout\,
	datad => \RomDisplay|dozensDisplayProc|dataOut[4]~9_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~12_combout\);

-- Location: LCCOMB_X107_Y25_N22
\RomDisplay|dozensDisplayProc|dataOut[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~15_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ & (((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\)))) # 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & ((\RomDisplay|dozensDisplayProc|dataOut[4]~12_combout\))) # 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & (\RomDisplay|dozensDisplayProc|dataOut[4]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|dozensDisplayProc|dataOut[4]~14_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datad => \RomDisplay|dozensDisplayProc|dataOut[4]~12_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~15_combout\);

-- Location: LCCOMB_X107_Y25_N8
\RomDisplay|dozensDisplayProc|dataOut[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~16_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ $ (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ $ 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~16_combout\);

-- Location: LCCOMB_X107_Y25_N28
\RomDisplay|dozensDisplayProc|dataOut[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~7_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\) # 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~7_combout\);

-- Location: LCCOMB_X107_Y25_N26
\RomDisplay|dozensDisplayProc|dataOut[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~8_combout\ = (\RomDisplay|dozensDisplayProc|dataOut[4]~7_combout\) # ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & 
-- ((!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & 
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	datad => \RomDisplay|dozensDisplayProc|dataOut[4]~7_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~8_combout\);

-- Location: LCCOMB_X107_Y25_N14
\RomDisplay|dozensDisplayProc|dataOut[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~17_combout\ = (\RomDisplay|dozensDisplayProc|dataOut[4]~15_combout\ & ((\RomDisplay|dozensDisplayProc|dataOut[4]~16_combout\) # ((!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\)))) # 
-- (!\RomDisplay|dozensDisplayProc|dataOut[4]~15_combout\ & (((\RomDisplay|dozensDisplayProc|dataOut[4]~8_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|dozensDisplayProc|dataOut[4]~15_combout\,
	datab => \RomDisplay|dozensDisplayProc|dataOut[4]~16_combout\,
	datac => \RomDisplay|dozensDisplayProc|dataOut[4]~8_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~17_combout\);

-- Location: LCCOMB_X107_Y25_N0
\RomDisplay|dozensDisplayProc|dataOut[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[6]~18_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\) # ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & 
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[6]~18_combout\);

-- Location: LCCOMB_X107_Y25_N18
\RomDisplay|dozensDisplayProc|dataOut[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[6]~19_combout\ = (\RomDisplay|dozensDisplayProc|dataOut[6]~18_combout\) # ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datad => \RomDisplay|dozensDisplayProc|dataOut[6]~18_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[6]~19_combout\);

-- Location: LCCOMB_X107_Y25_N4
\RomDisplay|dozensDisplayProc|dataOut[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[6]~20_combout\ = (\RomDisplay|dozensDisplayProc|dataOut[6]~19_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\)) # (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\)))) # (!\RomDisplay|dozensDisplayProc|dataOut[6]~19_combout\ & 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\) # (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|dozensDisplayProc|dataOut[6]~19_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[6]~20_combout\);

-- Location: LCCOMB_X108_Y25_N2
\RomDisplay|dozensDisplayProc|dataOut[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~6_combout\ = (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~6_combout\);

-- Location: LCCOMB_X108_Y25_N14
\RomDisplay|dozensDisplayProc|dataOut[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~21_combout\ = (\RomDisplay|dozensDisplayProc|dataOut[6]~20_combout\ & ((\RomDisplay|dozensDisplayProc|dataOut[4]~6_combout\))) # (!\RomDisplay|dozensDisplayProc|dataOut[6]~20_combout\ & 
-- (\RomDisplay|dozensDisplayProc|dataOut[4]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|dozensDisplayProc|dataOut[4]~17_combout\,
	datac => \RomDisplay|dozensDisplayProc|dataOut[6]~20_combout\,
	datad => \RomDisplay|dozensDisplayProc|dataOut[4]~6_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~21_combout\);

-- Location: LCCOMB_X109_Y25_N22
\RomDisplay|dozensDisplayProc|dataOut[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[5]~22_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # 
-- (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # 
-- ((!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[5]~22_combout\);

-- Location: LCCOMB_X107_Y25_N10
\RomDisplay|dozensDisplayProc|dataOut[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[6]~28_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & (((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\)))) # 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\))) # 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[6]~28_combout\);

-- Location: LCCOMB_X107_Y25_N16
\RomDisplay|dozensDisplayProc|dataOut[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[6]~24_combout\ = (\RomDisplay|dozensDisplayProc|dataOut[6]~28_combout\) # ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ & 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\)) # (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datad => \RomDisplay|dozensDisplayProc|dataOut[6]~28_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[6]~24_combout\);

-- Location: LCCOMB_X107_Y25_N6
\RomDisplay|dozensDisplayProc|dataOut[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[6]~25_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & 
-- !\RomDisplay|dozensDisplayProc|dataOut[6]~24_combout\)) # (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & ((\RomDisplay|dozensDisplayProc|dataOut[6]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datad => \RomDisplay|dozensDisplayProc|dataOut[6]~24_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[6]~25_combout\);

-- Location: LCCOMB_X107_Y25_N30
\RomDisplay|dozensDisplayProc|dataOut[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[6]~23_combout\ = (\RomDisplay|dozensDisplayProc|dataOut[6]~28_combout\) # ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\)) # (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datad => \RomDisplay|dozensDisplayProc|dataOut[6]~28_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[6]~23_combout\);

-- Location: LCCOMB_X107_Y25_N24
\RomDisplay|dozensDisplayProc|dataOut[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[6]~26_combout\ = (\RomDisplay|dozensDisplayProc|dataOut[6]~25_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ $ 
-- (((!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & !\RomDisplay|dozensDisplayProc|dataOut[6]~23_combout\))))) # (!\RomDisplay|dozensDisplayProc|dataOut[6]~25_combout\ & 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & (!\RomDisplay|dozensDisplayProc|dataOut[6]~23_combout\)) # (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & 
-- ((!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|dozensDisplayProc|dataOut[6]~25_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	datac => \RomDisplay|dozensDisplayProc|dataOut[6]~23_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[6]~26_combout\);

-- Location: LCCOMB_X108_Y25_N4
\RomDisplay|dozensDisplayProc|dataOut[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[6]~27_combout\ = (\RomDisplay|dozensDisplayProc|dataOut[6]~20_combout\ & (((!\RomDisplay|dozensDisplayProc|dataOut[4]~6_combout\)) # 
-- (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))) # (!\RomDisplay|dozensDisplayProc|dataOut[6]~20_combout\ & (((\RomDisplay|dozensDisplayProc|dataOut[6]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \RomDisplay|dozensDisplayProc|dataOut[6]~26_combout\,
	datac => \RomDisplay|dozensDisplayProc|dataOut[6]~20_combout\,
	datad => \RomDisplay|dozensDisplayProc|dataOut[4]~6_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[6]~27_combout\);

-- Location: LCCOMB_X106_Y26_N0
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\)))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\,
	datad => VCC,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X106_Y26_N2
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\ & 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\)))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\ & (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\ & 
-- !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X106_Y26_N4
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\)))))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X106_Y26_N6
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X105_Y26_N6
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56_combout\);

-- Location: LCCOMB_X106_Y26_N10
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\) # 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\);

-- Location: LCCOMB_X105_Y26_N12
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X106_Y26_N8
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\) # 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\);

-- Location: LCCOMB_X105_Y26_N30
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X105_Y26_N24
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\) # 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\);

-- Location: LCCOMB_X106_Y26_N20
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X105_Y26_N8
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~59_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~59_combout\);

-- Location: LCCOMB_X106_Y26_N18
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\) # 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\);

-- Location: LCCOMB_X105_Y26_N14
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~59_combout\) # (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\)))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~59_combout\) # (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~59_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\,
	datad => VCC,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X105_Y26_N16
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\)))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\ & 
-- !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X105_Y26_N18
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\)))))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X105_Y26_N20
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56_combout\ & 
-- (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\)))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56_combout\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\ & 
-- !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X105_Y26_N22
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X105_Y27_N28
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60_combout\ = (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60_combout\);

-- Location: LCCOMB_X105_Y26_N0
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\) # 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\);

-- Location: LCCOMB_X105_Y26_N26
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\) # 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\);

-- Location: LCCOMB_X105_Y27_N2
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61_combout\);

-- Location: LCCOMB_X105_Y27_N12
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62_combout\ = (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62_combout\);

-- Location: LCCOMB_X105_Y26_N4
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\) # 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\);

-- Location: LCCOMB_X105_Y27_N10
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X105_Y26_N10
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\) # 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89_combout\);

-- Location: LCCOMB_X105_Y25_N12
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X105_Y27_N0
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~64_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~64_combout\);

-- Location: LCCOMB_X105_Y25_N2
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\) # 
-- ((!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90_combout\);

-- Location: LCCOMB_X105_Y27_N16
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~64_combout\) # (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90_combout\)))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~64_combout\) # (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~64_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90_combout\,
	datad => VCC,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X105_Y27_N18
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~63_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~63_combout\ & 
-- (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89_combout\)))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~63_combout\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89_combout\ & 
-- !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X105_Y27_N20
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\)))))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X105_Y27_N22
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\ & 
-- (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61_combout\)))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61_combout\ & 
-- !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X105_Y27_N24
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\))))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60_combout\) # 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\) # (GND))))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60_combout\) # ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\) # 
-- (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X105_Y27_N26
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X105_Y24_N16
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\RomDisplay|Add0~4_combout\)) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Add0~4_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\);

-- Location: LCCOMB_X105_Y24_N18
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\);

-- Location: LCCOMB_X105_Y24_N6
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~70_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~70_combout\);

-- Location: LCCOMB_X106_Y24_N4
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\) # (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~70_combout\)))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\) # (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~70_combout\,
	datad => VCC,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X105_Y27_N14
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\) # 
-- ((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\);

-- Location: LCCOMB_X106_Y24_N0
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65_combout\);

-- Location: LCCOMB_X105_Y27_N4
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\) # 
-- ((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\);

-- Location: LCCOMB_X106_Y24_N18
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~66_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~66_combout\);

-- Location: LCCOMB_X106_Y24_N22
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67_combout\);

-- Location: LCCOMB_X105_Y27_N6
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\) # 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\);

-- Location: LCCOMB_X105_Y27_N8
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89_combout\) # 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\);

-- Location: LCCOMB_X105_Y24_N24
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68_combout\);

-- Location: LCCOMB_X106_Y24_N20
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69_combout\);

-- Location: LCCOMB_X105_Y27_N30
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90_combout\) # 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\);

-- Location: LCCOMB_X106_Y24_N6
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69_combout\ & 
-- (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\)))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69_combout\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\ & 
-- !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X106_Y24_N8
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68_combout\)))))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X106_Y24_N10
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67_combout\ & 
-- (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\)))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67_combout\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\ & 
-- !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X106_Y24_N12
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~66_combout\))))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\) # 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~66_combout\) # (GND))))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\) # ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~66_combout\) # 
-- (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~66_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X106_Y24_N14
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\ & 
-- (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65_combout\)))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65_combout\ & 
-- !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X106_Y24_N16
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X107_Y24_N6
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\);

-- Location: LCCOMB_X105_Y24_N4
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\) # 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\);

-- Location: LCCOMB_X106_Y24_N30
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~98_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\) # 
-- ((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~98_combout\);

-- Location: LCCOMB_X107_Y24_N0
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~74_combout\ = (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~74_combout\);

-- Location: LCCOMB_X107_Y24_N26
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~75_combout\ = (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~75_combout\);

-- Location: LCCOMB_X106_Y24_N28
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~99_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\) # 
-- ((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~99_combout\);

-- Location: LCCOMB_X106_Y24_N26
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~100_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\) # 
-- ((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~100_combout\);

-- Location: LCCOMB_X107_Y24_N24
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~76_combout\ = (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~76_combout\);

-- Location: LCCOMB_X106_Y24_N2
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~77_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~77_combout\);

-- Location: LCCOMB_X105_Y24_N30
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~101_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\) # 
-- ((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~101_combout\);

-- Location: LCCOMB_X106_Y24_N24
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\) # 
-- ((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\);

-- Location: LCCOMB_X107_Y24_N28
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\ = (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\);

-- Location: LCCOMB_X108_Y24_N2
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\RomDisplay|Add0~2_combout\))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Add0~2_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\);

-- Location: LCCOMB_X108_Y24_N6
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\);

-- Location: LCCOMB_X108_Y24_N26
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\ = (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\);

-- Location: LCCOMB_X107_Y24_N8
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\) # (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\)))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\) # (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\,
	datad => VCC,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X107_Y24_N10
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\ & 
-- (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\)))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\ & 
-- !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X107_Y24_N12
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\)))))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X107_Y24_N14
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~77_combout\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~101_combout\ & 
-- !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~77_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~101_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X107_Y24_N16
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~100_combout\) # ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~76_combout\) # 
-- (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~100_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~76_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X107_Y24_N18
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~75_combout\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~99_combout\ & 
-- !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~75_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~99_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X107_Y24_N20
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~98_combout\) # ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~74_combout\) # 
-- (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~98_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~74_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X107_Y24_N22
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X107_Y24_N30
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\) # 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (((\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\);

-- Location: LCCOMB_X107_Y24_N4
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\) # 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (((\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\);

-- Location: LCCOMB_X107_Y24_N2
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\);

-- Location: LCCOMB_X107_Y26_N30
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~70_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RomDisplay|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Add0~0_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~70_combout\);

-- Location: LCCOMB_X107_Y26_N20
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~71_combout\ = (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RomDisplay|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Add0~0_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~71_combout\);

-- Location: LCCOMB_X107_Y26_N10
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~70_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~71_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~70_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~71_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\);

-- Location: LCCOMB_X107_Y26_N18
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\RomDisplay|Add0~0_combout\)) # 
-- (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Add0~0_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\);

-- Location: LCCOMB_X107_Y57_N0
\RomDisplay|unitsDisplayProc|dataOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|unitsDisplayProc|dataOut[0]~0_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ $ (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	combout => \RomDisplay|unitsDisplayProc|dataOut[0]~0_combout\);

-- Location: LCCOMB_X107_Y57_N30
\RomDisplay|unitsDisplayProc|dataOut[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|unitsDisplayProc|dataOut[1]~1_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ $ (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	combout => \RomDisplay|unitsDisplayProc|dataOut[1]~1_combout\);

-- Location: LCCOMB_X107_Y57_N12
\RomDisplay|unitsDisplayProc|dataOut[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|unitsDisplayProc|dataOut[2]~2_combout\ = (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\) # (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	combout => \RomDisplay|unitsDisplayProc|dataOut[2]~2_combout\);

-- Location: LCCOMB_X107_Y57_N6
\RomDisplay|unitsDisplayProc|dataOut[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|unitsDisplayProc|dataOut[3]~3_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ $ (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\)) # (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & 
-- (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	combout => \RomDisplay|unitsDisplayProc|dataOut[3]~3_combout\);

-- Location: LCCOMB_X107_Y57_N16
\RomDisplay|unitsDisplayProc|dataOut[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|unitsDisplayProc|dataOut[4]~4_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\) # (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\) # ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	combout => \RomDisplay|unitsDisplayProc|dataOut[4]~4_combout\);

-- Location: LCCOMB_X107_Y57_N22
\RomDisplay|unitsDisplayProc|dataOut[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|unitsDisplayProc|dataOut[5]~5_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & 
-- (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\) # ((!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	combout => \RomDisplay|unitsDisplayProc|dataOut[5]~5_combout\);

-- Location: LCCOMB_X107_Y57_N8
\RomDisplay|unitsDisplayProc|dataOut[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|unitsDisplayProc|dataOut[6]~6_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\) # 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\)) # 
-- (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	combout => \RomDisplay|unitsDisplayProc|dataOut[6]~6_combout\);

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

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

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
END structure;


