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

-- DATE "06/14/2022 01:02:24"

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
	LEDG : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END FiltroMediaMovel;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
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
SIGNAL \CleanRAM|s_Memory_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \InputCleaner|cleanSwitch~feeder_combout\ : std_logic;
SIGNAL \InputCleaner|cleanSwitch~q\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \CleanRAM|s_Memory_rtl_0_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \CleanRAM|s_Memory~17_combout\ : std_logic;
SIGNAL \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \CleanRAM|s_Memory~18_combout\ : std_logic;
SIGNAL \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \CleanRAM|s_Memory_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \CleanRAM|s_Memory~19_combout\ : std_logic;
SIGNAL \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \CleanRAM|s_Memory~20_combout\ : std_logic;
SIGNAL \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \CleanRAM|s_Memory_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \CleanRAM|s_Memory~21_combout\ : std_logic;
SIGNAL \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \CleanRAM|s_Memory~22_combout\ : std_logic;
SIGNAL \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \CleanRAM|s_Memory~23_combout\ : std_logic;
SIGNAL \CleanRAM|s_Memory_rtl_0_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
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
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \RamDisplay|Add0~4_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \RamDisplay|hundredsDisplayProc|dataOut[0]~0_combout\ : std_logic;
SIGNAL \RamDisplay|hundredsDisplayProc|Equal9~0_combout\ : std_logic;
SIGNAL \RamDisplay|hundredsDisplayProc|dataOut[4]~3_combout\ : std_logic;
SIGNAL \RamDisplay|hundredsDisplayProc|dataOut[4]~4_combout\ : std_logic;
SIGNAL \RamDisplay|hundredsDisplayProc|dataOut[4]~1_combout\ : std_logic;
SIGNAL \RamDisplay|hundredsDisplayProc|dataOut[4]~2_combout\ : std_logic;
SIGNAL \RamDisplay|hundredsDisplayProc|dataOut[4]~5_combout\ : std_logic;
SIGNAL \RamDisplay|hundredsDisplayProc|dataOut[2]~6_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ : std_logic;
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
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
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
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~7_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~8_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~16_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~10_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~11_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~9_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~12_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~13_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~14_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~15_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~17_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~18_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~19_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~20_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~6_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[4]~21_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[5]~22_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[6]~28_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[6]~24_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[6]~25_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[6]~23_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[6]~26_combout\ : std_logic;
SIGNAL \RamDisplay|dozensDisplayProc|dataOut[6]~27_combout\ : std_logic;
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
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
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
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\ : std_logic;
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
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~66_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\ : std_logic;
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
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\ : std_logic;
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
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ : std_logic;
SIGNAL \RamDisplay|Add0~0_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~71_combout\ : std_logic;
SIGNAL \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~70_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ : std_logic;
SIGNAL \RamDisplay|unitsDisplayProc|dataOut[0]~0_combout\ : std_logic;
SIGNAL \RamDisplay|unitsDisplayProc|dataOut[1]~1_combout\ : std_logic;
SIGNAL \RamDisplay|unitsDisplayProc|dataOut[2]~2_combout\ : std_logic;
SIGNAL \RamDisplay|unitsDisplayProc|dataOut[3]~3_combout\ : std_logic;
SIGNAL \RamDisplay|unitsDisplayProc|dataOut[4]~4_combout\ : std_logic;
SIGNAL \RamDisplay|unitsDisplayProc|dataOut[5]~5_combout\ : std_logic;
SIGNAL \RamDisplay|unitsDisplayProc|dataOut[6]~6_combout\ : std_logic;
SIGNAL \CleanRAM|s_Memory_rtl_0_bypass\ : std_logic_vector(0 TO 24);
SIGNAL \RamDisplay|hundredsDisplayProc|ALT_INV_dataOut[2]~6_combout\ : std_logic;
SIGNAL \CleanRAM|ALT_INV_s_Memory~17_combout\ : std_logic;

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

\CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & 
\~GND~combout\ & vcc & \~GND~combout\ & vcc & \~GND~combout\ & \~GND~combout\ & vcc);

\CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\(0) <= \~GND~combout\;

\CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\(0) <= \~GND~combout\;

\CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a1\ <= \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a2\ <= \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a3\ <= \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a4\ <= \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a5\ <= \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a6\ <= \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a7\ <= \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\RamDisplay|hundredsDisplayProc|ALT_INV_dataOut[2]~6_combout\ <= NOT \RamDisplay|hundredsDisplayProc|dataOut[2]~6_combout\;
\CleanRAM|ALT_INV_s_Memory~17_combout\ <= NOT \CleanRAM|s_Memory~17_combout\;
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \CleanRAM|ALT_INV_s_Memory~17_combout\,
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
	i => \RamDisplay|hundredsDisplayProc|dataOut[4]~5_combout\,
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
	i => \RamDisplay|hundredsDisplayProc|ALT_INV_dataOut[2]~6_combout\,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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

-- Location: LCCOMB_X65_Y4_N12
\CleanRAM|s_Memory_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CleanRAM|s_Memory_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CleanRAM|s_Memory_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X65_Y4_N13
\CleanRAM|s_Memory_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CleanRAM|s_Memory_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CleanRAM|s_Memory_rtl_0_bypass\(24));

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

-- Location: LCCOMB_X65_Y4_N0
\InputCleaner|cleanSwitch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \InputCleaner|cleanSwitch~feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \InputCleaner|cleanSwitch~feeder_combout\);

-- Location: FF_X65_Y4_N1
\InputCleaner|cleanSwitch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \InputCleaner|cleanSwitch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InputCleaner|cleanSwitch~q\);

-- Location: LCCOMB_X63_Y4_N8
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: M9K_X64_Y4_N0
\CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "CleanTriangSignalRAM256x8:CleanRAM|altsyncram:s_Memory_rtl_0|altsyncram_idc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 1,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 1,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \InputCleaner|cleanSwitch~q\,
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \InputCleaner|cleanSwitch~q\,
	portadatain => \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y4_N6
\CleanRAM|s_Memory_rtl_0_bypass[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CleanRAM|s_Memory_rtl_0_bypass[0]~feeder_combout\ = \InputCleaner|cleanSwitch~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \InputCleaner|cleanSwitch~q\,
	combout => \CleanRAM|s_Memory_rtl_0_bypass[0]~feeder_combout\);

-- Location: FF_X65_Y4_N7
\CleanRAM|s_Memory_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CleanRAM|s_Memory_rtl_0_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CleanRAM|s_Memory_rtl_0_bypass\(0));

-- Location: LCCOMB_X65_Y4_N16
\CleanRAM|s_Memory~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \CleanRAM|s_Memory~17_combout\ = (\CleanRAM|s_Memory_rtl_0_bypass\(0) & (\CleanRAM|s_Memory_rtl_0_bypass\(24))) # (!\CleanRAM|s_Memory_rtl_0_bypass\(0) & ((\CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CleanRAM|s_Memory_rtl_0_bypass\(24),
	datac => \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a7\,
	datad => \CleanRAM|s_Memory_rtl_0_bypass\(0),
	combout => \CleanRAM|s_Memory~17_combout\);

-- Location: LCCOMB_X65_Y4_N22
\CleanRAM|s_Memory~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CleanRAM|s_Memory~18_combout\ = (\CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a6\ & !\CleanRAM|s_Memory_rtl_0_bypass\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a6\,
	datad => \CleanRAM|s_Memory_rtl_0_bypass\(0),
	combout => \CleanRAM|s_Memory~18_combout\);

-- Location: LCCOMB_X65_Y4_N8
\CleanRAM|s_Memory_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CleanRAM|s_Memory_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CleanRAM|s_Memory_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X65_Y4_N9
\CleanRAM|s_Memory_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CleanRAM|s_Memory_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CleanRAM|s_Memory_rtl_0_bypass\(22));

-- Location: LCCOMB_X65_Y4_N10
\CleanRAM|s_Memory~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \CleanRAM|s_Memory~19_combout\ = (\CleanRAM|s_Memory_rtl_0_bypass\(0) & ((\CleanRAM|s_Memory_rtl_0_bypass\(22)))) # (!\CleanRAM|s_Memory_rtl_0_bypass\(0) & (\CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a5\,
	datac => \CleanRAM|s_Memory_rtl_0_bypass\(22),
	datad => \CleanRAM|s_Memory_rtl_0_bypass\(0),
	combout => \CleanRAM|s_Memory~19_combout\);

-- Location: LCCOMB_X65_Y4_N20
\CleanRAM|s_Memory~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CleanRAM|s_Memory~20_combout\ = (\CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a4\ & !\CleanRAM|s_Memory_rtl_0_bypass\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a4\,
	datad => \CleanRAM|s_Memory_rtl_0_bypass\(0),
	combout => \CleanRAM|s_Memory~20_combout\);

-- Location: LCCOMB_X65_Y4_N26
\CleanRAM|s_Memory_rtl_0_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CleanRAM|s_Memory_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CleanRAM|s_Memory_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X65_Y4_N27
\CleanRAM|s_Memory_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CleanRAM|s_Memory_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CleanRAM|s_Memory_rtl_0_bypass\(20));

-- Location: LCCOMB_X65_Y4_N28
\CleanRAM|s_Memory~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \CleanRAM|s_Memory~21_combout\ = (\CleanRAM|s_Memory_rtl_0_bypass\(0) & ((\CleanRAM|s_Memory_rtl_0_bypass\(20)))) # (!\CleanRAM|s_Memory_rtl_0_bypass\(0) & (\CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a3\,
	datac => \CleanRAM|s_Memory_rtl_0_bypass\(20),
	datad => \CleanRAM|s_Memory_rtl_0_bypass\(0),
	combout => \CleanRAM|s_Memory~21_combout\);

-- Location: LCCOMB_X65_Y4_N18
\CleanRAM|s_Memory~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CleanRAM|s_Memory~22_combout\ = (\CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a2\ & !\CleanRAM|s_Memory_rtl_0_bypass\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a2\,
	datad => \CleanRAM|s_Memory_rtl_0_bypass\(0),
	combout => \CleanRAM|s_Memory~22_combout\);

-- Location: LCCOMB_X66_Y4_N20
\CleanRAM|s_Memory~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \CleanRAM|s_Memory~23_combout\ = (\CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a1\ & !\CleanRAM|s_Memory_rtl_0_bypass\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a1\,
	datac => \CleanRAM|s_Memory_rtl_0_bypass\(0),
	combout => \CleanRAM|s_Memory~23_combout\);

-- Location: LCCOMB_X66_Y4_N30
\CleanRAM|s_Memory_rtl_0_bypass[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CleanRAM|s_Memory_rtl_0_bypass[17]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CleanRAM|s_Memory_rtl_0_bypass[17]~feeder_combout\);

-- Location: FF_X66_Y4_N31
\CleanRAM|s_Memory_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CleanRAM|s_Memory_rtl_0_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CleanRAM|s_Memory_rtl_0_bypass\(17));

-- Location: LCCOMB_X66_Y4_N24
\RamDisplay|s_DataIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|s_DataIn~0_combout\ = \CleanRAM|s_Memory~17_combout\ $ (((\CleanRAM|s_Memory_rtl_0_bypass\(0) & (\CleanRAM|s_Memory_rtl_0_bypass\(17))) # (!\CleanRAM|s_Memory_rtl_0_bypass\(0) & 
-- ((\CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CleanRAM|s_Memory~17_combout\,
	datab => \CleanRAM|s_Memory_rtl_0_bypass\(0),
	datac => \CleanRAM|s_Memory_rtl_0_bypass\(17),
	datad => \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \RamDisplay|s_DataIn~0_combout\);

-- Location: LCCOMB_X66_Y4_N4
\RamDisplay|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Add0~0_combout\ = (\CleanRAM|s_Memory~17_combout\ & (\RamDisplay|s_DataIn~0_combout\ $ (VCC))) # (!\CleanRAM|s_Memory~17_combout\ & (\RamDisplay|s_DataIn~0_combout\ & VCC))
-- \RamDisplay|Add0~1\ = CARRY((\CleanRAM|s_Memory~17_combout\ & \RamDisplay|s_DataIn~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CleanRAM|s_Memory~17_combout\,
	datab => \RamDisplay|s_DataIn~0_combout\,
	datad => VCC,
	combout => \RamDisplay|Add0~0_combout\,
	cout => \RamDisplay|Add0~1\);

-- Location: LCCOMB_X66_Y4_N6
\RamDisplay|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Add0~2_combout\ = (\RamDisplay|Add0~1\ & (\CleanRAM|s_Memory~17_combout\ $ ((!\CleanRAM|s_Memory~23_combout\)))) # (!\RamDisplay|Add0~1\ & ((\CleanRAM|s_Memory~17_combout\ $ (\CleanRAM|s_Memory~23_combout\)) # (GND)))
-- \RamDisplay|Add0~3\ = CARRY((\CleanRAM|s_Memory~17_combout\ $ (!\CleanRAM|s_Memory~23_combout\)) # (!\RamDisplay|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CleanRAM|s_Memory~17_combout\,
	datab => \CleanRAM|s_Memory~23_combout\,
	datad => VCC,
	cin => \RamDisplay|Add0~1\,
	combout => \RamDisplay|Add0~2_combout\,
	cout => \RamDisplay|Add0~3\);

-- Location: LCCOMB_X66_Y4_N8
\RamDisplay|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Add0~4_combout\ = (\RamDisplay|Add0~3\ & ((\CleanRAM|s_Memory~17_combout\ $ (\CleanRAM|s_Memory~22_combout\)))) # (!\RamDisplay|Add0~3\ & (\CleanRAM|s_Memory~17_combout\ $ (\CleanRAM|s_Memory~22_combout\ $ (VCC))))
-- \RamDisplay|Add0~5\ = CARRY((!\RamDisplay|Add0~3\ & (\CleanRAM|s_Memory~17_combout\ $ (\CleanRAM|s_Memory~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CleanRAM|s_Memory~17_combout\,
	datab => \CleanRAM|s_Memory~22_combout\,
	datad => VCC,
	cin => \RamDisplay|Add0~3\,
	combout => \RamDisplay|Add0~4_combout\,
	cout => \RamDisplay|Add0~5\);

-- Location: LCCOMB_X66_Y4_N10
\RamDisplay|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Add0~6_combout\ = (\RamDisplay|Add0~5\ & (\CleanRAM|s_Memory~17_combout\ $ ((!\CleanRAM|s_Memory~21_combout\)))) # (!\RamDisplay|Add0~5\ & ((\CleanRAM|s_Memory~17_combout\ $ (\CleanRAM|s_Memory~21_combout\)) # (GND)))
-- \RamDisplay|Add0~7\ = CARRY((\CleanRAM|s_Memory~17_combout\ $ (!\CleanRAM|s_Memory~21_combout\)) # (!\RamDisplay|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CleanRAM|s_Memory~17_combout\,
	datab => \CleanRAM|s_Memory~21_combout\,
	datad => VCC,
	cin => \RamDisplay|Add0~5\,
	combout => \RamDisplay|Add0~6_combout\,
	cout => \RamDisplay|Add0~7\);

-- Location: LCCOMB_X66_Y4_N12
\RamDisplay|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Add0~8_combout\ = (\RamDisplay|Add0~7\ & ((\CleanRAM|s_Memory~17_combout\ $ (\CleanRAM|s_Memory~20_combout\)))) # (!\RamDisplay|Add0~7\ & (\CleanRAM|s_Memory~17_combout\ $ (\CleanRAM|s_Memory~20_combout\ $ (VCC))))
-- \RamDisplay|Add0~9\ = CARRY((!\RamDisplay|Add0~7\ & (\CleanRAM|s_Memory~17_combout\ $ (\CleanRAM|s_Memory~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CleanRAM|s_Memory~17_combout\,
	datab => \CleanRAM|s_Memory~20_combout\,
	datad => VCC,
	cin => \RamDisplay|Add0~7\,
	combout => \RamDisplay|Add0~8_combout\,
	cout => \RamDisplay|Add0~9\);

-- Location: LCCOMB_X66_Y4_N14
\RamDisplay|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Add0~10_combout\ = (\RamDisplay|Add0~9\ & (\CleanRAM|s_Memory~17_combout\ $ ((!\CleanRAM|s_Memory~19_combout\)))) # (!\RamDisplay|Add0~9\ & ((\CleanRAM|s_Memory~17_combout\ $ (\CleanRAM|s_Memory~19_combout\)) # (GND)))
-- \RamDisplay|Add0~11\ = CARRY((\CleanRAM|s_Memory~17_combout\ $ (!\CleanRAM|s_Memory~19_combout\)) # (!\RamDisplay|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CleanRAM|s_Memory~17_combout\,
	datab => \CleanRAM|s_Memory~19_combout\,
	datad => VCC,
	cin => \RamDisplay|Add0~9\,
	combout => \RamDisplay|Add0~10_combout\,
	cout => \RamDisplay|Add0~11\);

-- Location: LCCOMB_X66_Y4_N16
\RamDisplay|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Add0~12_combout\ = (\RamDisplay|Add0~11\ & ((\CleanRAM|s_Memory~17_combout\ $ (\CleanRAM|s_Memory~18_combout\)))) # (!\RamDisplay|Add0~11\ & (\CleanRAM|s_Memory~17_combout\ $ (\CleanRAM|s_Memory~18_combout\ $ (VCC))))
-- \RamDisplay|Add0~13\ = CARRY((!\RamDisplay|Add0~11\ & (\CleanRAM|s_Memory~17_combout\ $ (\CleanRAM|s_Memory~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CleanRAM|s_Memory~17_combout\,
	datab => \CleanRAM|s_Memory~18_combout\,
	datad => VCC,
	cin => \RamDisplay|Add0~11\,
	combout => \RamDisplay|Add0~12_combout\,
	cout => \RamDisplay|Add0~13\);

-- Location: LCCOMB_X66_Y4_N18
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

-- Location: LCCOMB_X68_Y4_N14
\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \RamDisplay|Add0~6_combout\ $ (VCC)
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\RamDisplay|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Add0~6_combout\,
	datad => VCC,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X68_Y4_N16
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

-- Location: LCCOMB_X68_Y4_N18
\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\RamDisplay|Add0~10_combout\ & ((GND) # (!\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\RamDisplay|Add0~10_combout\ & 
-- (\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\RamDisplay|Add0~10_combout\) # (!\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Add0~10_combout\,
	datad => VCC,
	cin => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X68_Y4_N20
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

-- Location: LCCOMB_X68_Y4_N22
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

-- Location: LCCOMB_X68_Y4_N24
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

-- Location: LCCOMB_X68_Y4_N8
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

-- Location: LCCOMB_X69_Y4_N4
\RamDisplay|Div0|auto_generated|divider|divider|StageOut[54]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ = (!\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X69_Y4_N26
\RamDisplay|Div0|auto_generated|divider|divider|StageOut[53]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ = (!\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X68_Y4_N6
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

-- Location: LCCOMB_X68_Y4_N12
\RamDisplay|Div0|auto_generated|divider|divider|StageOut[52]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\RamDisplay|Add0~10_combout\ & \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Add0~10_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X69_Y4_N28
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

-- Location: LCCOMB_X69_Y4_N22
\RamDisplay|Div0|auto_generated|divider|divider|StageOut[51]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ = (\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X68_Y4_N30
\RamDisplay|Div0|auto_generated|divider|divider|StageOut[51]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\RamDisplay|Add0~8_combout\ & \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Add0~8_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X69_Y4_N30
\RamDisplay|Div0|auto_generated|divider|divider|StageOut[50]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ = (!\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LCCOMB_X68_Y4_N4
\RamDisplay|Div0|auto_generated|divider|divider|StageOut[50]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\RamDisplay|Add0~6_combout\ & \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Add0~6_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X69_Y4_N6
\RamDisplay|Div0|auto_generated|divider|divider|StageOut[49]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ = (\RamDisplay|Add0~4_combout\ & !\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Add0~4_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LCCOMB_X69_Y4_N0
\RamDisplay|Div0|auto_generated|divider|divider|StageOut[49]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\RamDisplay|Add0~4_combout\ & \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Add0~4_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X69_Y4_N8
\RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY((\RamDisplay|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\) # (\RamDisplay|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\,
	datab => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datad => VCC,
	cout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

-- Location: LCCOMB_X69_Y4_N10
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

-- Location: LCCOMB_X69_Y4_N12
\RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\RamDisplay|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\) # ((\RamDisplay|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\) # 
-- (!\RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datab => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datad => VCC,
	cin => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X69_Y4_N14
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

-- Location: LCCOMB_X69_Y4_N16
\RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & ((\RamDisplay|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\) # 
-- (\RamDisplay|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datab => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datad => VCC,
	cin => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X69_Y4_N18
\RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\RamDisplay|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ & (!\RamDisplay|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ & 
-- !\RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datab => \RamDisplay|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datad => VCC,
	cin => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X69_Y4_N20
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

-- Location: LCCOMB_X69_Y4_N24
\RamDisplay|hundredsDisplayProc|dataOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|hundredsDisplayProc|dataOut[0]~0_combout\ = (\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & !\RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RamDisplay|hundredsDisplayProc|dataOut[0]~0_combout\);

-- Location: LCCOMB_X68_Y1_N4
\RamDisplay|hundredsDisplayProc|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|hundredsDisplayProc|Equal9~0_combout\ = (!\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RamDisplay|hundredsDisplayProc|Equal9~0_combout\);

-- Location: LCCOMB_X65_Y4_N24
\RamDisplay|hundredsDisplayProc|dataOut[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|hundredsDisplayProc|dataOut[4]~3_combout\ = (\CleanRAM|s_Memory_rtl_0_bypass\(0) & (\CleanRAM|s_Memory_rtl_0_bypass\(24))) # (!\CleanRAM|s_Memory_rtl_0_bypass\(0) & (((!\CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a6\ & 
-- \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CleanRAM|s_Memory_rtl_0_bypass\(24),
	datab => \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a6\,
	datac => \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a7\,
	datad => \CleanRAM|s_Memory_rtl_0_bypass\(0),
	combout => \RamDisplay|hundredsDisplayProc|dataOut[4]~3_combout\);

-- Location: LCCOMB_X65_Y4_N14
\RamDisplay|hundredsDisplayProc|dataOut[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|hundredsDisplayProc|dataOut[4]~4_combout\ = (\CleanRAM|s_Memory~19_combout\ & (((\CleanRAM|s_Memory~18_combout\ & !\CleanRAM|s_Memory~17_combout\)))) # (!\CleanRAM|s_Memory~19_combout\ & (\RamDisplay|hundredsDisplayProc|dataOut[4]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CleanRAM|s_Memory~19_combout\,
	datab => \RamDisplay|hundredsDisplayProc|dataOut[4]~3_combout\,
	datac => \CleanRAM|s_Memory~18_combout\,
	datad => \CleanRAM|s_Memory~17_combout\,
	combout => \RamDisplay|hundredsDisplayProc|dataOut[4]~4_combout\);

-- Location: LCCOMB_X66_Y4_N22
\RamDisplay|hundredsDisplayProc|dataOut[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|hundredsDisplayProc|dataOut[4]~1_combout\ = (\CleanRAM|s_Memory_rtl_0_bypass\(0) & (((!\CleanRAM|s_Memory_rtl_0_bypass\(17))))) # (!\CleanRAM|s_Memory_rtl_0_bypass\(0) & (!\CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a1\ & 
-- ((!\CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a1\,
	datab => \CleanRAM|s_Memory_rtl_0_bypass\(0),
	datac => \CleanRAM|s_Memory_rtl_0_bypass\(17),
	datad => \CleanRAM|s_Memory_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \RamDisplay|hundredsDisplayProc|dataOut[4]~1_combout\);

-- Location: LCCOMB_X66_Y4_N28
\RamDisplay|hundredsDisplayProc|dataOut[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|hundredsDisplayProc|dataOut[4]~2_combout\ = (\CleanRAM|s_Memory~19_combout\ & ((\CleanRAM|s_Memory~21_combout\) # ((\CleanRAM|s_Memory~22_combout\)))) # (!\CleanRAM|s_Memory~19_combout\ & (\CleanRAM|s_Memory~21_combout\ & 
-- (!\RamDisplay|hundredsDisplayProc|dataOut[4]~1_combout\ & \CleanRAM|s_Memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CleanRAM|s_Memory~19_combout\,
	datab => \CleanRAM|s_Memory~21_combout\,
	datac => \RamDisplay|hundredsDisplayProc|dataOut[4]~1_combout\,
	datad => \CleanRAM|s_Memory~22_combout\,
	combout => \RamDisplay|hundredsDisplayProc|dataOut[4]~2_combout\);

-- Location: LCCOMB_X66_Y4_N26
\RamDisplay|hundredsDisplayProc|dataOut[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|hundredsDisplayProc|dataOut[4]~5_combout\ = (\RamDisplay|hundredsDisplayProc|dataOut[4]~4_combout\ & ((\CleanRAM|s_Memory~20_combout\ & ((\CleanRAM|s_Memory~19_combout\) # (!\RamDisplay|hundredsDisplayProc|dataOut[4]~2_combout\))) # 
-- (!\CleanRAM|s_Memory~20_combout\ & ((\RamDisplay|hundredsDisplayProc|dataOut[4]~2_combout\) # (!\CleanRAM|s_Memory~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|hundredsDisplayProc|dataOut[4]~4_combout\,
	datab => \CleanRAM|s_Memory~20_combout\,
	datac => \RamDisplay|hundredsDisplayProc|dataOut[4]~2_combout\,
	datad => \CleanRAM|s_Memory~19_combout\,
	combout => \RamDisplay|hundredsDisplayProc|dataOut[4]~5_combout\);

-- Location: LCCOMB_X68_Y1_N18
\RamDisplay|hundredsDisplayProc|dataOut[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|hundredsDisplayProc|dataOut[2]~6_combout\ = (\RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RamDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RamDisplay|hundredsDisplayProc|dataOut[2]~6_combout\);

-- Location: LCCOMB_X67_Y4_N10
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

-- Location: LCCOMB_X67_Y4_N12
\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\RamDisplay|Add0~8_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\RamDisplay|Add0~8_combout\ & 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\RamDisplay|Add0~8_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Add0~8_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X67_Y4_N14
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

-- Location: LCCOMB_X67_Y4_N16
\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\RamDisplay|Add0~12_combout\ & (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\RamDisplay|Add0~12_combout\ & 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\RamDisplay|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Add0~12_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X67_Y4_N18
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

-- Location: LCCOMB_X67_Y4_N20
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

-- Location: LCCOMB_X67_Y4_N8
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ = (\RamDisplay|Add0~14_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Add0~14_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\);

-- Location: LCCOMB_X67_Y4_N22
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

-- Location: LCCOMB_X67_Y4_N28
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

-- Location: LCCOMB_X67_Y4_N26
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

-- Location: LCCOMB_X67_Y4_N2
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

-- Location: LCCOMB_X67_Y4_N4
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ = (\RamDisplay|Add0~10_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Add0~10_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\);

-- Location: LCCOMB_X67_Y4_N0
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\ = (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\);

-- Location: LCCOMB_X66_Y4_N0
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RamDisplay|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RamDisplay|Add0~8_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\);

-- Location: LCCOMB_X67_Y4_N30
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ = (\RamDisplay|Add0~6_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Add0~6_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\);

-- Location: LCCOMB_X67_Y4_N24
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

-- Location: LCCOMB_X68_Y5_N2
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RamDisplay|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RamDisplay|Add0~4_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\);

-- Location: LCCOMB_X68_Y5_N24
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\ = (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RamDisplay|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RamDisplay|Add0~4_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\);

-- Location: LCCOMB_X67_Y5_N10
\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\)))
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\,
	datad => VCC,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X67_Y5_N12
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

-- Location: LCCOMB_X67_Y5_N14
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

-- Location: LCCOMB_X67_Y5_N16
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

-- Location: LCCOMB_X67_Y5_N18
\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\) # 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\)))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\) # 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\)))))
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\) # 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X67_Y5_N20
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

-- Location: LCCOMB_X67_Y5_N22
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

-- Location: LCCOMB_X68_Y4_N26
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\RamDisplay|Add0~14_combout\)) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Add0~14_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\);

-- Location: LCCOMB_X67_Y6_N18
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\);

-- Location: LCCOMB_X68_Y6_N12
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\ = (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\);

-- Location: LCCOMB_X68_Y4_N0
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\RamDisplay|Add0~12_combout\)) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Add0~12_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\);

-- Location: LCCOMB_X68_Y6_N6
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\);

-- Location: LCCOMB_X68_Y4_N2
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\RamDisplay|Add0~10_combout\))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datab => \RamDisplay|Add0~10_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\);

-- Location: LCCOMB_X68_Y6_N24
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\)))
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\,
	datad => VCC,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X68_Y6_N26
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

-- Location: LCCOMB_X68_Y6_N28
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\) # 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\)))) # (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\) # 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\)))))
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\) # 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\,
	datad => VCC,
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X68_Y6_N30
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

-- Location: LCCOMB_X68_Y6_N14
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\) # 
-- ((!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\);

-- Location: LCCOMB_X69_Y6_N26
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[18]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\);

-- Location: LCCOMB_X68_Y6_N8
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\) # 
-- ((!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\);

-- Location: LCCOMB_X69_Y6_N14
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\);

-- Location: LCCOMB_X69_Y6_N28
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\);

-- Location: LCCOMB_X68_Y6_N4
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\) # 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\);

-- Location: LCCOMB_X68_Y4_N28
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\RamDisplay|Add0~8_combout\))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datab => \RamDisplay|Add0~8_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\);

-- Location: LCCOMB_X69_Y6_N22
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\) # 
-- ((!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\);

-- Location: LCCOMB_X69_Y6_N2
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\);

-- Location: LCCOMB_X69_Y6_N24
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X69_Y6_N20
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\ = (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\);

-- Location: LCCOMB_X69_Y6_N4
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

-- Location: LCCOMB_X69_Y6_N6
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

-- Location: LCCOMB_X69_Y6_N8
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

-- Location: LCCOMB_X69_Y6_N10
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

-- Location: LCCOMB_X69_Y6_N12
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

-- Location: LCCOMB_X69_Y6_N0
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- ((!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X70_Y6_N0
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[23]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\);

-- Location: LCCOMB_X70_Y6_N26
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\);

-- Location: LCCOMB_X69_Y6_N18
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\) # 
-- ((\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X69_Y6_N16
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\) # 
-- ((\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\);

-- Location: LCCOMB_X70_Y6_N4
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\);

-- Location: LCCOMB_X68_Y4_N10
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\RamDisplay|Add0~6_combout\))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datab => \RamDisplay|Add0~6_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\);

-- Location: LCCOMB_X70_Y6_N6
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\) # 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\);

-- Location: LCCOMB_X70_Y6_N2
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\);

-- Location: LCCOMB_X70_Y6_N28
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X70_Y6_N24
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\ = (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\);

-- Location: LCCOMB_X70_Y6_N14
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\) # (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\)))
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\) # (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\,
	datad => VCC,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X70_Y6_N16
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\)))) # (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & 
-- (!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\)))
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & (!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ & 
-- !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\,
	datad => VCC,
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X70_Y6_N18
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\) # 
-- (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\)))) # (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\) # 
-- (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\)))))
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\) # 
-- (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => VCC,
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X70_Y6_N20
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ & (!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ & 
-- !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\,
	datad => VCC,
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X70_Y6_N22
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

-- Location: LCCOMB_X70_Y6_N8
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ = (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X70_Y6_N12
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[28]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\);

-- Location: LCCOMB_X70_Y4_N0
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\ = (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\);

-- Location: LCCOMB_X69_Y6_N30
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- ((!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\);

-- Location: LCCOMB_X70_Y6_N30
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\) # 
-- ((!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\);

-- Location: LCCOMB_X70_Y5_N4
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ = (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\);

-- Location: LCCOMB_X68_Y5_N12
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\RamDisplay|Add0~4_combout\)) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Add0~4_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\);

-- Location: LCCOMB_X68_Y5_N16
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\ = (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\);

-- Location: LCCOMB_X68_Y5_N14
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\ = (\RamDisplay|Add0~4_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Add0~4_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\);

-- Location: LCCOMB_X69_Y5_N24
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

-- Location: LCCOMB_X70_Y5_N2
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X70_Y5_N10
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

-- Location: LCCOMB_X70_Y5_N12
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

-- Location: LCCOMB_X70_Y5_N14
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\) # 
-- (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\)))) # (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\) # 
-- (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\)))))
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\) # 
-- (\RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datad => VCC,
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X70_Y5_N16
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ & (!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ & 
-- !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\,
	datad => VCC,
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X70_Y5_N18
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

-- Location: LCCOMB_X70_Y5_N6
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[33]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- ((\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\);

-- Location: LCCOMB_X69_Y5_N18
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X69_Y5_N16
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

-- Location: LCCOMB_X70_Y5_N8
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[32]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\) # 
-- ((!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\);

-- Location: LCCOMB_X70_Y5_N30
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[31]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\RamDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # 
-- ((\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\);

-- Location: LCCOMB_X70_Y5_N0
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X69_Y5_N22
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\ = (\RamDisplay|Add0~2_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Add0~2_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\);

-- Location: LCCOMB_X69_Y5_N28
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\ = (\RamDisplay|Add0~2_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Add0~2_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\);

-- Location: LCCOMB_X69_Y5_N6
\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X68_Y5_N6
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\ = (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\);

-- Location: LCCOMB_X69_Y5_N26
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

-- Location: LCCOMB_X68_Y5_N4
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\);

-- Location: LCCOMB_X69_Y5_N8
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[30]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ & !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\);

-- Location: LCCOMB_X69_Y5_N20
\RamDisplay|Div1|auto_generated|divider|divider|StageOut[30]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\RamDisplay|Add0~2_combout\))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RamDisplay|Add0~2_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\);

-- Location: LCCOMB_X70_Y5_N20
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

-- Location: LCCOMB_X70_Y5_N22
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

-- Location: LCCOMB_X70_Y5_N24
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

-- Location: LCCOMB_X70_Y5_N26
\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ & (!\RamDisplay|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ & 
-- !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datad => VCC,
	cin => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X70_Y5_N28
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

-- Location: LCCOMB_X70_Y4_N14
\RamDisplay|dozensDisplayProc|dataOut[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[0]~2_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # 
-- (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (((\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[0]~2_combout\);

-- Location: LCCOMB_X70_Y4_N16
\RamDisplay|dozensDisplayProc|dataOut[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[1]~3_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ 
-- (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[1]~3_combout\);

-- Location: LCCOMB_X70_Y4_N22
\RamDisplay|dozensDisplayProc|dataOut[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[2]~4_combout\ = (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[2]~4_combout\);

-- Location: LCCOMB_X70_Y4_N12
\RamDisplay|dozensDisplayProc|dataOut[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[3]~5_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # 
-- (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[3]~5_combout\);

-- Location: LCCOMB_X69_Y5_N14
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\RamDisplay|Add0~2_combout\)) # 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RamDisplay|Add0~2_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\);

-- Location: LCCOMB_X67_Y5_N2
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\) # 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\)))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\);

-- Location: LCCOMB_X67_Y5_N28
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\) # 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\)))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\);

-- Location: LCCOMB_X67_Y5_N6
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\) # 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\)))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\);

-- Location: LCCOMB_X67_Y5_N8
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\) # 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\)))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\);

-- Location: LCCOMB_X67_Y5_N24
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\) # 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\)))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\);

-- Location: LCCOMB_X66_Y5_N8
\RamDisplay|dozensDisplayProc|dataOut[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~7_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\))) # 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & ((!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~7_combout\);

-- Location: LCCOMB_X66_Y5_N2
\RamDisplay|dozensDisplayProc|dataOut[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~8_combout\ = (\RamDisplay|dozensDisplayProc|dataOut[4]~7_combout\) # ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\)) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & 
-- !\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	datac => \RamDisplay|dozensDisplayProc|dataOut[4]~7_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~8_combout\);

-- Location: LCCOMB_X66_Y5_N14
\RamDisplay|dozensDisplayProc|dataOut[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~16_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ $ (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ $ 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~16_combout\);

-- Location: LCCOMB_X67_Y5_N26
\RamDisplay|dozensDisplayProc|dataOut[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~10_combout\ = (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\) # 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~10_combout\);

-- Location: LCCOMB_X67_Y5_N0
\RamDisplay|dozensDisplayProc|dataOut[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~11_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~11_combout\);

-- Location: LCCOMB_X67_Y5_N4
\RamDisplay|dozensDisplayProc|dataOut[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~9_combout\ = (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\)) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~9_combout\);

-- Location: LCCOMB_X67_Y5_N30
\RamDisplay|dozensDisplayProc|dataOut[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~12_combout\ = (\RamDisplay|dozensDisplayProc|dataOut[4]~10_combout\) # ((\RamDisplay|dozensDisplayProc|dataOut[4]~11_combout\) # (\RamDisplay|dozensDisplayProc|dataOut[4]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|dozensDisplayProc|dataOut[4]~10_combout\,
	datab => \RamDisplay|dozensDisplayProc|dataOut[4]~11_combout\,
	datac => \RamDisplay|dozensDisplayProc|dataOut[4]~9_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~12_combout\);

-- Location: LCCOMB_X66_Y5_N28
\RamDisplay|dozensDisplayProc|dataOut[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~13_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\))) # 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~13_combout\);

-- Location: LCCOMB_X66_Y5_N6
\RamDisplay|dozensDisplayProc|dataOut[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~14_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ $ (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\)) # 
-- (!\RamDisplay|dozensDisplayProc|dataOut[4]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datab => \RamDisplay|dozensDisplayProc|dataOut[4]~13_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~14_combout\);

-- Location: LCCOMB_X68_Y5_N28
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\RamDisplay|Add0~4_combout\)) # 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Add0~4_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\);

-- Location: LCCOMB_X66_Y5_N16
\RamDisplay|dozensDisplayProc|dataOut[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~15_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & ((\RamDisplay|dozensDisplayProc|dataOut[4]~12_combout\) # 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\)))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & (((\RamDisplay|dozensDisplayProc|dataOut[4]~14_combout\ & 
-- !\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|dozensDisplayProc|dataOut[4]~12_combout\,
	datab => \RamDisplay|dozensDisplayProc|dataOut[4]~14_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~15_combout\);

-- Location: LCCOMB_X66_Y5_N4
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

-- Location: LCCOMB_X66_Y5_N18
\RamDisplay|dozensDisplayProc|dataOut[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~18_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\) # ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & 
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~18_combout\);

-- Location: LCCOMB_X66_Y5_N20
\RamDisplay|dozensDisplayProc|dataOut[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~19_combout\ = (\RamDisplay|dozensDisplayProc|dataOut[4]~18_combout\) # ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datad => \RamDisplay|dozensDisplayProc|dataOut[4]~18_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~19_combout\);

-- Location: LCCOMB_X66_Y5_N10
\RamDisplay|dozensDisplayProc|dataOut[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~20_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & 
-- (!\RamDisplay|dozensDisplayProc|dataOut[4]~19_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\)) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & 
-- (\RamDisplay|dozensDisplayProc|dataOut[4]~19_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\)))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\) # (!\RamDisplay|dozensDisplayProc|dataOut[4]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	datac => \RamDisplay|dozensDisplayProc|dataOut[4]~19_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~20_combout\);

-- Location: LCCOMB_X70_Y4_N10
\RamDisplay|dozensDisplayProc|dataOut[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~6_combout\ = (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~6_combout\);

-- Location: LCCOMB_X70_Y4_N24
\RamDisplay|dozensDisplayProc|dataOut[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[4]~21_combout\ = (\RamDisplay|dozensDisplayProc|dataOut[4]~20_combout\ & ((\RamDisplay|dozensDisplayProc|dataOut[4]~6_combout\))) # (!\RamDisplay|dozensDisplayProc|dataOut[4]~20_combout\ & 
-- (\RamDisplay|dozensDisplayProc|dataOut[4]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|dozensDisplayProc|dataOut[4]~17_combout\,
	datac => \RamDisplay|dozensDisplayProc|dataOut[4]~20_combout\,
	datad => \RamDisplay|dozensDisplayProc|dataOut[4]~6_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[4]~21_combout\);

-- Location: LCCOMB_X70_Y4_N30
\RamDisplay|dozensDisplayProc|dataOut[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[5]~22_combout\ = (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # 
-- (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # 
-- ((!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[5]~22_combout\);

-- Location: LCCOMB_X66_Y5_N12
\RamDisplay|dozensDisplayProc|dataOut[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[6]~28_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & (((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\)))) # 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\))) # 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[6]~28_combout\);

-- Location: LCCOMB_X66_Y5_N26
\RamDisplay|dozensDisplayProc|dataOut[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[6]~24_combout\ = (\RamDisplay|dozensDisplayProc|dataOut[6]~28_combout\) # ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ & 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\)) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|dozensDisplayProc|dataOut[6]~28_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[6]~24_combout\);

-- Location: LCCOMB_X66_Y5_N24
\RamDisplay|dozensDisplayProc|dataOut[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[6]~25_combout\ = (\RamDisplay|dozensDisplayProc|dataOut[6]~24_combout\ & ((!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\))) # (!\RamDisplay|dozensDisplayProc|dataOut[6]~24_combout\ & 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datac => \RamDisplay|dozensDisplayProc|dataOut[6]~24_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[6]~25_combout\);

-- Location: LCCOMB_X66_Y5_N0
\RamDisplay|dozensDisplayProc|dataOut[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[6]~23_combout\ = (\RamDisplay|dozensDisplayProc|dataOut[6]~28_combout\) # ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & 
-- (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\)) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|dozensDisplayProc|dataOut[6]~28_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[6]~23_combout\);

-- Location: LCCOMB_X66_Y5_N30
\RamDisplay|dozensDisplayProc|dataOut[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[6]~26_combout\ = (\RamDisplay|dozensDisplayProc|dataOut[6]~25_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ $ (((!\RamDisplay|dozensDisplayProc|dataOut[6]~23_combout\ & 
-- !\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\))))) # (!\RamDisplay|dozensDisplayProc|dataOut[6]~25_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & 
-- ((!\RamDisplay|dozensDisplayProc|dataOut[6]~23_combout\))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & (!\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datab => \RamDisplay|dozensDisplayProc|dataOut[6]~25_combout\,
	datac => \RamDisplay|dozensDisplayProc|dataOut[6]~23_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[6]~26_combout\);

-- Location: LCCOMB_X70_Y4_N28
\RamDisplay|dozensDisplayProc|dataOut[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|dozensDisplayProc|dataOut[6]~27_combout\ = (\RamDisplay|dozensDisplayProc|dataOut[4]~20_combout\ & (((!\RamDisplay|dozensDisplayProc|dataOut[4]~6_combout\) # 
-- (!\RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))) # (!\RamDisplay|dozensDisplayProc|dataOut[4]~20_combout\ & (\RamDisplay|dozensDisplayProc|dataOut[6]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|dozensDisplayProc|dataOut[6]~26_combout\,
	datab => \RamDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \RamDisplay|dozensDisplayProc|dataOut[4]~20_combout\,
	datad => \RamDisplay|dozensDisplayProc|dataOut[4]~6_combout\,
	combout => \RamDisplay|dozensDisplayProc|dataOut[6]~27_combout\);

-- Location: LCCOMB_X68_Y6_N16
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

-- Location: LCCOMB_X68_Y6_N18
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

-- Location: LCCOMB_X68_Y6_N20
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\) # 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\) # 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\)))))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\) # 
-- (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X68_Y6_N22
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

-- Location: LCCOMB_X67_Y6_N12
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56_combout\);

-- Location: LCCOMB_X68_Y6_N10
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\) # 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\);

-- Location: LCCOMB_X67_Y6_N10
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X68_Y6_N0
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\) # 
-- ((!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\);

-- Location: LCCOMB_X68_Y6_N2
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\) # 
-- ((!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\);

-- Location: LCCOMB_X67_Y6_N20
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X67_Y6_N16
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X67_Y6_N6
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~59_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~59_combout\);

-- Location: LCCOMB_X67_Y6_N4
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\) # 
-- ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\);

-- Location: LCCOMB_X67_Y6_N22
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

-- Location: LCCOMB_X67_Y6_N24
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\ & 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\)))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X67_Y6_N26
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

-- Location: LCCOMB_X67_Y6_N28
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

-- Location: LCCOMB_X67_Y6_N30
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

-- Location: LCCOMB_X67_Y7_N20
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60_combout\);

-- Location: LCCOMB_X67_Y6_N2
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\);

-- Location: LCCOMB_X67_Y7_N30
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61_combout\);

-- Location: LCCOMB_X67_Y6_N8
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\);

-- Location: LCCOMB_X67_Y7_N12
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62_combout\);

-- Location: LCCOMB_X67_Y6_N14
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\);

-- Location: LCCOMB_X67_Y7_N22
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X67_Y6_N0
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89_combout\);

-- Location: LCCOMB_X70_Y6_N10
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X68_Y5_N30
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~64_combout\ = (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~64_combout\);

-- Location: LCCOMB_X68_Y5_N10
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\) # 
-- ((!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90_combout\);

-- Location: LCCOMB_X67_Y7_N0
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

-- Location: LCCOMB_X67_Y7_N2
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

-- Location: LCCOMB_X67_Y7_N4
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

-- Location: LCCOMB_X67_Y7_N6
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61_combout\ & 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\)))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61_combout\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\ & 
-- !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X67_Y7_N8
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

-- Location: LCCOMB_X67_Y7_N10
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

-- Location: LCCOMB_X67_Y7_N16
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65_combout\);

-- Location: LCCOMB_X67_Y7_N28
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\) # 
-- ((!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\);

-- Location: LCCOMB_X68_Y7_N12
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

-- Location: LCCOMB_X67_Y7_N18
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\) # 
-- ((!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\);

-- Location: LCCOMB_X68_Y7_N10
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67_combout\);

-- Location: LCCOMB_X67_Y7_N24
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\) # 
-- ((!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\);

-- Location: LCCOMB_X67_Y7_N14
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

-- Location: LCCOMB_X68_Y7_N4
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68_combout\ = (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68_combout\);

-- Location: LCCOMB_X67_Y7_N26
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

-- Location: LCCOMB_X68_Y5_N8
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90_combout\) # 
-- ((!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\);

-- Location: LCCOMB_X68_Y5_N26
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\);

-- Location: LCCOMB_X68_Y5_N0
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~70_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~70_combout\);

-- Location: LCCOMB_X68_Y5_N18
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\RamDisplay|Add0~4_combout\)) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \RamDisplay|Add0~4_combout\,
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\);

-- Location: LCCOMB_X68_Y7_N18
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

-- Location: LCCOMB_X68_Y7_N20
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69_combout\ & 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\)))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69_combout\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\ & 
-- !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X68_Y7_N22
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

-- Location: LCCOMB_X68_Y7_N24
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67_combout\ & 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\)))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67_combout\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\ & 
-- !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X68_Y7_N26
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

-- Location: LCCOMB_X68_Y7_N28
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65_combout\ & 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\)))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65_combout\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\ & 
-- !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X68_Y7_N30
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

-- Location: LCCOMB_X69_Y5_N2
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\RamDisplay|Add0~2_combout\))) # (!\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \RamDisplay|Add0~2_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\);

-- Location: LCCOMB_X68_Y5_N20
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\);

-- Location: LCCOMB_X69_Y5_N0
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\);

-- Location: LCCOMB_X68_Y7_N2
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~98_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~98_combout\);

-- Location: LCCOMB_X69_Y7_N16
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~74_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~74_combout\);

-- Location: LCCOMB_X68_Y7_N0
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~99_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\) # 
-- ((!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~99_combout\);

-- Location: LCCOMB_X68_Y7_N6
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

-- Location: LCCOMB_X69_Y7_N26
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~76_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~76_combout\);

-- Location: LCCOMB_X68_Y7_N14
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~100_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\) # 
-- ((!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~100_combout\);

-- Location: LCCOMB_X68_Y7_N8
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~101_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\) # 
-- ((!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~101_combout\);

-- Location: LCCOMB_X69_Y7_N20
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

-- Location: LCCOMB_X68_Y7_N16
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\);

-- Location: LCCOMB_X69_Y7_N28
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

-- Location: LCCOMB_X69_Y7_N30
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\);

-- Location: LCCOMB_X68_Y5_N22
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\);

-- Location: LCCOMB_X69_Y7_N0
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\) # (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\)))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\) # (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\,
	datad => VCC,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X69_Y7_N2
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

-- Location: LCCOMB_X69_Y7_N4
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\)))))
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\) # 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\,
	datad => VCC,
	cin => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X69_Y7_N6
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

-- Location: LCCOMB_X69_Y7_N8
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

-- Location: LCCOMB_X69_Y7_N10
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

-- Location: LCCOMB_X69_Y7_N12
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

-- Location: LCCOMB_X69_Y7_N14
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

-- Location: LCCOMB_X69_Y7_N24
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (((\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\);

-- Location: LCCOMB_X69_Y7_N22
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

-- Location: LCCOMB_X69_Y5_N4
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~71_combout\ = (\RamDisplay|Add0~0_combout\ & !\RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Add0~0_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~71_combout\);

-- Location: LCCOMB_X69_Y5_N10
\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~70_combout\ = (\RamDisplay|Add0~0_combout\ & \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Add0~0_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~70_combout\);

-- Location: LCCOMB_X69_Y5_N12
\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\ = (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~71_combout\) # (\RamDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~71_combout\,
	datad => \RamDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~70_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\);

-- Location: LCCOMB_X69_Y5_N30
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\RamDisplay|Add0~0_combout\))) # 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\,
	datac => \RamDisplay|Add0~0_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\);

-- Location: LCCOMB_X69_Y7_N18
\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\) # 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (((\RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\,
	combout => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\);

-- Location: LCCOMB_X76_Y4_N24
\RamDisplay|unitsDisplayProc|dataOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|unitsDisplayProc|dataOut[0]~0_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ $ (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	combout => \RamDisplay|unitsDisplayProc|dataOut[0]~0_combout\);

-- Location: LCCOMB_X76_Y4_N6
\RamDisplay|unitsDisplayProc|dataOut[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|unitsDisplayProc|dataOut[1]~1_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ $ (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	combout => \RamDisplay|unitsDisplayProc|dataOut[1]~1_combout\);

-- Location: LCCOMB_X76_Y4_N20
\RamDisplay|unitsDisplayProc|dataOut[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|unitsDisplayProc|dataOut[2]~2_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\) # (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	combout => \RamDisplay|unitsDisplayProc|dataOut[2]~2_combout\);

-- Location: LCCOMB_X76_Y4_N18
\RamDisplay|unitsDisplayProc|dataOut[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|unitsDisplayProc|dataOut[3]~3_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\)) # (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\))))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ $ (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	combout => \RamDisplay|unitsDisplayProc|dataOut[3]~3_combout\);

-- Location: LCCOMB_X76_Y4_N12
\RamDisplay|unitsDisplayProc|dataOut[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|unitsDisplayProc|dataOut[4]~4_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\)) # (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\))))) # 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & ((!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\))) # 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	combout => \RamDisplay|unitsDisplayProc|dataOut[4]~4_combout\);

-- Location: LCCOMB_X76_Y4_N10
\RamDisplay|unitsDisplayProc|dataOut[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|unitsDisplayProc|dataOut[5]~5_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & (((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ & 
-- !\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\)) # (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & 
-- (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ & !\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	combout => \RamDisplay|unitsDisplayProc|dataOut[5]~5_combout\);

-- Location: LCCOMB_X76_Y4_N4
\RamDisplay|unitsDisplayProc|dataOut[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RamDisplay|unitsDisplayProc|dataOut[6]~6_combout\ = (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & 
-- ((\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\) # (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ & \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\)))) # (!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & 
-- (\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ $ (((!\RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	datab => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	datac => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	datad => \RamDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	combout => \RamDisplay|unitsDisplayProc|dataOut[6]~6_combout\);

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


