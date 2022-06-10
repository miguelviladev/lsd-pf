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

-- DATE "06/10/2022 18:28:53"

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
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(7 DOWNTO 0)
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
SIGNAL \Hz2Lane|Equal0~5_combout\ : std_logic;
SIGNAL \Hz2Lane|Equal0~0_combout\ : std_logic;
SIGNAL \Hz2Lane|Equal0~1_combout\ : std_logic;
SIGNAL \Hz2Lane|Equal0~3_combout\ : std_logic;
SIGNAL \Hz2Lane|Equal0~2_combout\ : std_logic;
SIGNAL \Hz2Lane|Equal0~4_combout\ : std_logic;
SIGNAL \Hz2Lane|Equal0~7_combout\ : std_logic;
SIGNAL \Hz2Lane|pulse~feeder_combout\ : std_logic;
SIGNAL \Hz2Lane|pulse~q\ : std_logic;
SIGNAL \AddressGenerator|s_address[0]~21_combout\ : std_logic;
SIGNAL \AddressGenerator|s_address[1]~7_combout\ : std_logic;
SIGNAL \AddressGenerator|s_address[1]~8\ : std_logic;
SIGNAL \AddressGenerator|s_address[2]~9_combout\ : std_logic;
SIGNAL \AddressGenerator|s_address[2]~10\ : std_logic;
SIGNAL \AddressGenerator|s_address[3]~11_combout\ : std_logic;
SIGNAL \AddressGenerator|s_address[3]~12\ : std_logic;
SIGNAL \AddressGenerator|s_address[4]~13_combout\ : std_logic;
SIGNAL \AddressGenerator|s_address[4]~14\ : std_logic;
SIGNAL \AddressGenerator|s_address[5]~15_combout\ : std_logic;
SIGNAL \AddressGenerator|s_address[5]~16\ : std_logic;
SIGNAL \AddressGenerator|s_address[6]~17_combout\ : std_logic;
SIGNAL \AddressGenerator|s_address[6]~18\ : std_logic;
SIGNAL \AddressGenerator|s_address[7]~19_combout\ : std_logic;
SIGNAL \NoisyROM|Mux0~0_combout\ : std_logic;
SIGNAL \NoisyROM|Mux0~2_combout\ : std_logic;
SIGNAL \NoisyROM|Mux0~1_combout\ : std_logic;
SIGNAL \NoisyROM|Mux0~3_combout\ : std_logic;
SIGNAL \NoisyROM|Mux0~4_combout\ : std_logic;
SIGNAL \NoisyROM|Mux0~5_combout\ : std_logic;
SIGNAL \NoisyROM|Mux1~19_combout\ : std_logic;
SIGNAL \NoisyROM|Mux1~16_combout\ : std_logic;
SIGNAL \NoisyROM|Mux1~17_combout\ : std_logic;
SIGNAL \NoisyROM|Mux1~18_combout\ : std_logic;
SIGNAL \NoisyROM|Mux1~15_combout\ : std_logic;
SIGNAL \NoisyROM|Mux1~20_combout\ : std_logic;
SIGNAL \NoisyROM|Mux1~0_combout\ : std_logic;
SIGNAL \NoisyROM|Mux1~1_combout\ : std_logic;
SIGNAL \NoisyROM|Mux1~2_combout\ : std_logic;
SIGNAL \NoisyROM|Mux1~12_combout\ : std_logic;
SIGNAL \NoisyROM|Mux1~8_combout\ : std_logic;
SIGNAL \NoisyROM|Mux1~9_combout\ : std_logic;
SIGNAL \NoisyROM|Mux1~10_combout\ : std_logic;
SIGNAL \NoisyROM|Mux1~11_combout\ : std_logic;
SIGNAL \NoisyROM|Mux1~13_combout\ : std_logic;
SIGNAL \NoisyROM|Mux1~4_combout\ : std_logic;
SIGNAL \NoisyROM|Mux1~3_combout\ : std_logic;
SIGNAL \NoisyROM|Mux1~5_combout\ : std_logic;
SIGNAL \NoisyROM|Mux1~6_combout\ : std_logic;
SIGNAL \NoisyROM|Mux1~7_combout\ : std_logic;
SIGNAL \NoisyROM|Mux1~14_combout\ : std_logic;
SIGNAL \NoisyROM|Mux1~21_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~19_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~20_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~21_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~22_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~23_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~24_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~4_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~1_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~2_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~3_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~0_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~5_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~16_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~14_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~13_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~15_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~12_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~17_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~8_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~7_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~9_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~6_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~10_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~11_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~18_combout\ : std_logic;
SIGNAL \NoisyROM|Mux2~25_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~0_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~2_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~1_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~3_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~4_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~5_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~23_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~21_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~20_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~22_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~19_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~24_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~8_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~7_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~9_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~10_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~6_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~11_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~13_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~14_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~15_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~12_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~16_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~17_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~18_combout\ : std_logic;
SIGNAL \NoisyROM|Mux3~25_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~23_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~19_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~20_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~21_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~22_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~24_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~12_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~16_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~14_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~13_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~15_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~17_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~7_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~8_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~9_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~10_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~6_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~11_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~18_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~4_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~2_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~1_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~3_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~0_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~5_combout\ : std_logic;
SIGNAL \NoisyROM|Mux4~25_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~19_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~21_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~20_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~22_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~23_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~24_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~4_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~0_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~1_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~2_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~3_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~5_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~12_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~16_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~13_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~14_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~15_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~17_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~10_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~6_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~7_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~8_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~9_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~11_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~18_combout\ : std_logic;
SIGNAL \NoisyROM|Mux5~25_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~12_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~16_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~14_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~13_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~15_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~17_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~6_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~10_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~8_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~7_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~9_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~11_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~18_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~4_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~1_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~2_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~3_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~0_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~5_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~19_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~20_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~21_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~22_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~23_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~24_combout\ : std_logic;
SIGNAL \NoisyROM|Mux6~25_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~23_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~19_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~21_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~20_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~22_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~24_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~1_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~2_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~3_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~4_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~0_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~5_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~14_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~13_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~15_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~16_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~12_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~17_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~10_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~7_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~8_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~9_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~6_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~11_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~18_combout\ : std_logic;
SIGNAL \NoisyROM|Mux7~25_combout\ : std_logic;
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
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
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
SIGNAL \RomDisplay|hundredsDisplayProc|dataOut[4]~2_combout\ : std_logic;
SIGNAL \RomDisplay|hundredsDisplayProc|dataOut[4]~3_combout\ : std_logic;
SIGNAL \RomDisplay|hundredsDisplayProc|dataOut[4]~1_combout\ : std_logic;
SIGNAL \RomDisplay|hundredsDisplayProc|dataOut[4]~4_combout\ : std_logic;
SIGNAL \RomDisplay|hundredsDisplayProc|dataOut[3]~5_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\ : std_logic;
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
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ : std_logic;
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
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ : std_logic;
SIGNAL \RomDisplay|Add0~2_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[0]~2_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[1]~3_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[2]~4_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[3]~5_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[6]~18_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[6]~19_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[6]~20_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~7_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~8_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~13_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~14_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~11_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~10_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~9_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~12_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~15_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~16_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~17_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~6_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[4]~21_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[5]~22_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[6]~28_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[6]~24_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[6]~25_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[6]~23_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[6]~26_combout\ : std_logic;
SIGNAL \RomDisplay|dozensDisplayProc|dataOut[6]~27_combout\ : std_logic;
SIGNAL \RomDisplay|Add0~0_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~71_combout\ : std_logic;
SIGNAL \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~70_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~59_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62_combout\ : std_logic;
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
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~66_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~70_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~98_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~74_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~99_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~75_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~76_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~100_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~101_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~77_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ : std_logic;
SIGNAL \RomDisplay|unitsDisplayProc|dataOut[0]~0_combout\ : std_logic;
SIGNAL \RomDisplay|unitsDisplayProc|dataOut[1]~1_combout\ : std_logic;
SIGNAL \RomDisplay|unitsDisplayProc|dataOut[2]~2_combout\ : std_logic;
SIGNAL \RomDisplay|unitsDisplayProc|dataOut[3]~3_combout\ : std_logic;
SIGNAL \RomDisplay|unitsDisplayProc|dataOut[4]~4_combout\ : std_logic;
SIGNAL \RomDisplay|unitsDisplayProc|dataOut[5]~5_combout\ : std_logic;
SIGNAL \RomDisplay|unitsDisplayProc|dataOut[6]~6_combout\ : std_logic;
SIGNAL \Hz2Lane|s_cnt\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \AddressGenerator|s_address\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RomDisplay|hundredsDisplayProc|ALT_INV_dataOut[3]~5_combout\ : std_logic;
SIGNAL \NoisyROM|ALT_INV_Mux0~5_combout\ : std_logic;

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
\RomDisplay|hundredsDisplayProc|ALT_INV_dataOut[3]~5_combout\ <= NOT \RomDisplay|hundredsDisplayProc|dataOut[3]~5_combout\;
\NoisyROM|ALT_INV_Mux0~5_combout\ <= NOT \NoisyROM|Mux0~5_combout\;
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
	i => \NoisyROM|ALT_INV_Mux0~5_combout\,
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
	i => \RomDisplay|hundredsDisplayProc|dataOut[4]~4_combout\,
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
	i => \RomDisplay|hundredsDisplayProc|ALT_INV_dataOut[3]~5_combout\,
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

-- Location: LCCOMB_X106_Y57_N8
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

-- Location: FF_X106_Y57_N9
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

-- Location: LCCOMB_X106_Y57_N10
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

-- Location: FF_X106_Y57_N11
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

-- Location: LCCOMB_X106_Y57_N12
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

-- Location: FF_X106_Y57_N13
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

-- Location: LCCOMB_X106_Y57_N14
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

-- Location: FF_X106_Y57_N15
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

-- Location: LCCOMB_X106_Y57_N16
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

-- Location: FF_X106_Y57_N17
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

-- Location: LCCOMB_X106_Y57_N18
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

-- Location: FF_X106_Y57_N19
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

-- Location: LCCOMB_X106_Y57_N20
\Hz2Lane|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~12_combout\ = (\Hz2Lane|s_cnt\(6) & (\Hz2Lane|Add0~11\ $ (GND))) # (!\Hz2Lane|s_cnt\(6) & (!\Hz2Lane|Add0~11\ & VCC))
-- \Hz2Lane|Add0~13\ = CARRY((\Hz2Lane|s_cnt\(6) & !\Hz2Lane|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(6),
	datad => VCC,
	cin => \Hz2Lane|Add0~11\,
	combout => \Hz2Lane|Add0~12_combout\,
	cout => \Hz2Lane|Add0~13\);

-- Location: LCCOMB_X106_Y57_N6
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

-- Location: FF_X106_Y57_N7
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

-- Location: LCCOMB_X106_Y57_N22
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

-- Location: FF_X106_Y57_N23
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

-- Location: LCCOMB_X106_Y57_N24
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

-- Location: FF_X106_Y57_N25
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

-- Location: LCCOMB_X106_Y57_N26
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

-- Location: FF_X106_Y57_N27
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

-- Location: LCCOMB_X106_Y57_N28
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

-- Location: FF_X106_Y57_N29
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

-- Location: LCCOMB_X106_Y57_N30
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

-- Location: LCCOMB_X106_Y57_N0
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

-- Location: FF_X106_Y57_N1
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

-- Location: LCCOMB_X106_Y56_N0
\Hz2Lane|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~24_combout\ = (\Hz2Lane|s_cnt\(12) & (\Hz2Lane|Add0~23\ $ (GND))) # (!\Hz2Lane|s_cnt\(12) & (!\Hz2Lane|Add0~23\ & VCC))
-- \Hz2Lane|Add0~25\ = CARRY((\Hz2Lane|s_cnt\(12) & !\Hz2Lane|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(12),
	datad => VCC,
	cin => \Hz2Lane|Add0~23\,
	combout => \Hz2Lane|Add0~24_combout\,
	cout => \Hz2Lane|Add0~25\);

-- Location: LCCOMB_X105_Y56_N12
\Hz2Lane|s_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_cnt~3_combout\ = (!\Hz2Lane|Equal0~7_combout\ & \Hz2Lane|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|Equal0~7_combout\,
	datac => \Hz2Lane|Add0~24_combout\,
	combout => \Hz2Lane|s_cnt~3_combout\);

-- Location: FF_X105_Y56_N13
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

-- Location: LCCOMB_X106_Y56_N2
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

-- Location: LCCOMB_X105_Y56_N8
\Hz2Lane|s_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_cnt~2_combout\ = (!\Hz2Lane|Equal0~7_combout\ & \Hz2Lane|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Hz2Lane|Equal0~7_combout\,
	datad => \Hz2Lane|Add0~26_combout\,
	combout => \Hz2Lane|s_cnt~2_combout\);

-- Location: FF_X105_Y56_N9
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

-- Location: LCCOMB_X106_Y56_N4
\Hz2Lane|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~28_combout\ = (\Hz2Lane|s_cnt\(14) & (\Hz2Lane|Add0~27\ $ (GND))) # (!\Hz2Lane|s_cnt\(14) & (!\Hz2Lane|Add0~27\ & VCC))
-- \Hz2Lane|Add0~29\ = CARRY((\Hz2Lane|s_cnt\(14) & !\Hz2Lane|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_cnt\(14),
	datad => VCC,
	cin => \Hz2Lane|Add0~27\,
	combout => \Hz2Lane|Add0~28_combout\,
	cout => \Hz2Lane|Add0~29\);

-- Location: LCCOMB_X105_Y56_N6
\Hz2Lane|s_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_cnt~1_combout\ = (!\Hz2Lane|Equal0~7_combout\ & \Hz2Lane|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Hz2Lane|Equal0~7_combout\,
	datad => \Hz2Lane|Add0~28_combout\,
	combout => \Hz2Lane|s_cnt~1_combout\);

-- Location: FF_X105_Y56_N7
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

-- Location: LCCOMB_X106_Y56_N6
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

-- Location: FF_X106_Y56_N7
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

-- Location: LCCOMB_X106_Y56_N8
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

-- Location: LCCOMB_X106_Y56_N26
\Hz2Lane|s_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_cnt~0_combout\ = (\Hz2Lane|Add0~32_combout\ & !\Hz2Lane|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Hz2Lane|Add0~32_combout\,
	datad => \Hz2Lane|Equal0~7_combout\,
	combout => \Hz2Lane|s_cnt~0_combout\);

-- Location: FF_X106_Y56_N27
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

-- Location: LCCOMB_X106_Y56_N10
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

-- Location: FF_X106_Y56_N11
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

-- Location: LCCOMB_X106_Y56_N12
\Hz2Lane|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~36_combout\ = (\Hz2Lane|s_cnt\(18) & (\Hz2Lane|Add0~35\ $ (GND))) # (!\Hz2Lane|s_cnt\(18) & (!\Hz2Lane|Add0~35\ & VCC))
-- \Hz2Lane|Add0~37\ = CARRY((\Hz2Lane|s_cnt\(18) & !\Hz2Lane|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_cnt\(18),
	datad => VCC,
	cin => \Hz2Lane|Add0~35\,
	combout => \Hz2Lane|Add0~36_combout\,
	cout => \Hz2Lane|Add0~37\);

-- Location: LCCOMB_X106_Y56_N28
\Hz2Lane|s_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_cnt~6_combout\ = (!\Hz2Lane|Equal0~7_combout\ & \Hz2Lane|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|Equal0~7_combout\,
	datad => \Hz2Lane|Add0~36_combout\,
	combout => \Hz2Lane|s_cnt~6_combout\);

-- Location: FF_X106_Y56_N29
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

-- Location: LCCOMB_X106_Y56_N14
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

-- Location: LCCOMB_X105_Y56_N10
\Hz2Lane|s_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_cnt~7_combout\ = (!\Hz2Lane|Equal0~7_combout\ & \Hz2Lane|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|Equal0~7_combout\,
	datac => \Hz2Lane|Add0~38_combout\,
	combout => \Hz2Lane|s_cnt~7_combout\);

-- Location: FF_X105_Y56_N11
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

-- Location: LCCOMB_X106_Y56_N16
\Hz2Lane|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~40_combout\ = (\Hz2Lane|s_cnt\(20) & (\Hz2Lane|Add0~39\ $ (GND))) # (!\Hz2Lane|s_cnt\(20) & (!\Hz2Lane|Add0~39\ & VCC))
-- \Hz2Lane|Add0~41\ = CARRY((\Hz2Lane|s_cnt\(20) & !\Hz2Lane|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(20),
	datad => VCC,
	cin => \Hz2Lane|Add0~39\,
	combout => \Hz2Lane|Add0~40_combout\,
	cout => \Hz2Lane|Add0~41\);

-- Location: LCCOMB_X105_Y56_N16
\Hz2Lane|s_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_cnt~9_combout\ = (!\Hz2Lane|Equal0~7_combout\ & \Hz2Lane|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Hz2Lane|Equal0~7_combout\,
	datad => \Hz2Lane|Add0~40_combout\,
	combout => \Hz2Lane|s_cnt~9_combout\);

-- Location: FF_X105_Y56_N17
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

-- Location: LCCOMB_X106_Y56_N18
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

-- Location: LCCOMB_X106_Y56_N30
\Hz2Lane|s_cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_cnt~10_combout\ = (!\Hz2Lane|Equal0~7_combout\ & \Hz2Lane|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|Equal0~7_combout\,
	datad => \Hz2Lane|Add0~42_combout\,
	combout => \Hz2Lane|s_cnt~10_combout\);

-- Location: FF_X106_Y56_N31
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

-- Location: LCCOMB_X106_Y56_N20
\Hz2Lane|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~44_combout\ = (\Hz2Lane|s_cnt\(22) & (\Hz2Lane|Add0~43\ $ (GND))) # (!\Hz2Lane|s_cnt\(22) & (!\Hz2Lane|Add0~43\ & VCC))
-- \Hz2Lane|Add0~45\ = CARRY((\Hz2Lane|s_cnt\(22) & !\Hz2Lane|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_cnt\(22),
	datad => VCC,
	cin => \Hz2Lane|Add0~43\,
	combout => \Hz2Lane|Add0~44_combout\,
	cout => \Hz2Lane|Add0~45\);

-- Location: LCCOMB_X105_Y56_N30
\Hz2Lane|s_cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_cnt~11_combout\ = (!\Hz2Lane|Equal0~7_combout\ & \Hz2Lane|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|Equal0~7_combout\,
	datac => \Hz2Lane|Add0~44_combout\,
	combout => \Hz2Lane|s_cnt~11_combout\);

-- Location: FF_X105_Y56_N31
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

-- Location: LCCOMB_X106_Y56_N22
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

-- Location: FF_X106_Y56_N23
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

-- Location: LCCOMB_X106_Y56_N24
\Hz2Lane|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Add0~48_combout\ = \Hz2Lane|s_cnt\(24) $ (!\Hz2Lane|Add0~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(24),
	cin => \Hz2Lane|Add0~47\,
	combout => \Hz2Lane|Add0~48_combout\);

-- Location: LCCOMB_X105_Y56_N26
\Hz2Lane|s_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_cnt~8_combout\ = (!\Hz2Lane|Equal0~7_combout\ & \Hz2Lane|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Hz2Lane|Equal0~7_combout\,
	datad => \Hz2Lane|Add0~48_combout\,
	combout => \Hz2Lane|s_cnt~8_combout\);

-- Location: FF_X105_Y56_N27
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

-- Location: LCCOMB_X105_Y56_N28
\Hz2Lane|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Equal0~6_combout\ = (\Hz2Lane|s_cnt\(22) & (\Hz2Lane|s_cnt\(20) & (!\Hz2Lane|s_cnt\(23) & \Hz2Lane|s_cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(22),
	datab => \Hz2Lane|s_cnt\(20),
	datac => \Hz2Lane|s_cnt\(23),
	datad => \Hz2Lane|s_cnt\(21),
	combout => \Hz2Lane|Equal0~6_combout\);

-- Location: LCCOMB_X105_Y56_N4
\Hz2Lane|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Equal0~5_combout\ = (\Hz2Lane|s_cnt\(18) & (!\Hz2Lane|s_cnt\(17) & (\Hz2Lane|s_cnt\(0) & \Hz2Lane|s_cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(18),
	datab => \Hz2Lane|s_cnt\(17),
	datac => \Hz2Lane|s_cnt\(0),
	datad => \Hz2Lane|s_cnt\(19),
	combout => \Hz2Lane|Equal0~5_combout\);

-- Location: LCCOMB_X105_Y56_N22
\Hz2Lane|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Equal0~0_combout\ = (\Hz2Lane|s_cnt\(14) & (\Hz2Lane|s_cnt\(13) & (\Hz2Lane|s_cnt\(16) & !\Hz2Lane|s_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(14),
	datab => \Hz2Lane|s_cnt\(13),
	datac => \Hz2Lane|s_cnt\(16),
	datad => \Hz2Lane|s_cnt\(15),
	combout => \Hz2Lane|Equal0~0_combout\);

-- Location: LCCOMB_X105_Y56_N18
\Hz2Lane|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Equal0~1_combout\ = (\Hz2Lane|s_cnt\(12) & (\Hz2Lane|s_cnt\(11) & (!\Hz2Lane|s_cnt\(9) & !\Hz2Lane|s_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(12),
	datab => \Hz2Lane|s_cnt\(11),
	datac => \Hz2Lane|s_cnt\(9),
	datad => \Hz2Lane|s_cnt\(10),
	combout => \Hz2Lane|Equal0~1_combout\);

-- Location: LCCOMB_X106_Y57_N2
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

-- Location: LCCOMB_X106_Y57_N4
\Hz2Lane|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Equal0~2_combout\ = (!\Hz2Lane|s_cnt\(6) & (\Hz2Lane|s_cnt\(5) & (!\Hz2Lane|s_cnt\(7) & !\Hz2Lane|s_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(6),
	datab => \Hz2Lane|s_cnt\(5),
	datac => \Hz2Lane|s_cnt\(7),
	datad => \Hz2Lane|s_cnt\(8),
	combout => \Hz2Lane|Equal0~2_combout\);

-- Location: LCCOMB_X105_Y56_N24
\Hz2Lane|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Equal0~4_combout\ = (\Hz2Lane|Equal0~0_combout\ & (\Hz2Lane|Equal0~1_combout\ & (\Hz2Lane|Equal0~3_combout\ & \Hz2Lane|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|Equal0~0_combout\,
	datab => \Hz2Lane|Equal0~1_combout\,
	datac => \Hz2Lane|Equal0~3_combout\,
	datad => \Hz2Lane|Equal0~2_combout\,
	combout => \Hz2Lane|Equal0~4_combout\);

-- Location: LCCOMB_X105_Y56_N14
\Hz2Lane|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|Equal0~7_combout\ = (\Hz2Lane|s_cnt\(24) & (\Hz2Lane|Equal0~6_combout\ & (\Hz2Lane|Equal0~5_combout\ & \Hz2Lane|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_cnt\(24),
	datab => \Hz2Lane|Equal0~6_combout\,
	datac => \Hz2Lane|Equal0~5_combout\,
	datad => \Hz2Lane|Equal0~4_combout\,
	combout => \Hz2Lane|Equal0~7_combout\);

-- Location: LCCOMB_X105_Y56_N20
\Hz2Lane|pulse~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|pulse~feeder_combout\ = \Hz2Lane|Equal0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Hz2Lane|Equal0~7_combout\,
	combout => \Hz2Lane|pulse~feeder_combout\);

-- Location: FF_X105_Y56_N21
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

-- Location: LCCOMB_X103_Y37_N28
\AddressGenerator|s_address[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddressGenerator|s_address[0]~21_combout\ = \AddressGenerator|s_address\(0) $ (\Hz2Lane|pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddressGenerator|s_address\(0),
	datad => \Hz2Lane|pulse~q\,
	combout => \AddressGenerator|s_address[0]~21_combout\);

-- Location: FF_X103_Y37_N29
\AddressGenerator|s_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \AddressGenerator|s_address[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressGenerator|s_address\(0));

-- Location: LCCOMB_X103_Y37_N4
\AddressGenerator|s_address[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddressGenerator|s_address[1]~7_combout\ = (\AddressGenerator|s_address\(1) & (\AddressGenerator|s_address\(0) $ (VCC))) # (!\AddressGenerator|s_address\(1) & (\AddressGenerator|s_address\(0) & VCC))
-- \AddressGenerator|s_address[1]~8\ = CARRY((\AddressGenerator|s_address\(1) & \AddressGenerator|s_address\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(1),
	datab => \AddressGenerator|s_address\(0),
	datad => VCC,
	combout => \AddressGenerator|s_address[1]~7_combout\,
	cout => \AddressGenerator|s_address[1]~8\);

-- Location: FF_X103_Y37_N5
\AddressGenerator|s_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \AddressGenerator|s_address[1]~7_combout\,
	ena => \Hz2Lane|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressGenerator|s_address\(1));

-- Location: LCCOMB_X103_Y37_N6
\AddressGenerator|s_address[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddressGenerator|s_address[2]~9_combout\ = (\AddressGenerator|s_address\(2) & (!\AddressGenerator|s_address[1]~8\)) # (!\AddressGenerator|s_address\(2) & ((\AddressGenerator|s_address[1]~8\) # (GND)))
-- \AddressGenerator|s_address[2]~10\ = CARRY((!\AddressGenerator|s_address[1]~8\) # (!\AddressGenerator|s_address\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datad => VCC,
	cin => \AddressGenerator|s_address[1]~8\,
	combout => \AddressGenerator|s_address[2]~9_combout\,
	cout => \AddressGenerator|s_address[2]~10\);

-- Location: FF_X103_Y37_N7
\AddressGenerator|s_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \AddressGenerator|s_address[2]~9_combout\,
	ena => \Hz2Lane|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressGenerator|s_address\(2));

-- Location: LCCOMB_X103_Y37_N8
\AddressGenerator|s_address[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddressGenerator|s_address[3]~11_combout\ = (\AddressGenerator|s_address\(3) & (\AddressGenerator|s_address[2]~10\ $ (GND))) # (!\AddressGenerator|s_address\(3) & (!\AddressGenerator|s_address[2]~10\ & VCC))
-- \AddressGenerator|s_address[3]~12\ = CARRY((\AddressGenerator|s_address\(3) & !\AddressGenerator|s_address[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AddressGenerator|s_address\(3),
	datad => VCC,
	cin => \AddressGenerator|s_address[2]~10\,
	combout => \AddressGenerator|s_address[3]~11_combout\,
	cout => \AddressGenerator|s_address[3]~12\);

-- Location: FF_X103_Y37_N9
\AddressGenerator|s_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \AddressGenerator|s_address[3]~11_combout\,
	ena => \Hz2Lane|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressGenerator|s_address\(3));

-- Location: LCCOMB_X103_Y37_N10
\AddressGenerator|s_address[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddressGenerator|s_address[4]~13_combout\ = (\AddressGenerator|s_address\(4) & (!\AddressGenerator|s_address[3]~12\)) # (!\AddressGenerator|s_address\(4) & ((\AddressGenerator|s_address[3]~12\) # (GND)))
-- \AddressGenerator|s_address[4]~14\ = CARRY((!\AddressGenerator|s_address[3]~12\) # (!\AddressGenerator|s_address\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(4),
	datad => VCC,
	cin => \AddressGenerator|s_address[3]~12\,
	combout => \AddressGenerator|s_address[4]~13_combout\,
	cout => \AddressGenerator|s_address[4]~14\);

-- Location: FF_X103_Y37_N11
\AddressGenerator|s_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \AddressGenerator|s_address[4]~13_combout\,
	ena => \Hz2Lane|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressGenerator|s_address\(4));

-- Location: LCCOMB_X103_Y37_N12
\AddressGenerator|s_address[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddressGenerator|s_address[5]~15_combout\ = (\AddressGenerator|s_address\(5) & (\AddressGenerator|s_address[4]~14\ $ (GND))) # (!\AddressGenerator|s_address\(5) & (!\AddressGenerator|s_address[4]~14\ & VCC))
-- \AddressGenerator|s_address[5]~16\ = CARRY((\AddressGenerator|s_address\(5) & !\AddressGenerator|s_address[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(5),
	datad => VCC,
	cin => \AddressGenerator|s_address[4]~14\,
	combout => \AddressGenerator|s_address[5]~15_combout\,
	cout => \AddressGenerator|s_address[5]~16\);

-- Location: FF_X103_Y37_N13
\AddressGenerator|s_address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \AddressGenerator|s_address[5]~15_combout\,
	ena => \Hz2Lane|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressGenerator|s_address\(5));

-- Location: LCCOMB_X103_Y37_N14
\AddressGenerator|s_address[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddressGenerator|s_address[6]~17_combout\ = (\AddressGenerator|s_address\(6) & (!\AddressGenerator|s_address[5]~16\)) # (!\AddressGenerator|s_address\(6) & ((\AddressGenerator|s_address[5]~16\) # (GND)))
-- \AddressGenerator|s_address[6]~18\ = CARRY((!\AddressGenerator|s_address[5]~16\) # (!\AddressGenerator|s_address\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AddressGenerator|s_address\(6),
	datad => VCC,
	cin => \AddressGenerator|s_address[5]~16\,
	combout => \AddressGenerator|s_address[6]~17_combout\,
	cout => \AddressGenerator|s_address[6]~18\);

-- Location: FF_X103_Y37_N15
\AddressGenerator|s_address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \AddressGenerator|s_address[6]~17_combout\,
	ena => \Hz2Lane|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressGenerator|s_address\(6));

-- Location: LCCOMB_X103_Y37_N16
\AddressGenerator|s_address[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddressGenerator|s_address[7]~19_combout\ = \AddressGenerator|s_address[6]~18\ $ (!\AddressGenerator|s_address\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \AddressGenerator|s_address\(7),
	cin => \AddressGenerator|s_address[6]~18\,
	combout => \AddressGenerator|s_address[7]~19_combout\);

-- Location: FF_X103_Y37_N17
\AddressGenerator|s_address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \AddressGenerator|s_address[7]~19_combout\,
	ena => \Hz2Lane|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressGenerator|s_address\(7));

-- Location: LCCOMB_X103_Y37_N22
\NoisyROM|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux0~0_combout\ = (\AddressGenerator|s_address\(1)) # ((\AddressGenerator|s_address\(0) & ((\AddressGenerator|s_address\(7)))) # (!\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(1),
	datad => \AddressGenerator|s_address\(7),
	combout => \NoisyROM|Mux0~0_combout\);

-- Location: LCCOMB_X102_Y37_N2
\NoisyROM|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux0~2_combout\ = (\AddressGenerator|s_address\(7)) # ((\AddressGenerator|s_address\(2) & ((\AddressGenerator|s_address\(0)) # (\AddressGenerator|s_address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(1),
	datad => \AddressGenerator|s_address\(7),
	combout => \NoisyROM|Mux0~2_combout\);

-- Location: LCCOMB_X102_Y37_N24
\NoisyROM|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux0~1_combout\ = (\AddressGenerator|s_address\(2) & (!\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(1) & \AddressGenerator|s_address\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(1),
	datad => \AddressGenerator|s_address\(7),
	combout => \NoisyROM|Mux0~1_combout\);

-- Location: LCCOMB_X103_Y37_N2
\NoisyROM|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux0~3_combout\ = (\AddressGenerator|s_address\(3) & ((\NoisyROM|Mux0~2_combout\) # ((\AddressGenerator|s_address\(6))))) # (!\AddressGenerator|s_address\(3) & (((!\AddressGenerator|s_address\(6) & \NoisyROM|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux0~2_combout\,
	datab => \AddressGenerator|s_address\(3),
	datac => \AddressGenerator|s_address\(6),
	datad => \NoisyROM|Mux0~1_combout\,
	combout => \NoisyROM|Mux0~3_combout\);

-- Location: LCCOMB_X103_Y37_N24
\NoisyROM|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux0~4_combout\ = (\NoisyROM|Mux0~0_combout\ & ((\NoisyROM|Mux0~3_combout\) # ((\AddressGenerator|s_address\(6) & \AddressGenerator|s_address\(7))))) # (!\NoisyROM|Mux0~0_combout\ & (\NoisyROM|Mux0~3_combout\ & ((\AddressGenerator|s_address\(7)) 
-- # (!\AddressGenerator|s_address\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux0~0_combout\,
	datab => \NoisyROM|Mux0~3_combout\,
	datac => \AddressGenerator|s_address\(6),
	datad => \AddressGenerator|s_address\(7),
	combout => \NoisyROM|Mux0~4_combout\);

-- Location: LCCOMB_X103_Y37_N30
\NoisyROM|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux0~5_combout\ = \AddressGenerator|s_address\(6) $ (((!\AddressGenerator|s_address\(5) & ((!\AddressGenerator|s_address\(4)) # (!\NoisyROM|Mux0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(5),
	datab => \NoisyROM|Mux0~4_combout\,
	datac => \AddressGenerator|s_address\(6),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux0~5_combout\);

-- Location: LCCOMB_X101_Y36_N0
\NoisyROM|Mux1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux1~19_combout\ = (!\AddressGenerator|s_address\(2) & (!\AddressGenerator|s_address\(1) & (\AddressGenerator|s_address\(5) & !\AddressGenerator|s_address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(1),
	datac => \AddressGenerator|s_address\(5),
	datad => \AddressGenerator|s_address\(0),
	combout => \NoisyROM|Mux1~19_combout\);

-- Location: LCCOMB_X101_Y36_N6
\NoisyROM|Mux1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux1~16_combout\ = (\AddressGenerator|s_address\(1) & (((!\AddressGenerator|s_address\(5))))) # (!\AddressGenerator|s_address\(1) & (\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(5) $ (!\AddressGenerator|s_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(1),
	datac => \AddressGenerator|s_address\(5),
	datad => \AddressGenerator|s_address\(0),
	combout => \NoisyROM|Mux1~16_combout\);

-- Location: LCCOMB_X101_Y36_N4
\NoisyROM|Mux1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux1~17_combout\ = (!\AddressGenerator|s_address\(2) & (!\AddressGenerator|s_address\(1) & (\AddressGenerator|s_address\(5) & \AddressGenerator|s_address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(1),
	datac => \AddressGenerator|s_address\(5),
	datad => \AddressGenerator|s_address\(0),
	combout => \NoisyROM|Mux1~17_combout\);

-- Location: LCCOMB_X101_Y36_N30
\NoisyROM|Mux1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux1~18_combout\ = (\AddressGenerator|s_address\(3) & ((\NoisyROM|Mux1~16_combout\) # ((\AddressGenerator|s_address\(7))))) # (!\AddressGenerator|s_address\(3) & (((\NoisyROM|Mux1~17_combout\ & !\AddressGenerator|s_address\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux1~16_combout\,
	datab => \AddressGenerator|s_address\(3),
	datac => \NoisyROM|Mux1~17_combout\,
	datad => \AddressGenerator|s_address\(7),
	combout => \NoisyROM|Mux1~18_combout\);

-- Location: LCCOMB_X101_Y36_N24
\NoisyROM|Mux1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux1~15_combout\ = (!\AddressGenerator|s_address\(5) & ((\AddressGenerator|s_address\(2)) # ((\AddressGenerator|s_address\(1)) # (\AddressGenerator|s_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(1),
	datac => \AddressGenerator|s_address\(5),
	datad => \AddressGenerator|s_address\(0),
	combout => \NoisyROM|Mux1~15_combout\);

-- Location: LCCOMB_X101_Y36_N10
\NoisyROM|Mux1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux1~20_combout\ = (\AddressGenerator|s_address\(7) & ((\NoisyROM|Mux1~18_combout\ & (!\NoisyROM|Mux1~19_combout\)) # (!\NoisyROM|Mux1~18_combout\ & ((\NoisyROM|Mux1~15_combout\))))) # (!\AddressGenerator|s_address\(7) & 
-- (((\NoisyROM|Mux1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(7),
	datab => \NoisyROM|Mux1~19_combout\,
	datac => \NoisyROM|Mux1~18_combout\,
	datad => \NoisyROM|Mux1~15_combout\,
	combout => \NoisyROM|Mux1~20_combout\);

-- Location: LCCOMB_X103_Y37_N0
\NoisyROM|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux1~0_combout\ = (\AddressGenerator|s_address\(2)) # ((\AddressGenerator|s_address\(7)) # (\AddressGenerator|s_address\(0) $ (\AddressGenerator|s_address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(1),
	datad => \AddressGenerator|s_address\(7),
	combout => \NoisyROM|Mux1~0_combout\);

-- Location: LCCOMB_X103_Y37_N26
\NoisyROM|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux1~1_combout\ = (\AddressGenerator|s_address\(3) & (((\AddressGenerator|s_address\(5))) # (!\NoisyROM|Mux0~2_combout\))) # (!\AddressGenerator|s_address\(3) & (((\NoisyROM|Mux1~0_combout\ & \AddressGenerator|s_address\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux0~2_combout\,
	datab => \NoisyROM|Mux1~0_combout\,
	datac => \AddressGenerator|s_address\(3),
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux1~1_combout\);

-- Location: LCCOMB_X102_Y37_N28
\NoisyROM|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux1~2_combout\ = (\NoisyROM|Mux1~1_combout\) # ((!\AddressGenerator|s_address\(5) & (!\NoisyROM|Mux0~1_combout\ & !\AddressGenerator|s_address\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(5),
	datab => \NoisyROM|Mux0~1_combout\,
	datac => \AddressGenerator|s_address\(3),
	datad => \NoisyROM|Mux1~1_combout\,
	combout => \NoisyROM|Mux1~2_combout\);

-- Location: LCCOMB_X101_Y37_N12
\NoisyROM|Mux1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux1~12_combout\ = (!\AddressGenerator|s_address\(1) & (!\AddressGenerator|s_address\(2) & \AddressGenerator|s_address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(1),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux1~12_combout\);

-- Location: LCCOMB_X101_Y37_N24
\NoisyROM|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux1~8_combout\ = (\AddressGenerator|s_address\(5)) # ((!\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(1) $ (\AddressGenerator|s_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(1),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux1~8_combout\);

-- Location: LCCOMB_X101_Y37_N18
\NoisyROM|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux1~9_combout\ = (\AddressGenerator|s_address\(5) & (\AddressGenerator|s_address\(1) & (\AddressGenerator|s_address\(0) $ (!\AddressGenerator|s_address\(2))))) # (!\AddressGenerator|s_address\(5) & (((\AddressGenerator|s_address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(1),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux1~9_combout\);

-- Location: LCCOMB_X101_Y37_N28
\NoisyROM|Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux1~10_combout\ = (\AddressGenerator|s_address\(1) & (!\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(2) & !\AddressGenerator|s_address\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(1),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux1~10_combout\);

-- Location: LCCOMB_X101_Y37_N22
\NoisyROM|Mux1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux1~11_combout\ = (\AddressGenerator|s_address\(7) & (((\AddressGenerator|s_address\(3))))) # (!\AddressGenerator|s_address\(7) & ((\AddressGenerator|s_address\(3) & (\NoisyROM|Mux1~9_combout\)) # (!\AddressGenerator|s_address\(3) & 
-- ((\NoisyROM|Mux1~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(7),
	datab => \NoisyROM|Mux1~9_combout\,
	datac => \AddressGenerator|s_address\(3),
	datad => \NoisyROM|Mux1~10_combout\,
	combout => \NoisyROM|Mux1~11_combout\);

-- Location: LCCOMB_X101_Y37_N14
\NoisyROM|Mux1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux1~13_combout\ = (\NoisyROM|Mux1~11_combout\ & (((!\AddressGenerator|s_address\(7))) # (!\NoisyROM|Mux1~12_combout\))) # (!\NoisyROM|Mux1~11_combout\ & (((!\NoisyROM|Mux1~8_combout\ & \AddressGenerator|s_address\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux1~12_combout\,
	datab => \NoisyROM|Mux1~8_combout\,
	datac => \NoisyROM|Mux1~11_combout\,
	datad => \AddressGenerator|s_address\(7),
	combout => \NoisyROM|Mux1~13_combout\);

-- Location: LCCOMB_X101_Y36_N26
\NoisyROM|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux1~4_combout\ = (\AddressGenerator|s_address\(3) & (\AddressGenerator|s_address\(1) & (\AddressGenerator|s_address\(2) $ (\AddressGenerator|s_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(3),
	datac => \AddressGenerator|s_address\(1),
	datad => \AddressGenerator|s_address\(0),
	combout => \NoisyROM|Mux1~4_combout\);

-- Location: LCCOMB_X101_Y36_N16
\NoisyROM|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux1~3_combout\ = (\AddressGenerator|s_address\(2) & ((\AddressGenerator|s_address\(3)) # ((\AddressGenerator|s_address\(1))))) # (!\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(3) & ((\AddressGenerator|s_address\(1)) # 
-- (\AddressGenerator|s_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(3),
	datac => \AddressGenerator|s_address\(1),
	datad => \AddressGenerator|s_address\(0),
	combout => \NoisyROM|Mux1~3_combout\);

-- Location: LCCOMB_X101_Y36_N20
\NoisyROM|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux1~5_combout\ = (!\AddressGenerator|s_address\(7) & ((\AddressGenerator|s_address\(5) & (!\NoisyROM|Mux1~4_combout\)) # (!\AddressGenerator|s_address\(5) & ((!\NoisyROM|Mux1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux1~4_combout\,
	datab => \NoisyROM|Mux1~3_combout\,
	datac => \AddressGenerator|s_address\(5),
	datad => \AddressGenerator|s_address\(7),
	combout => \NoisyROM|Mux1~5_combout\);

-- Location: LCCOMB_X101_Y36_N18
\NoisyROM|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux1~6_combout\ = (\AddressGenerator|s_address\(3)) # ((\AddressGenerator|s_address\(2) & (!\AddressGenerator|s_address\(1) & !\AddressGenerator|s_address\(0))) # (!\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(1) & 
-- \AddressGenerator|s_address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(3),
	datac => \AddressGenerator|s_address\(1),
	datad => \AddressGenerator|s_address\(0),
	combout => \NoisyROM|Mux1~6_combout\);

-- Location: LCCOMB_X101_Y36_N8
\NoisyROM|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux1~7_combout\ = (\NoisyROM|Mux1~5_combout\) # ((\AddressGenerator|s_address\(7) & (\AddressGenerator|s_address\(5) & !\NoisyROM|Mux1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(7),
	datab => \NoisyROM|Mux1~5_combout\,
	datac => \AddressGenerator|s_address\(5),
	datad => \NoisyROM|Mux1~6_combout\,
	combout => \NoisyROM|Mux1~7_combout\);

-- Location: LCCOMB_X101_Y36_N2
\NoisyROM|Mux1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux1~14_combout\ = (\AddressGenerator|s_address\(6) & (((\NoisyROM|Mux1~7_combout\) # (\AddressGenerator|s_address\(4))))) # (!\AddressGenerator|s_address\(6) & (\NoisyROM|Mux1~13_combout\ & ((!\AddressGenerator|s_address\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux1~13_combout\,
	datab => \AddressGenerator|s_address\(6),
	datac => \NoisyROM|Mux1~7_combout\,
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux1~14_combout\);

-- Location: LCCOMB_X102_Y36_N0
\NoisyROM|Mux1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux1~21_combout\ = (\AddressGenerator|s_address\(4) & ((\NoisyROM|Mux1~14_combout\ & (\NoisyROM|Mux1~20_combout\)) # (!\NoisyROM|Mux1~14_combout\ & ((\NoisyROM|Mux1~2_combout\))))) # (!\AddressGenerator|s_address\(4) & 
-- (((\NoisyROM|Mux1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux1~20_combout\,
	datab => \NoisyROM|Mux1~2_combout\,
	datac => \AddressGenerator|s_address\(4),
	datad => \NoisyROM|Mux1~14_combout\,
	combout => \NoisyROM|Mux1~21_combout\);

-- Location: LCCOMB_X102_Y34_N22
\NoisyROM|Mux2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~19_combout\ = (\AddressGenerator|s_address\(1) & (((\AddressGenerator|s_address\(3) & \AddressGenerator|s_address\(7))))) # (!\AddressGenerator|s_address\(1) & (\AddressGenerator|s_address\(0) & ((\AddressGenerator|s_address\(7)) # 
-- (!\AddressGenerator|s_address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(1),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(3),
	datad => \AddressGenerator|s_address\(7),
	combout => \NoisyROM|Mux2~19_combout\);

-- Location: LCCOMB_X102_Y34_N0
\NoisyROM|Mux2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~20_combout\ = (\AddressGenerator|s_address\(1) & (!\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(3)))) # (!\AddressGenerator|s_address\(1) & (\AddressGenerator|s_address\(7) & ((\AddressGenerator|s_address\(3)) # 
-- (!\AddressGenerator|s_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(1),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(3),
	datad => \AddressGenerator|s_address\(7),
	combout => \NoisyROM|Mux2~20_combout\);

-- Location: LCCOMB_X102_Y34_N18
\NoisyROM|Mux2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~21_combout\ = (\AddressGenerator|s_address\(0) & (!\AddressGenerator|s_address\(3) & (\AddressGenerator|s_address\(1) $ (\AddressGenerator|s_address\(7))))) # (!\AddressGenerator|s_address\(0) & ((\AddressGenerator|s_address\(3) $ 
-- (\AddressGenerator|s_address\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(1),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(3),
	datad => \AddressGenerator|s_address\(7),
	combout => \NoisyROM|Mux2~21_combout\);

-- Location: LCCOMB_X102_Y34_N20
\NoisyROM|Mux2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~22_combout\ = (\AddressGenerator|s_address\(2) & ((\NoisyROM|Mux2~20_combout\) # ((\AddressGenerator|s_address\(4))))) # (!\AddressGenerator|s_address\(2) & (((!\AddressGenerator|s_address\(4) & !\NoisyROM|Mux2~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \NoisyROM|Mux2~20_combout\,
	datac => \AddressGenerator|s_address\(4),
	datad => \NoisyROM|Mux2~21_combout\,
	combout => \NoisyROM|Mux2~22_combout\);

-- Location: LCCOMB_X102_Y34_N2
\NoisyROM|Mux2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~23_combout\ = (\AddressGenerator|s_address\(1) & ((\AddressGenerator|s_address\(3) $ (\AddressGenerator|s_address\(7))))) # (!\AddressGenerator|s_address\(1) & ((\AddressGenerator|s_address\(0) & (!\AddressGenerator|s_address\(3))) # 
-- (!\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(3) & !\AddressGenerator|s_address\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(1),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(3),
	datad => \AddressGenerator|s_address\(7),
	combout => \NoisyROM|Mux2~23_combout\);

-- Location: LCCOMB_X102_Y34_N4
\NoisyROM|Mux2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~24_combout\ = (\NoisyROM|Mux2~22_combout\ & (((\NoisyROM|Mux2~23_combout\) # (!\AddressGenerator|s_address\(4))))) # (!\NoisyROM|Mux2~22_combout\ & (!\NoisyROM|Mux2~19_combout\ & (\AddressGenerator|s_address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux2~19_combout\,
	datab => \NoisyROM|Mux2~22_combout\,
	datac => \AddressGenerator|s_address\(4),
	datad => \NoisyROM|Mux2~23_combout\,
	combout => \NoisyROM|Mux2~24_combout\);

-- Location: LCCOMB_X102_Y34_N12
\NoisyROM|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~4_combout\ = (!\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(0) & (!\AddressGenerator|s_address\(3) & !\AddressGenerator|s_address\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(3),
	datad => \AddressGenerator|s_address\(7),
	combout => \NoisyROM|Mux2~4_combout\);

-- Location: LCCOMB_X102_Y34_N6
\NoisyROM|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~1_combout\ = (\AddressGenerator|s_address\(2) & ((\AddressGenerator|s_address\(7) & ((!\AddressGenerator|s_address\(3)))) # (!\AddressGenerator|s_address\(7) & (!\AddressGenerator|s_address\(0))))) # (!\AddressGenerator|s_address\(2) & 
-- (\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(3) $ (\AddressGenerator|s_address\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(3),
	datad => \AddressGenerator|s_address\(7),
	combout => \NoisyROM|Mux2~1_combout\);

-- Location: LCCOMB_X102_Y34_N16
\NoisyROM|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~2_combout\ = (\AddressGenerator|s_address\(2) & ((\AddressGenerator|s_address\(3) $ (\AddressGenerator|s_address\(7))))) # (!\AddressGenerator|s_address\(2) & ((\AddressGenerator|s_address\(3)) # ((\AddressGenerator|s_address\(0) & 
-- \AddressGenerator|s_address\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(3),
	datad => \AddressGenerator|s_address\(7),
	combout => \NoisyROM|Mux2~2_combout\);

-- Location: LCCOMB_X102_Y34_N14
\NoisyROM|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~3_combout\ = (\AddressGenerator|s_address\(4) & (((\AddressGenerator|s_address\(1))))) # (!\AddressGenerator|s_address\(4) & ((\AddressGenerator|s_address\(1) & (\NoisyROM|Mux2~1_combout\)) # (!\AddressGenerator|s_address\(1) & 
-- ((\NoisyROM|Mux2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux2~1_combout\,
	datab => \NoisyROM|Mux2~2_combout\,
	datac => \AddressGenerator|s_address\(4),
	datad => \AddressGenerator|s_address\(1),
	combout => \NoisyROM|Mux2~3_combout\);

-- Location: LCCOMB_X102_Y34_N24
\NoisyROM|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~0_combout\ = (\AddressGenerator|s_address\(3)) # (\AddressGenerator|s_address\(7) $ (((\AddressGenerator|s_address\(2)) # (\AddressGenerator|s_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(3),
	datad => \AddressGenerator|s_address\(7),
	combout => \NoisyROM|Mux2~0_combout\);

-- Location: LCCOMB_X102_Y34_N26
\NoisyROM|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~5_combout\ = (\NoisyROM|Mux2~3_combout\ & ((\NoisyROM|Mux2~4_combout\) # ((!\AddressGenerator|s_address\(4))))) # (!\NoisyROM|Mux2~3_combout\ & (((\AddressGenerator|s_address\(4) & !\NoisyROM|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux2~4_combout\,
	datab => \NoisyROM|Mux2~3_combout\,
	datac => \AddressGenerator|s_address\(4),
	datad => \NoisyROM|Mux2~0_combout\,
	combout => \NoisyROM|Mux2~5_combout\);

-- Location: LCCOMB_X101_Y34_N30
\NoisyROM|Mux2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~16_combout\ = (\AddressGenerator|s_address\(2) & (!\AddressGenerator|s_address\(3) & ((!\AddressGenerator|s_address\(4))))) # (!\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(3) $ (((\AddressGenerator|s_address\(1) & 
-- !\AddressGenerator|s_address\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(1),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux2~16_combout\);

-- Location: LCCOMB_X102_Y34_N10
\NoisyROM|Mux2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~14_combout\ = (\AddressGenerator|s_address\(3) & (\AddressGenerator|s_address\(2) & ((\AddressGenerator|s_address\(1)) # (!\AddressGenerator|s_address\(4))))) # (!\AddressGenerator|s_address\(3) & ((\AddressGenerator|s_address\(4) & 
-- (!\AddressGenerator|s_address\(2))) # (!\AddressGenerator|s_address\(4) & ((\AddressGenerator|s_address\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(3),
	datac => \AddressGenerator|s_address\(4),
	datad => \AddressGenerator|s_address\(1),
	combout => \NoisyROM|Mux2~14_combout\);

-- Location: LCCOMB_X102_Y34_N8
\NoisyROM|Mux2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~13_combout\ = (\AddressGenerator|s_address\(3) & (\AddressGenerator|s_address\(2))) # (!\AddressGenerator|s_address\(3) & (((\AddressGenerator|s_address\(4) & !\AddressGenerator|s_address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(3),
	datac => \AddressGenerator|s_address\(4),
	datad => \AddressGenerator|s_address\(1),
	combout => \NoisyROM|Mux2~13_combout\);

-- Location: LCCOMB_X102_Y34_N28
\NoisyROM|Mux2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~15_combout\ = (\AddressGenerator|s_address\(0) & (((\AddressGenerator|s_address\(7)) # (!\NoisyROM|Mux2~13_combout\)))) # (!\AddressGenerator|s_address\(0) & (!\NoisyROM|Mux2~14_combout\ & ((!\AddressGenerator|s_address\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux2~14_combout\,
	datab => \AddressGenerator|s_address\(0),
	datac => \NoisyROM|Mux2~13_combout\,
	datad => \AddressGenerator|s_address\(7),
	combout => \NoisyROM|Mux2~15_combout\);

-- Location: LCCOMB_X101_Y34_N12
\NoisyROM|Mux2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~12_combout\ = (\AddressGenerator|s_address\(3) & (((\AddressGenerator|s_address\(2) & !\AddressGenerator|s_address\(4))))) # (!\AddressGenerator|s_address\(3) & ((\AddressGenerator|s_address\(1) & (!\AddressGenerator|s_address\(2) & 
-- !\AddressGenerator|s_address\(4))) # (!\AddressGenerator|s_address\(1) & ((\AddressGenerator|s_address\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(1),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux2~12_combout\);

-- Location: LCCOMB_X101_Y34_N16
\NoisyROM|Mux2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~17_combout\ = (\NoisyROM|Mux2~15_combout\ & (((!\AddressGenerator|s_address\(7))) # (!\NoisyROM|Mux2~16_combout\))) # (!\NoisyROM|Mux2~15_combout\ & (((\AddressGenerator|s_address\(7) & \NoisyROM|Mux2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux2~16_combout\,
	datab => \NoisyROM|Mux2~15_combout\,
	datac => \AddressGenerator|s_address\(7),
	datad => \NoisyROM|Mux2~12_combout\,
	combout => \NoisyROM|Mux2~17_combout\);

-- Location: LCCOMB_X101_Y34_N24
\NoisyROM|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~8_combout\ = (\AddressGenerator|s_address\(3) & ((\AddressGenerator|s_address\(1) & ((!\AddressGenerator|s_address\(0)) # (!\AddressGenerator|s_address\(2)))) # (!\AddressGenerator|s_address\(1) & ((\AddressGenerator|s_address\(2)) # 
-- (\AddressGenerator|s_address\(0)))))) # (!\AddressGenerator|s_address\(3) & (\AddressGenerator|s_address\(1) & (\AddressGenerator|s_address\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(1),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(0),
	combout => \NoisyROM|Mux2~8_combout\);

-- Location: LCCOMB_X101_Y34_N18
\NoisyROM|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~7_combout\ = (\AddressGenerator|s_address\(1) & (\AddressGenerator|s_address\(3))) # (!\AddressGenerator|s_address\(1) & (\AddressGenerator|s_address\(2) & ((\AddressGenerator|s_address\(3)) # (\AddressGenerator|s_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(1),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(0),
	combout => \NoisyROM|Mux2~7_combout\);

-- Location: LCCOMB_X101_Y34_N10
\NoisyROM|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~9_combout\ = (\AddressGenerator|s_address\(4) & (((\AddressGenerator|s_address\(7))))) # (!\AddressGenerator|s_address\(4) & ((\AddressGenerator|s_address\(7) & ((!\NoisyROM|Mux2~7_combout\))) # (!\AddressGenerator|s_address\(7) & 
-- (\NoisyROM|Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(4),
	datab => \NoisyROM|Mux2~8_combout\,
	datac => \AddressGenerator|s_address\(7),
	datad => \NoisyROM|Mux2~7_combout\,
	combout => \NoisyROM|Mux2~9_combout\);

-- Location: LCCOMB_X101_Y34_N20
\NoisyROM|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~6_combout\ = (\AddressGenerator|s_address\(3) & ((\AddressGenerator|s_address\(1)) # ((\AddressGenerator|s_address\(2) & !\AddressGenerator|s_address\(0))))) # (!\AddressGenerator|s_address\(3) & (!\AddressGenerator|s_address\(1) & 
-- (!\AddressGenerator|s_address\(2) & \AddressGenerator|s_address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(1),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(0),
	combout => \NoisyROM|Mux2~6_combout\);

-- Location: LCCOMB_X101_Y34_N8
\NoisyROM|Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~10_combout\ = (\AddressGenerator|s_address\(3) & (((!\AddressGenerator|s_address\(2))) # (!\AddressGenerator|s_address\(1)))) # (!\AddressGenerator|s_address\(3) & ((\AddressGenerator|s_address\(1)) # ((\AddressGenerator|s_address\(2)) # 
-- (\AddressGenerator|s_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(1),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(0),
	combout => \NoisyROM|Mux2~10_combout\);

-- Location: LCCOMB_X101_Y34_N14
\NoisyROM|Mux2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~11_combout\ = (\NoisyROM|Mux2~9_combout\ & (((\NoisyROM|Mux2~10_combout\) # (!\AddressGenerator|s_address\(4))))) # (!\NoisyROM|Mux2~9_combout\ & (\NoisyROM|Mux2~6_combout\ & ((\AddressGenerator|s_address\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux2~9_combout\,
	datab => \NoisyROM|Mux2~6_combout\,
	datac => \NoisyROM|Mux2~10_combout\,
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux2~11_combout\);

-- Location: LCCOMB_X101_Y34_N26
\NoisyROM|Mux2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~18_combout\ = (\AddressGenerator|s_address\(6) & (((\NoisyROM|Mux2~11_combout\) # (\AddressGenerator|s_address\(5))))) # (!\AddressGenerator|s_address\(6) & (\NoisyROM|Mux2~17_combout\ & ((!\AddressGenerator|s_address\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(6),
	datab => \NoisyROM|Mux2~17_combout\,
	datac => \NoisyROM|Mux2~11_combout\,
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux2~18_combout\);

-- Location: LCCOMB_X101_Y34_N0
\NoisyROM|Mux2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux2~25_combout\ = (\NoisyROM|Mux2~18_combout\ & ((\NoisyROM|Mux2~24_combout\) # ((!\AddressGenerator|s_address\(5))))) # (!\NoisyROM|Mux2~18_combout\ & (((\NoisyROM|Mux2~5_combout\ & \AddressGenerator|s_address\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux2~24_combout\,
	datab => \NoisyROM|Mux2~5_combout\,
	datac => \NoisyROM|Mux2~18_combout\,
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux2~25_combout\);

-- Location: LCCOMB_X102_Y37_N10
\NoisyROM|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~0_combout\ = (\AddressGenerator|s_address\(0) & (((!\AddressGenerator|s_address\(1) & \AddressGenerator|s_address\(5))))) # (!\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(2) & ((\AddressGenerator|s_address\(1)) # 
-- (\AddressGenerator|s_address\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(1),
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux3~0_combout\);

-- Location: LCCOMB_X102_Y37_N26
\NoisyROM|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~2_combout\ = (\AddressGenerator|s_address\(0) & ((\AddressGenerator|s_address\(1) $ (\AddressGenerator|s_address\(5))))) # (!\AddressGenerator|s_address\(0) & ((\AddressGenerator|s_address\(2) & ((!\AddressGenerator|s_address\(5)))) # 
-- (!\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(1) & \AddressGenerator|s_address\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(1),
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux3~2_combout\);

-- Location: LCCOMB_X102_Y37_N4
\NoisyROM|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~1_combout\ = (\AddressGenerator|s_address\(1) & (\AddressGenerator|s_address\(5) $ (((\AddressGenerator|s_address\(2)) # (!\AddressGenerator|s_address\(0)))))) # (!\AddressGenerator|s_address\(1) & (\AddressGenerator|s_address\(0) & 
-- ((\AddressGenerator|s_address\(5)) # (!\AddressGenerator|s_address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(1),
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux3~1_combout\);

-- Location: LCCOMB_X102_Y37_N16
\NoisyROM|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~3_combout\ = (\AddressGenerator|s_address\(7) & (((\AddressGenerator|s_address\(6))))) # (!\AddressGenerator|s_address\(7) & ((\AddressGenerator|s_address\(6) & ((!\NoisyROM|Mux3~1_combout\))) # (!\AddressGenerator|s_address\(6) & 
-- (!\NoisyROM|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux3~2_combout\,
	datab => \AddressGenerator|s_address\(7),
	datac => \NoisyROM|Mux3~1_combout\,
	datad => \AddressGenerator|s_address\(6),
	combout => \NoisyROM|Mux3~3_combout\);

-- Location: LCCOMB_X102_Y37_N22
\NoisyROM|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~4_combout\ = (\AddressGenerator|s_address\(1) & ((\AddressGenerator|s_address\(5)) # (\AddressGenerator|s_address\(2) $ (!\AddressGenerator|s_address\(0))))) # (!\AddressGenerator|s_address\(1) & ((\AddressGenerator|s_address\(2)) # 
-- ((\AddressGenerator|s_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(1),
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux3~4_combout\);

-- Location: LCCOMB_X102_Y37_N12
\NoisyROM|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~5_combout\ = (\NoisyROM|Mux3~3_combout\ & (((\NoisyROM|Mux3~4_combout\) # (!\AddressGenerator|s_address\(7))))) # (!\NoisyROM|Mux3~3_combout\ & (!\NoisyROM|Mux3~0_combout\ & ((\AddressGenerator|s_address\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux3~0_combout\,
	datab => \NoisyROM|Mux3~3_combout\,
	datac => \NoisyROM|Mux3~4_combout\,
	datad => \AddressGenerator|s_address\(7),
	combout => \NoisyROM|Mux3~5_combout\);

-- Location: LCCOMB_X102_Y37_N6
\NoisyROM|Mux3~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~23_combout\ = (\AddressGenerator|s_address\(2) & ((\AddressGenerator|s_address\(7) & (\AddressGenerator|s_address\(1) $ (\AddressGenerator|s_address\(5)))) # (!\AddressGenerator|s_address\(7) & (\AddressGenerator|s_address\(1) & 
-- \AddressGenerator|s_address\(5))))) # (!\AddressGenerator|s_address\(2) & (!\AddressGenerator|s_address\(5) & (\AddressGenerator|s_address\(7) $ (\AddressGenerator|s_address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(7),
	datac => \AddressGenerator|s_address\(1),
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux3~23_combout\);

-- Location: LCCOMB_X102_Y37_N30
\NoisyROM|Mux3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~21_combout\ = (\AddressGenerator|s_address\(7) & ((\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(1) & \AddressGenerator|s_address\(5))) # (!\AddressGenerator|s_address\(2) & (!\AddressGenerator|s_address\(1))))) # 
-- (!\AddressGenerator|s_address\(7) & (((\AddressGenerator|s_address\(1) & !\AddressGenerator|s_address\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(7),
	datac => \AddressGenerator|s_address\(1),
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux3~21_combout\);

-- Location: LCCOMB_X102_Y37_N8
\NoisyROM|Mux3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~20_combout\ = (\AddressGenerator|s_address\(7) & ((\AddressGenerator|s_address\(2)) # (\AddressGenerator|s_address\(1) $ (!\AddressGenerator|s_address\(5))))) # (!\AddressGenerator|s_address\(7) & (\AddressGenerator|s_address\(2) $ 
-- (((!\AddressGenerator|s_address\(1) & \AddressGenerator|s_address\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(7),
	datac => \AddressGenerator|s_address\(1),
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux3~20_combout\);

-- Location: LCCOMB_X102_Y37_N20
\NoisyROM|Mux3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~22_combout\ = (\AddressGenerator|s_address\(0) & (((\AddressGenerator|s_address\(6)) # (!\NoisyROM|Mux3~20_combout\)))) # (!\AddressGenerator|s_address\(0) & (!\NoisyROM|Mux3~21_combout\ & ((!\AddressGenerator|s_address\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux3~21_combout\,
	datab => \AddressGenerator|s_address\(0),
	datac => \NoisyROM|Mux3~20_combout\,
	datad => \AddressGenerator|s_address\(6),
	combout => \NoisyROM|Mux3~22_combout\);

-- Location: LCCOMB_X102_Y37_N14
\NoisyROM|Mux3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~19_combout\ = (\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(7) $ (((\AddressGenerator|s_address\(5)) # (!\AddressGenerator|s_address\(1)))))) # (!\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(7) & 
-- (!\AddressGenerator|s_address\(1) & \AddressGenerator|s_address\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(7),
	datac => \AddressGenerator|s_address\(1),
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux3~19_combout\);

-- Location: LCCOMB_X102_Y37_N0
\NoisyROM|Mux3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~24_combout\ = (\NoisyROM|Mux3~22_combout\ & ((\NoisyROM|Mux3~23_combout\) # ((!\AddressGenerator|s_address\(6))))) # (!\NoisyROM|Mux3~22_combout\ & (((\NoisyROM|Mux3~19_combout\ & \AddressGenerator|s_address\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux3~23_combout\,
	datab => \NoisyROM|Mux3~22_combout\,
	datac => \NoisyROM|Mux3~19_combout\,
	datad => \AddressGenerator|s_address\(6),
	combout => \NoisyROM|Mux3~24_combout\);

-- Location: LCCOMB_X101_Y37_N0
\NoisyROM|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~8_combout\ = (\AddressGenerator|s_address\(0) & (!\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(7) $ (!\AddressGenerator|s_address\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(7),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux3~8_combout\);

-- Location: LCCOMB_X101_Y37_N2
\NoisyROM|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~7_combout\ = (\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(7) $ ((\AddressGenerator|s_address\(2))))) # (!\AddressGenerator|s_address\(0) & ((\AddressGenerator|s_address\(5)) # ((\AddressGenerator|s_address\(7) & 
-- \AddressGenerator|s_address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(7),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux3~7_combout\);

-- Location: LCCOMB_X101_Y37_N10
\NoisyROM|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~9_combout\ = (\AddressGenerator|s_address\(1) & (((\AddressGenerator|s_address\(6)) # (!\NoisyROM|Mux3~7_combout\)))) # (!\AddressGenerator|s_address\(1) & (\NoisyROM|Mux3~8_combout\ & (!\AddressGenerator|s_address\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(1),
	datab => \NoisyROM|Mux3~8_combout\,
	datac => \AddressGenerator|s_address\(6),
	datad => \NoisyROM|Mux3~7_combout\,
	combout => \NoisyROM|Mux3~9_combout\);

-- Location: LCCOMB_X101_Y37_N4
\NoisyROM|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~10_combout\ = (\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(7) $ (\AddressGenerator|s_address\(0) $ (!\AddressGenerator|s_address\(5))))) # (!\AddressGenerator|s_address\(2) & (!\AddressGenerator|s_address\(7) & 
-- (!\AddressGenerator|s_address\(0) & \AddressGenerator|s_address\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(7),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux3~10_combout\);

-- Location: LCCOMB_X101_Y37_N16
\NoisyROM|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~6_combout\ = (\AddressGenerator|s_address\(0) & ((\AddressGenerator|s_address\(7) & ((\AddressGenerator|s_address\(5)))) # (!\AddressGenerator|s_address\(7) & ((\AddressGenerator|s_address\(2)) # (!\AddressGenerator|s_address\(5)))))) # 
-- (!\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(2) $ (((!\AddressGenerator|s_address\(7) & \AddressGenerator|s_address\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(7),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux3~6_combout\);

-- Location: LCCOMB_X101_Y37_N26
\NoisyROM|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~11_combout\ = (\NoisyROM|Mux3~9_combout\ & (((!\AddressGenerator|s_address\(6))) # (!\NoisyROM|Mux3~10_combout\))) # (!\NoisyROM|Mux3~9_combout\ & (((\AddressGenerator|s_address\(6) & \NoisyROM|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux3~9_combout\,
	datab => \NoisyROM|Mux3~10_combout\,
	datac => \AddressGenerator|s_address\(6),
	datad => \NoisyROM|Mux3~6_combout\,
	combout => \NoisyROM|Mux3~11_combout\);

-- Location: LCCOMB_X100_Y37_N18
\NoisyROM|Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~13_combout\ = (\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(7) $ (((!\AddressGenerator|s_address\(6)))))) # (!\AddressGenerator|s_address\(2) & ((\AddressGenerator|s_address\(0)) # ((!\AddressGenerator|s_address\(7) & 
-- \AddressGenerator|s_address\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(7),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(6),
	combout => \NoisyROM|Mux3~13_combout\);

-- Location: LCCOMB_X101_Y37_N8
\NoisyROM|Mux3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~14_combout\ = (\AddressGenerator|s_address\(7) & (\AddressGenerator|s_address\(6) $ (((!\AddressGenerator|s_address\(2) & \AddressGenerator|s_address\(0)))))) # (!\AddressGenerator|s_address\(7) & (!\AddressGenerator|s_address\(2) & 
-- (\AddressGenerator|s_address\(6) & !\AddressGenerator|s_address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(7),
	datab => \AddressGenerator|s_address\(2),
	datac => \AddressGenerator|s_address\(6),
	datad => \AddressGenerator|s_address\(0),
	combout => \NoisyROM|Mux3~14_combout\);

-- Location: LCCOMB_X101_Y37_N6
\NoisyROM|Mux3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~15_combout\ = (\AddressGenerator|s_address\(1) & (((\AddressGenerator|s_address\(5))) # (!\NoisyROM|Mux3~13_combout\))) # (!\AddressGenerator|s_address\(1) & (((\NoisyROM|Mux3~14_combout\ & !\AddressGenerator|s_address\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(1),
	datab => \NoisyROM|Mux3~13_combout\,
	datac => \NoisyROM|Mux3~14_combout\,
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux3~15_combout\);

-- Location: LCCOMB_X100_Y37_N24
\NoisyROM|Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~12_combout\ = (\AddressGenerator|s_address\(7) & ((\AddressGenerator|s_address\(2) & (!\AddressGenerator|s_address\(0) & \AddressGenerator|s_address\(6))) # (!\AddressGenerator|s_address\(2) & ((!\AddressGenerator|s_address\(6)))))) # 
-- (!\AddressGenerator|s_address\(7) & (((\AddressGenerator|s_address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(7),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(6),
	combout => \NoisyROM|Mux3~12_combout\);

-- Location: LCCOMB_X100_Y37_N4
\NoisyROM|Mux3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~16_combout\ = (\AddressGenerator|s_address\(6) & ((\AddressGenerator|s_address\(7) & ((\AddressGenerator|s_address\(2)))) # (!\AddressGenerator|s_address\(7) & (!\AddressGenerator|s_address\(0) & !\AddressGenerator|s_address\(2))))) # 
-- (!\AddressGenerator|s_address\(6) & ((\AddressGenerator|s_address\(0) $ (\AddressGenerator|s_address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(7),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(6),
	combout => \NoisyROM|Mux3~16_combout\);

-- Location: LCCOMB_X101_Y37_N20
\NoisyROM|Mux3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~17_combout\ = (\NoisyROM|Mux3~15_combout\ & (((!\AddressGenerator|s_address\(5)) # (!\NoisyROM|Mux3~16_combout\)))) # (!\NoisyROM|Mux3~15_combout\ & (\NoisyROM|Mux3~12_combout\ & ((\AddressGenerator|s_address\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux3~15_combout\,
	datab => \NoisyROM|Mux3~12_combout\,
	datac => \NoisyROM|Mux3~16_combout\,
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux3~17_combout\);

-- Location: LCCOMB_X101_Y37_N30
\NoisyROM|Mux3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~18_combout\ = (\AddressGenerator|s_address\(3) & ((\NoisyROM|Mux3~11_combout\) # ((\AddressGenerator|s_address\(4))))) # (!\AddressGenerator|s_address\(3) & (((\NoisyROM|Mux3~17_combout\ & !\AddressGenerator|s_address\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux3~11_combout\,
	datab => \NoisyROM|Mux3~17_combout\,
	datac => \AddressGenerator|s_address\(3),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux3~18_combout\);

-- Location: LCCOMB_X102_Y37_N18
\NoisyROM|Mux3~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux3~25_combout\ = (\AddressGenerator|s_address\(4) & ((\NoisyROM|Mux3~18_combout\ & ((\NoisyROM|Mux3~24_combout\))) # (!\NoisyROM|Mux3~18_combout\ & (\NoisyROM|Mux3~5_combout\)))) # (!\AddressGenerator|s_address\(4) & 
-- (((\NoisyROM|Mux3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux3~5_combout\,
	datab => \NoisyROM|Mux3~24_combout\,
	datac => \AddressGenerator|s_address\(4),
	datad => \NoisyROM|Mux3~18_combout\,
	combout => \NoisyROM|Mux3~25_combout\);

-- Location: LCCOMB_X101_Y35_N12
\NoisyROM|Mux4~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~23_combout\ = (\AddressGenerator|s_address\(6) & ((\AddressGenerator|s_address\(3) & ((\AddressGenerator|s_address\(2)))) # (!\AddressGenerator|s_address\(3) & ((!\AddressGenerator|s_address\(2)) # (!\AddressGenerator|s_address\(5)))))) # 
-- (!\AddressGenerator|s_address\(6) & ((\AddressGenerator|s_address\(5) $ (\AddressGenerator|s_address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(6),
	datac => \AddressGenerator|s_address\(5),
	datad => \AddressGenerator|s_address\(2),
	combout => \NoisyROM|Mux4~23_combout\);

-- Location: LCCOMB_X101_Y35_N18
\NoisyROM|Mux4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~19_combout\ = (\AddressGenerator|s_address\(3)) # ((\AddressGenerator|s_address\(6) & ((\AddressGenerator|s_address\(5)) # (\AddressGenerator|s_address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(6),
	datac => \AddressGenerator|s_address\(5),
	datad => \AddressGenerator|s_address\(2),
	combout => \NoisyROM|Mux4~19_combout\);

-- Location: LCCOMB_X101_Y36_N28
\NoisyROM|Mux4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~20_combout\ = (\AddressGenerator|s_address\(5) & (\AddressGenerator|s_address\(3) & ((\AddressGenerator|s_address\(2)) # (!\AddressGenerator|s_address\(6))))) # (!\AddressGenerator|s_address\(5) & (\AddressGenerator|s_address\(6) $ 
-- (((\AddressGenerator|s_address\(3) & \AddressGenerator|s_address\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(5),
	datab => \AddressGenerator|s_address\(3),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(6),
	combout => \NoisyROM|Mux4~20_combout\);

-- Location: LCCOMB_X101_Y36_N22
\NoisyROM|Mux4~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~21_combout\ = (\AddressGenerator|s_address\(5) & (\AddressGenerator|s_address\(6) $ (((\AddressGenerator|s_address\(3) & !\AddressGenerator|s_address\(2)))))) # (!\AddressGenerator|s_address\(5) & (\AddressGenerator|s_address\(6) & 
-- (\AddressGenerator|s_address\(3) $ (\AddressGenerator|s_address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(5),
	datab => \AddressGenerator|s_address\(3),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(6),
	combout => \NoisyROM|Mux4~21_combout\);

-- Location: LCCOMB_X101_Y36_N12
\NoisyROM|Mux4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~22_combout\ = (\AddressGenerator|s_address\(7) & (((\AddressGenerator|s_address\(4))) # (!\NoisyROM|Mux4~20_combout\))) # (!\AddressGenerator|s_address\(7) & (((!\NoisyROM|Mux4~21_combout\ & !\AddressGenerator|s_address\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(7),
	datab => \NoisyROM|Mux4~20_combout\,
	datac => \NoisyROM|Mux4~21_combout\,
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux4~22_combout\);

-- Location: LCCOMB_X101_Y35_N26
\NoisyROM|Mux4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~24_combout\ = (\NoisyROM|Mux4~22_combout\ & ((\NoisyROM|Mux4~23_combout\) # ((!\AddressGenerator|s_address\(4))))) # (!\NoisyROM|Mux4~22_combout\ & (((\NoisyROM|Mux4~19_combout\ & \AddressGenerator|s_address\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux4~23_combout\,
	datab => \NoisyROM|Mux4~19_combout\,
	datac => \NoisyROM|Mux4~22_combout\,
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux4~24_combout\);

-- Location: LCCOMB_X101_Y35_N22
\NoisyROM|Mux4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~12_combout\ = (\AddressGenerator|s_address\(6) & ((\AddressGenerator|s_address\(4)) # ((!\AddressGenerator|s_address\(5) & \AddressGenerator|s_address\(3))))) # (!\AddressGenerator|s_address\(6) & (\AddressGenerator|s_address\(3) $ 
-- (((\AddressGenerator|s_address\(5)) # (\AddressGenerator|s_address\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(5),
	datab => \AddressGenerator|s_address\(6),
	datac => \AddressGenerator|s_address\(3),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux4~12_combout\);

-- Location: LCCOMB_X101_Y35_N0
\NoisyROM|Mux4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~16_combout\ = (\AddressGenerator|s_address\(6) & ((\AddressGenerator|s_address\(3)) # ((\AddressGenerator|s_address\(5) & \AddressGenerator|s_address\(4))))) # (!\AddressGenerator|s_address\(6) & ((\AddressGenerator|s_address\(5) & 
-- ((!\AddressGenerator|s_address\(4)) # (!\AddressGenerator|s_address\(3)))) # (!\AddressGenerator|s_address\(5) & ((\AddressGenerator|s_address\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(5),
	datab => \AddressGenerator|s_address\(6),
	datac => \AddressGenerator|s_address\(3),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux4~16_combout\);

-- Location: LCCOMB_X102_Y35_N8
\NoisyROM|Mux4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~14_combout\ = (\AddressGenerator|s_address\(4) & ((\AddressGenerator|s_address\(5)) # ((\AddressGenerator|s_address\(3)) # (!\AddressGenerator|s_address\(6))))) # (!\AddressGenerator|s_address\(4) & (\AddressGenerator|s_address\(5) $ 
-- ((\AddressGenerator|s_address\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(4),
	datab => \AddressGenerator|s_address\(5),
	datac => \AddressGenerator|s_address\(6),
	datad => \AddressGenerator|s_address\(3),
	combout => \NoisyROM|Mux4~14_combout\);

-- Location: LCCOMB_X102_Y35_N6
\NoisyROM|Mux4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~13_combout\ = (\AddressGenerator|s_address\(4) & ((\AddressGenerator|s_address\(5) & ((!\AddressGenerator|s_address\(3)))) # (!\AddressGenerator|s_address\(5) & (\AddressGenerator|s_address\(6))))) # (!\AddressGenerator|s_address\(4) & 
-- ((\AddressGenerator|s_address\(5) & (\AddressGenerator|s_address\(6))) # (!\AddressGenerator|s_address\(5) & (!\AddressGenerator|s_address\(6) & \AddressGenerator|s_address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(4),
	datab => \AddressGenerator|s_address\(5),
	datac => \AddressGenerator|s_address\(6),
	datad => \AddressGenerator|s_address\(3),
	combout => \NoisyROM|Mux4~13_combout\);

-- Location: LCCOMB_X102_Y35_N18
\NoisyROM|Mux4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~15_combout\ = (\AddressGenerator|s_address\(2) & (((\AddressGenerator|s_address\(7)) # (\NoisyROM|Mux4~13_combout\)))) # (!\AddressGenerator|s_address\(2) & (!\NoisyROM|Mux4~14_combout\ & (!\AddressGenerator|s_address\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \NoisyROM|Mux4~14_combout\,
	datac => \AddressGenerator|s_address\(7),
	datad => \NoisyROM|Mux4~13_combout\,
	combout => \NoisyROM|Mux4~15_combout\);

-- Location: LCCOMB_X101_Y35_N10
\NoisyROM|Mux4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~17_combout\ = (\AddressGenerator|s_address\(7) & ((\NoisyROM|Mux4~15_combout\ & ((\NoisyROM|Mux4~16_combout\))) # (!\NoisyROM|Mux4~15_combout\ & (!\NoisyROM|Mux4~12_combout\)))) # (!\AddressGenerator|s_address\(7) & 
-- (((\NoisyROM|Mux4~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux4~12_combout\,
	datab => \NoisyROM|Mux4~16_combout\,
	datac => \AddressGenerator|s_address\(7),
	datad => \NoisyROM|Mux4~15_combout\,
	combout => \NoisyROM|Mux4~17_combout\);

-- Location: LCCOMB_X101_Y35_N6
\NoisyROM|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~7_combout\ = (\AddressGenerator|s_address\(6) & ((\AddressGenerator|s_address\(7) $ (\AddressGenerator|s_address\(3))) # (!\AddressGenerator|s_address\(2)))) # (!\AddressGenerator|s_address\(6) & (((\AddressGenerator|s_address\(7)) # 
-- (\AddressGenerator|s_address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(7),
	datac => \AddressGenerator|s_address\(3),
	datad => \AddressGenerator|s_address\(6),
	combout => \NoisyROM|Mux4~7_combout\);

-- Location: LCCOMB_X101_Y35_N4
\NoisyROM|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~8_combout\ = (\AddressGenerator|s_address\(6) & ((\AddressGenerator|s_address\(2)) # ((!\AddressGenerator|s_address\(7) & !\AddressGenerator|s_address\(3))))) # (!\AddressGenerator|s_address\(6) & (((\AddressGenerator|s_address\(7) & 
-- \AddressGenerator|s_address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(7),
	datac => \AddressGenerator|s_address\(3),
	datad => \AddressGenerator|s_address\(6),
	combout => \NoisyROM|Mux4~8_combout\);

-- Location: LCCOMB_X101_Y35_N2
\NoisyROM|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~9_combout\ = (\AddressGenerator|s_address\(5) & (((\AddressGenerator|s_address\(4))) # (!\NoisyROM|Mux4~7_combout\))) # (!\AddressGenerator|s_address\(5) & (((!\NoisyROM|Mux4~8_combout\ & !\AddressGenerator|s_address\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux4~7_combout\,
	datab => \NoisyROM|Mux4~8_combout\,
	datac => \AddressGenerator|s_address\(5),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux4~9_combout\);

-- Location: LCCOMB_X101_Y35_N28
\NoisyROM|Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~10_combout\ = (\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(7) $ (((\AddressGenerator|s_address\(3)) # (!\AddressGenerator|s_address\(6)))))) # (!\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(3) $ 
-- (((\AddressGenerator|s_address\(7) & !\AddressGenerator|s_address\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(7),
	datac => \AddressGenerator|s_address\(3),
	datad => \AddressGenerator|s_address\(6),
	combout => \NoisyROM|Mux4~10_combout\);

-- Location: LCCOMB_X101_Y35_N20
\NoisyROM|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~6_combout\ = (\AddressGenerator|s_address\(2) & ((\AddressGenerator|s_address\(6)) # (\AddressGenerator|s_address\(7) $ (!\AddressGenerator|s_address\(3))))) # (!\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(6) & 
-- ((\AddressGenerator|s_address\(7)) # (!\AddressGenerator|s_address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(7),
	datac => \AddressGenerator|s_address\(3),
	datad => \AddressGenerator|s_address\(6),
	combout => \NoisyROM|Mux4~6_combout\);

-- Location: LCCOMB_X100_Y35_N16
\NoisyROM|Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~11_combout\ = (\NoisyROM|Mux4~9_combout\ & ((\NoisyROM|Mux4~10_combout\) # ((!\AddressGenerator|s_address\(4))))) # (!\NoisyROM|Mux4~9_combout\ & (((\NoisyROM|Mux4~6_combout\ & \AddressGenerator|s_address\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux4~9_combout\,
	datab => \NoisyROM|Mux4~10_combout\,
	datac => \NoisyROM|Mux4~6_combout\,
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux4~11_combout\);

-- Location: LCCOMB_X101_Y35_N24
\NoisyROM|Mux4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~18_combout\ = (\AddressGenerator|s_address\(1) & (((\AddressGenerator|s_address\(0))))) # (!\AddressGenerator|s_address\(1) & ((\AddressGenerator|s_address\(0) & ((\NoisyROM|Mux4~11_combout\))) # (!\AddressGenerator|s_address\(0) & 
-- (\NoisyROM|Mux4~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux4~17_combout\,
	datab => \AddressGenerator|s_address\(1),
	datac => \NoisyROM|Mux4~11_combout\,
	datad => \AddressGenerator|s_address\(0),
	combout => \NoisyROM|Mux4~18_combout\);

-- Location: LCCOMB_X102_Y35_N30
\NoisyROM|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~4_combout\ = (\AddressGenerator|s_address\(6) & (!\AddressGenerator|s_address\(4) & ((\AddressGenerator|s_address\(5)) # (!\AddressGenerator|s_address\(2))))) # (!\AddressGenerator|s_address\(6) & (\AddressGenerator|s_address\(5) $ 
-- (((\AddressGenerator|s_address\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(6),
	datab => \AddressGenerator|s_address\(5),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux4~4_combout\);

-- Location: LCCOMB_X102_Y35_N10
\NoisyROM|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~2_combout\ = (\AddressGenerator|s_address\(5) & (\AddressGenerator|s_address\(2) $ (((!\AddressGenerator|s_address\(6) & !\AddressGenerator|s_address\(4)))))) # (!\AddressGenerator|s_address\(5) & ((\AddressGenerator|s_address\(2) & 
-- (\AddressGenerator|s_address\(6))) # (!\AddressGenerator|s_address\(2) & ((\AddressGenerator|s_address\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(6),
	datab => \AddressGenerator|s_address\(5),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux4~2_combout\);

-- Location: LCCOMB_X102_Y35_N24
\NoisyROM|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~1_combout\ = (\AddressGenerator|s_address\(4) & (\AddressGenerator|s_address\(6) & ((\AddressGenerator|s_address\(2))))) # (!\AddressGenerator|s_address\(4) & ((\AddressGenerator|s_address\(5) & (!\AddressGenerator|s_address\(6))) # 
-- (!\AddressGenerator|s_address\(5) & ((\AddressGenerator|s_address\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(6),
	datab => \AddressGenerator|s_address\(5),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux4~1_combout\);

-- Location: LCCOMB_X102_Y35_N20
\NoisyROM|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~3_combout\ = (\AddressGenerator|s_address\(3) & (((\AddressGenerator|s_address\(7)) # (!\NoisyROM|Mux4~1_combout\)))) # (!\AddressGenerator|s_address\(3) & (\NoisyROM|Mux4~2_combout\ & (!\AddressGenerator|s_address\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux4~2_combout\,
	datab => \AddressGenerator|s_address\(3),
	datac => \AddressGenerator|s_address\(7),
	datad => \NoisyROM|Mux4~1_combout\,
	combout => \NoisyROM|Mux4~3_combout\);

-- Location: LCCOMB_X103_Y35_N4
\NoisyROM|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~0_combout\ = (\AddressGenerator|s_address\(6) & ((\AddressGenerator|s_address\(5) $ (!\AddressGenerator|s_address\(4))) # (!\AddressGenerator|s_address\(2)))) # (!\AddressGenerator|s_address\(6) & ((\AddressGenerator|s_address\(2)) # 
-- ((\AddressGenerator|s_address\(5) & \AddressGenerator|s_address\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(6),
	datab => \AddressGenerator|s_address\(5),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux4~0_combout\);

-- Location: LCCOMB_X102_Y35_N4
\NoisyROM|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~5_combout\ = (\NoisyROM|Mux4~3_combout\ & ((\NoisyROM|Mux4~4_combout\) # ((!\AddressGenerator|s_address\(7))))) # (!\NoisyROM|Mux4~3_combout\ & (((\AddressGenerator|s_address\(7) & !\NoisyROM|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux4~4_combout\,
	datab => \NoisyROM|Mux4~3_combout\,
	datac => \AddressGenerator|s_address\(7),
	datad => \NoisyROM|Mux4~0_combout\,
	combout => \NoisyROM|Mux4~5_combout\);

-- Location: LCCOMB_X101_Y35_N16
\NoisyROM|Mux4~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux4~25_combout\ = (\NoisyROM|Mux4~18_combout\ & ((\NoisyROM|Mux4~24_combout\) # ((!\AddressGenerator|s_address\(1))))) # (!\NoisyROM|Mux4~18_combout\ & (((\AddressGenerator|s_address\(1) & \NoisyROM|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux4~24_combout\,
	datab => \NoisyROM|Mux4~18_combout\,
	datac => \AddressGenerator|s_address\(1),
	datad => \NoisyROM|Mux4~5_combout\,
	combout => \NoisyROM|Mux4~25_combout\);

-- Location: LCCOMB_X101_Y34_N22
\NoisyROM|Mux5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~19_combout\ = (\AddressGenerator|s_address\(0) & (!\AddressGenerator|s_address\(1) & (\AddressGenerator|s_address\(3) $ (\AddressGenerator|s_address\(4))))) # (!\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(3) & 
-- (\AddressGenerator|s_address\(1) & \AddressGenerator|s_address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(1),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux5~19_combout\);

-- Location: LCCOMB_X101_Y34_N6
\NoisyROM|Mux5~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~21_combout\ = (\AddressGenerator|s_address\(1) & ((\AddressGenerator|s_address\(3) $ (\AddressGenerator|s_address\(0))) # (!\AddressGenerator|s_address\(4)))) # (!\AddressGenerator|s_address\(1) & (\AddressGenerator|s_address\(0) & 
-- ((\AddressGenerator|s_address\(3)) # (\AddressGenerator|s_address\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(1),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux5~21_combout\);

-- Location: LCCOMB_X101_Y34_N4
\NoisyROM|Mux5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~20_combout\ = (\AddressGenerator|s_address\(3) & (\AddressGenerator|s_address\(0) & ((\AddressGenerator|s_address\(4))))) # (!\AddressGenerator|s_address\(3) & ((\AddressGenerator|s_address\(0) & ((!\AddressGenerator|s_address\(4)) # 
-- (!\AddressGenerator|s_address\(1)))) # (!\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(1),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux5~20_combout\);

-- Location: LCCOMB_X101_Y34_N28
\NoisyROM|Mux5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~22_combout\ = (\AddressGenerator|s_address\(2) & (((\NoisyROM|Mux5~20_combout\) # (\AddressGenerator|s_address\(6))))) # (!\AddressGenerator|s_address\(2) & (!\NoisyROM|Mux5~21_combout\ & ((!\AddressGenerator|s_address\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux5~21_combout\,
	datab => \AddressGenerator|s_address\(2),
	datac => \NoisyROM|Mux5~20_combout\,
	datad => \AddressGenerator|s_address\(6),
	combout => \NoisyROM|Mux5~22_combout\);

-- Location: LCCOMB_X101_Y35_N30
\NoisyROM|Mux5~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~23_combout\ = (\AddressGenerator|s_address\(3) & ((\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(1) & !\AddressGenerator|s_address\(4))) # (!\AddressGenerator|s_address\(0) & ((\AddressGenerator|s_address\(1)) # 
-- (!\AddressGenerator|s_address\(4)))))) # (!\AddressGenerator|s_address\(3) & (!\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(1) & !\AddressGenerator|s_address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(1),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux5~23_combout\);

-- Location: LCCOMB_X101_Y34_N2
\NoisyROM|Mux5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~24_combout\ = (\NoisyROM|Mux5~22_combout\ & (((\NoisyROM|Mux5~23_combout\) # (!\AddressGenerator|s_address\(6))))) # (!\NoisyROM|Mux5~22_combout\ & (\NoisyROM|Mux5~19_combout\ & ((\AddressGenerator|s_address\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux5~19_combout\,
	datab => \NoisyROM|Mux5~22_combout\,
	datac => \NoisyROM|Mux5~23_combout\,
	datad => \AddressGenerator|s_address\(6),
	combout => \NoisyROM|Mux5~24_combout\);

-- Location: LCCOMB_X102_Y36_N22
\NoisyROM|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~4_combout\ = (\AddressGenerator|s_address\(2) & (((\AddressGenerator|s_address\(0))) # (!\AddressGenerator|s_address\(1)))) # (!\AddressGenerator|s_address\(2) & ((\AddressGenerator|s_address\(4)) # ((!\AddressGenerator|s_address\(1) & 
-- \AddressGenerator|s_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(1),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(4),
	datad => \AddressGenerator|s_address\(2),
	combout => \NoisyROM|Mux5~4_combout\);

-- Location: LCCOMB_X102_Y36_N18
\NoisyROM|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~0_combout\ = (\AddressGenerator|s_address\(2) & ((\AddressGenerator|s_address\(1)) # ((!\AddressGenerator|s_address\(0))))) # (!\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(4) & ((\AddressGenerator|s_address\(1)) # 
-- (\AddressGenerator|s_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(1),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(4),
	datad => \AddressGenerator|s_address\(2),
	combout => \NoisyROM|Mux5~0_combout\);

-- Location: LCCOMB_X102_Y36_N28
\NoisyROM|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~1_combout\ = (\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(1) & (!\AddressGenerator|s_address\(4)))) # (!\AddressGenerator|s_address\(0) & ((\AddressGenerator|s_address\(2) & ((\AddressGenerator|s_address\(4)))) # 
-- (!\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(1),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(4),
	datad => \AddressGenerator|s_address\(2),
	combout => \NoisyROM|Mux5~1_combout\);

-- Location: LCCOMB_X102_Y36_N2
\NoisyROM|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~2_combout\ = (\AddressGenerator|s_address\(1) & (\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(0) $ (!\AddressGenerator|s_address\(4))))) # (!\AddressGenerator|s_address\(1) & (\AddressGenerator|s_address\(0) $ 
-- ((\AddressGenerator|s_address\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(1),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(4),
	datad => \AddressGenerator|s_address\(2),
	combout => \NoisyROM|Mux5~2_combout\);

-- Location: LCCOMB_X102_Y36_N20
\NoisyROM|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~3_combout\ = (\AddressGenerator|s_address\(3) & (((\AddressGenerator|s_address\(6))) # (!\NoisyROM|Mux5~1_combout\))) # (!\AddressGenerator|s_address\(3) & (((!\AddressGenerator|s_address\(6) & !\NoisyROM|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \NoisyROM|Mux5~1_combout\,
	datac => \AddressGenerator|s_address\(6),
	datad => \NoisyROM|Mux5~2_combout\,
	combout => \NoisyROM|Mux5~3_combout\);

-- Location: LCCOMB_X102_Y36_N8
\NoisyROM|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~5_combout\ = (\AddressGenerator|s_address\(6) & ((\NoisyROM|Mux5~3_combout\ & (!\NoisyROM|Mux5~4_combout\)) # (!\NoisyROM|Mux5~3_combout\ & ((\NoisyROM|Mux5~0_combout\))))) # (!\AddressGenerator|s_address\(6) & 
-- (((\NoisyROM|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux5~4_combout\,
	datab => \NoisyROM|Mux5~0_combout\,
	datac => \AddressGenerator|s_address\(6),
	datad => \NoisyROM|Mux5~3_combout\,
	combout => \NoisyROM|Mux5~5_combout\);

-- Location: LCCOMB_X102_Y36_N30
\NoisyROM|Mux5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~12_combout\ = (\AddressGenerator|s_address\(6) & ((\AddressGenerator|s_address\(0)) # ((\AddressGenerator|s_address\(1) & \AddressGenerator|s_address\(2))))) # (!\AddressGenerator|s_address\(6) & ((\AddressGenerator|s_address\(1)) # 
-- ((!\AddressGenerator|s_address\(0) & \AddressGenerator|s_address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(1),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(6),
	datad => \AddressGenerator|s_address\(2),
	combout => \NoisyROM|Mux5~12_combout\);

-- Location: LCCOMB_X103_Y36_N10
\NoisyROM|Mux5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~16_combout\ = (\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(1) $ (!\AddressGenerator|s_address\(6))))) # (!\AddressGenerator|s_address\(2) & ((\AddressGenerator|s_address\(1) & 
-- ((\AddressGenerator|s_address\(6)))) # (!\AddressGenerator|s_address\(1) & (\AddressGenerator|s_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(1),
	datac => \AddressGenerator|s_address\(0),
	datad => \AddressGenerator|s_address\(6),
	combout => \NoisyROM|Mux5~16_combout\);

-- Location: LCCOMB_X102_Y36_N24
\NoisyROM|Mux5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~13_combout\ = (\AddressGenerator|s_address\(0) & ((\AddressGenerator|s_address\(1)) # ((!\AddressGenerator|s_address\(2)) # (!\AddressGenerator|s_address\(6))))) # (!\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(2) $ 
-- (((\AddressGenerator|s_address\(1) & !\AddressGenerator|s_address\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(1),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(6),
	datad => \AddressGenerator|s_address\(2),
	combout => \NoisyROM|Mux5~13_combout\);

-- Location: LCCOMB_X102_Y36_N10
\NoisyROM|Mux5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~14_combout\ = (\AddressGenerator|s_address\(2) & ((\AddressGenerator|s_address\(1)) # (\AddressGenerator|s_address\(0) $ (!\AddressGenerator|s_address\(6))))) # (!\AddressGenerator|s_address\(2) & ((\AddressGenerator|s_address\(0) & 
-- (!\AddressGenerator|s_address\(1))) # (!\AddressGenerator|s_address\(0) & ((\AddressGenerator|s_address\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(1),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(6),
	datad => \AddressGenerator|s_address\(2),
	combout => \NoisyROM|Mux5~14_combout\);

-- Location: LCCOMB_X102_Y36_N12
\NoisyROM|Mux5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~15_combout\ = (\AddressGenerator|s_address\(3) & ((\NoisyROM|Mux5~13_combout\) # ((\AddressGenerator|s_address\(4))))) # (!\AddressGenerator|s_address\(3) & (((!\AddressGenerator|s_address\(4) & \NoisyROM|Mux5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \NoisyROM|Mux5~13_combout\,
	datac => \AddressGenerator|s_address\(4),
	datad => \NoisyROM|Mux5~14_combout\,
	combout => \NoisyROM|Mux5~15_combout\);

-- Location: LCCOMB_X102_Y36_N6
\NoisyROM|Mux5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~17_combout\ = (\AddressGenerator|s_address\(4) & ((\NoisyROM|Mux5~15_combout\ & ((!\NoisyROM|Mux5~16_combout\))) # (!\NoisyROM|Mux5~15_combout\ & (!\NoisyROM|Mux5~12_combout\)))) # (!\AddressGenerator|s_address\(4) & 
-- (((\NoisyROM|Mux5~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux5~12_combout\,
	datab => \NoisyROM|Mux5~16_combout\,
	datac => \AddressGenerator|s_address\(4),
	datad => \NoisyROM|Mux5~15_combout\,
	combout => \NoisyROM|Mux5~17_combout\);

-- Location: LCCOMB_X101_Y36_N14
\NoisyROM|Mux5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~10_combout\ = (\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(3) & (\AddressGenerator|s_address\(1) $ (\AddressGenerator|s_address\(6))))) # (!\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(1) & 
-- (\AddressGenerator|s_address\(3) $ (\AddressGenerator|s_address\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(3),
	datac => \AddressGenerator|s_address\(1),
	datad => \AddressGenerator|s_address\(6),
	combout => \NoisyROM|Mux5~10_combout\);

-- Location: LCCOMB_X102_Y36_N14
\NoisyROM|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~6_combout\ = (\AddressGenerator|s_address\(3) & (((!\AddressGenerator|s_address\(1))))) # (!\AddressGenerator|s_address\(3) & ((\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(6))) # (!\AddressGenerator|s_address\(2) & 
-- ((\AddressGenerator|s_address\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(2),
	datac => \AddressGenerator|s_address\(6),
	datad => \AddressGenerator|s_address\(1),
	combout => \NoisyROM|Mux5~6_combout\);

-- Location: LCCOMB_X103_Y36_N16
\NoisyROM|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~7_combout\ = (\AddressGenerator|s_address\(2) & (!\AddressGenerator|s_address\(6) & (\AddressGenerator|s_address\(3) $ (\AddressGenerator|s_address\(1))))) # (!\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(6) $ 
-- (((\AddressGenerator|s_address\(3) & !\AddressGenerator|s_address\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(1),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(6),
	combout => \NoisyROM|Mux5~7_combout\);

-- Location: LCCOMB_X103_Y36_N2
\NoisyROM|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~8_combout\ = (\AddressGenerator|s_address\(3) & (!\AddressGenerator|s_address\(6) & (\AddressGenerator|s_address\(1) $ (!\AddressGenerator|s_address\(2))))) # (!\AddressGenerator|s_address\(3) & (\AddressGenerator|s_address\(6) $ 
-- (((\AddressGenerator|s_address\(1) & \AddressGenerator|s_address\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(1),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(6),
	combout => \NoisyROM|Mux5~8_combout\);

-- Location: LCCOMB_X103_Y36_N24
\NoisyROM|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~9_combout\ = (\AddressGenerator|s_address\(4) & (((\AddressGenerator|s_address\(0))))) # (!\AddressGenerator|s_address\(4) & ((\AddressGenerator|s_address\(0) & (!\NoisyROM|Mux5~7_combout\)) # (!\AddressGenerator|s_address\(0) & 
-- ((\NoisyROM|Mux5~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(4),
	datab => \NoisyROM|Mux5~7_combout\,
	datac => \AddressGenerator|s_address\(0),
	datad => \NoisyROM|Mux5~8_combout\,
	combout => \NoisyROM|Mux5~9_combout\);

-- Location: LCCOMB_X102_Y36_N4
\NoisyROM|Mux5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~11_combout\ = (\AddressGenerator|s_address\(4) & ((\NoisyROM|Mux5~9_combout\ & (!\NoisyROM|Mux5~10_combout\)) # (!\NoisyROM|Mux5~9_combout\ & ((\NoisyROM|Mux5~6_combout\))))) # (!\AddressGenerator|s_address\(4) & 
-- (((\NoisyROM|Mux5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux5~10_combout\,
	datab => \NoisyROM|Mux5~6_combout\,
	datac => \AddressGenerator|s_address\(4),
	datad => \NoisyROM|Mux5~9_combout\,
	combout => \NoisyROM|Mux5~11_combout\);

-- Location: LCCOMB_X102_Y36_N16
\NoisyROM|Mux5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~18_combout\ = (\AddressGenerator|s_address\(7) & (((\NoisyROM|Mux5~11_combout\) # (\AddressGenerator|s_address\(5))))) # (!\AddressGenerator|s_address\(7) & (\NoisyROM|Mux5~17_combout\ & ((!\AddressGenerator|s_address\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux5~17_combout\,
	datab => \NoisyROM|Mux5~11_combout\,
	datac => \AddressGenerator|s_address\(7),
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux5~18_combout\);

-- Location: LCCOMB_X102_Y36_N26
\NoisyROM|Mux5~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux5~25_combout\ = (\AddressGenerator|s_address\(5) & ((\NoisyROM|Mux5~18_combout\ & (\NoisyROM|Mux5~24_combout\)) # (!\NoisyROM|Mux5~18_combout\ & ((\NoisyROM|Mux5~5_combout\))))) # (!\AddressGenerator|s_address\(5) & 
-- (((\NoisyROM|Mux5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux5~24_combout\,
	datab => \AddressGenerator|s_address\(5),
	datac => \NoisyROM|Mux5~5_combout\,
	datad => \NoisyROM|Mux5~18_combout\,
	combout => \NoisyROM|Mux5~25_combout\);

-- Location: LCCOMB_X101_Y35_N8
\NoisyROM|Mux6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~12_combout\ = (\AddressGenerator|s_address\(2) & ((\AddressGenerator|s_address\(6) & (!\AddressGenerator|s_address\(7))) # (!\AddressGenerator|s_address\(6) & ((\AddressGenerator|s_address\(3)))))) # (!\AddressGenerator|s_address\(2) & 
-- ((\AddressGenerator|s_address\(3) & ((\AddressGenerator|s_address\(6)))) # (!\AddressGenerator|s_address\(3) & (\AddressGenerator|s_address\(7) & !\AddressGenerator|s_address\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(7),
	datac => \AddressGenerator|s_address\(3),
	datad => \AddressGenerator|s_address\(6),
	combout => \NoisyROM|Mux6~12_combout\);

-- Location: LCCOMB_X102_Y35_N28
\NoisyROM|Mux6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~16_combout\ = (\AddressGenerator|s_address\(6) & ((\AddressGenerator|s_address\(7) & (\AddressGenerator|s_address\(2) $ (\AddressGenerator|s_address\(3)))) # (!\AddressGenerator|s_address\(7) & (\AddressGenerator|s_address\(2) & 
-- \AddressGenerator|s_address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(6),
	datab => \AddressGenerator|s_address\(7),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(3),
	combout => \NoisyROM|Mux6~16_combout\);

-- Location: LCCOMB_X102_Y35_N16
\NoisyROM|Mux6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~14_combout\ = (\AddressGenerator|s_address\(7) & ((\AddressGenerator|s_address\(6) & ((!\AddressGenerator|s_address\(3)))) # (!\AddressGenerator|s_address\(6) & (\AddressGenerator|s_address\(2))))) # (!\AddressGenerator|s_address\(7) & 
-- ((\AddressGenerator|s_address\(2) & ((\AddressGenerator|s_address\(3)))) # (!\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(6),
	datab => \AddressGenerator|s_address\(7),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(3),
	combout => \NoisyROM|Mux6~14_combout\);

-- Location: LCCOMB_X103_Y35_N10
\NoisyROM|Mux6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~13_combout\ = (\AddressGenerator|s_address\(7) & (\AddressGenerator|s_address\(2) $ (((\AddressGenerator|s_address\(6)) # (!\AddressGenerator|s_address\(3)))))) # (!\AddressGenerator|s_address\(7) & ((\AddressGenerator|s_address\(2)) # 
-- ((\AddressGenerator|s_address\(3) & !\AddressGenerator|s_address\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(7),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(6),
	combout => \NoisyROM|Mux6~13_combout\);

-- Location: LCCOMB_X102_Y35_N22
\NoisyROM|Mux6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~15_combout\ = (\AddressGenerator|s_address\(0) & (((\NoisyROM|Mux6~13_combout\) # (\AddressGenerator|s_address\(4))))) # (!\AddressGenerator|s_address\(0) & (\NoisyROM|Mux6~14_combout\ & ((!\AddressGenerator|s_address\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(0),
	datab => \NoisyROM|Mux6~14_combout\,
	datac => \NoisyROM|Mux6~13_combout\,
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux6~15_combout\);

-- Location: LCCOMB_X102_Y35_N14
\NoisyROM|Mux6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~17_combout\ = (\NoisyROM|Mux6~15_combout\ & (((\NoisyROM|Mux6~16_combout\) # (!\AddressGenerator|s_address\(4))))) # (!\NoisyROM|Mux6~15_combout\ & (!\NoisyROM|Mux6~12_combout\ & ((\AddressGenerator|s_address\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux6~12_combout\,
	datab => \NoisyROM|Mux6~16_combout\,
	datac => \NoisyROM|Mux6~15_combout\,
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux6~17_combout\);

-- Location: LCCOMB_X103_Y35_N26
\NoisyROM|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~6_combout\ = (\AddressGenerator|s_address\(0) & (((\AddressGenerator|s_address\(3)) # (!\AddressGenerator|s_address\(4))) # (!\AddressGenerator|s_address\(6)))) # (!\AddressGenerator|s_address\(0) & ((\AddressGenerator|s_address\(3) & 
-- ((\AddressGenerator|s_address\(4)))) # (!\AddressGenerator|s_address\(3) & (\AddressGenerator|s_address\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(0),
	datab => \AddressGenerator|s_address\(6),
	datac => \AddressGenerator|s_address\(3),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux6~6_combout\);

-- Location: LCCOMB_X103_Y35_N2
\NoisyROM|Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~10_combout\ = (\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(4) & (\AddressGenerator|s_address\(6) $ (\AddressGenerator|s_address\(3))))) # (!\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(3) & 
-- ((\AddressGenerator|s_address\(6)) # (\AddressGenerator|s_address\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(0),
	datab => \AddressGenerator|s_address\(6),
	datac => \AddressGenerator|s_address\(3),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux6~10_combout\);

-- Location: LCCOMB_X103_Y35_N14
\NoisyROM|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~8_combout\ = (\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(4) $ (((!\AddressGenerator|s_address\(6) & !\AddressGenerator|s_address\(3)))))) # (!\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(3) & 
-- ((\AddressGenerator|s_address\(6)) # (\AddressGenerator|s_address\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(0),
	datab => \AddressGenerator|s_address\(6),
	datac => \AddressGenerator|s_address\(3),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux6~8_combout\);

-- Location: LCCOMB_X103_Y35_N24
\NoisyROM|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~7_combout\ = (\AddressGenerator|s_address\(3) & (\AddressGenerator|s_address\(6) $ (((!\AddressGenerator|s_address\(0) & \AddressGenerator|s_address\(4)))))) # (!\AddressGenerator|s_address\(3) & (\AddressGenerator|s_address\(0) & 
-- (!\AddressGenerator|s_address\(6) & !\AddressGenerator|s_address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(0),
	datab => \AddressGenerator|s_address\(6),
	datac => \AddressGenerator|s_address\(3),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux6~7_combout\);

-- Location: LCCOMB_X103_Y35_N28
\NoisyROM|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~9_combout\ = (\AddressGenerator|s_address\(2) & (((\AddressGenerator|s_address\(7)) # (\NoisyROM|Mux6~7_combout\)))) # (!\AddressGenerator|s_address\(2) & (!\NoisyROM|Mux6~8_combout\ & (!\AddressGenerator|s_address\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \NoisyROM|Mux6~8_combout\,
	datac => \AddressGenerator|s_address\(7),
	datad => \NoisyROM|Mux6~7_combout\,
	combout => \NoisyROM|Mux6~9_combout\);

-- Location: LCCOMB_X103_Y35_N8
\NoisyROM|Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~11_combout\ = (\AddressGenerator|s_address\(7) & ((\NoisyROM|Mux6~9_combout\ & ((\NoisyROM|Mux6~10_combout\))) # (!\NoisyROM|Mux6~9_combout\ & (!\NoisyROM|Mux6~6_combout\)))) # (!\AddressGenerator|s_address\(7) & 
-- (((\NoisyROM|Mux6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux6~6_combout\,
	datab => \NoisyROM|Mux6~10_combout\,
	datac => \AddressGenerator|s_address\(7),
	datad => \NoisyROM|Mux6~9_combout\,
	combout => \NoisyROM|Mux6~11_combout\);

-- Location: LCCOMB_X103_Y35_N12
\NoisyROM|Mux6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~18_combout\ = (\AddressGenerator|s_address\(1) & (((\NoisyROM|Mux6~11_combout\) # (\AddressGenerator|s_address\(5))))) # (!\AddressGenerator|s_address\(1) & (\NoisyROM|Mux6~17_combout\ & ((!\AddressGenerator|s_address\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux6~17_combout\,
	datab => \AddressGenerator|s_address\(1),
	datac => \NoisyROM|Mux6~11_combout\,
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux6~18_combout\);

-- Location: LCCOMB_X103_Y35_N22
\NoisyROM|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~4_combout\ = (\AddressGenerator|s_address\(7) & (\AddressGenerator|s_address\(4) $ (((!\AddressGenerator|s_address\(0) & !\AddressGenerator|s_address\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(0),
	datab => \AddressGenerator|s_address\(6),
	datac => \AddressGenerator|s_address\(7),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux6~4_combout\);

-- Location: LCCOMB_X103_Y35_N16
\NoisyROM|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~1_combout\ = (\AddressGenerator|s_address\(0) & ((\AddressGenerator|s_address\(6) & (\AddressGenerator|s_address\(7) $ (!\AddressGenerator|s_address\(4)))) # (!\AddressGenerator|s_address\(6) & (\AddressGenerator|s_address\(7) & 
-- !\AddressGenerator|s_address\(4))))) # (!\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(4) & (\AddressGenerator|s_address\(6) $ (\AddressGenerator|s_address\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(0),
	datab => \AddressGenerator|s_address\(6),
	datac => \AddressGenerator|s_address\(7),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux6~1_combout\);

-- Location: LCCOMB_X103_Y35_N18
\NoisyROM|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~2_combout\ = (\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(4) & (\AddressGenerator|s_address\(6) $ (!\AddressGenerator|s_address\(7))))) # (!\AddressGenerator|s_address\(0) & (!\AddressGenerator|s_address\(6) & 
-- (\AddressGenerator|s_address\(7) $ (\AddressGenerator|s_address\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(0),
	datab => \AddressGenerator|s_address\(6),
	datac => \AddressGenerator|s_address\(7),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux6~2_combout\);

-- Location: LCCOMB_X103_Y35_N0
\NoisyROM|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~3_combout\ = (\AddressGenerator|s_address\(2) & (((\AddressGenerator|s_address\(3))) # (!\NoisyROM|Mux6~1_combout\))) # (!\AddressGenerator|s_address\(2) & (((!\AddressGenerator|s_address\(3) & \NoisyROM|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \NoisyROM|Mux6~1_combout\,
	datac => \AddressGenerator|s_address\(3),
	datad => \NoisyROM|Mux6~2_combout\,
	combout => \NoisyROM|Mux6~3_combout\);

-- Location: LCCOMB_X103_Y35_N6
\NoisyROM|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~0_combout\ = (\AddressGenerator|s_address\(6) & ((\AddressGenerator|s_address\(7) $ (\AddressGenerator|s_address\(4))))) # (!\AddressGenerator|s_address\(6) & (\AddressGenerator|s_address\(0) & (!\AddressGenerator|s_address\(7) & 
-- !\AddressGenerator|s_address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(0),
	datab => \AddressGenerator|s_address\(6),
	datac => \AddressGenerator|s_address\(7),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux6~0_combout\);

-- Location: LCCOMB_X103_Y35_N20
\NoisyROM|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~5_combout\ = (\NoisyROM|Mux6~3_combout\ & ((\NoisyROM|Mux6~4_combout\) # ((!\AddressGenerator|s_address\(3))))) # (!\NoisyROM|Mux6~3_combout\ & (((\AddressGenerator|s_address\(3) & \NoisyROM|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux6~4_combout\,
	datab => \NoisyROM|Mux6~3_combout\,
	datac => \AddressGenerator|s_address\(3),
	datad => \NoisyROM|Mux6~0_combout\,
	combout => \NoisyROM|Mux6~5_combout\);

-- Location: LCCOMB_X102_Y35_N12
\NoisyROM|Mux6~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~19_combout\ = (\AddressGenerator|s_address\(0) & ((\AddressGenerator|s_address\(7) & ((\AddressGenerator|s_address\(4)))) # (!\AddressGenerator|s_address\(7) & (\AddressGenerator|s_address\(2))))) # (!\AddressGenerator|s_address\(0) & 
-- (\AddressGenerator|s_address\(2) $ (((\AddressGenerator|s_address\(7)) # (\AddressGenerator|s_address\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(0),
	datab => \AddressGenerator|s_address\(7),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux6~19_combout\);

-- Location: LCCOMB_X102_Y34_N30
\NoisyROM|Mux6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~20_combout\ = (\AddressGenerator|s_address\(4)) # ((\AddressGenerator|s_address\(7)) # ((!\AddressGenerator|s_address\(2) & \AddressGenerator|s_address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(4),
	datad => \AddressGenerator|s_address\(7),
	combout => \NoisyROM|Mux6~20_combout\);

-- Location: LCCOMB_X102_Y35_N2
\NoisyROM|Mux6~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~21_combout\ = (\AddressGenerator|s_address\(4) & (!\AddressGenerator|s_address\(2) & ((!\AddressGenerator|s_address\(7)) # (!\AddressGenerator|s_address\(0))))) # (!\AddressGenerator|s_address\(4) & (\AddressGenerator|s_address\(0) & 
-- (\AddressGenerator|s_address\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(0),
	datab => \AddressGenerator|s_address\(7),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux6~21_combout\);

-- Location: LCCOMB_X102_Y35_N0
\NoisyROM|Mux6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~22_combout\ = (\AddressGenerator|s_address\(6) & (((\AddressGenerator|s_address\(3))))) # (!\AddressGenerator|s_address\(6) & ((\AddressGenerator|s_address\(3) & (\NoisyROM|Mux6~20_combout\)) # (!\AddressGenerator|s_address\(3) & 
-- ((!\NoisyROM|Mux6~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux6~20_combout\,
	datab => \NoisyROM|Mux6~21_combout\,
	datac => \AddressGenerator|s_address\(6),
	datad => \AddressGenerator|s_address\(3),
	combout => \NoisyROM|Mux6~22_combout\);

-- Location: LCCOMB_X101_Y35_N14
\NoisyROM|Mux6~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~23_combout\ = (\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(2) $ (((\AddressGenerator|s_address\(7) & !\AddressGenerator|s_address\(4)))))) # (!\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(4) & 
-- ((\AddressGenerator|s_address\(7)) # (!\AddressGenerator|s_address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(7),
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux6~23_combout\);

-- Location: LCCOMB_X102_Y35_N26
\NoisyROM|Mux6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~24_combout\ = (\NoisyROM|Mux6~22_combout\ & (((!\NoisyROM|Mux6~23_combout\) # (!\AddressGenerator|s_address\(6))))) # (!\NoisyROM|Mux6~22_combout\ & (\NoisyROM|Mux6~19_combout\ & (\AddressGenerator|s_address\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux6~19_combout\,
	datab => \NoisyROM|Mux6~22_combout\,
	datac => \AddressGenerator|s_address\(6),
	datad => \NoisyROM|Mux6~23_combout\,
	combout => \NoisyROM|Mux6~24_combout\);

-- Location: LCCOMB_X103_Y35_N30
\NoisyROM|Mux6~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux6~25_combout\ = (\NoisyROM|Mux6~18_combout\ & (((\NoisyROM|Mux6~24_combout\) # (!\AddressGenerator|s_address\(5))))) # (!\NoisyROM|Mux6~18_combout\ & (\NoisyROM|Mux6~5_combout\ & ((\AddressGenerator|s_address\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux6~18_combout\,
	datab => \NoisyROM|Mux6~5_combout\,
	datac => \NoisyROM|Mux6~24_combout\,
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux6~25_combout\);

-- Location: LCCOMB_X103_Y36_N0
\NoisyROM|Mux7~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~23_combout\ = (\AddressGenerator|s_address\(3) & (!\AddressGenerator|s_address\(1) & ((\AddressGenerator|s_address\(0)) # (!\AddressGenerator|s_address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(1),
	combout => \NoisyROM|Mux7~23_combout\);

-- Location: LCCOMB_X103_Y36_N8
\NoisyROM|Mux7~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~19_combout\ = (\AddressGenerator|s_address\(1) & ((\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(3))) # (!\AddressGenerator|s_address\(0) & ((!\AddressGenerator|s_address\(2)))))) # (!\AddressGenerator|s_address\(1) & 
-- ((\AddressGenerator|s_address\(2) & (!\AddressGenerator|s_address\(3))) # (!\AddressGenerator|s_address\(2) & ((\AddressGenerator|s_address\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(1),
	combout => \NoisyROM|Mux7~19_combout\);

-- Location: LCCOMB_X103_Y36_N12
\NoisyROM|Mux7~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~21_combout\ = (\AddressGenerator|s_address\(0) & (((\AddressGenerator|s_address\(2) & \AddressGenerator|s_address\(1))) # (!\AddressGenerator|s_address\(3)))) # (!\AddressGenerator|s_address\(0) & (!\AddressGenerator|s_address\(2) & 
-- ((\AddressGenerator|s_address\(3)) # (\AddressGenerator|s_address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(1),
	combout => \NoisyROM|Mux7~21_combout\);

-- Location: LCCOMB_X103_Y36_N30
\NoisyROM|Mux7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~20_combout\ = (\AddressGenerator|s_address\(2) & (((!\AddressGenerator|s_address\(3) & !\AddressGenerator|s_address\(1))) # (!\AddressGenerator|s_address\(0)))) # (!\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(1),
	combout => \NoisyROM|Mux7~20_combout\);

-- Location: LCCOMB_X103_Y36_N26
\NoisyROM|Mux7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~22_combout\ = (\AddressGenerator|s_address\(6) & (((\AddressGenerator|s_address\(5)) # (!\NoisyROM|Mux7~20_combout\)))) # (!\AddressGenerator|s_address\(6) & (\NoisyROM|Mux7~21_combout\ & ((!\AddressGenerator|s_address\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux7~21_combout\,
	datab => \AddressGenerator|s_address\(6),
	datac => \NoisyROM|Mux7~20_combout\,
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux7~22_combout\);

-- Location: LCCOMB_X103_Y36_N14
\NoisyROM|Mux7~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~24_combout\ = (\NoisyROM|Mux7~22_combout\ & ((\NoisyROM|Mux7~23_combout\) # ((!\AddressGenerator|s_address\(5))))) # (!\NoisyROM|Mux7~22_combout\ & (((!\NoisyROM|Mux7~19_combout\ & \AddressGenerator|s_address\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux7~23_combout\,
	datab => \NoisyROM|Mux7~19_combout\,
	datac => \NoisyROM|Mux7~22_combout\,
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux7~24_combout\);

-- Location: LCCOMB_X103_Y34_N26
\NoisyROM|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~1_combout\ = (\AddressGenerator|s_address\(5) & ((\AddressGenerator|s_address\(3)) # ((\AddressGenerator|s_address\(6)) # (\AddressGenerator|s_address\(2))))) # (!\AddressGenerator|s_address\(5) & ((\AddressGenerator|s_address\(6) $ 
-- (\AddressGenerator|s_address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(5),
	datac => \AddressGenerator|s_address\(6),
	datad => \AddressGenerator|s_address\(2),
	combout => \NoisyROM|Mux7~1_combout\);

-- Location: LCCOMB_X103_Y34_N8
\NoisyROM|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~2_combout\ = (\AddressGenerator|s_address\(5) & (\AddressGenerator|s_address\(3) $ (((!\AddressGenerator|s_address\(2)) # (!\AddressGenerator|s_address\(6)))))) # (!\AddressGenerator|s_address\(5) & (\AddressGenerator|s_address\(3) & 
-- (!\AddressGenerator|s_address\(6) & !\AddressGenerator|s_address\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(5),
	datac => \AddressGenerator|s_address\(6),
	datad => \AddressGenerator|s_address\(2),
	combout => \NoisyROM|Mux7~2_combout\);

-- Location: LCCOMB_X103_Y34_N10
\NoisyROM|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~3_combout\ = (\AddressGenerator|s_address\(1) & (((\AddressGenerator|s_address\(0))))) # (!\AddressGenerator|s_address\(1) & ((\AddressGenerator|s_address\(0) & (\NoisyROM|Mux7~1_combout\)) # (!\AddressGenerator|s_address\(0) & 
-- ((!\NoisyROM|Mux7~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux7~1_combout\,
	datab => \NoisyROM|Mux7~2_combout\,
	datac => \AddressGenerator|s_address\(1),
	datad => \AddressGenerator|s_address\(0),
	combout => \NoisyROM|Mux7~3_combout\);

-- Location: LCCOMB_X103_Y34_N24
\NoisyROM|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~4_combout\ = (\AddressGenerator|s_address\(6) & (((!\AddressGenerator|s_address\(5) & !\AddressGenerator|s_address\(2))))) # (!\AddressGenerator|s_address\(6) & (\AddressGenerator|s_address\(5) $ (((\AddressGenerator|s_address\(3) & 
-- !\AddressGenerator|s_address\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(5),
	datac => \AddressGenerator|s_address\(6),
	datad => \AddressGenerator|s_address\(2),
	combout => \NoisyROM|Mux7~4_combout\);

-- Location: LCCOMB_X103_Y34_N16
\NoisyROM|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~0_combout\ = (\AddressGenerator|s_address\(5) & (\AddressGenerator|s_address\(3) $ (((!\AddressGenerator|s_address\(6) & \AddressGenerator|s_address\(2)))))) # (!\AddressGenerator|s_address\(5) & (!\AddressGenerator|s_address\(3) & 
-- (\AddressGenerator|s_address\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(5),
	datac => \AddressGenerator|s_address\(6),
	datad => \AddressGenerator|s_address\(2),
	combout => \NoisyROM|Mux7~0_combout\);

-- Location: LCCOMB_X103_Y34_N18
\NoisyROM|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~5_combout\ = (\NoisyROM|Mux7~3_combout\ & ((\NoisyROM|Mux7~4_combout\) # ((!\AddressGenerator|s_address\(1))))) # (!\NoisyROM|Mux7~3_combout\ & (((\AddressGenerator|s_address\(1) & !\NoisyROM|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux7~3_combout\,
	datab => \NoisyROM|Mux7~4_combout\,
	datac => \AddressGenerator|s_address\(1),
	datad => \NoisyROM|Mux7~0_combout\,
	combout => \NoisyROM|Mux7~5_combout\);

-- Location: LCCOMB_X103_Y36_N28
\NoisyROM|Mux7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~14_combout\ = (\AddressGenerator|s_address\(3) & ((\AddressGenerator|s_address\(0) & (!\AddressGenerator|s_address\(2) & !\AddressGenerator|s_address\(1))) # (!\AddressGenerator|s_address\(0) & (\AddressGenerator|s_address\(2) & 
-- \AddressGenerator|s_address\(1))))) # (!\AddressGenerator|s_address\(3) & (!\AddressGenerator|s_address\(0) & ((\AddressGenerator|s_address\(2)) # (\AddressGenerator|s_address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(1),
	combout => \NoisyROM|Mux7~14_combout\);

-- Location: LCCOMB_X103_Y36_N22
\NoisyROM|Mux7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~13_combout\ = (\AddressGenerator|s_address\(3) & (!\AddressGenerator|s_address\(1) & (\AddressGenerator|s_address\(0) $ (\AddressGenerator|s_address\(2))))) # (!\AddressGenerator|s_address\(3) & (\AddressGenerator|s_address\(0) & 
-- (\AddressGenerator|s_address\(2) $ (!\AddressGenerator|s_address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(1),
	combout => \NoisyROM|Mux7~13_combout\);

-- Location: LCCOMB_X103_Y36_N6
\NoisyROM|Mux7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~15_combout\ = (\AddressGenerator|s_address\(6) & (((\AddressGenerator|s_address\(5)) # (!\NoisyROM|Mux7~13_combout\)))) # (!\AddressGenerator|s_address\(6) & (!\NoisyROM|Mux7~14_combout\ & ((!\AddressGenerator|s_address\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux7~14_combout\,
	datab => \AddressGenerator|s_address\(6),
	datac => \NoisyROM|Mux7~13_combout\,
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux7~15_combout\);

-- Location: LCCOMB_X103_Y36_N20
\NoisyROM|Mux7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~16_combout\ = (\AddressGenerator|s_address\(0) & ((\AddressGenerator|s_address\(3) & (!\AddressGenerator|s_address\(2))) # (!\AddressGenerator|s_address\(3) & (\AddressGenerator|s_address\(2) & !\AddressGenerator|s_address\(1))))) # 
-- (!\AddressGenerator|s_address\(0) & (((!\AddressGenerator|s_address\(2) & \AddressGenerator|s_address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(1),
	combout => \NoisyROM|Mux7~16_combout\);

-- Location: LCCOMB_X103_Y36_N4
\NoisyROM|Mux7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~12_combout\ = (\AddressGenerator|s_address\(3)) # (\AddressGenerator|s_address\(2) $ (((\AddressGenerator|s_address\(0) & \AddressGenerator|s_address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(2),
	datad => \AddressGenerator|s_address\(1),
	combout => \NoisyROM|Mux7~12_combout\);

-- Location: LCCOMB_X103_Y36_N18
\NoisyROM|Mux7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~17_combout\ = (\NoisyROM|Mux7~15_combout\ & (((!\AddressGenerator|s_address\(5))) # (!\NoisyROM|Mux7~16_combout\))) # (!\NoisyROM|Mux7~15_combout\ & (((!\NoisyROM|Mux7~12_combout\ & \AddressGenerator|s_address\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux7~15_combout\,
	datab => \NoisyROM|Mux7~16_combout\,
	datac => \NoisyROM|Mux7~12_combout\,
	datad => \AddressGenerator|s_address\(5),
	combout => \NoisyROM|Mux7~17_combout\);

-- Location: LCCOMB_X103_Y34_N12
\NoisyROM|Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~10_combout\ = (\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(0) & \AddressGenerator|s_address\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(6),
	combout => \NoisyROM|Mux7~10_combout\);

-- Location: LCCOMB_X103_Y34_N6
\NoisyROM|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~7_combout\ = (\AddressGenerator|s_address\(3) & ((\AddressGenerator|s_address\(0) & ((!\AddressGenerator|s_address\(2)))) # (!\AddressGenerator|s_address\(0) & (!\AddressGenerator|s_address\(6))))) # (!\AddressGenerator|s_address\(3) & 
-- (!\AddressGenerator|s_address\(0) & ((\AddressGenerator|s_address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(6),
	datad => \AddressGenerator|s_address\(2),
	combout => \NoisyROM|Mux7~7_combout\);

-- Location: LCCOMB_X103_Y34_N28
\NoisyROM|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~8_combout\ = (\AddressGenerator|s_address\(6) & (\AddressGenerator|s_address\(2) $ (((!\AddressGenerator|s_address\(0)) # (!\AddressGenerator|s_address\(3)))))) # (!\AddressGenerator|s_address\(6) & ((\AddressGenerator|s_address\(3)) # 
-- ((\AddressGenerator|s_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(6),
	datad => \AddressGenerator|s_address\(2),
	combout => \NoisyROM|Mux7~8_combout\);

-- Location: LCCOMB_X103_Y34_N2
\NoisyROM|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~9_combout\ = (\AddressGenerator|s_address\(1) & ((\NoisyROM|Mux7~7_combout\) # ((\AddressGenerator|s_address\(5))))) # (!\AddressGenerator|s_address\(1) & (((!\AddressGenerator|s_address\(5) & !\NoisyROM|Mux7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux7~7_combout\,
	datab => \AddressGenerator|s_address\(1),
	datac => \AddressGenerator|s_address\(5),
	datad => \NoisyROM|Mux7~8_combout\,
	combout => \NoisyROM|Mux7~9_combout\);

-- Location: LCCOMB_X103_Y34_N20
\NoisyROM|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~6_combout\ = (\AddressGenerator|s_address\(2) & (((\AddressGenerator|s_address\(0))))) # (!\AddressGenerator|s_address\(2) & (\AddressGenerator|s_address\(6) $ (((!\AddressGenerator|s_address\(3) & \AddressGenerator|s_address\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(6),
	datad => \AddressGenerator|s_address\(2),
	combout => \NoisyROM|Mux7~6_combout\);

-- Location: LCCOMB_X103_Y34_N30
\NoisyROM|Mux7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~11_combout\ = (\NoisyROM|Mux7~9_combout\ & (((!\AddressGenerator|s_address\(5))) # (!\NoisyROM|Mux7~10_combout\))) # (!\NoisyROM|Mux7~9_combout\ & (((\AddressGenerator|s_address\(5) & \NoisyROM|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux7~10_combout\,
	datab => \NoisyROM|Mux7~9_combout\,
	datac => \AddressGenerator|s_address\(5),
	datad => \NoisyROM|Mux7~6_combout\,
	combout => \NoisyROM|Mux7~11_combout\);

-- Location: LCCOMB_X103_Y34_N4
\NoisyROM|Mux7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~18_combout\ = (\AddressGenerator|s_address\(7) & (((\NoisyROM|Mux7~11_combout\) # (\AddressGenerator|s_address\(4))))) # (!\AddressGenerator|s_address\(7) & (\NoisyROM|Mux7~17_combout\ & ((!\AddressGenerator|s_address\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux7~17_combout\,
	datab => \AddressGenerator|s_address\(7),
	datac => \NoisyROM|Mux7~11_combout\,
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux7~18_combout\);

-- Location: LCCOMB_X103_Y34_N14
\NoisyROM|Mux7~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \NoisyROM|Mux7~25_combout\ = (\NoisyROM|Mux7~18_combout\ & ((\NoisyROM|Mux7~24_combout\) # ((!\AddressGenerator|s_address\(4))))) # (!\NoisyROM|Mux7~18_combout\ & (((\NoisyROM|Mux7~5_combout\ & \AddressGenerator|s_address\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux7~24_combout\,
	datab => \NoisyROM|Mux7~5_combout\,
	datac => \NoisyROM|Mux7~18_combout\,
	datad => \AddressGenerator|s_address\(4),
	combout => \NoisyROM|Mux7~25_combout\);

-- Location: LCCOMB_X109_Y34_N30
\RomDisplay|s_DataIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|s_DataIn~0_combout\ = \NoisyROM|Mux7~25_combout\ $ (\NoisyROM|Mux0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NoisyROM|Mux7~25_combout\,
	datad => \NoisyROM|Mux0~5_combout\,
	combout => \RomDisplay|s_DataIn~0_combout\);

-- Location: LCCOMB_X109_Y34_N12
\RomDisplay|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Add0~0_combout\ = (\RomDisplay|s_DataIn~0_combout\ & (\NoisyROM|Mux0~5_combout\ $ (VCC))) # (!\RomDisplay|s_DataIn~0_combout\ & (\NoisyROM|Mux0~5_combout\ & VCC))
-- \RomDisplay|Add0~1\ = CARRY((\RomDisplay|s_DataIn~0_combout\ & \NoisyROM|Mux0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|s_DataIn~0_combout\,
	datab => \NoisyROM|Mux0~5_combout\,
	datad => VCC,
	combout => \RomDisplay|Add0~0_combout\,
	cout => \RomDisplay|Add0~1\);

-- Location: LCCOMB_X109_Y34_N14
\RomDisplay|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Add0~2_combout\ = (\RomDisplay|Add0~1\ & (\NoisyROM|Mux6~25_combout\ $ ((!\NoisyROM|Mux0~5_combout\)))) # (!\RomDisplay|Add0~1\ & ((\NoisyROM|Mux6~25_combout\ $ (\NoisyROM|Mux0~5_combout\)) # (GND)))
-- \RomDisplay|Add0~3\ = CARRY((\NoisyROM|Mux6~25_combout\ $ (!\NoisyROM|Mux0~5_combout\)) # (!\RomDisplay|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux6~25_combout\,
	datab => \NoisyROM|Mux0~5_combout\,
	datad => VCC,
	cin => \RomDisplay|Add0~1\,
	combout => \RomDisplay|Add0~2_combout\,
	cout => \RomDisplay|Add0~3\);

-- Location: LCCOMB_X109_Y34_N16
\RomDisplay|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Add0~4_combout\ = (\RomDisplay|Add0~3\ & ((\NoisyROM|Mux5~25_combout\ $ (\NoisyROM|Mux0~5_combout\)))) # (!\RomDisplay|Add0~3\ & (\NoisyROM|Mux5~25_combout\ $ (\NoisyROM|Mux0~5_combout\ $ (VCC))))
-- \RomDisplay|Add0~5\ = CARRY((!\RomDisplay|Add0~3\ & (\NoisyROM|Mux5~25_combout\ $ (\NoisyROM|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux5~25_combout\,
	datab => \NoisyROM|Mux0~5_combout\,
	datad => VCC,
	cin => \RomDisplay|Add0~3\,
	combout => \RomDisplay|Add0~4_combout\,
	cout => \RomDisplay|Add0~5\);

-- Location: LCCOMB_X109_Y34_N18
\RomDisplay|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Add0~6_combout\ = (\RomDisplay|Add0~5\ & (\NoisyROM|Mux4~25_combout\ $ ((!\NoisyROM|Mux0~5_combout\)))) # (!\RomDisplay|Add0~5\ & ((\NoisyROM|Mux4~25_combout\ $ (\NoisyROM|Mux0~5_combout\)) # (GND)))
-- \RomDisplay|Add0~7\ = CARRY((\NoisyROM|Mux4~25_combout\ $ (!\NoisyROM|Mux0~5_combout\)) # (!\RomDisplay|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux4~25_combout\,
	datab => \NoisyROM|Mux0~5_combout\,
	datad => VCC,
	cin => \RomDisplay|Add0~5\,
	combout => \RomDisplay|Add0~6_combout\,
	cout => \RomDisplay|Add0~7\);

-- Location: LCCOMB_X109_Y34_N20
\RomDisplay|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Add0~8_combout\ = (\RomDisplay|Add0~7\ & ((\NoisyROM|Mux3~25_combout\ $ (\NoisyROM|Mux0~5_combout\)))) # (!\RomDisplay|Add0~7\ & (\NoisyROM|Mux3~25_combout\ $ (\NoisyROM|Mux0~5_combout\ $ (VCC))))
-- \RomDisplay|Add0~9\ = CARRY((!\RomDisplay|Add0~7\ & (\NoisyROM|Mux3~25_combout\ $ (\NoisyROM|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux3~25_combout\,
	datab => \NoisyROM|Mux0~5_combout\,
	datad => VCC,
	cin => \RomDisplay|Add0~7\,
	combout => \RomDisplay|Add0~8_combout\,
	cout => \RomDisplay|Add0~9\);

-- Location: LCCOMB_X109_Y34_N22
\RomDisplay|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Add0~10_combout\ = (\RomDisplay|Add0~9\ & (\NoisyROM|Mux2~25_combout\ $ ((!\NoisyROM|Mux0~5_combout\)))) # (!\RomDisplay|Add0~9\ & ((\NoisyROM|Mux2~25_combout\ $ (\NoisyROM|Mux0~5_combout\)) # (GND)))
-- \RomDisplay|Add0~11\ = CARRY((\NoisyROM|Mux2~25_combout\ $ (!\NoisyROM|Mux0~5_combout\)) # (!\RomDisplay|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux2~25_combout\,
	datab => \NoisyROM|Mux0~5_combout\,
	datad => VCC,
	cin => \RomDisplay|Add0~9\,
	combout => \RomDisplay|Add0~10_combout\,
	cout => \RomDisplay|Add0~11\);

-- Location: LCCOMB_X109_Y34_N24
\RomDisplay|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Add0~12_combout\ = (\RomDisplay|Add0~11\ & ((\NoisyROM|Mux1~21_combout\ $ (\NoisyROM|Mux0~5_combout\)))) # (!\RomDisplay|Add0~11\ & (\NoisyROM|Mux1~21_combout\ $ (\NoisyROM|Mux0~5_combout\ $ (VCC))))
-- \RomDisplay|Add0~13\ = CARRY((!\RomDisplay|Add0~11\ & (\NoisyROM|Mux1~21_combout\ $ (\NoisyROM|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \NoisyROM|Mux1~21_combout\,
	datab => \NoisyROM|Mux0~5_combout\,
	datad => VCC,
	cin => \RomDisplay|Add0~11\,
	combout => \RomDisplay|Add0~12_combout\,
	cout => \RomDisplay|Add0~13\);

-- Location: LCCOMB_X109_Y34_N26
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

-- Location: LCCOMB_X109_Y30_N10
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

-- Location: LCCOMB_X109_Y30_N12
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

-- Location: LCCOMB_X109_Y30_N14
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

-- Location: LCCOMB_X109_Y30_N16
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

-- Location: LCCOMB_X109_Y30_N18
\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\RomDisplay|Add0~14_combout\ & (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\RomDisplay|Add0~14_combout\ & 
-- (!\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\RomDisplay|Add0~14_combout\ & !\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Add0~14_combout\,
	datad => VCC,
	cin => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X109_Y30_N20
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

-- Location: LCCOMB_X109_Y30_N26
\RomDisplay|Div0|auto_generated|divider|divider|StageOut[54]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ = (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X109_Y30_N24
\RomDisplay|Div0|auto_generated|divider|divider|StageOut[54]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Add0~14_combout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X109_Y30_N2
\RomDisplay|Div0|auto_generated|divider|divider|StageOut[53]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ = (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X109_Y30_N4
\RomDisplay|Div0|auto_generated|divider|divider|StageOut[53]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Add0~12_combout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X109_Y30_N8
\RomDisplay|Div0|auto_generated|divider|divider|StageOut[52]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \RomDisplay|Add0~10_combout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X109_Y30_N22
\RomDisplay|Div0|auto_generated|divider|divider|StageOut[52]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ = (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: LCCOMB_X109_Y30_N0
\RomDisplay|Div0|auto_generated|divider|divider|StageOut[51]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Add0~8_combout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X109_Y30_N30
\RomDisplay|Div0|auto_generated|divider|divider|StageOut[51]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ = (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X109_Y30_N28
\RomDisplay|Div0|auto_generated|divider|divider|StageOut[50]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\RomDisplay|Add0~6_combout\ & \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Add0~6_combout\,
	datad => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X109_Y30_N6
\RomDisplay|Div0|auto_generated|divider|divider|StageOut[50]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ = (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LCCOMB_X110_Y30_N26
\RomDisplay|Div0|auto_generated|divider|divider|StageOut[49]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ = (!\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Add0~4_combout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LCCOMB_X110_Y30_N28
\RomDisplay|Div0|auto_generated|divider|divider|StageOut[49]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Add0~4_combout\,
	combout => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X110_Y30_N8
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

-- Location: LCCOMB_X110_Y30_N10
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

-- Location: LCCOMB_X110_Y30_N12
\RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\RomDisplay|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\) # ((\RomDisplay|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\) # 
-- (!\RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datab => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datad => VCC,
	cin => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X110_Y30_N14
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

-- Location: LCCOMB_X110_Y30_N16
\RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & ((\RomDisplay|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\) # 
-- (\RomDisplay|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datab => \RomDisplay|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datad => VCC,
	cin => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X110_Y30_N18
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

-- Location: LCCOMB_X110_Y30_N20
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

-- Location: LCCOMB_X110_Y30_N4
\RomDisplay|hundredsDisplayProc|dataOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|hundredsDisplayProc|dataOut[0]~0_combout\ = (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & !\RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|hundredsDisplayProc|dataOut[0]~0_combout\);

-- Location: LCCOMB_X110_Y30_N30
\RomDisplay|hundredsDisplayProc|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|hundredsDisplayProc|Equal9~0_combout\ = (!\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|hundredsDisplayProc|Equal9~0_combout\);

-- Location: LCCOMB_X103_Y37_N20
\RomDisplay|hundredsDisplayProc|dataOut[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|hundredsDisplayProc|dataOut[4]~2_combout\ = (\AddressGenerator|s_address\(6) & ((\AddressGenerator|s_address\(2) $ (\AddressGenerator|s_address\(0))) # (!\AddressGenerator|s_address\(7)))) # (!\AddressGenerator|s_address\(6) & 
-- ((\AddressGenerator|s_address\(2)) # ((\AddressGenerator|s_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(2),
	datab => \AddressGenerator|s_address\(0),
	datac => \AddressGenerator|s_address\(6),
	datad => \AddressGenerator|s_address\(7),
	combout => \RomDisplay|hundredsDisplayProc|dataOut[4]~2_combout\);

-- Location: LCCOMB_X103_Y37_N18
\RomDisplay|hundredsDisplayProc|dataOut[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|hundredsDisplayProc|dataOut[4]~3_combout\ = (\RomDisplay|hundredsDisplayProc|dataOut[4]~2_combout\ & (\AddressGenerator|s_address\(7) & (\AddressGenerator|s_address\(3) $ (!\AddressGenerator|s_address\(1))))) # 
-- (!\RomDisplay|hundredsDisplayProc|dataOut[4]~2_combout\ & (\AddressGenerator|s_address\(1) & (\AddressGenerator|s_address\(3) $ (!\AddressGenerator|s_address\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|hundredsDisplayProc|dataOut[4]~2_combout\,
	datab => \AddressGenerator|s_address\(3),
	datac => \AddressGenerator|s_address\(1),
	datad => \AddressGenerator|s_address\(7),
	combout => \RomDisplay|hundredsDisplayProc|dataOut[4]~3_combout\);

-- Location: LCCOMB_X103_Y34_N0
\RomDisplay|hundredsDisplayProc|dataOut[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|hundredsDisplayProc|dataOut[4]~1_combout\ = (\AddressGenerator|s_address\(3) & (!\AddressGenerator|s_address\(4) & \NoisyROM|Mux7~10_combout\)) # (!\AddressGenerator|s_address\(3) & (\AddressGenerator|s_address\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressGenerator|s_address\(3),
	datac => \AddressGenerator|s_address\(4),
	datad => \NoisyROM|Mux7~10_combout\,
	combout => \RomDisplay|hundredsDisplayProc|dataOut[4]~1_combout\);

-- Location: LCCOMB_X103_Y34_N22
\RomDisplay|hundredsDisplayProc|dataOut[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|hundredsDisplayProc|dataOut[4]~4_combout\ = (\RomDisplay|hundredsDisplayProc|dataOut[4]~3_combout\ & ((\AddressGenerator|s_address\(7) & (\AddressGenerator|s_address\(5) & \RomDisplay|hundredsDisplayProc|dataOut[4]~1_combout\)) # 
-- (!\AddressGenerator|s_address\(7) & (!\AddressGenerator|s_address\(5) & !\RomDisplay|hundredsDisplayProc|dataOut[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|hundredsDisplayProc|dataOut[4]~3_combout\,
	datab => \AddressGenerator|s_address\(7),
	datac => \AddressGenerator|s_address\(5),
	datad => \RomDisplay|hundredsDisplayProc|dataOut[4]~1_combout\,
	combout => \RomDisplay|hundredsDisplayProc|dataOut[4]~4_combout\);

-- Location: LCCOMB_X110_Y30_N6
\RomDisplay|hundredsDisplayProc|dataOut[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|hundredsDisplayProc|dataOut[3]~5_combout\ = (\RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|hundredsDisplayProc|dataOut[3]~5_combout\);

-- Location: LCCOMB_X109_Y32_N12
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

-- Location: LCCOMB_X109_Y32_N14
\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\RomDisplay|Add0~8_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\RomDisplay|Add0~8_combout\ & 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\RomDisplay|Add0~8_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Add0~8_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X109_Y32_N16
\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\RomDisplay|Add0~10_combout\ & ((GND) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\RomDisplay|Add0~10_combout\ & 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\RomDisplay|Add0~10_combout\) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Add0~10_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X109_Y32_N18
\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\RomDisplay|Add0~12_combout\ & (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\RomDisplay|Add0~12_combout\ & 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\RomDisplay|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Add0~12_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X109_Y32_N20
\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\RomDisplay|Add0~14_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\RomDisplay|Add0~14_combout\ & 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\RomDisplay|Add0~14_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Add0~14_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X109_Y32_N22
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

-- Location: LCCOMB_X109_Y32_N24
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Add0~14_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\);

-- Location: LCCOMB_X109_Y32_N6
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

-- Location: LCCOMB_X109_Y32_N0
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Add0~12_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\);

-- Location: LCCOMB_X109_Y32_N2
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\ = (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\);

-- Location: LCCOMB_X109_Y32_N10
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

-- Location: LCCOMB_X109_Y32_N28
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Add0~10_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\);

-- Location: LCCOMB_X109_Y33_N30
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\);

-- Location: LCCOMB_X109_Y33_N20
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Add0~8_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\);

-- Location: LCCOMB_X109_Y32_N8
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \RomDisplay|Add0~6_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\);

-- Location: LCCOMB_X109_Y33_N16
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\);

-- Location: LCCOMB_X109_Y34_N6
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\ = (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Add0~4_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\);

-- Location: LCCOMB_X109_Y34_N28
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Add0~4_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\);

-- Location: LCCOMB_X110_Y32_N18
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

-- Location: LCCOMB_X110_Y32_N20
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

-- Location: LCCOMB_X110_Y32_N22
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

-- Location: LCCOMB_X110_Y32_N24
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

-- Location: LCCOMB_X110_Y32_N26
\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\)))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\)))))
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X110_Y32_N28
\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\)))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ & 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\)))
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ = CARRY((!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ & (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ & 
-- !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	cout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\);

-- Location: LCCOMB_X110_Y32_N30
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

-- Location: LCCOMB_X109_Y32_N26
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\RomDisplay|Add0~14_combout\))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Add0~14_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\);

-- Location: LCCOMB_X109_Y35_N0
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

-- Location: LCCOMB_X109_Y36_N16
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\ = (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\);

-- Location: LCCOMB_X109_Y32_N4
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\RomDisplay|Add0~12_combout\))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Add0~12_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\);

-- Location: LCCOMB_X109_Y35_N22
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\);

-- Location: LCCOMB_X109_Y32_N30
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\RomDisplay|Add0~10_combout\))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Add0~10_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\);

-- Location: LCCOMB_X109_Y35_N6
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\)))
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\,
	datad => VCC,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X109_Y35_N8
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\)))) # (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\ & 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\)))
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\ & (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\ & 
-- !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\,
	datad => VCC,
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X109_Y35_N10
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\)))) # (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\)))))
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\,
	datad => VCC,
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X109_Y35_N12
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

-- Location: LCCOMB_X109_Y35_N2
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\) # 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\);

-- Location: LCCOMB_X109_Y35_N20
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[18]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\);

-- Location: LCCOMB_X108_Y35_N8
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\);

-- Location: LCCOMB_X109_Y35_N24
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\) # 
-- ((!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\);

-- Location: LCCOMB_X109_Y35_N18
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\);

-- Location: LCCOMB_X109_Y35_N14
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\) # 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\);

-- Location: LCCOMB_X109_Y33_N26
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\);

-- Location: LCCOMB_X109_Y33_N28
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\RomDisplay|Add0~8_combout\))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \RomDisplay|Add0~8_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\);

-- Location: LCCOMB_X109_Y33_N0
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X108_Y35_N6
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\ = (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\);

-- Location: LCCOMB_X109_Y35_N28
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

-- Location: LCCOMB_X108_Y35_N10
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\) # (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\)))
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\) # (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datad => VCC,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X108_Y35_N12
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

-- Location: LCCOMB_X108_Y35_N14
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\)))) # (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\)))))
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\,
	datad => VCC,
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X108_Y35_N16
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ & (!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ & 
-- !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\,
	datad => VCC,
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X108_Y35_N18
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

-- Location: LCCOMB_X108_Y35_N20
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X108_Y35_N4
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[23]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\);

-- Location: LCCOMB_X109_Y35_N30
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\) # 
-- ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X109_Y35_N16
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\ = (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\);

-- Location: LCCOMB_X108_Y35_N2
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ = (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\);

-- Location: LCCOMB_X108_Y35_N0
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\) # 
-- ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\);

-- Location: LCCOMB_X109_Y33_N14
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\RomDisplay|Add0~6_combout\))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datac => \RomDisplay|Add0~6_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\);

-- Location: LCCOMB_X109_Y33_N8
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\) # 
-- ((!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\);

-- Location: LCCOMB_X109_Y33_N24
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\ = (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\);

-- Location: LCCOMB_X109_Y33_N22
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X110_Y35_N8
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\ = (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\);

-- Location: LCCOMB_X108_Y35_N22
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\) # (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\)))
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\) # (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\,
	datad => VCC,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X108_Y35_N24
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\)))) # (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ & 
-- (!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\)))
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ & (!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & 
-- !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datad => VCC,
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X108_Y35_N26
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\)))) # (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\)))))
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\,
	datad => VCC,
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X108_Y35_N28
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

-- Location: LCCOMB_X108_Y35_N30
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

-- Location: LCCOMB_X110_Y35_N10
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ = (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X109_Y35_N4
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[28]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\);

-- Location: LCCOMB_X110_Y35_N12
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\);

-- Location: LCCOMB_X110_Y35_N4
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- ((!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\);

-- Location: LCCOMB_X110_Y35_N30
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\) # 
-- ((!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\);

-- Location: LCCOMB_X110_Y35_N14
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\);

-- Location: LCCOMB_X110_Y36_N30
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\RomDisplay|Add0~4_combout\))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datab => \RomDisplay|Add0~4_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\);

-- Location: LCCOMB_X110_Y36_N22
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\);

-- Location: LCCOMB_X110_Y36_N20
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\ = (\RomDisplay|Add0~4_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Add0~4_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\);

-- Location: LCCOMB_X110_Y36_N0
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\);

-- Location: LCCOMB_X110_Y35_N28
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X110_Y35_N18
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

-- Location: LCCOMB_X110_Y35_N20
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\)))) # (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ & 
-- (!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\)))
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ & (!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ & 
-- !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\,
	datad => VCC,
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X110_Y35_N22
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\)))) # (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\)))))
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datad => VCC,
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X110_Y35_N24
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ & (!\RomDisplay|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ & 
-- !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\,
	datad => VCC,
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X110_Y35_N26
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

-- Location: LCCOMB_X110_Y35_N16
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[33]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\);

-- Location: LCCOMB_X111_Y35_N0
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

-- Location: LCCOMB_X110_Y35_N0
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[32]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\) # 
-- ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\);

-- Location: LCCOMB_X111_Y35_N14
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

-- Location: LCCOMB_X111_Y35_N12
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

-- Location: LCCOMB_X110_Y35_N6
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[31]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # 
-- ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\);

-- Location: LCCOMB_X109_Y34_N10
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\ = (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \RomDisplay|Add0~2_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\);

-- Location: LCCOMB_X109_Y34_N4
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \RomDisplay|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \RomDisplay|Add0~2_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\);

-- Location: LCCOMB_X109_Y34_N0
\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X111_Y35_N4
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\);

-- Location: LCCOMB_X111_Y35_N10
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\ = (\RomDisplay|Add0~2_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Add0~2_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\);

-- Location: LCCOMB_X111_Y35_N20
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\);

-- Location: LCCOMB_X111_Y35_N6
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

-- Location: LCCOMB_X111_Y35_N2
\RomDisplay|Div1|auto_generated|divider|divider|StageOut[30]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\RomDisplay|Add0~2_combout\))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datac => \RomDisplay|Add0~2_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\);

-- Location: LCCOMB_X111_Y35_N22
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\) # (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\,
	datad => VCC,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X111_Y35_N24
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

-- Location: LCCOMB_X111_Y35_N26
\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\) # 
-- (\RomDisplay|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datad => VCC,
	cin => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X111_Y35_N28
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

-- Location: LCCOMB_X111_Y35_N30
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

-- Location: LCCOMB_X111_Y33_N4
\RomDisplay|dozensDisplayProc|dataOut[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[0]~2_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # 
-- (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[0]~2_combout\);

-- Location: LCCOMB_X111_Y33_N14
\RomDisplay|dozensDisplayProc|dataOut[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[1]~3_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))) # 
-- (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[1]~3_combout\);

-- Location: LCCOMB_X111_Y33_N16
\RomDisplay|dozensDisplayProc|dataOut[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[2]~4_combout\ = (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[2]~4_combout\);

-- Location: LCCOMB_X111_Y33_N22
\RomDisplay|dozensDisplayProc|dataOut[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[3]~5_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # 
-- (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[3]~5_combout\);

-- Location: LCCOMB_X110_Y32_N12
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\) # 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\)))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\);

-- Location: LCCOMB_X110_Y32_N14
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\) # 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\)))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\);

-- Location: LCCOMB_X110_Y36_N12
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RomDisplay|Add0~4_combout\))) # 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datab => \RomDisplay|Add0~4_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\);

-- Location: LCCOMB_X110_Y32_N0
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\) # 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\)))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\);

-- Location: LCCOMB_X110_Y32_N4
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\)))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\);

-- Location: LCCOMB_X111_Y35_N16
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RomDisplay|Add0~2_combout\))) # 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datac => \RomDisplay|Add0~2_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\);

-- Location: LCCOMB_X111_Y32_N10
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

-- Location: LCCOMB_X111_Y32_N20
\RomDisplay|dozensDisplayProc|dataOut[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[6]~19_combout\ = (\RomDisplay|dozensDisplayProc|dataOut[6]~18_combout\) # ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datad => \RomDisplay|dozensDisplayProc|dataOut[6]~18_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[6]~19_combout\);

-- Location: LCCOMB_X110_Y32_N6
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\)))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\);

-- Location: LCCOMB_X111_Y32_N14
\RomDisplay|dozensDisplayProc|dataOut[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[6]~20_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & 
-- ((!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\) # (!\RomDisplay|dozensDisplayProc|dataOut[6]~19_combout\)))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & 
-- ((\RomDisplay|dozensDisplayProc|dataOut[6]~19_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\)) # 
-- (!\RomDisplay|dozensDisplayProc|dataOut[6]~19_combout\ & (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	datab => \RomDisplay|dozensDisplayProc|dataOut[6]~19_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[6]~20_combout\);

-- Location: LCCOMB_X111_Y32_N28
\RomDisplay|dozensDisplayProc|dataOut[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~7_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\))) # 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & ((!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\) # (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~7_combout\);

-- Location: LCCOMB_X111_Y32_N6
\RomDisplay|dozensDisplayProc|dataOut[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~8_combout\ = (\RomDisplay|dozensDisplayProc|dataOut[4]~7_combout\) # ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\)) # (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datad => \RomDisplay|dozensDisplayProc|dataOut[4]~7_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~8_combout\);

-- Location: LCCOMB_X111_Y32_N4
\RomDisplay|dozensDisplayProc|dataOut[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~13_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\))) # 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~13_combout\);

-- Location: LCCOMB_X111_Y32_N30
\RomDisplay|dozensDisplayProc|dataOut[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~14_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ $ (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\)) # 
-- (!\RomDisplay|dozensDisplayProc|dataOut[4]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	datab => \RomDisplay|dozensDisplayProc|dataOut[4]~13_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~14_combout\);

-- Location: LCCOMB_X110_Y32_N10
\RomDisplay|dozensDisplayProc|dataOut[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~11_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\) # (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~11_combout\);

-- Location: LCCOMB_X110_Y32_N8
\RomDisplay|dozensDisplayProc|dataOut[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~10_combout\ = (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\) # 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~10_combout\);

-- Location: LCCOMB_X110_Y32_N2
\RomDisplay|dozensDisplayProc|dataOut[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~9_combout\ = (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\)) # (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~9_combout\);

-- Location: LCCOMB_X110_Y32_N16
\RomDisplay|dozensDisplayProc|dataOut[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~12_combout\ = (\RomDisplay|dozensDisplayProc|dataOut[4]~11_combout\) # ((\RomDisplay|dozensDisplayProc|dataOut[4]~10_combout\) # (\RomDisplay|dozensDisplayProc|dataOut[4]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|dozensDisplayProc|dataOut[4]~11_combout\,
	datac => \RomDisplay|dozensDisplayProc|dataOut[4]~10_combout\,
	datad => \RomDisplay|dozensDisplayProc|dataOut[4]~9_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~12_combout\);

-- Location: LCCOMB_X111_Y32_N8
\RomDisplay|dozensDisplayProc|dataOut[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~15_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & (((\RomDisplay|dozensDisplayProc|dataOut[4]~12_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\)))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & (\RomDisplay|dozensDisplayProc|dataOut[4]~14_combout\ & 
-- ((!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|dozensDisplayProc|dataOut[4]~14_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datac => \RomDisplay|dozensDisplayProc|dataOut[4]~12_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~15_combout\);

-- Location: LCCOMB_X111_Y32_N22
\RomDisplay|dozensDisplayProc|dataOut[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~16_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ $ (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ $ 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~16_combout\);

-- Location: LCCOMB_X111_Y32_N24
\RomDisplay|dozensDisplayProc|dataOut[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~17_combout\ = (\RomDisplay|dozensDisplayProc|dataOut[4]~15_combout\ & (((\RomDisplay|dozensDisplayProc|dataOut[4]~16_combout\) # (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\)))) # 
-- (!\RomDisplay|dozensDisplayProc|dataOut[4]~15_combout\ & (\RomDisplay|dozensDisplayProc|dataOut[4]~8_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|dozensDisplayProc|dataOut[4]~8_combout\,
	datab => \RomDisplay|dozensDisplayProc|dataOut[4]~15_combout\,
	datac => \RomDisplay|dozensDisplayProc|dataOut[4]~16_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~17_combout\);

-- Location: LCCOMB_X111_Y33_N12
\RomDisplay|dozensDisplayProc|dataOut[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~6_combout\ = (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~6_combout\);

-- Location: LCCOMB_X112_Y32_N12
\RomDisplay|dozensDisplayProc|dataOut[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[4]~21_combout\ = (\RomDisplay|dozensDisplayProc|dataOut[6]~20_combout\ & ((\RomDisplay|dozensDisplayProc|dataOut[4]~6_combout\))) # (!\RomDisplay|dozensDisplayProc|dataOut[6]~20_combout\ & 
-- (\RomDisplay|dozensDisplayProc|dataOut[4]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|dozensDisplayProc|dataOut[6]~20_combout\,
	datab => \RomDisplay|dozensDisplayProc|dataOut[4]~17_combout\,
	datad => \RomDisplay|dozensDisplayProc|dataOut[4]~6_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[4]~21_combout\);

-- Location: LCCOMB_X111_Y33_N2
\RomDisplay|dozensDisplayProc|dataOut[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[5]~22_combout\ = (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # 
-- (!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # 
-- ((\RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[5]~22_combout\);

-- Location: LCCOMB_X111_Y32_N12
\RomDisplay|dozensDisplayProc|dataOut[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[6]~28_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\)) # 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\)) # 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~65_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[6]~28_combout\);

-- Location: LCCOMB_X111_Y32_N2
\RomDisplay|dozensDisplayProc|dataOut[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[6]~24_combout\ = (\RomDisplay|dozensDisplayProc|dataOut[6]~28_combout\) # ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ & 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|dozensDisplayProc|dataOut[6]~28_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[6]~24_combout\);

-- Location: LCCOMB_X111_Y32_N16
\RomDisplay|dozensDisplayProc|dataOut[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[6]~25_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & 
-- !\RomDisplay|dozensDisplayProc|dataOut[6]~24_combout\)) # (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ & ((\RomDisplay|dozensDisplayProc|dataOut[6]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datad => \RomDisplay|dozensDisplayProc|dataOut[6]~24_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[6]~25_combout\);

-- Location: LCCOMB_X111_Y32_N0
\RomDisplay|dozensDisplayProc|dataOut[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[6]~23_combout\ = (\RomDisplay|dozensDisplayProc|dataOut[6]~28_combout\) # ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\)) # (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\ & 
-- !\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|dozensDisplayProc|dataOut[6]~28_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[6]~23_combout\);

-- Location: LCCOMB_X111_Y32_N26
\RomDisplay|dozensDisplayProc|dataOut[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[6]~26_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & ((\RomDisplay|dozensDisplayProc|dataOut[6]~25_combout\ & 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\)) # (!\RomDisplay|dozensDisplayProc|dataOut[6]~25_combout\ & ((!\RomDisplay|dozensDisplayProc|dataOut[6]~23_combout\))))) # 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\ $ (((!\RomDisplay|dozensDisplayProc|dataOut[6]~23_combout\) # 
-- (!\RomDisplay|dozensDisplayProc|dataOut[6]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~67_combout\,
	datab => \RomDisplay|dozensDisplayProc|dataOut[6]~25_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~66_combout\,
	datad => \RomDisplay|dozensDisplayProc|dataOut[6]~23_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[6]~26_combout\);

-- Location: LCCOMB_X112_Y32_N6
\RomDisplay|dozensDisplayProc|dataOut[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|dozensDisplayProc|dataOut[6]~27_combout\ = (\RomDisplay|dozensDisplayProc|dataOut[6]~20_combout\ & (((!\RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # 
-- (!\RomDisplay|dozensDisplayProc|dataOut[4]~6_combout\))) # (!\RomDisplay|dozensDisplayProc|dataOut[6]~20_combout\ & (((\RomDisplay|dozensDisplayProc|dataOut[6]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|dozensDisplayProc|dataOut[6]~20_combout\,
	datab => \RomDisplay|dozensDisplayProc|dataOut[4]~6_combout\,
	datac => \RomDisplay|dozensDisplayProc|dataOut[6]~26_combout\,
	datad => \RomDisplay|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \RomDisplay|dozensDisplayProc|dataOut[6]~27_combout\);

-- Location: LCCOMB_X110_Y34_N12
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~71_combout\ = (\RomDisplay|Add0~0_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Add0~0_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~71_combout\);

-- Location: LCCOMB_X110_Y34_N18
\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~70_combout\ = (\RomDisplay|Add0~0_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Add0~0_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~70_combout\);

-- Location: LCCOMB_X110_Y34_N28
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~71_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~71_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[56]~70_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\);

-- Location: LCCOMB_X109_Y36_N0
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\)))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\,
	datad => VCC,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X109_Y36_N2
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\ & 
-- (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\)))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\ & (!\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\ & 
-- !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X109_Y36_N4
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\)))))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\) # 
-- (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X109_Y36_N6
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

-- Location: LCCOMB_X109_Y36_N10
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\) # 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[63]~72_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\);

-- Location: LCCOMB_X109_Y36_N14
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56_combout\);

-- Location: LCCOMB_X109_Y36_N12
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\) # 
-- ((!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[62]~73_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\);

-- Location: LCCOMB_X109_Y36_N8
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\ = (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X110_Y36_N2
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ = (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X109_Y35_N26
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\) # 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[61]~74_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\);

-- Location: LCCOMB_X109_Y33_N6
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\) # 
-- ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\);

-- Location: LCCOMB_X109_Y33_N12
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[60]~75_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X109_Y33_N18
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~59_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~59_combout\);

-- Location: LCCOMB_X109_Y36_N18
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\) # (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~59_combout\)))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\) # (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~59_combout\,
	datad => VCC,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X109_Y36_N20
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

-- Location: LCCOMB_X109_Y36_N22
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\)))))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X109_Y36_N24
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\ & 
-- (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56_combout\)))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56_combout\ & 
-- !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~56_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X109_Y36_N26
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

-- Location: LCCOMB_X109_Y36_N28
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\) # 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[27]~82_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\);

-- Location: LCCOMB_X109_Y37_N0
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60_combout\ = (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60_combout\);

-- Location: LCCOMB_X110_Y36_N24
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\) # 
-- ((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[26]~83_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\);

-- Location: LCCOMB_X110_Y36_N4
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61_combout\ = (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~61_combout\);

-- Location: LCCOMB_X109_Y36_N30
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\) # 
-- ((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[25]~84_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\);

-- Location: LCCOMB_X109_Y37_N14
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62_combout\ = (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62_combout\);

-- Location: LCCOMB_X109_Y37_N12
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~63_combout\ = (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X109_Y33_N4
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\) # 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[24]~85_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89_combout\);

-- Location: LCCOMB_X109_Y33_N2
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X109_Y37_N18
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

-- Location: LCCOMB_X109_Y33_N10
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\) # 
-- ((!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[59]~76_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90_combout\);

-- Location: LCCOMB_X109_Y37_N20
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

-- Location: LCCOMB_X109_Y37_N22
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

-- Location: LCCOMB_X109_Y37_N24
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62_combout\)))))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~62_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X109_Y37_N26
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

-- Location: LCCOMB_X109_Y37_N28
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60_combout\))))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\) # 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60_combout\) # (GND))))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\) # ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60_combout\) # 
-- (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~60_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X109_Y37_N30
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

-- Location: LCCOMB_X109_Y37_N8
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\) # 
-- ((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[36]~86_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\);

-- Location: LCCOMB_X110_Y37_N18
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~65_combout\);

-- Location: LCCOMB_X110_Y36_N14
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\) # 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\);

-- Location: LCCOMB_X110_Y37_N20
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~66_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~66_combout\);

-- Location: LCCOMB_X109_Y37_N16
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67_combout\ = (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~67_combout\);

-- Location: LCCOMB_X109_Y37_N6
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\) # 
-- ((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[34]~88_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\);

-- Location: LCCOMB_X109_Y37_N2
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68_combout\);

-- Location: LCCOMB_X109_Y37_N4
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89_combout\) # 
-- ((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[33]~89_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\);

-- Location: LCCOMB_X110_Y37_N22
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~69_combout\);

-- Location: LCCOMB_X109_Y37_N10
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90_combout\) # 
-- ((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[32]~90_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[41]~95_combout\);

-- Location: LCCOMB_X110_Y36_N8
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\RomDisplay|Add0~4_combout\))) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datab => \RomDisplay|Add0~4_combout\,
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\);

-- Location: LCCOMB_X110_Y36_N26
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\);

-- Location: LCCOMB_X110_Y36_N10
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~70_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~70_combout\);

-- Location: LCCOMB_X110_Y37_N0
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

-- Location: LCCOMB_X110_Y37_N2
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

-- Location: LCCOMB_X110_Y37_N4
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\)))))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68_combout\) # 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~68_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X110_Y37_N6
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

-- Location: LCCOMB_X110_Y37_N8
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

-- Location: LCCOMB_X110_Y37_N10
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

-- Location: LCCOMB_X110_Y37_N12
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

-- Location: LCCOMB_X110_Y37_N16
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~98_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\) # 
-- ((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[45]~91_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~98_combout\);

-- Location: LCCOMB_X110_Y37_N24
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~74_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[54]~74_combout\);

-- Location: LCCOMB_X110_Y37_N26
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~99_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\) # 
-- ((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[44]~92_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~99_combout\);

-- Location: LCCOMB_X111_Y37_N0
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~75_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~75_combout\);

-- Location: LCCOMB_X111_Y37_N10
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~76_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~76_combout\);

-- Location: LCCOMB_X110_Y37_N28
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~100_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\) # 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[43]~93_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~100_combout\);

-- Location: LCCOMB_X110_Y37_N30
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~101_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\) # 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[42]~94_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~101_combout\);

-- Location: LCCOMB_X111_Y37_N4
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

-- Location: LCCOMB_X110_Y37_N14
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

-- Location: LCCOMB_X111_Y37_N8
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\);

-- Location: LCCOMB_X111_Y37_N6
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\);

-- Location: LCCOMB_X110_Y36_N28
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\) # 
-- ((!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[40]~102_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\);

-- Location: LCCOMB_X111_Y35_N18
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ = (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\) # (\RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\);

-- Location: LCCOMB_X110_Y35_N2
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

-- Location: LCCOMB_X111_Y35_N8
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\RomDisplay|Add0~2_combout\)) # (!\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \RomDisplay|Add0~2_combout\,
	datad => \RomDisplay|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\);

-- Location: LCCOMB_X111_Y37_N14
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\) # (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\)))
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\) # (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\,
	datad => VCC,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X111_Y37_N16
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

-- Location: LCCOMB_X111_Y37_N18
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

-- Location: LCCOMB_X111_Y37_N20
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~101_combout\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~77_combout\ & 
-- !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~101_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[51]~77_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X111_Y37_N22
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~76_combout\) # ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~100_combout\) # 
-- (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~76_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[52]~100_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X111_Y37_N24
\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~99_combout\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~75_combout\ & 
-- !\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~99_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[53]~75_combout\,
	datad => VCC,
	cin => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X111_Y37_N26
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

-- Location: LCCOMB_X111_Y37_N28
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

-- Location: LCCOMB_X110_Y34_N14
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\RomDisplay|Add0~0_combout\)) # 
-- (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Add0~0_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\);

-- Location: LCCOMB_X111_Y37_N2
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\) # 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (((\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~96_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[50]~71_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\);

-- Location: LCCOMB_X111_Y37_N30
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\) # 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (((\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~72_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[49]~97_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\);

-- Location: LCCOMB_X111_Y37_N12
\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\) # 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (((\RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~73_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[48]~103_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\);

-- Location: LCCOMB_X111_Y53_N24
\RomDisplay|unitsDisplayProc|dataOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|unitsDisplayProc|dataOut[0]~0_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & (((!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & 
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ $ (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	combout => \RomDisplay|unitsDisplayProc|dataOut[0]~0_combout\);

-- Location: LCCOMB_X111_Y53_N26
\RomDisplay|unitsDisplayProc|dataOut[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|unitsDisplayProc|dataOut[1]~1_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & (((!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & 
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ $ (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	combout => \RomDisplay|unitsDisplayProc|dataOut[1]~1_combout\);

-- Location: LCCOMB_X111_Y53_N12
\RomDisplay|unitsDisplayProc|dataOut[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|unitsDisplayProc|dataOut[2]~2_combout\ = (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\ & 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\) # (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	combout => \RomDisplay|unitsDisplayProc|dataOut[2]~2_combout\);

-- Location: LCCOMB_X111_Y53_N14
\RomDisplay|unitsDisplayProc|dataOut[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|unitsDisplayProc|dataOut[3]~3_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & (((!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & 
-- \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ & 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ $ (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ & 
-- (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	combout => \RomDisplay|unitsDisplayProc|dataOut[3]~3_combout\);

-- Location: LCCOMB_X111_Y53_N0
\RomDisplay|unitsDisplayProc|dataOut[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|unitsDisplayProc|dataOut[4]~4_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\) # (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\) # ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	combout => \RomDisplay|unitsDisplayProc|dataOut[4]~4_combout\);

-- Location: LCCOMB_X111_Y53_N18
\RomDisplay|unitsDisplayProc|dataOut[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|unitsDisplayProc|dataOut[5]~5_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ & 
-- (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\) # ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ & !\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	combout => \RomDisplay|unitsDisplayProc|dataOut[5]~5_combout\);

-- Location: LCCOMB_X111_Y53_N16
\RomDisplay|unitsDisplayProc|dataOut[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RomDisplay|unitsDisplayProc|dataOut[6]~6_combout\ = (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\) # 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\)))) # (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\ & 
-- ((\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & (\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\ & \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\)) # 
-- (!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\ & ((!\RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[56]~80_combout\,
	datab => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[59]~78_combout\,
	datac => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[58]~81_combout\,
	datad => \RomDisplay|Mod2|auto_generated|divider|divider|StageOut[57]~79_combout\,
	combout => \RomDisplay|unitsDisplayProc|dataOut[6]~6_combout\);

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


