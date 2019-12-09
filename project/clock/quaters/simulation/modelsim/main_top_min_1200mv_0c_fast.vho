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

-- DATE "06/20/2019 12:47:21"

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

ENTITY 	main_top IS
    PORT (
	SW1 : IN std_logic;
	SW2 : IN std_logic;
	SW3 : IN std_logic;
	SW0 : IN std_logic;
	TOGGLE_SW0 : IN std_logic;
	CLK : IN std_logic;
	FND0 : BUFFER std_logic_vector(6 DOWNTO 0);
	FND1 : BUFFER std_logic_vector(6 DOWNTO 0);
	FND2 : BUFFER std_logic_vector(6 DOWNTO 0);
	FND3 : BUFFER std_logic_vector(6 DOWNTO 0);
	FND4 : BUFFER std_logic_vector(6 DOWNTO 0);
	FND5 : BUFFER std_logic_vector(6 DOWNTO 0);
	FND6 : BUFFER std_logic_vector(6 DOWNTO 0);
	FND7 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDG8 : BUFFER std_logic;
	LEDR : BUFFER std_logic_vector(17 DOWNTO 0)
	);
END main_top;

-- Design Ports Information
-- FND0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG8	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW0	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOGGLE_SW0	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW3	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_SW2 : std_logic;
SIGNAL ww_SW3 : std_logic;
SIGNAL ww_SW0 : std_logic;
SIGNAL ww_TOGGLE_SW0 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_FND0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_FND1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_FND2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_FND3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_FND4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_FND5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_FND6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_FND7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG8 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_div_0|tmp_clk_100hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FND0[0]~output_o\ : std_logic;
SIGNAL \FND0[1]~output_o\ : std_logic;
SIGNAL \FND0[2]~output_o\ : std_logic;
SIGNAL \FND0[3]~output_o\ : std_logic;
SIGNAL \FND0[4]~output_o\ : std_logic;
SIGNAL \FND0[5]~output_o\ : std_logic;
SIGNAL \FND0[6]~output_o\ : std_logic;
SIGNAL \FND1[0]~output_o\ : std_logic;
SIGNAL \FND1[1]~output_o\ : std_logic;
SIGNAL \FND1[2]~output_o\ : std_logic;
SIGNAL \FND1[3]~output_o\ : std_logic;
SIGNAL \FND1[4]~output_o\ : std_logic;
SIGNAL \FND1[5]~output_o\ : std_logic;
SIGNAL \FND1[6]~output_o\ : std_logic;
SIGNAL \FND2[0]~output_o\ : std_logic;
SIGNAL \FND2[1]~output_o\ : std_logic;
SIGNAL \FND2[2]~output_o\ : std_logic;
SIGNAL \FND2[3]~output_o\ : std_logic;
SIGNAL \FND2[4]~output_o\ : std_logic;
SIGNAL \FND2[5]~output_o\ : std_logic;
SIGNAL \FND2[6]~output_o\ : std_logic;
SIGNAL \FND3[0]~output_o\ : std_logic;
SIGNAL \FND3[1]~output_o\ : std_logic;
SIGNAL \FND3[2]~output_o\ : std_logic;
SIGNAL \FND3[3]~output_o\ : std_logic;
SIGNAL \FND3[4]~output_o\ : std_logic;
SIGNAL \FND3[5]~output_o\ : std_logic;
SIGNAL \FND3[6]~output_o\ : std_logic;
SIGNAL \FND4[0]~output_o\ : std_logic;
SIGNAL \FND4[1]~output_o\ : std_logic;
SIGNAL \FND4[2]~output_o\ : std_logic;
SIGNAL \FND4[3]~output_o\ : std_logic;
SIGNAL \FND4[4]~output_o\ : std_logic;
SIGNAL \FND4[5]~output_o\ : std_logic;
SIGNAL \FND4[6]~output_o\ : std_logic;
SIGNAL \FND5[0]~output_o\ : std_logic;
SIGNAL \FND5[1]~output_o\ : std_logic;
SIGNAL \FND5[2]~output_o\ : std_logic;
SIGNAL \FND5[3]~output_o\ : std_logic;
SIGNAL \FND5[4]~output_o\ : std_logic;
SIGNAL \FND5[5]~output_o\ : std_logic;
SIGNAL \FND5[6]~output_o\ : std_logic;
SIGNAL \FND6[0]~output_o\ : std_logic;
SIGNAL \FND6[1]~output_o\ : std_logic;
SIGNAL \FND6[2]~output_o\ : std_logic;
SIGNAL \FND6[3]~output_o\ : std_logic;
SIGNAL \FND6[4]~output_o\ : std_logic;
SIGNAL \FND6[5]~output_o\ : std_logic;
SIGNAL \FND6[6]~output_o\ : std_logic;
SIGNAL \FND7[0]~output_o\ : std_logic;
SIGNAL \FND7[1]~output_o\ : std_logic;
SIGNAL \FND7[2]~output_o\ : std_logic;
SIGNAL \FND7[3]~output_o\ : std_logic;
SIGNAL \FND7[4]~output_o\ : std_logic;
SIGNAL \FND7[5]~output_o\ : std_logic;
SIGNAL \FND7[6]~output_o\ : std_logic;
SIGNAL \LEDG8~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_div_0|Add0~0_combout\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \clk_div_0|Add0~1\ : std_logic;
SIGNAL \clk_div_0|Add0~2_combout\ : std_logic;
SIGNAL \clk_div_0|Add0~3\ : std_logic;
SIGNAL \clk_div_0|Add0~4_combout\ : std_logic;
SIGNAL \clk_div_0|Add0~5\ : std_logic;
SIGNAL \clk_div_0|Add0~6_combout\ : std_logic;
SIGNAL \clk_div_0|Add0~7\ : std_logic;
SIGNAL \clk_div_0|Add0~8_combout\ : std_logic;
SIGNAL \clk_div_0|tmp_cnt~6_combout\ : std_logic;
SIGNAL \clk_div_0|Add0~9\ : std_logic;
SIGNAL \clk_div_0|Add0~10_combout\ : std_logic;
SIGNAL \clk_div_0|Add0~11\ : std_logic;
SIGNAL \clk_div_0|Add0~12_combout\ : std_logic;
SIGNAL \clk_div_0|Equal0~5_combout\ : std_logic;
SIGNAL \clk_div_0|Add0~13\ : std_logic;
SIGNAL \clk_div_0|Add0~14_combout\ : std_logic;
SIGNAL \clk_div_0|tmp_cnt~5_combout\ : std_logic;
SIGNAL \clk_div_0|Add0~15\ : std_logic;
SIGNAL \clk_div_0|Add0~16_combout\ : std_logic;
SIGNAL \clk_div_0|Add0~17\ : std_logic;
SIGNAL \clk_div_0|Add0~18_combout\ : std_logic;
SIGNAL \clk_div_0|Add0~19\ : std_logic;
SIGNAL \clk_div_0|Add0~20_combout\ : std_logic;
SIGNAL \clk_div_0|Add0~21\ : std_logic;
SIGNAL \clk_div_0|Add0~22_combout\ : std_logic;
SIGNAL \clk_div_0|Add0~23\ : std_logic;
SIGNAL \clk_div_0|Add0~24_combout\ : std_logic;
SIGNAL \clk_div_0|tmp_cnt~4_combout\ : std_logic;
SIGNAL \clk_div_0|Add0~25\ : std_logic;
SIGNAL \clk_div_0|Add0~26_combout\ : std_logic;
SIGNAL \clk_div_0|Add0~27\ : std_logic;
SIGNAL \clk_div_0|Add0~28_combout\ : std_logic;
SIGNAL \clk_div_0|tmp_cnt~3_combout\ : std_logic;
SIGNAL \clk_div_0|Add0~29\ : std_logic;
SIGNAL \clk_div_0|Add0~30_combout\ : std_logic;
SIGNAL \clk_div_0|tmp_cnt~2_combout\ : std_logic;
SIGNAL \clk_div_0|Add0~31\ : std_logic;
SIGNAL \clk_div_0|Add0~32_combout\ : std_logic;
SIGNAL \clk_div_0|tmp_cnt~1_combout\ : std_logic;
SIGNAL \clk_div_0|Add0~33\ : std_logic;
SIGNAL \clk_div_0|Add0~34_combout\ : std_logic;
SIGNAL \clk_div_0|tmp_cnt~0_combout\ : std_logic;
SIGNAL \clk_div_0|Add0~35\ : std_logic;
SIGNAL \clk_div_0|Add0~36_combout\ : std_logic;
SIGNAL \clk_div_0|Equal0~1_combout\ : std_logic;
SIGNAL \clk_div_0|Equal0~3_combout\ : std_logic;
SIGNAL \clk_div_0|Add0~37\ : std_logic;
SIGNAL \clk_div_0|Add0~38_combout\ : std_logic;
SIGNAL \clk_div_0|Add0~39\ : std_logic;
SIGNAL \clk_div_0|Add0~40_combout\ : std_logic;
SIGNAL \clk_div_0|Add0~41\ : std_logic;
SIGNAL \clk_div_0|Add0~42_combout\ : std_logic;
SIGNAL \clk_div_0|Equal0~0_combout\ : std_logic;
SIGNAL \clk_div_0|Equal0~2_combout\ : std_logic;
SIGNAL \clk_div_0|Equal0~4_combout\ : std_logic;
SIGNAL \clk_div_0|Equal0~6_combout\ : std_logic;
SIGNAL \clk_div_0|tmp_clk_100hz~0_combout\ : std_logic;
SIGNAL \clk_div_0|tmp_clk_100hz~feeder_combout\ : std_logic;
SIGNAL \clk_div_0|tmp_clk_100hz~q\ : std_logic;
SIGNAL \clk_div_0|tmp_clk_100hz~clkctrl_outclk\ : std_logic;
SIGNAL \state_0|state~0_combout\ : std_logic;
SIGNAL \alarm_0|EN_ADJUST~feeder_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[0]~19_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[0]~27_combout\ : std_logic;
SIGNAL \SW3~input_o\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_in_1d~0_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_in_1d~q\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[0]~28\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[1]~30_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[1]~31\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[2]~32_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[2]~33\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[3]~34_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[3]~35\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[4]~36_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[4]~37\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[5]~38_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[5]~39\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[6]~40_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[6]~41\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[7]~42_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[7]~43\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[8]~44_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[8]~45\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[9]~46_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[9]~47\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[10]~48_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[10]~49\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[11]~50_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[11]~51\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[12]~52_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[12]~53\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[13]~54_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[13]~55\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[14]~56_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[14]~57\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[15]~58_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[15]~59\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~60_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~61\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[17]~62_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[17]~63\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[18]~64_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[18]~65\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[19]~66_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|Equal0~5_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[19]~67\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[20]~68_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[20]~69\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[21]~70_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[21]~71\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[22]~72_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[22]~73\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[23]~74_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|Equal0~6_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[23]~75\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[24]~76_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[24]~77\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[25]~78_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[25]~79\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[26]~80_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|Equal0~7_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|Equal0~0_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|Equal0~3_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|Equal0~1_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|Equal0~2_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|Equal0~4_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|Equal0~8_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|process_2~0_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[0]~20\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[1]~21_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[1]~22\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[2]~23_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[2]~24\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[3]~25_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[3]~26\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[4]~27_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[4]~28\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[5]~29_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[5]~30\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[6]~31_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[6]~feeder_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[6]~32\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[7]~33_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[7]~34\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[8]~35_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[8]~36\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[9]~37_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[9]~38\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[10]~39_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[10]~40\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[11]~41_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[11]~42\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[12]~43_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[12]~44\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[13]~45_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[13]~46\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[14]~47_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[14]~48\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[15]~49_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[15]~50\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[16]~51_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[16]~52\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[17]~53_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[17]~54\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[18]~55_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|Equal1~3_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|Equal1~2_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|Equal1~1_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|Equal1~0_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|Equal1~4_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|SW_CLR~0_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|SW_CLR~q\ : std_logic;
SIGNAL \state_0|A_ADJUST_LONG~feeder_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_ST1|Mux5~0_combout\ : std_logic;
SIGNAL \state_0|A_ADJUST_LONG~q\ : std_logic;
SIGNAL \alarm_0|EN_ADJUST~q\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_cnt[0]~6_combout\ : std_logic;
SIGNAL \SW2~input_o\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_in_1d~0_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_in_1d~q\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|process_2~0_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_cnt[0]~8_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_cnt[0]~7\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_cnt[1]~9_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_cnt[1]~10\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_cnt[2]~11_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_cnt[2]~12\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_cnt[3]~13_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_cnt[3]~14\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_cnt[4]~15_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_cnt[4]~16\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_cnt[5]~17_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[0]~19_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|process_2~1_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[0]~20\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[1]~21_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[1]~22\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[2]~23_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[2]~24\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[3]~25_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[3]~26\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[4]~27_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[4]~28\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[5]~29_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[5]~30\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[6]~31_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[6]~32\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[7]~33_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[7]~34\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[8]~35_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[8]~feeder_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[8]~36\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[9]~37_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[9]~38\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[10]~39_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[10]~40\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[11]~41_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[11]~42\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[12]~43_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[12]~44\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[13]~45_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[13]~46\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[14]~47_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[14]~48\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[15]~49_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[15]~50\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[16]~51_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[16]~52\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[17]~53_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|Equal2~2_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|Equal2~3_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|Equal2~1_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|Equal2~0_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|Equal2~4_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[17]~54\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt[18]~55_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|Equal2~5_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|SW_CLR~0_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_mode|SW_CLR~q\ : std_logic;
SIGNAL \state_0|C_MODE~0_combout\ : std_logic;
SIGNAL \state_0|C_MODE~feeder_combout\ : std_logic;
SIGNAL \state_0|C_MODE~q\ : std_logic;
SIGNAL \state_0|C_ADJUST_LONG~q\ : std_logic;
SIGNAL \clock_0|state[1]~0_combout\ : std_logic;
SIGNAL \clock_0|state[0]~1_combout\ : std_logic;
SIGNAL \clock_0|C_EN_ADJUST~0_combout\ : std_logic;
SIGNAL \clock_0|C_EN_ADJUST~q\ : std_logic;
SIGNAL \state_0|state[1]~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_p01s[0]~3_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux23~1_combout\ : std_logic;
SIGNAL \state_0|S_ADJUST_LONG~q\ : std_logic;
SIGNAL \stopwatch_top_0|rst_ad~combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_cnt[0]~6_combout\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_in_1d~0_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_in_1d~q\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|process_2~0_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_cnt[0]~8_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_cnt[0]~7\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_cnt[1]~9_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_cnt[1]~10\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_cnt[2]~11_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_cnt[2]~12\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_cnt[3]~13_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_cnt[3]~14\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_cnt[4]~15_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_cnt[4]~16\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_cnt[5]~17_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[0]~19_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|process_2~1_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[0]~20\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[1]~21_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[1]~22\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[2]~23_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[2]~24\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[3]~25_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[3]~26\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[4]~27_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[4]~28\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[5]~29_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[5]~30\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[6]~31_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[6]~32\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[7]~33_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[7]~34\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[8]~35_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[8]~36\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[9]~37_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[9]~38\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[10]~39_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[10]~40\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[11]~41_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[11]~42\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[12]~43_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[12]~44\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[13]~45_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[13]~46\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[14]~47_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[14]~48\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[15]~49_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[15]~50\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[16]~51_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[16]~52\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[17]~53_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[17]~54\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt[18]~55_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|Equal2~3_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|Equal2~2_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|Equal2~1_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|Equal2~0_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|Equal2~4_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|Equal2~5_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|SW_CLR~0_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up|SW_CLR~q\ : std_logic;
SIGNAL \state_0|S_UP_SHORT~feeder_combout\ : std_logic;
SIGNAL \state_0|S_UP_SHORT~q\ : std_logic;
SIGNAL \stopwatch_top_0|STATE_M_0|tmp_state[0]~0_combout\ : std_logic;
SIGNAL \stopwatch_top_0|STATE_M_0|tmp_state[1]~1_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|Equal0~0_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_01s~4_combout\ : std_logic;
SIGNAL \state_0|C_UP_SHORT~q\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[0]~26_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[0]~27\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[1]~29_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[1]~30\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[2]~31_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[2]~32\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[3]~33_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[3]~34\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~35_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~36\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[5]~37_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[5]~38\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[6]~39_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[6]~40\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[7]~41_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[7]~42\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[8]~43_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[8]~44\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[9]~45_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[9]~46\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[10]~47_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[10]~48\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[11]~49_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[11]~50\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[12]~51_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[12]~52\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[13]~53_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[13]~54\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[14]~55_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[14]~56\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[15]~57_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[15]~58\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[16]~59_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[16]~60\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[17]~61_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[17]~62\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[18]~63_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[18]~64\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[19]~65_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[19]~66\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[20]~67_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[20]~68\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[21]~69_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[21]~70\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[22]~71_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[22]~72\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[23]~73_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[23]~74\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[24]~75_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[24]~76\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s[25]~77_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|Equal0~7_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|Equal0~6_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|Equal0~5_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|Equal0~1_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|Equal0~2_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|Equal0~3_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|Equal0~0_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|Equal0~4_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|Equal0~8_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[0]~19_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|process_2~0_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[0]~20\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[1]~21_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[1]~22\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[2]~23_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[2]~24\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[3]~25_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[3]~26\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[4]~27_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[4]~28\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[5]~29_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[5]~30\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[6]~31_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[6]~32\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[7]~33_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[7]~34\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[8]~35_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[8]~36\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[9]~37_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[9]~38\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[10]~39_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[10]~40\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[11]~41_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[11]~42\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[12]~43_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[12]~44\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[13]~45_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[13]~46\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[14]~47_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[14]~48\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[15]~49_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[15]~50\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[16]~51_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[16]~52\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[17]~53_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[17]~54\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[18]~55_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|Equal1~2_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|Equal1~3_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|Equal1~1_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|Equal1~0_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|Equal1~4_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|Equal1~5_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|SW_CLR~0_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_up_long_0|SW_CLR~q\ : std_logic;
SIGNAL \state_0|C_UP_LONG~feeder_combout\ : std_logic;
SIGNAL \state_0|C_UP_LONG~q\ : std_logic;
SIGNAL \clock_0|tmp_time_01s~5_combout\ : std_logic;
SIGNAL \clock_0|Add1~0_combout\ : std_logic;
SIGNAL \clock_0|Add1~1\ : std_logic;
SIGNAL \clock_0|Add1~2_combout\ : std_logic;
SIGNAL \clock_0|Add1~3\ : std_logic;
SIGNAL \clock_0|Add1~4_combout\ : std_logic;
SIGNAL \clock_0|tmp_cnt~1_combout\ : std_logic;
SIGNAL \clock_0|Add1~5\ : std_logic;
SIGNAL \clock_0|Add1~6_combout\ : std_logic;
SIGNAL \clock_0|Add1~7\ : std_logic;
SIGNAL \clock_0|Add1~8_combout\ : std_logic;
SIGNAL \clock_0|Add1~9\ : std_logic;
SIGNAL \clock_0|Add1~10_combout\ : std_logic;
SIGNAL \clock_0|tmp_cnt~0_combout\ : std_logic;
SIGNAL \clock_0|Add1~11\ : std_logic;
SIGNAL \clock_0|Add1~12_combout\ : std_logic;
SIGNAL \clock_0|tmp_cnt~2_combout\ : std_logic;
SIGNAL \clock_0|Equal15~0_combout\ : std_logic;
SIGNAL \clock_0|Equal15~1_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_01s~6_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux23~0_combout\ : std_logic;
SIGNAL \clock_0|Equal5~0_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_01s~7_combout\ : std_logic;
SIGNAL \clock_0|Add3~0_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_01s~8_combout\ : std_logic;
SIGNAL \clock_0|Equal14~0_combout\ : std_logic;
SIGNAL \clock_0|Add3~1_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_01s~9_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_p01s[2]~1_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_p01s~0_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_p01s~2_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux20~0_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux21~0_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux22~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_01S|Mux6~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_01S|Mux5~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_01S|Mux4~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_01S|Mux3~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_01S|Mux2~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_01S|Mux1~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_01S|Mux0~0_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_10s~4_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_10s~5_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_10s~6_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_p1s[0]~4_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|Equal1~0_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_p1s[3]~0_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux19~0_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_10s~7_combout\ : std_logic;
SIGNAL \clock_0|Add4~0_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_10s~8_combout\ : std_logic;
SIGNAL \clock_0|Equal13~0_combout\ : std_logic;
SIGNAL \clock_0|Add4~1_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_10s~9_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_p1s[2]~2_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_p1s~1_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_p1s~3_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux16~0_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux17~0_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux18~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_10S|Mux6~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_10S|Mux5~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_10S|Mux4~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_10S|Mux3~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_10S|Mux2~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_10S|Mux1~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_10S|Mux0~0_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_01M[0]~4_combout\ : std_logic;
SIGNAL \state_0|A_MODE~feeder_combout\ : std_logic;
SIGNAL \state_0|A_MODE~q\ : std_logic;
SIGNAL \alarm_0|Add6~0_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_10H[3]~0_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_10H[3]~1_combout\ : std_logic;
SIGNAL \alarm_0|Equal4~0_combout\ : std_logic;
SIGNAL \alarm_0|mode_tmp[1]~1_combout\ : std_logic;
SIGNAL \alarm_0|mode_tmp[1]~3_combout\ : std_logic;
SIGNAL \state_0|A_UP_SHORT~feeder_combout\ : std_logic;
SIGNAL \state_0|A_UP_SHORT~q\ : std_logic;
SIGNAL \state_0|A_UP_LONG~feeder_combout\ : std_logic;
SIGNAL \state_0|A_UP_LONG~q\ : std_logic;
SIGNAL \alarm_0|tmp_cnt~0_combout\ : std_logic;
SIGNAL \alarm_0|tmp_cnt~1_combout\ : std_logic;
SIGNAL \alarm_0|tmp_cnt[2]~2_combout\ : std_logic;
SIGNAL \alarm_0|tmp_cnt~3_combout\ : std_logic;
SIGNAL \alarm_0|Equal9~0_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_01H[3]~0_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_01H[3]~1_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_10H[0]~2_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_01H~3_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_01H[3]~7_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_01H[2]~8_combout\ : std_logic;
SIGNAL \alarm_0|Equal10~0_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_10H[3]~3_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_10H[1]~4_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_01H[0]~2_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_01H[1]~4_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_01H[1]~5_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_01H[1]~6_combout\ : std_logic;
SIGNAL \alarm_0|Add6~1_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_01H[3]~9_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_01h[0]~9_combout\ : std_logic;
SIGNAL \clock_0|Add2~0_combout\ : std_logic;
SIGNAL \clock_0|tmp_cnt_long_press~0_combout\ : std_logic;
SIGNAL \clock_0|Add2~1\ : std_logic;
SIGNAL \clock_0|Add2~2_combout\ : std_logic;
SIGNAL \clock_0|Add2~3\ : std_logic;
SIGNAL \clock_0|Add2~5\ : std_logic;
SIGNAL \clock_0|Add2~6_combout\ : std_logic;
SIGNAL \clock_0|Equal2~0_combout\ : std_logic;
SIGNAL \clock_0|Add2~4_combout\ : std_logic;
SIGNAL \clock_0|tmp_cnt_long_press~2_combout\ : std_logic;
SIGNAL \clock_0|Add2~7\ : std_logic;
SIGNAL \clock_0|Add2~8_combout\ : std_logic;
SIGNAL \clock_0|tmp_cnt_long_press~1_combout\ : std_logic;
SIGNAL \clock_0|process_8~0_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_01m~2_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_01m[0]~7_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_01m~0_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_01m~1_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_01m~3_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_01m[2]~5_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_01m~6_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_01m~4_combout\ : std_logic;
SIGNAL \clock_0|Equal12~0_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_10m[0]~6_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_10m[0]~0_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_10m[0]~1_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_10m~2_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_10m[3]~4_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_10m[3]~5_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_10m~3_combout\ : std_logic;
SIGNAL \clock_0|Equal11~0_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_01h[2]~2_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_01h[2]~8_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_01h[1]~4_combout\ : std_logic;
SIGNAL \clock_0|Add7~0_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_01h~3_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_10h[2]~0_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_10h[0]~1_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_10h[2]~2_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_10h[2]~3_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_10h[1]~4_combout\ : std_logic;
SIGNAL \clock_0|Add8~0_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_10h[2]~5_combout\ : std_logic;
SIGNAL \clock_0|Add8~1_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_10h[3]~6_combout\ : std_logic;
SIGNAL \clock_0|process_8~1_combout\ : std_logic;
SIGNAL \clock_0|process_8~2_combout\ : std_logic;
SIGNAL \clock_0|process_8~3_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_01h[2]~5_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_01h~6_combout\ : std_logic;
SIGNAL \clock_0|Equal8~0_combout\ : std_logic;
SIGNAL \clock_0|Add7~1_combout\ : std_logic;
SIGNAL \clock_0|tmp_time_01h~7_combout\ : std_logic;
SIGNAL \alarm_0|process_2~1_combout\ : std_logic;
SIGNAL \alarm_0|process_2~0_combout\ : std_logic;
SIGNAL \alarm_0|process_2~2_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_01M~3_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_01M~1_combout\ : std_logic;
SIGNAL \alarm_0|process_2~3_combout\ : std_logic;
SIGNAL \alarm_0|process_2~4_combout\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[0]~18_combout\ : std_logic;
SIGNAL \alarm_0|Equal4~1_combout\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[0]~50_combout\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[0]~19\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[1]~20_combout\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[1]~21\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[2]~22_combout\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[2]~23\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[3]~24_combout\ : std_logic;
SIGNAL \alarm_0|Equal16~0_combout\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[3]~25\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[4]~26_combout\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[4]~27\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[5]~28_combout\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[5]~29\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[6]~30_combout\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[6]~31\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[7]~32_combout\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[7]~33\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[8]~34_combout\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[8]~35\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[9]~36_combout\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[9]~37\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[10]~38_combout\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[10]~39\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[11]~40_combout\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[11]~41\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[12]~42_combout\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[12]~43\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[13]~44_combout\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[13]~45\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[14]~46_combout\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[14]~47\ : std_logic;
SIGNAL \alarm_0|tmp_cnt2[15]~48_combout\ : std_logic;
SIGNAL \alarm_0|Equal16~3_combout\ : std_logic;
SIGNAL \alarm_0|Equal16~2_combout\ : std_logic;
SIGNAL \alarm_0|Equal16~1_combout\ : std_logic;
SIGNAL \alarm_0|Equal16~4_combout\ : std_logic;
SIGNAL \alarm_0|process_2~5_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_10M[0]~5_combout\ : std_logic;
SIGNAL \alarm_0|Equal6~0_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_10M[3]~0_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_10M[3]~3_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_10M[3]~4_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_10M~2_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_10M~1_combout\ : std_logic;
SIGNAL \alarm_0|process_2~6_combout\ : std_logic;
SIGNAL \alarm_0|process_2~7_combout\ : std_logic;
SIGNAL \alarm_0|process_2~8_combout\ : std_logic;
SIGNAL \alarm_0|mode_tmp[1]~0_combout\ : std_logic;
SIGNAL \alarm_0|mode_tmp[1]~2_combout\ : std_logic;
SIGNAL \alarm_0|mode_tmp[2]~4_combout\ : std_logic;
SIGNAL \alarm_0|mode_tmp[2]~5_combout\ : std_logic;
SIGNAL \alarm_0|process_2~9_combout\ : std_logic;
SIGNAL \alarm_0|mode_tmp~6_combout\ : std_logic;
SIGNAL \alarm_0|mode_tmp~7_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_01M[3]~0_combout\ : std_logic;
SIGNAL \alarm_0|tmp_set_01M[2]~2_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_1s[0]~4_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|Equal2~0_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_1s[3]~0_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_1s~3_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_1s~1_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_1s[2]~2_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux13~2_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux13~3_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux14~2_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux14~3_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux12~2_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux12~3_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux15~2_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux15~3_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_01M|Mux6~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_01M|Mux5~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_01M|Mux4~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_01M|Mux3~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_01M|Mux2~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_01M|Mux1~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_01M|Mux0~0_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_10s[0]~5_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|Equal3~0_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_10s[3]~0_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_10s~2_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_10s~1_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_10s[3]~3_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_10s[3]~4_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux8~2_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux8~3_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux9~2_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux9~3_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux11~2_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux11~3_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux10~3_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux10~4_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_10M|Mux6~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_10M|Mux5~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_10M|Mux4~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_10M|Mux3~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_10M|Mux2~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_10M|Mux1~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_10M|Mux0~0_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_1m[0]~4_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|Equal4~0_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_1m[3]~0_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_1m~1_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_1m[2]~2_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_1m~3_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux4~2_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux4~3_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux6~2_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux6~3_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux7~2_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux7~3_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux5~2_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux5~3_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_01H|Mux6~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_01H|Mux5~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_01H|Mux4~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_01H|Mux3~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_01H|Mux2~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_01H|Mux1~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_01H|Mux0~0_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_10m[0]~4_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|Equal5~0_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_10m[3]~0_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_10m~3_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_10m~1_combout\ : std_logic;
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_10m[2]~2_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux1~0_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux2~2_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux2~3_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux0~0_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux3~2_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux3~3_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_10H|Mux6~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_10H|Mux5~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_10H|Mux4~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_10H|Mux3~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_10H|Mux2~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_10H|Mux1~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_10H|Mux0~0_combout\ : std_logic;
SIGNAL \state_0|Equal1~0_combout\ : std_logic;
SIGNAL \FND_mux_0|Mux10~2_combout\ : std_logic;
SIGNAL \clock_0|C_LED~2_combout\ : std_logic;
SIGNAL \clock_0|C_LED~0_combout\ : std_logic;
SIGNAL \clock_0|C_LED~1_combout\ : std_logic;
SIGNAL \clock_0|C_LED~3_combout\ : std_logic;
SIGNAL \clock_0|C_LED~q\ : std_logic;
SIGNAL \stopwatch_top_0|tmp_led~0_combout\ : std_logic;
SIGNAL \stopwatch_top_0|tmp_led~1_combout\ : std_logic;
SIGNAL \stopwatch_top_0|tmp_led~2_combout\ : std_logic;
SIGNAL \LEDG8~0_combout\ : std_logic;
SIGNAL \TOGGLE_SW0~input_o\ : std_logic;
SIGNAL \alarm_0|tmp_led[1]~6_combout\ : std_logic;
SIGNAL \alarm_0|Equal4~2_combout\ : std_logic;
SIGNAL \alarm_0|tmp_led~8_combout\ : std_logic;
SIGNAL \alarm_0|tmp_led~23_combout\ : std_logic;
SIGNAL \alarm_0|Equal14~0_combout\ : std_logic;
SIGNAL \alarm_0|tmp_led~24_combout\ : std_logic;
SIGNAL \alarm_0|tmp_led~9_combout\ : std_logic;
SIGNAL \alarm_0|tmp_led~10_combout\ : std_logic;
SIGNAL \alarm_0|tmp_led~11_combout\ : std_logic;
SIGNAL \alarm_0|tmp_led~12_combout\ : std_logic;
SIGNAL \alarm_0|tmp_led~13_combout\ : std_logic;
SIGNAL \alarm_0|tmp_led~14_combout\ : std_logic;
SIGNAL \alarm_0|tmp_led~15_combout\ : std_logic;
SIGNAL \alarm_0|tmp_led~16_combout\ : std_logic;
SIGNAL \alarm_0|tmp_led~17_combout\ : std_logic;
SIGNAL \alarm_0|tmp_led~18_combout\ : std_logic;
SIGNAL \alarm_0|tmp_led~19_combout\ : std_logic;
SIGNAL \alarm_0|Equal14~2_combout\ : std_logic;
SIGNAL \alarm_0|Equal14~3_combout\ : std_logic;
SIGNAL \alarm_0|Equal14~4_combout\ : std_logic;
SIGNAL \alarm_0|tmp_led~20_combout\ : std_logic;
SIGNAL \alarm_0|tmp_led~21_combout\ : std_logic;
SIGNAL \alarm_0|tmp_led~22_combout\ : std_logic;
SIGNAL \alarm_0|Equal14~1_combout\ : std_logic;
SIGNAL \alarm_0|Equal14~5_combout\ : std_logic;
SIGNAL \alarm_0|tmp_led[0]~5_combout\ : std_logic;
SIGNAL \alarm_0|tmp_led[0]~4_combout\ : std_logic;
SIGNAL \alarm_0|tmp_led[0]~7_combout\ : std_logic;
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \alarm_0|tmp_cnt2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \top_sw_0|sw_input_mode|sw_cnt\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \top_sw_0|sw_input_mode|sw_10ms_cnt\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \top_sw_0|sw_input_up_long_0|sw_cnt_1s\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_10m\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \top_sw_0|sw_input_up|sw_10ms_cnt\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_10s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \top_sw_0|sw_input_up|sw_cnt\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \clock_0|tmp_time_01s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_p01s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_0|state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \state_0|state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \clock_0|tmp_time_10s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_p1s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alarm_0|tmp_set_01M\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_1s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_0|tmp_time_01m\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alarm_0|tmp_set_10M\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_0|tmp_time_10m\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alarm_0|tmp_set_01H\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \stopwatch_top_0|CNT_0|tmp_cnt_1m\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_0|tmp_time_01h\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alarm_0|tmp_set_10H\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_0|tmp_time_10h\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alarm_0|tmp_led\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clock_0|tmp_cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \stopwatch_top_0|STATE_M_0|tmp_state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \alarm_0|tmp_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alarm_0|mode_tmp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \clock_0|tmp_cnt_long_press\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_div_0|tmp_cnt\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \stopwatch_top_0|ALT_INV_rst_ad~combout\ : std_logic;
SIGNAL \alarm_0|ALT_INV_tmp_led\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FND_DRIVER_0|SEG_DRV_ST1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_10H|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_01H|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_10M|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_01M|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \FND_mux_0|ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_10S|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \FND_DRIVER_0|SEG_DRV_01S|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \state_0|ALT_INV_state\ : std_logic_vector(1 DOWNTO 1);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW1 <= SW1;
ww_SW2 <= SW2;
ww_SW3 <= SW3;
ww_SW0 <= SW0;
ww_TOGGLE_SW0 <= TOGGLE_SW0;
ww_CLK <= CLK;
FND0 <= ww_FND0;
FND1 <= ww_FND1;
FND2 <= ww_FND2;
FND3 <= ww_FND3;
FND4 <= ww_FND4;
FND5 <= ww_FND5;
FND6 <= ww_FND6;
FND7 <= ww_FND7;
LEDG8 <= ww_LEDG8;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\clk_div_0|tmp_clk_100hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_div_0|tmp_clk_100hz~q\);
\stopwatch_top_0|ALT_INV_rst_ad~combout\ <= NOT \stopwatch_top_0|rst_ad~combout\;
\alarm_0|ALT_INV_tmp_led\(0) <= NOT \alarm_0|tmp_led\(0);
\FND_DRIVER_0|SEG_DRV_ST1|ALT_INV_Mux5~0_combout\ <= NOT \FND_DRIVER_0|SEG_DRV_ST1|Mux5~0_combout\;
\FND_DRIVER_0|SEG_DRV_10H|ALT_INV_Mux0~0_combout\ <= NOT \FND_DRIVER_0|SEG_DRV_10H|Mux0~0_combout\;
\FND_DRIVER_0|SEG_DRV_01H|ALT_INV_Mux0~0_combout\ <= NOT \FND_DRIVER_0|SEG_DRV_01H|Mux0~0_combout\;
\FND_DRIVER_0|SEG_DRV_10M|ALT_INV_Mux0~0_combout\ <= NOT \FND_DRIVER_0|SEG_DRV_10M|Mux0~0_combout\;
\FND_DRIVER_0|SEG_DRV_01M|ALT_INV_Mux0~0_combout\ <= NOT \FND_DRIVER_0|SEG_DRV_01M|Mux0~0_combout\;
\FND_mux_0|ALT_INV_Mux10~2_combout\ <= NOT \FND_mux_0|Mux10~2_combout\;
\FND_DRIVER_0|SEG_DRV_10S|ALT_INV_Mux0~0_combout\ <= NOT \FND_DRIVER_0|SEG_DRV_10S|Mux0~0_combout\;
\FND_DRIVER_0|SEG_DRV_01S|ALT_INV_Mux0~0_combout\ <= NOT \FND_DRIVER_0|SEG_DRV_01S|Mux0~0_combout\;
\state_0|ALT_INV_state\(1) <= NOT \state_0|state\(1);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\FND0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_01S|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \FND0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\FND0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_01S|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \FND0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\FND0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_01S|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \FND0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\FND0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_01S|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \FND0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\FND0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_01S|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \FND0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\FND0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_01S|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \FND0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\FND0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_01S|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \FND0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\FND1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_10S|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \FND1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\FND1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_10S|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \FND1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\FND1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_10S|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \FND1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\FND1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_10S|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \FND1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\FND1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_10S|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \FND1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\FND1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_10S|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \FND1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\FND1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_10S|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \FND1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\FND2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_01M|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \FND2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\FND2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_01M|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \FND2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\FND2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_01M|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \FND2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\FND2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_01M|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \FND2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\FND2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_01M|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \FND2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\FND2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_01M|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \FND2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\FND2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_01M|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \FND2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\FND3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_10M|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \FND3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\FND3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_10M|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \FND3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\FND3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_10M|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \FND3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\FND3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_10M|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \FND3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\FND3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_10M|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \FND3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\FND3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_10M|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \FND3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\FND3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_10M|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \FND3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\FND4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_01H|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \FND4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\FND4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_01H|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \FND4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\FND4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_01H|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \FND4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\FND4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_01H|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \FND4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\FND4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_01H|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \FND4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\FND4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_01H|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \FND4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\FND4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_01H|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \FND4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\FND5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_10H|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \FND5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\FND5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_10H|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \FND5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\FND5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_10H|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \FND5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\FND5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_10H|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \FND5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\FND5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_10H|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \FND5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\FND5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_10H|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \FND5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\FND5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_10H|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \FND5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\FND6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FND6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\FND6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FND6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\FND6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FND6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\FND6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_0|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \FND6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\FND6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_0|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \FND6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\FND6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_0|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \FND6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\FND6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_0|ALT_INV_state\(1),
	devoe => ww_devoe,
	o => \FND6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\FND7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_mux_0|ALT_INV_Mux10~2_combout\,
	devoe => ww_devoe,
	o => \FND7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\FND7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_DRIVER_0|SEG_DRV_ST1|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \FND7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\FND7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_mux_0|ALT_INV_Mux10~2_combout\,
	devoe => ww_devoe,
	o => \FND7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\FND7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_0|state\(0),
	devoe => ww_devoe,
	o => \FND7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\FND7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_0|state\(1),
	devoe => ww_devoe,
	o => \FND7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\FND7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND_mux_0|ALT_INV_Mux10~2_combout\,
	devoe => ww_devoe,
	o => \FND7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\FND7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FND7[6]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDG8~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG8~0_combout\,
	devoe => ww_devoe,
	o => \LEDG8~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarm_0|ALT_INV_tmp_led\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarm_0|tmp_led\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarm_0|tmp_led\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarm_0|tmp_led\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarm_0|tmp_led\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarm_0|tmp_led\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarm_0|tmp_led\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarm_0|tmp_led\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarm_0|tmp_led\(8),
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarm_0|tmp_led\(9),
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarm_0|tmp_led\(10),
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarm_0|tmp_led\(11),
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarm_0|tmp_led\(12),
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarm_0|tmp_led\(13),
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarm_0|tmp_led\(14),
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarm_0|tmp_led\(15),
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarm_0|tmp_led\(16),
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarm_0|tmp_led\(17),
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X113_Y41_N10
\clk_div_0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Add0~0_combout\ = \clk_div_0|tmp_cnt\(0) $ (VCC)
-- \clk_div_0|Add0~1\ = CARRY(\clk_div_0|tmp_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_0|tmp_cnt\(0),
	datad => VCC,
	combout => \clk_div_0|Add0~0_combout\,
	cout => \clk_div_0|Add0~1\);

-- Location: IOIBUF_X115_Y40_N8
\SW0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

-- Location: FF_X113_Y41_N11
\clk_div_0|tmp_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_div_0|Add0~0_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_0|tmp_cnt\(0));

-- Location: LCCOMB_X113_Y41_N12
\clk_div_0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Add0~2_combout\ = (\clk_div_0|tmp_cnt\(1) & (!\clk_div_0|Add0~1\)) # (!\clk_div_0|tmp_cnt\(1) & ((\clk_div_0|Add0~1\) # (GND)))
-- \clk_div_0|Add0~3\ = CARRY((!\clk_div_0|Add0~1\) # (!\clk_div_0|tmp_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_0|tmp_cnt\(1),
	datad => VCC,
	cin => \clk_div_0|Add0~1\,
	combout => \clk_div_0|Add0~2_combout\,
	cout => \clk_div_0|Add0~3\);

-- Location: FF_X113_Y41_N13
\clk_div_0|tmp_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_div_0|Add0~2_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_0|tmp_cnt\(1));

-- Location: LCCOMB_X113_Y41_N14
\clk_div_0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Add0~4_combout\ = (\clk_div_0|tmp_cnt\(2) & (\clk_div_0|Add0~3\ $ (GND))) # (!\clk_div_0|tmp_cnt\(2) & (!\clk_div_0|Add0~3\ & VCC))
-- \clk_div_0|Add0~5\ = CARRY((\clk_div_0|tmp_cnt\(2) & !\clk_div_0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_0|tmp_cnt\(2),
	datad => VCC,
	cin => \clk_div_0|Add0~3\,
	combout => \clk_div_0|Add0~4_combout\,
	cout => \clk_div_0|Add0~5\);

-- Location: FF_X113_Y41_N15
\clk_div_0|tmp_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_div_0|Add0~4_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_0|tmp_cnt\(2));

-- Location: LCCOMB_X113_Y41_N16
\clk_div_0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Add0~6_combout\ = (\clk_div_0|tmp_cnt\(3) & (!\clk_div_0|Add0~5\)) # (!\clk_div_0|tmp_cnt\(3) & ((\clk_div_0|Add0~5\) # (GND)))
-- \clk_div_0|Add0~7\ = CARRY((!\clk_div_0|Add0~5\) # (!\clk_div_0|tmp_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_0|tmp_cnt\(3),
	datad => VCC,
	cin => \clk_div_0|Add0~5\,
	combout => \clk_div_0|Add0~6_combout\,
	cout => \clk_div_0|Add0~7\);

-- Location: FF_X113_Y41_N17
\clk_div_0|tmp_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_div_0|Add0~6_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_0|tmp_cnt\(3));

-- Location: LCCOMB_X113_Y41_N18
\clk_div_0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Add0~8_combout\ = (\clk_div_0|tmp_cnt\(4) & (\clk_div_0|Add0~7\ $ (GND))) # (!\clk_div_0|tmp_cnt\(4) & (!\clk_div_0|Add0~7\ & VCC))
-- \clk_div_0|Add0~9\ = CARRY((\clk_div_0|tmp_cnt\(4) & !\clk_div_0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_0|tmp_cnt\(4),
	datad => VCC,
	cin => \clk_div_0|Add0~7\,
	combout => \clk_div_0|Add0~8_combout\,
	cout => \clk_div_0|Add0~9\);

-- Location: LCCOMB_X113_Y41_N6
\clk_div_0|tmp_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|tmp_cnt~6_combout\ = (!\clk_div_0|Equal0~6_combout\ & \clk_div_0|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_0|Equal0~6_combout\,
	datad => \clk_div_0|Add0~8_combout\,
	combout => \clk_div_0|tmp_cnt~6_combout\);

-- Location: FF_X113_Y41_N7
\clk_div_0|tmp_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_div_0|tmp_cnt~6_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_0|tmp_cnt\(4));

-- Location: LCCOMB_X113_Y41_N20
\clk_div_0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Add0~10_combout\ = (\clk_div_0|tmp_cnt\(5) & (!\clk_div_0|Add0~9\)) # (!\clk_div_0|tmp_cnt\(5) & ((\clk_div_0|Add0~9\) # (GND)))
-- \clk_div_0|Add0~11\ = CARRY((!\clk_div_0|Add0~9\) # (!\clk_div_0|tmp_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_0|tmp_cnt\(5),
	datad => VCC,
	cin => \clk_div_0|Add0~9\,
	combout => \clk_div_0|Add0~10_combout\,
	cout => \clk_div_0|Add0~11\);

-- Location: FF_X113_Y41_N21
\clk_div_0|tmp_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_div_0|Add0~10_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_0|tmp_cnt\(5));

-- Location: LCCOMB_X113_Y41_N22
\clk_div_0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Add0~12_combout\ = (\clk_div_0|tmp_cnt\(6) & (\clk_div_0|Add0~11\ $ (GND))) # (!\clk_div_0|tmp_cnt\(6) & (!\clk_div_0|Add0~11\ & VCC))
-- \clk_div_0|Add0~13\ = CARRY((\clk_div_0|tmp_cnt\(6) & !\clk_div_0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_0|tmp_cnt\(6),
	datad => VCC,
	cin => \clk_div_0|Add0~11\,
	combout => \clk_div_0|Add0~12_combout\,
	cout => \clk_div_0|Add0~13\);

-- Location: FF_X113_Y41_N23
\clk_div_0|tmp_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_div_0|Add0~12_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_0|tmp_cnt\(6));

-- Location: LCCOMB_X114_Y41_N20
\clk_div_0|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Equal0~5_combout\ = (\clk_div_0|tmp_cnt\(3) & (!\clk_div_0|tmp_cnt\(5) & (!\clk_div_0|tmp_cnt\(4) & !\clk_div_0|tmp_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_0|tmp_cnt\(3),
	datab => \clk_div_0|tmp_cnt\(5),
	datac => \clk_div_0|tmp_cnt\(4),
	datad => \clk_div_0|tmp_cnt\(6),
	combout => \clk_div_0|Equal0~5_combout\);

-- Location: LCCOMB_X113_Y41_N24
\clk_div_0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Add0~14_combout\ = (\clk_div_0|tmp_cnt\(7) & (!\clk_div_0|Add0~13\)) # (!\clk_div_0|tmp_cnt\(7) & ((\clk_div_0|Add0~13\) # (GND)))
-- \clk_div_0|Add0~15\ = CARRY((!\clk_div_0|Add0~13\) # (!\clk_div_0|tmp_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_0|tmp_cnt\(7),
	datad => VCC,
	cin => \clk_div_0|Add0~13\,
	combout => \clk_div_0|Add0~14_combout\,
	cout => \clk_div_0|Add0~15\);

-- Location: LCCOMB_X113_Y41_N4
\clk_div_0|tmp_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|tmp_cnt~5_combout\ = (!\clk_div_0|Equal0~6_combout\ & \clk_div_0|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_0|Equal0~6_combout\,
	datad => \clk_div_0|Add0~14_combout\,
	combout => \clk_div_0|tmp_cnt~5_combout\);

-- Location: FF_X113_Y41_N5
\clk_div_0|tmp_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_div_0|tmp_cnt~5_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_0|tmp_cnt\(7));

-- Location: LCCOMB_X113_Y41_N26
\clk_div_0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Add0~16_combout\ = (\clk_div_0|tmp_cnt\(8) & (\clk_div_0|Add0~15\ $ (GND))) # (!\clk_div_0|tmp_cnt\(8) & (!\clk_div_0|Add0~15\ & VCC))
-- \clk_div_0|Add0~17\ = CARRY((\clk_div_0|tmp_cnt\(8) & !\clk_div_0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_0|tmp_cnt\(8),
	datad => VCC,
	cin => \clk_div_0|Add0~15\,
	combout => \clk_div_0|Add0~16_combout\,
	cout => \clk_div_0|Add0~17\);

-- Location: FF_X113_Y41_N27
\clk_div_0|tmp_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_div_0|Add0~16_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_0|tmp_cnt\(8));

-- Location: LCCOMB_X113_Y41_N28
\clk_div_0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Add0~18_combout\ = (\clk_div_0|tmp_cnt\(9) & (!\clk_div_0|Add0~17\)) # (!\clk_div_0|tmp_cnt\(9) & ((\clk_div_0|Add0~17\) # (GND)))
-- \clk_div_0|Add0~19\ = CARRY((!\clk_div_0|Add0~17\) # (!\clk_div_0|tmp_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_0|tmp_cnt\(9),
	datad => VCC,
	cin => \clk_div_0|Add0~17\,
	combout => \clk_div_0|Add0~18_combout\,
	cout => \clk_div_0|Add0~19\);

-- Location: FF_X113_Y41_N29
\clk_div_0|tmp_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_div_0|Add0~18_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_0|tmp_cnt\(9));

-- Location: LCCOMB_X113_Y41_N30
\clk_div_0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Add0~20_combout\ = (\clk_div_0|tmp_cnt\(10) & (\clk_div_0|Add0~19\ $ (GND))) # (!\clk_div_0|tmp_cnt\(10) & (!\clk_div_0|Add0~19\ & VCC))
-- \clk_div_0|Add0~21\ = CARRY((\clk_div_0|tmp_cnt\(10) & !\clk_div_0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_0|tmp_cnt\(10),
	datad => VCC,
	cin => \clk_div_0|Add0~19\,
	combout => \clk_div_0|Add0~20_combout\,
	cout => \clk_div_0|Add0~21\);

-- Location: FF_X113_Y41_N31
\clk_div_0|tmp_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_div_0|Add0~20_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_0|tmp_cnt\(10));

-- Location: LCCOMB_X113_Y40_N0
\clk_div_0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Add0~22_combout\ = (\clk_div_0|tmp_cnt\(11) & (!\clk_div_0|Add0~21\)) # (!\clk_div_0|tmp_cnt\(11) & ((\clk_div_0|Add0~21\) # (GND)))
-- \clk_div_0|Add0~23\ = CARRY((!\clk_div_0|Add0~21\) # (!\clk_div_0|tmp_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_0|tmp_cnt\(11),
	datad => VCC,
	cin => \clk_div_0|Add0~21\,
	combout => \clk_div_0|Add0~22_combout\,
	cout => \clk_div_0|Add0~23\);

-- Location: FF_X113_Y40_N1
\clk_div_0|tmp_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_div_0|Add0~22_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_0|tmp_cnt\(11));

-- Location: LCCOMB_X113_Y40_N2
\clk_div_0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Add0~24_combout\ = (\clk_div_0|tmp_cnt\(12) & (\clk_div_0|Add0~23\ $ (GND))) # (!\clk_div_0|tmp_cnt\(12) & (!\clk_div_0|Add0~23\ & VCC))
-- \clk_div_0|Add0~25\ = CARRY((\clk_div_0|tmp_cnt\(12) & !\clk_div_0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_0|tmp_cnt\(12),
	datad => VCC,
	cin => \clk_div_0|Add0~23\,
	combout => \clk_div_0|Add0~24_combout\,
	cout => \clk_div_0|Add0~25\);

-- Location: LCCOMB_X113_Y40_N28
\clk_div_0|tmp_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|tmp_cnt~4_combout\ = (\clk_div_0|Add0~24_combout\ & !\clk_div_0|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_0|Add0~24_combout\,
	datad => \clk_div_0|Equal0~6_combout\,
	combout => \clk_div_0|tmp_cnt~4_combout\);

-- Location: FF_X113_Y40_N29
\clk_div_0|tmp_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_div_0|tmp_cnt~4_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_0|tmp_cnt\(12));

-- Location: LCCOMB_X113_Y40_N4
\clk_div_0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Add0~26_combout\ = (\clk_div_0|tmp_cnt\(13) & (!\clk_div_0|Add0~25\)) # (!\clk_div_0|tmp_cnt\(13) & ((\clk_div_0|Add0~25\) # (GND)))
-- \clk_div_0|Add0~27\ = CARRY((!\clk_div_0|Add0~25\) # (!\clk_div_0|tmp_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_0|tmp_cnt\(13),
	datad => VCC,
	cin => \clk_div_0|Add0~25\,
	combout => \clk_div_0|Add0~26_combout\,
	cout => \clk_div_0|Add0~27\);

-- Location: FF_X113_Y40_N5
\clk_div_0|tmp_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_div_0|Add0~26_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_0|tmp_cnt\(13));

-- Location: LCCOMB_X113_Y40_N6
\clk_div_0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Add0~28_combout\ = (\clk_div_0|tmp_cnt\(14) & (\clk_div_0|Add0~27\ $ (GND))) # (!\clk_div_0|tmp_cnt\(14) & (!\clk_div_0|Add0~27\ & VCC))
-- \clk_div_0|Add0~29\ = CARRY((\clk_div_0|tmp_cnt\(14) & !\clk_div_0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_0|tmp_cnt\(14),
	datad => VCC,
	cin => \clk_div_0|Add0~27\,
	combout => \clk_div_0|Add0~28_combout\,
	cout => \clk_div_0|Add0~29\);

-- Location: LCCOMB_X114_Y40_N26
\clk_div_0|tmp_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|tmp_cnt~3_combout\ = (!\clk_div_0|Equal0~6_combout\ & \clk_div_0|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_0|Equal0~6_combout\,
	datad => \clk_div_0|Add0~28_combout\,
	combout => \clk_div_0|tmp_cnt~3_combout\);

-- Location: FF_X114_Y40_N27
\clk_div_0|tmp_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_div_0|tmp_cnt~3_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_0|tmp_cnt\(14));

-- Location: LCCOMB_X113_Y40_N8
\clk_div_0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Add0~30_combout\ = (\clk_div_0|tmp_cnt\(15) & (!\clk_div_0|Add0~29\)) # (!\clk_div_0|tmp_cnt\(15) & ((\clk_div_0|Add0~29\) # (GND)))
-- \clk_div_0|Add0~31\ = CARRY((!\clk_div_0|Add0~29\) # (!\clk_div_0|tmp_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_0|tmp_cnt\(15),
	datad => VCC,
	cin => \clk_div_0|Add0~29\,
	combout => \clk_div_0|Add0~30_combout\,
	cout => \clk_div_0|Add0~31\);

-- Location: LCCOMB_X113_Y40_N26
\clk_div_0|tmp_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|tmp_cnt~2_combout\ = (\clk_div_0|Add0~30_combout\ & !\clk_div_0|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_0|Add0~30_combout\,
	datad => \clk_div_0|Equal0~6_combout\,
	combout => \clk_div_0|tmp_cnt~2_combout\);

-- Location: FF_X113_Y40_N27
\clk_div_0|tmp_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_div_0|tmp_cnt~2_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_0|tmp_cnt\(15));

-- Location: LCCOMB_X113_Y40_N10
\clk_div_0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Add0~32_combout\ = (\clk_div_0|tmp_cnt\(16) & (\clk_div_0|Add0~31\ $ (GND))) # (!\clk_div_0|tmp_cnt\(16) & (!\clk_div_0|Add0~31\ & VCC))
-- \clk_div_0|Add0~33\ = CARRY((\clk_div_0|tmp_cnt\(16) & !\clk_div_0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_0|tmp_cnt\(16),
	datad => VCC,
	cin => \clk_div_0|Add0~31\,
	combout => \clk_div_0|Add0~32_combout\,
	cout => \clk_div_0|Add0~33\);

-- Location: LCCOMB_X113_Y40_N24
\clk_div_0|tmp_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|tmp_cnt~1_combout\ = (\clk_div_0|Add0~32_combout\ & !\clk_div_0|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_0|Add0~32_combout\,
	datad => \clk_div_0|Equal0~6_combout\,
	combout => \clk_div_0|tmp_cnt~1_combout\);

-- Location: FF_X113_Y40_N25
\clk_div_0|tmp_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_div_0|tmp_cnt~1_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_0|tmp_cnt\(16));

-- Location: LCCOMB_X113_Y40_N12
\clk_div_0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Add0~34_combout\ = (\clk_div_0|tmp_cnt\(17) & (!\clk_div_0|Add0~33\)) # (!\clk_div_0|tmp_cnt\(17) & ((\clk_div_0|Add0~33\) # (GND)))
-- \clk_div_0|Add0~35\ = CARRY((!\clk_div_0|Add0~33\) # (!\clk_div_0|tmp_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_0|tmp_cnt\(17),
	datad => VCC,
	cin => \clk_div_0|Add0~33\,
	combout => \clk_div_0|Add0~34_combout\,
	cout => \clk_div_0|Add0~35\);

-- Location: LCCOMB_X113_Y40_N30
\clk_div_0|tmp_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|tmp_cnt~0_combout\ = (\clk_div_0|Add0~34_combout\ & !\clk_div_0|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_0|Add0~34_combout\,
	datad => \clk_div_0|Equal0~6_combout\,
	combout => \clk_div_0|tmp_cnt~0_combout\);

-- Location: FF_X113_Y40_N31
\clk_div_0|tmp_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_div_0|tmp_cnt~0_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_0|tmp_cnt\(17));

-- Location: LCCOMB_X113_Y40_N14
\clk_div_0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Add0~36_combout\ = (\clk_div_0|tmp_cnt\(18) & (\clk_div_0|Add0~35\ $ (GND))) # (!\clk_div_0|tmp_cnt\(18) & (!\clk_div_0|Add0~35\ & VCC))
-- \clk_div_0|Add0~37\ = CARRY((\clk_div_0|tmp_cnt\(18) & !\clk_div_0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_0|tmp_cnt\(18),
	datad => VCC,
	cin => \clk_div_0|Add0~35\,
	combout => \clk_div_0|Add0~36_combout\,
	cout => \clk_div_0|Add0~37\);

-- Location: FF_X113_Y40_N15
\clk_div_0|tmp_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_div_0|Add0~36_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_0|tmp_cnt\(18));

-- Location: LCCOMB_X114_Y40_N0
\clk_div_0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Equal0~1_combout\ = (!\clk_div_0|tmp_cnt\(18) & (\clk_div_0|tmp_cnt\(17) & (\clk_div_0|tmp_cnt\(15) & \clk_div_0|tmp_cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_0|tmp_cnt\(18),
	datab => \clk_div_0|tmp_cnt\(17),
	datac => \clk_div_0|tmp_cnt\(15),
	datad => \clk_div_0|tmp_cnt\(16),
	combout => \clk_div_0|Equal0~1_combout\);

-- Location: LCCOMB_X113_Y41_N2
\clk_div_0|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Equal0~3_combout\ = (!\clk_div_0|tmp_cnt\(8) & (!\clk_div_0|tmp_cnt\(10) & (\clk_div_0|tmp_cnt\(7) & !\clk_div_0|tmp_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_0|tmp_cnt\(8),
	datab => \clk_div_0|tmp_cnt\(10),
	datac => \clk_div_0|tmp_cnt\(7),
	datad => \clk_div_0|tmp_cnt\(9),
	combout => \clk_div_0|Equal0~3_combout\);

-- Location: LCCOMB_X113_Y40_N16
\clk_div_0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Add0~38_combout\ = (\clk_div_0|tmp_cnt\(19) & (!\clk_div_0|Add0~37\)) # (!\clk_div_0|tmp_cnt\(19) & ((\clk_div_0|Add0~37\) # (GND)))
-- \clk_div_0|Add0~39\ = CARRY((!\clk_div_0|Add0~37\) # (!\clk_div_0|tmp_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_0|tmp_cnt\(19),
	datad => VCC,
	cin => \clk_div_0|Add0~37\,
	combout => \clk_div_0|Add0~38_combout\,
	cout => \clk_div_0|Add0~39\);

-- Location: FF_X113_Y40_N17
\clk_div_0|tmp_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_div_0|Add0~38_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_0|tmp_cnt\(19));

-- Location: LCCOMB_X113_Y40_N18
\clk_div_0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Add0~40_combout\ = (\clk_div_0|tmp_cnt\(20) & (\clk_div_0|Add0~39\ $ (GND))) # (!\clk_div_0|tmp_cnt\(20) & (!\clk_div_0|Add0~39\ & VCC))
-- \clk_div_0|Add0~41\ = CARRY((\clk_div_0|tmp_cnt\(20) & !\clk_div_0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_0|tmp_cnt\(20),
	datad => VCC,
	cin => \clk_div_0|Add0~39\,
	combout => \clk_div_0|Add0~40_combout\,
	cout => \clk_div_0|Add0~41\);

-- Location: FF_X113_Y40_N19
\clk_div_0|tmp_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_div_0|Add0~40_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_0|tmp_cnt\(20));

-- Location: LCCOMB_X113_Y40_N20
\clk_div_0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Add0~42_combout\ = \clk_div_0|Add0~41\ $ (\clk_div_0|tmp_cnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_0|tmp_cnt\(21),
	cin => \clk_div_0|Add0~41\,
	combout => \clk_div_0|Add0~42_combout\);

-- Location: FF_X113_Y40_N21
\clk_div_0|tmp_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_div_0|Add0~42_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_0|tmp_cnt\(21));

-- Location: LCCOMB_X114_Y41_N10
\clk_div_0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Equal0~0_combout\ = (!\clk_div_0|tmp_cnt\(19) & (\clk_div_0|tmp_cnt\(0) & (!\clk_div_0|tmp_cnt\(20) & !\clk_div_0|tmp_cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_0|tmp_cnt\(19),
	datab => \clk_div_0|tmp_cnt\(0),
	datac => \clk_div_0|tmp_cnt\(20),
	datad => \clk_div_0|tmp_cnt\(21),
	combout => \clk_div_0|Equal0~0_combout\);

-- Location: LCCOMB_X113_Y40_N22
\clk_div_0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Equal0~2_combout\ = (\clk_div_0|tmp_cnt\(12) & (!\clk_div_0|tmp_cnt\(11) & (!\clk_div_0|tmp_cnt\(13) & \clk_div_0|tmp_cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_0|tmp_cnt\(12),
	datab => \clk_div_0|tmp_cnt\(11),
	datac => \clk_div_0|tmp_cnt\(13),
	datad => \clk_div_0|tmp_cnt\(14),
	combout => \clk_div_0|Equal0~2_combout\);

-- Location: LCCOMB_X113_Y41_N0
\clk_div_0|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Equal0~4_combout\ = (\clk_div_0|Equal0~1_combout\ & (\clk_div_0|Equal0~3_combout\ & (\clk_div_0|Equal0~0_combout\ & \clk_div_0|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_0|Equal0~1_combout\,
	datab => \clk_div_0|Equal0~3_combout\,
	datac => \clk_div_0|Equal0~0_combout\,
	datad => \clk_div_0|Equal0~2_combout\,
	combout => \clk_div_0|Equal0~4_combout\);

-- Location: LCCOMB_X113_Y41_N8
\clk_div_0|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|Equal0~6_combout\ = (\clk_div_0|tmp_cnt\(1) & (\clk_div_0|tmp_cnt\(2) & (\clk_div_0|Equal0~5_combout\ & \clk_div_0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_0|tmp_cnt\(1),
	datab => \clk_div_0|tmp_cnt\(2),
	datac => \clk_div_0|Equal0~5_combout\,
	datad => \clk_div_0|Equal0~4_combout\,
	combout => \clk_div_0|Equal0~6_combout\);

-- Location: LCCOMB_X114_Y41_N12
\clk_div_0|tmp_clk_100hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|tmp_clk_100hz~0_combout\ = \clk_div_0|tmp_clk_100hz~q\ $ (\clk_div_0|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_0|tmp_clk_100hz~q\,
	datad => \clk_div_0|Equal0~6_combout\,
	combout => \clk_div_0|tmp_clk_100hz~0_combout\);

-- Location: LCCOMB_X114_Y41_N14
\clk_div_0|tmp_clk_100hz~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_0|tmp_clk_100hz~feeder_combout\ = \clk_div_0|tmp_clk_100hz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_0|tmp_clk_100hz~0_combout\,
	combout => \clk_div_0|tmp_clk_100hz~feeder_combout\);

-- Location: FF_X114_Y41_N15
\clk_div_0|tmp_clk_100hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_div_0|tmp_clk_100hz~feeder_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_0|tmp_clk_100hz~q\);

-- Location: CLKCTRL_G5
\clk_div_0|tmp_clk_100hz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_div_0|tmp_clk_100hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\);

-- Location: LCCOMB_X107_Y39_N12
\state_0|state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_0|state~0_combout\ = (\state_0|state\(0) & !\state_0|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_0|state\(0),
	datac => \state_0|state\(1),
	combout => \state_0|state~0_combout\);

-- Location: LCCOMB_X105_Y39_N24
\alarm_0|EN_ADJUST~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|EN_ADJUST~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \alarm_0|EN_ADJUST~feeder_combout\);

-- Location: LCCOMB_X110_Y32_N14
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[0]~19_combout\ = !\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(0)
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[0]~20\ = CARRY(!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(0),
	combout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[0]~19_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[0]~20\);

-- Location: LCCOMB_X109_Y33_N6
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[0]~27_combout\ = \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(0) $ (VCC)
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[0]~28\ = CARRY(\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(0),
	datad => VCC,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[0]~27_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[0]~28\);

-- Location: IOIBUF_X115_Y35_N22
\SW3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW3,
	o => \SW3~input_o\);

-- Location: LCCOMB_X114_Y32_N4
\top_sw_0|sw_input_adj_long_0|sw_in_1d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_in_1d~0_combout\ = !\SW3~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW3~input_o\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_in_1d~0_combout\);

-- Location: FF_X114_Y32_N5
\top_sw_0|sw_input_adj_long_0|sw_in_1d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_in_1d~0_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_in_1d~q\);

-- Location: LCCOMB_X110_Y32_N10
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\ = (!\top_sw_0|sw_input_adj_long_0|Equal0~8_combout\) # (!\top_sw_0|sw_input_adj_long_0|sw_in_1d~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_in_1d~q\,
	datad => \top_sw_0|sw_input_adj_long_0|Equal0~8_combout\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\);

-- Location: FF_X109_Y33_N7
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[0]~27_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(0));

-- Location: LCCOMB_X109_Y33_N8
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[1]~30_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(1) & (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[0]~28\)) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(1) & ((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[0]~28\) 
-- # (GND)))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[1]~31\ = CARRY((!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[0]~28\) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(1),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[0]~28\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[1]~30_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[1]~31\);

-- Location: FF_X109_Y33_N9
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[1]~30_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(1));

-- Location: LCCOMB_X109_Y33_N10
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[2]~32_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(2) & (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[1]~31\ $ (GND))) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(2) & 
-- (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[1]~31\ & VCC))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[2]~33\ = CARRY((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(2) & !\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[1]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(2),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[1]~31\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[2]~32_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[2]~33\);

-- Location: FF_X109_Y33_N11
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[2]~32_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(2));

-- Location: LCCOMB_X109_Y33_N12
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[3]~34_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(3) & (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[2]~33\)) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(3) & ((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[2]~33\) 
-- # (GND)))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[3]~35\ = CARRY((!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[2]~33\) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(3),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[2]~33\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[3]~34_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[3]~35\);

-- Location: FF_X109_Y33_N13
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[3]~34_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(3));

-- Location: LCCOMB_X109_Y33_N14
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[4]~36_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(4) & (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[3]~35\ $ (GND))) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(4) & 
-- (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[3]~35\ & VCC))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[4]~37\ = CARRY((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(4) & !\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(4),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[3]~35\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[4]~36_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[4]~37\);

-- Location: FF_X109_Y33_N15
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[4]~36_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(4));

-- Location: LCCOMB_X109_Y33_N16
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[5]~38_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(5) & (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[4]~37\)) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(5) & ((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[4]~37\) 
-- # (GND)))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[5]~39\ = CARRY((!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[4]~37\) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(5),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[4]~37\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[5]~38_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[5]~39\);

-- Location: FF_X109_Y33_N17
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[5]~38_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(5));

-- Location: LCCOMB_X109_Y33_N18
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[6]~40_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(6) & (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[5]~39\ $ (GND))) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(6) & 
-- (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[5]~39\ & VCC))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[6]~41\ = CARRY((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(6) & !\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(6),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[5]~39\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[6]~40_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[6]~41\);

-- Location: FF_X109_Y33_N19
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[6]~40_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(6));

-- Location: LCCOMB_X109_Y33_N20
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[7]~42_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(7) & (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[6]~41\)) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(7) & ((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[6]~41\) 
-- # (GND)))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[7]~43\ = CARRY((!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[6]~41\) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(7),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[6]~41\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[7]~42_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[7]~43\);

-- Location: FF_X109_Y33_N21
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[7]~42_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(7));

-- Location: LCCOMB_X109_Y33_N22
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[8]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[8]~44_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(8) & (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[7]~43\ $ (GND))) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(8) & 
-- (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[7]~43\ & VCC))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[8]~45\ = CARRY((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(8) & !\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(8),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[7]~43\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[8]~44_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[8]~45\);

-- Location: FF_X109_Y33_N23
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[8]~44_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(8));

-- Location: LCCOMB_X109_Y33_N24
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[9]~46_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(9) & (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[8]~45\)) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(9) & ((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[8]~45\) 
-- # (GND)))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[9]~47\ = CARRY((!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[8]~45\) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(9),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[8]~45\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[9]~46_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[9]~47\);

-- Location: FF_X109_Y33_N25
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[9]~46_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(9));

-- Location: LCCOMB_X109_Y33_N26
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[10]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[10]~48_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(10) & (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[9]~47\ $ (GND))) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(10) & 
-- (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[9]~47\ & VCC))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[10]~49\ = CARRY((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(10) & !\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(10),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[9]~47\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[10]~48_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[10]~49\);

-- Location: FF_X109_Y33_N27
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[10]~48_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(10));

-- Location: LCCOMB_X109_Y33_N28
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[11]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[11]~50_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(11) & (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[10]~49\)) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(11) & 
-- ((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[10]~49\) # (GND)))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[11]~51\ = CARRY((!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[10]~49\) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(11),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[10]~49\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[11]~50_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[11]~51\);

-- Location: FF_X109_Y33_N29
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[11]~50_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(11));

-- Location: LCCOMB_X109_Y33_N30
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[12]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[12]~52_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(12) & (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[11]~51\ $ (GND))) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(12) & 
-- (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[11]~51\ & VCC))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[12]~53\ = CARRY((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(12) & !\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(12),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[11]~51\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[12]~52_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[12]~53\);

-- Location: FF_X109_Y33_N31
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[12]~52_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(12));

-- Location: LCCOMB_X109_Y32_N0
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[13]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[13]~54_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(13) & (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[12]~53\)) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(13) & 
-- ((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[12]~53\) # (GND)))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[13]~55\ = CARRY((!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[12]~53\) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(13),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[12]~53\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[13]~54_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[13]~55\);

-- Location: FF_X109_Y32_N1
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[13]~54_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(13));

-- Location: LCCOMB_X109_Y32_N2
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[14]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[14]~56_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(14) & (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[13]~55\ $ (GND))) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(14) & 
-- (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[13]~55\ & VCC))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[14]~57\ = CARRY((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(14) & !\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(14),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[13]~55\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[14]~56_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[14]~57\);

-- Location: FF_X109_Y32_N3
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[14]~56_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(14));

-- Location: LCCOMB_X109_Y32_N4
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[15]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[15]~58_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(15) & (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[14]~57\)) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(15) & 
-- ((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[14]~57\) # (GND)))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[15]~59\ = CARRY((!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[14]~57\) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(15),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[14]~57\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[15]~58_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[15]~59\);

-- Location: FF_X109_Y32_N5
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[15]~58_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(15));

-- Location: LCCOMB_X109_Y32_N6
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~60_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(16) & (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[15]~59\ $ (GND))) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(16) & 
-- (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[15]~59\ & VCC))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~61\ = CARRY((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(16) & !\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(16),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[15]~59\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~60_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~61\);

-- Location: FF_X109_Y32_N7
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~60_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(16));

-- Location: LCCOMB_X109_Y32_N8
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[17]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[17]~62_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(17) & (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~61\)) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(17) & 
-- ((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~61\) # (GND)))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[17]~63\ = CARRY((!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~61\) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(17),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~61\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[17]~62_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[17]~63\);

-- Location: FF_X109_Y32_N9
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[17]~62_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(17));

-- Location: LCCOMB_X109_Y32_N10
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[18]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[18]~64_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(18) & (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[17]~63\ $ (GND))) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(18) & 
-- (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[17]~63\ & VCC))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[18]~65\ = CARRY((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(18) & !\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(18),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[17]~63\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[18]~64_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[18]~65\);

-- Location: FF_X109_Y32_N11
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[18]~64_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(18));

-- Location: LCCOMB_X109_Y32_N12
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[19]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[19]~66_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(19) & (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[18]~65\)) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(19) & 
-- ((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[18]~65\) # (GND)))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[19]~67\ = CARRY((!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[18]~65\) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(19),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[18]~65\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[19]~66_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[19]~67\);

-- Location: FF_X109_Y32_N13
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[19]~66_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(19));

-- Location: LCCOMB_X109_Y32_N28
\top_sw_0|sw_input_adj_long_0|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|Equal0~5_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(19)) # (((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(17)) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(18))) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(19),
	datab => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(16),
	datac => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(17),
	datad => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(18),
	combout => \top_sw_0|sw_input_adj_long_0|Equal0~5_combout\);

-- Location: LCCOMB_X109_Y32_N14
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[20]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[20]~68_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(20) & (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[19]~67\ $ (GND))) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(20) & 
-- (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[19]~67\ & VCC))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[20]~69\ = CARRY((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(20) & !\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[19]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(20),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[19]~67\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[20]~68_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[20]~69\);

-- Location: FF_X109_Y32_N15
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[20]~68_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(20));

-- Location: LCCOMB_X109_Y32_N16
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[21]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[21]~70_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(21) & (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[20]~69\)) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(21) & 
-- ((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[20]~69\) # (GND)))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[21]~71\ = CARRY((!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[20]~69\) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(21),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[20]~69\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[21]~70_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[21]~71\);

-- Location: FF_X109_Y32_N17
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[21]~70_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(21));

-- Location: LCCOMB_X109_Y32_N18
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[22]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[22]~72_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(22) & (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[21]~71\ $ (GND))) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(22) & 
-- (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[21]~71\ & VCC))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[22]~73\ = CARRY((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(22) & !\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[21]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(22),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[21]~71\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[22]~72_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[22]~73\);

-- Location: FF_X109_Y32_N19
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[22]~72_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(22));

-- Location: LCCOMB_X109_Y32_N20
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[23]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[23]~74_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(23) & (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[22]~73\)) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(23) & 
-- ((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[22]~73\) # (GND)))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[23]~75\ = CARRY((!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[22]~73\) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(23),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[22]~73\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[23]~74_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[23]~75\);

-- Location: FF_X109_Y32_N21
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[23]~74_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(23));

-- Location: LCCOMB_X109_Y32_N30
\top_sw_0|sw_input_adj_long_0|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|Equal0~6_combout\ = (((!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(22)) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(20))) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(21))) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(23),
	datab => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(21),
	datac => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(20),
	datad => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(22),
	combout => \top_sw_0|sw_input_adj_long_0|Equal0~6_combout\);

-- Location: LCCOMB_X109_Y32_N22
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[24]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[24]~76_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(24) & (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[23]~75\ $ (GND))) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(24) & 
-- (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[23]~75\ & VCC))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[24]~77\ = CARRY((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(24) & !\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[23]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(24),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[23]~75\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[24]~76_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[24]~77\);

-- Location: FF_X109_Y32_N23
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[24]~76_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(24));

-- Location: LCCOMB_X109_Y32_N24
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[25]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[25]~78_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(25) & (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[24]~77\)) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(25) & 
-- ((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[24]~77\) # (GND)))
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[25]~79\ = CARRY((!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[24]~77\) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(25),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[24]~77\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[25]~78_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[25]~79\);

-- Location: FF_X109_Y32_N25
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[25]~78_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(25));

-- Location: LCCOMB_X109_Y32_N26
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[26]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[26]~80_combout\ = \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(26) $ (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[25]~79\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(26),
	cin => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[25]~79\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[26]~80_combout\);

-- Location: FF_X109_Y32_N27
\top_sw_0|sw_input_adj_long_0|sw_cnt_2s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[26]~80_combout\,
	clrn => \SW0~input_o\,
	sclr => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(26));

-- Location: LCCOMB_X110_Y32_N12
\top_sw_0|sw_input_adj_long_0|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|Equal0~7_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(25)) # ((!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(24)) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(25),
	datac => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(26),
	datad => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(24),
	combout => \top_sw_0|sw_input_adj_long_0|Equal0~7_combout\);

-- Location: LCCOMB_X109_Y33_N0
\top_sw_0|sw_input_adj_long_0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|Equal0~0_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(3)) # ((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(1)) # ((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(0)) # (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(3),
	datab => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(1),
	datac => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(0),
	datad => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(2),
	combout => \top_sw_0|sw_input_adj_long_0|Equal0~0_combout\);

-- Location: LCCOMB_X110_Y32_N0
\top_sw_0|sw_input_adj_long_0|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|Equal0~3_combout\ = (((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(12)) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(13))) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(15))) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(14),
	datab => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(15),
	datac => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(13),
	datad => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(12),
	combout => \top_sw_0|sw_input_adj_long_0|Equal0~3_combout\);

-- Location: LCCOMB_X109_Y33_N2
\top_sw_0|sw_input_adj_long_0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|Equal0~1_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(7)) # ((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(5)) # ((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(4)) # (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(7),
	datab => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(5),
	datac => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(4),
	datad => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(6),
	combout => \top_sw_0|sw_input_adj_long_0|Equal0~1_combout\);

-- Location: LCCOMB_X109_Y33_N4
\top_sw_0|sw_input_adj_long_0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|Equal0~2_combout\ = ((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(11)) # ((\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(10)) # (\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(9)))) # (!\top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(8),
	datab => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(11),
	datac => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(10),
	datad => \top_sw_0|sw_input_adj_long_0|sw_cnt_2s\(9),
	combout => \top_sw_0|sw_input_adj_long_0|Equal0~2_combout\);

-- Location: LCCOMB_X110_Y32_N6
\top_sw_0|sw_input_adj_long_0|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|Equal0~4_combout\ = (\top_sw_0|sw_input_adj_long_0|Equal0~0_combout\) # ((\top_sw_0|sw_input_adj_long_0|Equal0~3_combout\) # ((\top_sw_0|sw_input_adj_long_0|Equal0~1_combout\) # 
-- (\top_sw_0|sw_input_adj_long_0|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|Equal0~0_combout\,
	datab => \top_sw_0|sw_input_adj_long_0|Equal0~3_combout\,
	datac => \top_sw_0|sw_input_adj_long_0|Equal0~1_combout\,
	datad => \top_sw_0|sw_input_adj_long_0|Equal0~2_combout\,
	combout => \top_sw_0|sw_input_adj_long_0|Equal0~4_combout\);

-- Location: LCCOMB_X110_Y32_N2
\top_sw_0|sw_input_adj_long_0|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|Equal0~8_combout\ = (\top_sw_0|sw_input_adj_long_0|Equal0~5_combout\) # ((\top_sw_0|sw_input_adj_long_0|Equal0~6_combout\) # ((\top_sw_0|sw_input_adj_long_0|Equal0~7_combout\) # 
-- (\top_sw_0|sw_input_adj_long_0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|Equal0~5_combout\,
	datab => \top_sw_0|sw_input_adj_long_0|Equal0~6_combout\,
	datac => \top_sw_0|sw_input_adj_long_0|Equal0~7_combout\,
	datad => \top_sw_0|sw_input_adj_long_0|Equal0~4_combout\,
	combout => \top_sw_0|sw_input_adj_long_0|Equal0~8_combout\);

-- Location: LCCOMB_X110_Y32_N8
\top_sw_0|sw_input_adj_long_0|process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|process_2~0_combout\ = (!\top_sw_0|sw_input_adj_long_0|Equal0~8_combout\ & \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|Equal0~8_combout\,
	datad => \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\,
	combout => \top_sw_0|sw_input_adj_long_0|process_2~0_combout\);

-- Location: FF_X110_Y32_N15
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[0]~19_combout\,
	asdata => \top_sw_0|sw_input_adj_long_0|process_2~0_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(0));

-- Location: LCCOMB_X110_Y32_N16
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[1]~21_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(1) & ((GND) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[0]~20\))) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(1) & 
-- (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[0]~20\ $ (GND)))
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[1]~22\ = CARRY((\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(1)) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[0]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(1),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[0]~20\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[1]~21_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[1]~22\);

-- Location: FF_X110_Y32_N17
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[1]~21_combout\,
	asdata => \top_sw_0|sw_input_adj_long_0|process_2~0_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(1));

-- Location: LCCOMB_X110_Y32_N18
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[2]~23_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(2) & (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[1]~22\ & VCC)) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(2) & 
-- (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[1]~22\))
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[2]~24\ = CARRY((!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(2) & !\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(2),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[1]~22\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[2]~23_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[2]~24\);

-- Location: FF_X110_Y32_N19
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[2]~23_combout\,
	asdata => \top_sw_0|sw_input_adj_long_0|process_2~0_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(2));

-- Location: LCCOMB_X110_Y32_N20
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[3]~25_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(3) & ((GND) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[2]~24\))) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(3) & 
-- (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[2]~24\ $ (GND)))
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[3]~26\ = CARRY((\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(3)) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[2]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(3),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[2]~24\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[3]~25_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[3]~26\);

-- Location: FF_X110_Y32_N21
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[3]~25_combout\,
	asdata => \top_sw_0|sw_input_adj_long_0|process_2~0_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(3));

-- Location: LCCOMB_X110_Y32_N22
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[4]~27_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(4) & (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[3]~26\ & VCC)) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(4) & 
-- (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[3]~26\))
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[4]~28\ = CARRY((!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(4) & !\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(4),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[3]~26\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[4]~27_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[4]~28\);

-- Location: FF_X110_Y32_N23
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[4]~27_combout\,
	asdata => \top_sw_0|sw_input_adj_long_0|process_2~0_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(4));

-- Location: LCCOMB_X110_Y32_N24
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[5]~29_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(5) & (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[4]~28\)) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(5) & 
-- ((\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[4]~28\) # (GND)))
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[5]~30\ = CARRY((!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[4]~28\) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(5),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[4]~28\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[5]~29_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[5]~30\);

-- Location: LCCOMB_X110_Y41_N4
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

-- Location: FF_X110_Y32_N25
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[5]~29_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(5));

-- Location: LCCOMB_X110_Y32_N26
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[6]~31_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(6) & (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[5]~30\ $ (GND))) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(6) & 
-- (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[5]~30\ & VCC))
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[6]~32\ = CARRY((\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(6) & !\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(6),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[5]~30\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[6]~31_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[6]~32\);

-- Location: LCCOMB_X110_Y31_N28
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[6]~feeder_combout\ = \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[6]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[6]~31_combout\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[6]~feeder_combout\);

-- Location: FF_X110_Y31_N29
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[6]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(6));

-- Location: LCCOMB_X110_Y32_N28
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[7]~33_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(7) & (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[6]~32\)) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(7) & 
-- ((\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[6]~32\) # (GND)))
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[7]~34\ = CARRY((!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[6]~32\) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(7),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[6]~32\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[7]~33_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[7]~34\);

-- Location: FF_X110_Y32_N29
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[7]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(7));

-- Location: LCCOMB_X110_Y32_N30
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[8]~35_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(8) & (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[7]~34\ & VCC)) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(8) & 
-- (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[7]~34\))
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[8]~36\ = CARRY((!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(8) & !\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(8),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[7]~34\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[8]~35_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[8]~36\);

-- Location: FF_X110_Y32_N31
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[8]~35_combout\,
	asdata => \top_sw_0|sw_input_adj_long_0|process_2~0_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(8));

-- Location: LCCOMB_X110_Y31_N0
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[9]~37_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(9) & (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[8]~36\)) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(9) & 
-- ((\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[8]~36\) # (GND)))
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[9]~38\ = CARRY((!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[8]~36\) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(9),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[8]~36\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[9]~37_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[9]~38\);

-- Location: FF_X110_Y31_N1
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[9]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(9));

-- Location: LCCOMB_X110_Y31_N2
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[10]~39_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(10) & (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[9]~38\ $ (GND))) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(10) & 
-- (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[9]~38\ & VCC))
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[10]~40\ = CARRY((\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(10) & !\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(10),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[9]~38\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[10]~39_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[10]~40\);

-- Location: FF_X110_Y31_N3
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[10]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(10));

-- Location: LCCOMB_X110_Y31_N4
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[11]~41_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(11) & (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[10]~40\)) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(11) & 
-- ((\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[10]~40\) # (GND)))
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[11]~42\ = CARRY((!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[10]~40\) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(11),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[10]~40\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[11]~41_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[11]~42\);

-- Location: FF_X110_Y31_N5
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[11]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(11));

-- Location: LCCOMB_X110_Y31_N6
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[12]~43_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(12) & (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[11]~42\ $ (GND))) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(12) & 
-- (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[11]~42\ & VCC))
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[12]~44\ = CARRY((\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(12) & !\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(12),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[11]~42\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[12]~43_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[12]~44\);

-- Location: FF_X110_Y31_N7
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[12]~43_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(12));

-- Location: LCCOMB_X110_Y31_N8
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[13]~45_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(13) & ((GND) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[12]~44\))) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(13) & 
-- (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[12]~44\ $ (GND)))
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[13]~46\ = CARRY((\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(13)) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[12]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(13),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[12]~44\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[13]~45_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[13]~46\);

-- Location: FF_X110_Y31_N9
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[13]~45_combout\,
	asdata => \top_sw_0|sw_input_adj_long_0|process_2~0_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(13));

-- Location: LCCOMB_X110_Y31_N10
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[14]~47_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(14) & (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[13]~46\ $ (GND))) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(14) & 
-- (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[13]~46\ & VCC))
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[14]~48\ = CARRY((\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(14) & !\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(14),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[13]~46\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[14]~47_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[14]~48\);

-- Location: FF_X110_Y31_N11
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[14]~47_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(14));

-- Location: LCCOMB_X110_Y31_N12
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[15]~49_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(15) & ((GND) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[14]~48\))) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(15) & 
-- (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[14]~48\ $ (GND)))
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[15]~50\ = CARRY((\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(15)) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[14]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(15),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[14]~48\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[15]~49_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[15]~50\);

-- Location: FF_X110_Y31_N13
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[15]~49_combout\,
	asdata => \top_sw_0|sw_input_adj_long_0|process_2~0_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(15));

-- Location: LCCOMB_X110_Y31_N14
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[16]~51_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(16) & (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[15]~50\ & VCC)) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(16) & 
-- (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[15]~50\))
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[16]~52\ = CARRY((!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(16) & !\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(16),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[15]~50\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[16]~51_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[16]~52\);

-- Location: FF_X110_Y31_N15
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[16]~51_combout\,
	asdata => \top_sw_0|sw_input_adj_long_0|process_2~0_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(16));

-- Location: LCCOMB_X110_Y31_N16
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[17]~53_combout\ = (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(17) & ((GND) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[16]~52\))) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(17) & 
-- (\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[16]~52\ $ (GND)))
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[17]~54\ = CARRY((\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(17)) # (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[16]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(17),
	datad => VCC,
	cin => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[16]~52\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[17]~53_combout\,
	cout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[17]~54\);

-- Location: FF_X110_Y31_N17
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[17]~53_combout\,
	asdata => \top_sw_0|sw_input_adj_long_0|process_2~0_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(17));

-- Location: LCCOMB_X110_Y31_N18
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[18]~55_combout\ = \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[17]~54\ $ (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(18),
	cin => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[17]~54\,
	combout => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[18]~55_combout\);

-- Location: FF_X110_Y31_N19
\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt[18]~55_combout\,
	asdata => \top_sw_0|sw_input_adj_long_0|process_2~0_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(18));

-- Location: LCCOMB_X110_Y31_N30
\top_sw_0|sw_input_adj_long_0|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|Equal1~3_combout\ = (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(12) & (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(13) & (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(14) & !\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(12),
	datab => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(13),
	datac => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(14),
	datad => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(15),
	combout => \top_sw_0|sw_input_adj_long_0|Equal1~3_combout\);

-- Location: LCCOMB_X110_Y31_N20
\top_sw_0|sw_input_adj_long_0|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|Equal1~2_combout\ = (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(8) & (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(9) & (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(11) & !\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(8),
	datab => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(9),
	datac => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(11),
	datad => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(10),
	combout => \top_sw_0|sw_input_adj_long_0|Equal1~2_combout\);

-- Location: LCCOMB_X110_Y31_N26
\top_sw_0|sw_input_adj_long_0|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|Equal1~1_combout\ = (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(6) & (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(7) & (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(5) & !\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(6),
	datab => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(7),
	datac => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(5),
	datad => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(4),
	combout => \top_sw_0|sw_input_adj_long_0|Equal1~1_combout\);

-- Location: LCCOMB_X110_Y32_N4
\top_sw_0|sw_input_adj_long_0|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|Equal1~0_combout\ = (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(3) & (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(1) & (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(0) & !\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(3),
	datab => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(1),
	datac => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(0),
	datad => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(2),
	combout => \top_sw_0|sw_input_adj_long_0|Equal1~0_combout\);

-- Location: LCCOMB_X110_Y31_N24
\top_sw_0|sw_input_adj_long_0|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|Equal1~4_combout\ = (\top_sw_0|sw_input_adj_long_0|Equal1~3_combout\ & (\top_sw_0|sw_input_adj_long_0|Equal1~2_combout\ & (\top_sw_0|sw_input_adj_long_0|Equal1~1_combout\ & \top_sw_0|sw_input_adj_long_0|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|Equal1~3_combout\,
	datab => \top_sw_0|sw_input_adj_long_0|Equal1~2_combout\,
	datac => \top_sw_0|sw_input_adj_long_0|Equal1~1_combout\,
	datad => \top_sw_0|sw_input_adj_long_0|Equal1~0_combout\,
	combout => \top_sw_0|sw_input_adj_long_0|Equal1~4_combout\);

-- Location: LCCOMB_X110_Y31_N22
\top_sw_0|sw_input_adj_long_0|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\ = (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(18) & (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(17) & (!\top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(16) & \top_sw_0|sw_input_adj_long_0|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(18),
	datab => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(17),
	datac => \top_sw_0|sw_input_adj_long_0|sw_10ms_cnt\(16),
	datad => \top_sw_0|sw_input_adj_long_0|Equal1~4_combout\,
	combout => \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\);

-- Location: LCCOMB_X110_Y36_N12
\top_sw_0|sw_input_adj_long_0|SW_CLR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_adj_long_0|SW_CLR~0_combout\ = (!\top_sw_0|sw_input_adj_long_0|Equal0~8_combout\) # (!\top_sw_0|sw_input_adj_long_0|Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_sw_0|sw_input_adj_long_0|Equal1~5_combout\,
	datad => \top_sw_0|sw_input_adj_long_0|Equal0~8_combout\,
	combout => \top_sw_0|sw_input_adj_long_0|SW_CLR~0_combout\);

-- Location: FF_X110_Y36_N13
\top_sw_0|sw_input_adj_long_0|SW_CLR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_adj_long_0|SW_CLR~0_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_adj_long_0|SW_CLR~q\);

-- Location: LCCOMB_X109_Y40_N8
\state_0|A_ADJUST_LONG~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_0|A_ADJUST_LONG~feeder_combout\ = \top_sw_0|sw_input_adj_long_0|SW_CLR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_sw_0|sw_input_adj_long_0|SW_CLR~q\,
	combout => \state_0|A_ADJUST_LONG~feeder_combout\);

-- Location: LCCOMB_X109_Y39_N18
\FND_DRIVER_0|SEG_DRV_ST1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_ST1|Mux5~0_combout\ = (!\state_0|state\(1) & \state_0|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_0|state\(1),
	datad => \state_0|state\(0),
	combout => \FND_DRIVER_0|SEG_DRV_ST1|Mux5~0_combout\);

-- Location: FF_X109_Y40_N9
\state_0|A_ADJUST_LONG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \state_0|A_ADJUST_LONG~feeder_combout\,
	clrn => \SW0~input_o\,
	ena => \FND_DRIVER_0|SEG_DRV_ST1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_0|A_ADJUST_LONG~q\);

-- Location: FF_X105_Y39_N25
\alarm_0|EN_ADJUST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|EN_ADJUST~feeder_combout\,
	clrn => \SW0~input_o\,
	ena => \state_0|A_ADJUST_LONG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|EN_ADJUST~q\);

-- Location: LCCOMB_X106_Y39_N20
\top_sw_0|sw_input_mode|sw_cnt[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_cnt[0]~6_combout\ = \top_sw_0|sw_input_mode|sw_cnt\(0) $ (VCC)
-- \top_sw_0|sw_input_mode|sw_cnt[0]~7\ = CARRY(\top_sw_0|sw_input_mode|sw_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_mode|sw_cnt\(0),
	datad => VCC,
	combout => \top_sw_0|sw_input_mode|sw_cnt[0]~6_combout\,
	cout => \top_sw_0|sw_input_mode|sw_cnt[0]~7\);

-- Location: IOIBUF_X115_Y42_N15
\SW2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2,
	o => \SW2~input_o\);

-- Location: LCCOMB_X106_Y39_N10
\top_sw_0|sw_input_mode|sw_in_1d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_in_1d~0_combout\ = !\SW2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW2~input_o\,
	combout => \top_sw_0|sw_input_mode|sw_in_1d~0_combout\);

-- Location: FF_X106_Y39_N11
\top_sw_0|sw_input_mode|sw_in_1d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_in_1d~0_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_in_1d~q\);

-- Location: LCCOMB_X106_Y39_N4
\top_sw_0|sw_input_mode|process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|process_2~0_combout\ = (\top_sw_0|sw_input_mode|sw_cnt\(1) & (\top_sw_0|sw_input_mode|sw_cnt\(4) & (\top_sw_0|sw_input_mode|sw_cnt\(3) & \top_sw_0|sw_input_mode|sw_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_mode|sw_cnt\(1),
	datab => \top_sw_0|sw_input_mode|sw_cnt\(4),
	datac => \top_sw_0|sw_input_mode|sw_cnt\(3),
	datad => \top_sw_0|sw_input_mode|sw_cnt\(2),
	combout => \top_sw_0|sw_input_mode|process_2~0_combout\);

-- Location: LCCOMB_X106_Y39_N8
\top_sw_0|sw_input_mode|sw_cnt[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_cnt[0]~8_combout\ = ((\top_sw_0|sw_input_mode|sw_cnt\(5) & (\top_sw_0|sw_input_mode|sw_cnt\(0) & \top_sw_0|sw_input_mode|process_2~0_combout\))) # (!\top_sw_0|sw_input_mode|sw_in_1d~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_mode|sw_cnt\(5),
	datab => \top_sw_0|sw_input_mode|sw_in_1d~q\,
	datac => \top_sw_0|sw_input_mode|sw_cnt\(0),
	datad => \top_sw_0|sw_input_mode|process_2~0_combout\,
	combout => \top_sw_0|sw_input_mode|sw_cnt[0]~8_combout\);

-- Location: FF_X106_Y39_N21
\top_sw_0|sw_input_mode|sw_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_cnt[0]~6_combout\,
	asdata => \top_sw_0|sw_input_mode|sw_in_1d~q\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|sw_cnt[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_cnt\(0));

-- Location: LCCOMB_X106_Y39_N22
\top_sw_0|sw_input_mode|sw_cnt[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_cnt[1]~9_combout\ = (\top_sw_0|sw_input_mode|sw_cnt\(1) & (!\top_sw_0|sw_input_mode|sw_cnt[0]~7\)) # (!\top_sw_0|sw_input_mode|sw_cnt\(1) & ((\top_sw_0|sw_input_mode|sw_cnt[0]~7\) # (GND)))
-- \top_sw_0|sw_input_mode|sw_cnt[1]~10\ = CARRY((!\top_sw_0|sw_input_mode|sw_cnt[0]~7\) # (!\top_sw_0|sw_input_mode|sw_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_mode|sw_cnt\(1),
	datad => VCC,
	cin => \top_sw_0|sw_input_mode|sw_cnt[0]~7\,
	combout => \top_sw_0|sw_input_mode|sw_cnt[1]~9_combout\,
	cout => \top_sw_0|sw_input_mode|sw_cnt[1]~10\);

-- Location: FF_X106_Y39_N23
\top_sw_0|sw_input_mode|sw_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_cnt[1]~9_combout\,
	asdata => \top_sw_0|sw_input_mode|sw_in_1d~q\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|sw_cnt[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_cnt\(1));

-- Location: LCCOMB_X106_Y39_N24
\top_sw_0|sw_input_mode|sw_cnt[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_cnt[2]~11_combout\ = (\top_sw_0|sw_input_mode|sw_cnt\(2) & (\top_sw_0|sw_input_mode|sw_cnt[1]~10\ $ (GND))) # (!\top_sw_0|sw_input_mode|sw_cnt\(2) & (!\top_sw_0|sw_input_mode|sw_cnt[1]~10\ & VCC))
-- \top_sw_0|sw_input_mode|sw_cnt[2]~12\ = CARRY((\top_sw_0|sw_input_mode|sw_cnt\(2) & !\top_sw_0|sw_input_mode|sw_cnt[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_mode|sw_cnt\(2),
	datad => VCC,
	cin => \top_sw_0|sw_input_mode|sw_cnt[1]~10\,
	combout => \top_sw_0|sw_input_mode|sw_cnt[2]~11_combout\,
	cout => \top_sw_0|sw_input_mode|sw_cnt[2]~12\);

-- Location: FF_X106_Y39_N25
\top_sw_0|sw_input_mode|sw_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_cnt[2]~11_combout\,
	asdata => \top_sw_0|sw_input_mode|sw_in_1d~q\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|sw_cnt[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_cnt\(2));

-- Location: LCCOMB_X106_Y39_N26
\top_sw_0|sw_input_mode|sw_cnt[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_cnt[3]~13_combout\ = (\top_sw_0|sw_input_mode|sw_cnt\(3) & (!\top_sw_0|sw_input_mode|sw_cnt[2]~12\)) # (!\top_sw_0|sw_input_mode|sw_cnt\(3) & ((\top_sw_0|sw_input_mode|sw_cnt[2]~12\) # (GND)))
-- \top_sw_0|sw_input_mode|sw_cnt[3]~14\ = CARRY((!\top_sw_0|sw_input_mode|sw_cnt[2]~12\) # (!\top_sw_0|sw_input_mode|sw_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_mode|sw_cnt\(3),
	datad => VCC,
	cin => \top_sw_0|sw_input_mode|sw_cnt[2]~12\,
	combout => \top_sw_0|sw_input_mode|sw_cnt[3]~13_combout\,
	cout => \top_sw_0|sw_input_mode|sw_cnt[3]~14\);

-- Location: FF_X106_Y39_N27
\top_sw_0|sw_input_mode|sw_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_cnt[3]~13_combout\,
	asdata => \top_sw_0|sw_input_mode|sw_in_1d~q\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|sw_cnt[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_cnt\(3));

-- Location: LCCOMB_X106_Y39_N28
\top_sw_0|sw_input_mode|sw_cnt[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_cnt[4]~15_combout\ = (\top_sw_0|sw_input_mode|sw_cnt\(4) & (\top_sw_0|sw_input_mode|sw_cnt[3]~14\ $ (GND))) # (!\top_sw_0|sw_input_mode|sw_cnt\(4) & (!\top_sw_0|sw_input_mode|sw_cnt[3]~14\ & VCC))
-- \top_sw_0|sw_input_mode|sw_cnt[4]~16\ = CARRY((\top_sw_0|sw_input_mode|sw_cnt\(4) & !\top_sw_0|sw_input_mode|sw_cnt[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_mode|sw_cnt\(4),
	datad => VCC,
	cin => \top_sw_0|sw_input_mode|sw_cnt[3]~14\,
	combout => \top_sw_0|sw_input_mode|sw_cnt[4]~15_combout\,
	cout => \top_sw_0|sw_input_mode|sw_cnt[4]~16\);

-- Location: FF_X106_Y39_N29
\top_sw_0|sw_input_mode|sw_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_cnt[4]~15_combout\,
	asdata => \top_sw_0|sw_input_mode|sw_in_1d~q\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|sw_cnt[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_cnt\(4));

-- Location: LCCOMB_X106_Y39_N30
\top_sw_0|sw_input_mode|sw_cnt[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_cnt[5]~17_combout\ = \top_sw_0|sw_input_mode|sw_cnt\(5) $ (\top_sw_0|sw_input_mode|sw_cnt[4]~16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_mode|sw_cnt\(5),
	cin => \top_sw_0|sw_input_mode|sw_cnt[4]~16\,
	combout => \top_sw_0|sw_input_mode|sw_cnt[5]~17_combout\);

-- Location: FF_X106_Y39_N31
\top_sw_0|sw_input_mode|sw_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_cnt[5]~17_combout\,
	asdata => \top_sw_0|sw_input_mode|sw_in_1d~q\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|sw_cnt[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_cnt\(5));

-- Location: LCCOMB_X105_Y41_N14
\top_sw_0|sw_input_mode|sw_10ms_cnt[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[0]~19_combout\ = !\top_sw_0|sw_input_mode|sw_10ms_cnt\(0)
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[0]~20\ = CARRY(!\top_sw_0|sw_input_mode|sw_10ms_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_mode|sw_10ms_cnt\(0),
	combout => \top_sw_0|sw_input_mode|sw_10ms_cnt[0]~19_combout\,
	cout => \top_sw_0|sw_input_mode|sw_10ms_cnt[0]~20\);

-- Location: LCCOMB_X105_Y40_N30
\top_sw_0|sw_input_mode|process_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|process_2~1_combout\ = (\top_sw_0|sw_input_mode|process_2~0_combout\ & (!\top_sw_0|sw_input_mode|sw_cnt\(0) & (\top_sw_0|sw_input_mode|sw_cnt\(5) & \top_sw_0|sw_input_mode|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_mode|process_2~0_combout\,
	datab => \top_sw_0|sw_input_mode|sw_cnt\(0),
	datac => \top_sw_0|sw_input_mode|sw_cnt\(5),
	datad => \top_sw_0|sw_input_mode|Equal2~5_combout\,
	combout => \top_sw_0|sw_input_mode|process_2~1_combout\);

-- Location: FF_X105_Y41_N15
\top_sw_0|sw_input_mode|sw_10ms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_10ms_cnt[0]~19_combout\,
	asdata => \top_sw_0|sw_input_mode|process_2~1_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_10ms_cnt\(0));

-- Location: LCCOMB_X105_Y41_N16
\top_sw_0|sw_input_mode|sw_10ms_cnt[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[1]~21_combout\ = (\top_sw_0|sw_input_mode|sw_10ms_cnt\(1) & ((GND) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt[0]~20\))) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(1) & (\top_sw_0|sw_input_mode|sw_10ms_cnt[0]~20\ $ (GND)))
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[1]~22\ = CARRY((\top_sw_0|sw_input_mode|sw_10ms_cnt\(1)) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt[0]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_mode|sw_10ms_cnt\(1),
	datad => VCC,
	cin => \top_sw_0|sw_input_mode|sw_10ms_cnt[0]~20\,
	combout => \top_sw_0|sw_input_mode|sw_10ms_cnt[1]~21_combout\,
	cout => \top_sw_0|sw_input_mode|sw_10ms_cnt[1]~22\);

-- Location: FF_X105_Y41_N17
\top_sw_0|sw_input_mode|sw_10ms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_10ms_cnt[1]~21_combout\,
	asdata => \top_sw_0|sw_input_mode|process_2~1_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_10ms_cnt\(1));

-- Location: LCCOMB_X105_Y41_N18
\top_sw_0|sw_input_mode|sw_10ms_cnt[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[2]~23_combout\ = (\top_sw_0|sw_input_mode|sw_10ms_cnt\(2) & (\top_sw_0|sw_input_mode|sw_10ms_cnt[1]~22\ & VCC)) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(2) & (!\top_sw_0|sw_input_mode|sw_10ms_cnt[1]~22\))
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[2]~24\ = CARRY((!\top_sw_0|sw_input_mode|sw_10ms_cnt\(2) & !\top_sw_0|sw_input_mode|sw_10ms_cnt[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_mode|sw_10ms_cnt\(2),
	datad => VCC,
	cin => \top_sw_0|sw_input_mode|sw_10ms_cnt[1]~22\,
	combout => \top_sw_0|sw_input_mode|sw_10ms_cnt[2]~23_combout\,
	cout => \top_sw_0|sw_input_mode|sw_10ms_cnt[2]~24\);

-- Location: FF_X105_Y41_N19
\top_sw_0|sw_input_mode|sw_10ms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_10ms_cnt[2]~23_combout\,
	asdata => \top_sw_0|sw_input_mode|process_2~1_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_10ms_cnt\(2));

-- Location: LCCOMB_X105_Y41_N20
\top_sw_0|sw_input_mode|sw_10ms_cnt[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[3]~25_combout\ = (\top_sw_0|sw_input_mode|sw_10ms_cnt\(3) & ((GND) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt[2]~24\))) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(3) & (\top_sw_0|sw_input_mode|sw_10ms_cnt[2]~24\ $ (GND)))
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[3]~26\ = CARRY((\top_sw_0|sw_input_mode|sw_10ms_cnt\(3)) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt[2]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_mode|sw_10ms_cnt\(3),
	datad => VCC,
	cin => \top_sw_0|sw_input_mode|sw_10ms_cnt[2]~24\,
	combout => \top_sw_0|sw_input_mode|sw_10ms_cnt[3]~25_combout\,
	cout => \top_sw_0|sw_input_mode|sw_10ms_cnt[3]~26\);

-- Location: FF_X105_Y41_N21
\top_sw_0|sw_input_mode|sw_10ms_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_10ms_cnt[3]~25_combout\,
	asdata => \top_sw_0|sw_input_mode|process_2~1_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_10ms_cnt\(3));

-- Location: LCCOMB_X105_Y41_N22
\top_sw_0|sw_input_mode|sw_10ms_cnt[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[4]~27_combout\ = (\top_sw_0|sw_input_mode|sw_10ms_cnt\(4) & (\top_sw_0|sw_input_mode|sw_10ms_cnt[3]~26\ & VCC)) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(4) & (!\top_sw_0|sw_input_mode|sw_10ms_cnt[3]~26\))
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[4]~28\ = CARRY((!\top_sw_0|sw_input_mode|sw_10ms_cnt\(4) & !\top_sw_0|sw_input_mode|sw_10ms_cnt[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_mode|sw_10ms_cnt\(4),
	datad => VCC,
	cin => \top_sw_0|sw_input_mode|sw_10ms_cnt[3]~26\,
	combout => \top_sw_0|sw_input_mode|sw_10ms_cnt[4]~27_combout\,
	cout => \top_sw_0|sw_input_mode|sw_10ms_cnt[4]~28\);

-- Location: FF_X105_Y41_N23
\top_sw_0|sw_input_mode|sw_10ms_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_10ms_cnt[4]~27_combout\,
	asdata => \top_sw_0|sw_input_mode|process_2~1_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_10ms_cnt\(4));

-- Location: LCCOMB_X105_Y41_N24
\top_sw_0|sw_input_mode|sw_10ms_cnt[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[5]~29_combout\ = (\top_sw_0|sw_input_mode|sw_10ms_cnt\(5) & (!\top_sw_0|sw_input_mode|sw_10ms_cnt[4]~28\)) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(5) & ((\top_sw_0|sw_input_mode|sw_10ms_cnt[4]~28\) # (GND)))
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[5]~30\ = CARRY((!\top_sw_0|sw_input_mode|sw_10ms_cnt[4]~28\) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_mode|sw_10ms_cnt\(5),
	datad => VCC,
	cin => \top_sw_0|sw_input_mode|sw_10ms_cnt[4]~28\,
	combout => \top_sw_0|sw_input_mode|sw_10ms_cnt[5]~29_combout\,
	cout => \top_sw_0|sw_input_mode|sw_10ms_cnt[5]~30\);

-- Location: FF_X105_Y41_N25
\top_sw_0|sw_input_mode|sw_10ms_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_10ms_cnt[5]~29_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_10ms_cnt\(5));

-- Location: LCCOMB_X105_Y41_N26
\top_sw_0|sw_input_mode|sw_10ms_cnt[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[6]~31_combout\ = (\top_sw_0|sw_input_mode|sw_10ms_cnt\(6) & (\top_sw_0|sw_input_mode|sw_10ms_cnt[5]~30\ $ (GND))) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(6) & (!\top_sw_0|sw_input_mode|sw_10ms_cnt[5]~30\ & VCC))
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[6]~32\ = CARRY((\top_sw_0|sw_input_mode|sw_10ms_cnt\(6) & !\top_sw_0|sw_input_mode|sw_10ms_cnt[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_mode|sw_10ms_cnt\(6),
	datad => VCC,
	cin => \top_sw_0|sw_input_mode|sw_10ms_cnt[5]~30\,
	combout => \top_sw_0|sw_input_mode|sw_10ms_cnt[6]~31_combout\,
	cout => \top_sw_0|sw_input_mode|sw_10ms_cnt[6]~32\);

-- Location: FF_X105_Y41_N27
\top_sw_0|sw_input_mode|sw_10ms_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_10ms_cnt[6]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_10ms_cnt\(6));

-- Location: LCCOMB_X105_Y41_N28
\top_sw_0|sw_input_mode|sw_10ms_cnt[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[7]~33_combout\ = (\top_sw_0|sw_input_mode|sw_10ms_cnt\(7) & (!\top_sw_0|sw_input_mode|sw_10ms_cnt[6]~32\)) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(7) & ((\top_sw_0|sw_input_mode|sw_10ms_cnt[6]~32\) # (GND)))
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[7]~34\ = CARRY((!\top_sw_0|sw_input_mode|sw_10ms_cnt[6]~32\) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_mode|sw_10ms_cnt\(7),
	datad => VCC,
	cin => \top_sw_0|sw_input_mode|sw_10ms_cnt[6]~32\,
	combout => \top_sw_0|sw_input_mode|sw_10ms_cnt[7]~33_combout\,
	cout => \top_sw_0|sw_input_mode|sw_10ms_cnt[7]~34\);

-- Location: FF_X105_Y41_N29
\top_sw_0|sw_input_mode|sw_10ms_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_10ms_cnt[7]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_10ms_cnt\(7));

-- Location: LCCOMB_X105_Y41_N30
\top_sw_0|sw_input_mode|sw_10ms_cnt[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[8]~35_combout\ = (\top_sw_0|sw_input_mode|sw_10ms_cnt\(8) & (\top_sw_0|sw_input_mode|sw_10ms_cnt[7]~34\ & VCC)) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(8) & (!\top_sw_0|sw_input_mode|sw_10ms_cnt[7]~34\))
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[8]~36\ = CARRY((!\top_sw_0|sw_input_mode|sw_10ms_cnt\(8) & !\top_sw_0|sw_input_mode|sw_10ms_cnt[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_mode|sw_10ms_cnt\(8),
	datad => VCC,
	cin => \top_sw_0|sw_input_mode|sw_10ms_cnt[7]~34\,
	combout => \top_sw_0|sw_input_mode|sw_10ms_cnt[8]~35_combout\,
	cout => \top_sw_0|sw_input_mode|sw_10ms_cnt[8]~36\);

-- Location: LCCOMB_X105_Y40_N24
\top_sw_0|sw_input_mode|sw_10ms_cnt[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[8]~feeder_combout\ = \top_sw_0|sw_input_mode|sw_10ms_cnt[8]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_mode|sw_10ms_cnt[8]~35_combout\,
	combout => \top_sw_0|sw_input_mode|sw_10ms_cnt[8]~feeder_combout\);

-- Location: FF_X105_Y40_N25
\top_sw_0|sw_input_mode|sw_10ms_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_10ms_cnt[8]~feeder_combout\,
	asdata => \top_sw_0|sw_input_mode|process_2~1_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_10ms_cnt\(8));

-- Location: LCCOMB_X105_Y40_N0
\top_sw_0|sw_input_mode|sw_10ms_cnt[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[9]~37_combout\ = (\top_sw_0|sw_input_mode|sw_10ms_cnt\(9) & (!\top_sw_0|sw_input_mode|sw_10ms_cnt[8]~36\)) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(9) & ((\top_sw_0|sw_input_mode|sw_10ms_cnt[8]~36\) # (GND)))
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[9]~38\ = CARRY((!\top_sw_0|sw_input_mode|sw_10ms_cnt[8]~36\) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_mode|sw_10ms_cnt\(9),
	datad => VCC,
	cin => \top_sw_0|sw_input_mode|sw_10ms_cnt[8]~36\,
	combout => \top_sw_0|sw_input_mode|sw_10ms_cnt[9]~37_combout\,
	cout => \top_sw_0|sw_input_mode|sw_10ms_cnt[9]~38\);

-- Location: FF_X105_Y40_N1
\top_sw_0|sw_input_mode|sw_10ms_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_10ms_cnt[9]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_10ms_cnt\(9));

-- Location: LCCOMB_X105_Y40_N2
\top_sw_0|sw_input_mode|sw_10ms_cnt[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[10]~39_combout\ = (\top_sw_0|sw_input_mode|sw_10ms_cnt\(10) & (\top_sw_0|sw_input_mode|sw_10ms_cnt[9]~38\ $ (GND))) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(10) & (!\top_sw_0|sw_input_mode|sw_10ms_cnt[9]~38\ & VCC))
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[10]~40\ = CARRY((\top_sw_0|sw_input_mode|sw_10ms_cnt\(10) & !\top_sw_0|sw_input_mode|sw_10ms_cnt[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_mode|sw_10ms_cnt\(10),
	datad => VCC,
	cin => \top_sw_0|sw_input_mode|sw_10ms_cnt[9]~38\,
	combout => \top_sw_0|sw_input_mode|sw_10ms_cnt[10]~39_combout\,
	cout => \top_sw_0|sw_input_mode|sw_10ms_cnt[10]~40\);

-- Location: FF_X105_Y40_N3
\top_sw_0|sw_input_mode|sw_10ms_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_10ms_cnt[10]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_10ms_cnt\(10));

-- Location: LCCOMB_X105_Y40_N4
\top_sw_0|sw_input_mode|sw_10ms_cnt[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[11]~41_combout\ = (\top_sw_0|sw_input_mode|sw_10ms_cnt\(11) & (!\top_sw_0|sw_input_mode|sw_10ms_cnt[10]~40\)) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(11) & ((\top_sw_0|sw_input_mode|sw_10ms_cnt[10]~40\) # (GND)))
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[11]~42\ = CARRY((!\top_sw_0|sw_input_mode|sw_10ms_cnt[10]~40\) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_mode|sw_10ms_cnt\(11),
	datad => VCC,
	cin => \top_sw_0|sw_input_mode|sw_10ms_cnt[10]~40\,
	combout => \top_sw_0|sw_input_mode|sw_10ms_cnt[11]~41_combout\,
	cout => \top_sw_0|sw_input_mode|sw_10ms_cnt[11]~42\);

-- Location: FF_X105_Y40_N5
\top_sw_0|sw_input_mode|sw_10ms_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_10ms_cnt[11]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_10ms_cnt\(11));

-- Location: LCCOMB_X105_Y40_N6
\top_sw_0|sw_input_mode|sw_10ms_cnt[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[12]~43_combout\ = (\top_sw_0|sw_input_mode|sw_10ms_cnt\(12) & (\top_sw_0|sw_input_mode|sw_10ms_cnt[11]~42\ $ (GND))) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(12) & (!\top_sw_0|sw_input_mode|sw_10ms_cnt[11]~42\ & VCC))
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[12]~44\ = CARRY((\top_sw_0|sw_input_mode|sw_10ms_cnt\(12) & !\top_sw_0|sw_input_mode|sw_10ms_cnt[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_mode|sw_10ms_cnt\(12),
	datad => VCC,
	cin => \top_sw_0|sw_input_mode|sw_10ms_cnt[11]~42\,
	combout => \top_sw_0|sw_input_mode|sw_10ms_cnt[12]~43_combout\,
	cout => \top_sw_0|sw_input_mode|sw_10ms_cnt[12]~44\);

-- Location: FF_X105_Y40_N7
\top_sw_0|sw_input_mode|sw_10ms_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_10ms_cnt[12]~43_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_10ms_cnt\(12));

-- Location: LCCOMB_X105_Y40_N8
\top_sw_0|sw_input_mode|sw_10ms_cnt[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[13]~45_combout\ = (\top_sw_0|sw_input_mode|sw_10ms_cnt\(13) & ((GND) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt[12]~44\))) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(13) & (\top_sw_0|sw_input_mode|sw_10ms_cnt[12]~44\ $ 
-- (GND)))
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[13]~46\ = CARRY((\top_sw_0|sw_input_mode|sw_10ms_cnt\(13)) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt[12]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_mode|sw_10ms_cnt\(13),
	datad => VCC,
	cin => \top_sw_0|sw_input_mode|sw_10ms_cnt[12]~44\,
	combout => \top_sw_0|sw_input_mode|sw_10ms_cnt[13]~45_combout\,
	cout => \top_sw_0|sw_input_mode|sw_10ms_cnt[13]~46\);

-- Location: FF_X105_Y40_N9
\top_sw_0|sw_input_mode|sw_10ms_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_10ms_cnt[13]~45_combout\,
	asdata => \top_sw_0|sw_input_mode|process_2~1_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_10ms_cnt\(13));

-- Location: LCCOMB_X105_Y40_N10
\top_sw_0|sw_input_mode|sw_10ms_cnt[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[14]~47_combout\ = (\top_sw_0|sw_input_mode|sw_10ms_cnt\(14) & (\top_sw_0|sw_input_mode|sw_10ms_cnt[13]~46\ $ (GND))) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(14) & (!\top_sw_0|sw_input_mode|sw_10ms_cnt[13]~46\ & VCC))
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[14]~48\ = CARRY((\top_sw_0|sw_input_mode|sw_10ms_cnt\(14) & !\top_sw_0|sw_input_mode|sw_10ms_cnt[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_mode|sw_10ms_cnt\(14),
	datad => VCC,
	cin => \top_sw_0|sw_input_mode|sw_10ms_cnt[13]~46\,
	combout => \top_sw_0|sw_input_mode|sw_10ms_cnt[14]~47_combout\,
	cout => \top_sw_0|sw_input_mode|sw_10ms_cnt[14]~48\);

-- Location: FF_X105_Y40_N11
\top_sw_0|sw_input_mode|sw_10ms_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_10ms_cnt[14]~47_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_10ms_cnt\(14));

-- Location: LCCOMB_X105_Y40_N12
\top_sw_0|sw_input_mode|sw_10ms_cnt[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[15]~49_combout\ = (\top_sw_0|sw_input_mode|sw_10ms_cnt\(15) & ((GND) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt[14]~48\))) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(15) & (\top_sw_0|sw_input_mode|sw_10ms_cnt[14]~48\ $ 
-- (GND)))
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[15]~50\ = CARRY((\top_sw_0|sw_input_mode|sw_10ms_cnt\(15)) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt[14]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_mode|sw_10ms_cnt\(15),
	datad => VCC,
	cin => \top_sw_0|sw_input_mode|sw_10ms_cnt[14]~48\,
	combout => \top_sw_0|sw_input_mode|sw_10ms_cnt[15]~49_combout\,
	cout => \top_sw_0|sw_input_mode|sw_10ms_cnt[15]~50\);

-- Location: FF_X105_Y40_N13
\top_sw_0|sw_input_mode|sw_10ms_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_10ms_cnt[15]~49_combout\,
	asdata => \top_sw_0|sw_input_mode|process_2~1_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_10ms_cnt\(15));

-- Location: LCCOMB_X105_Y40_N14
\top_sw_0|sw_input_mode|sw_10ms_cnt[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[16]~51_combout\ = (\top_sw_0|sw_input_mode|sw_10ms_cnt\(16) & (\top_sw_0|sw_input_mode|sw_10ms_cnt[15]~50\ & VCC)) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(16) & (!\top_sw_0|sw_input_mode|sw_10ms_cnt[15]~50\))
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[16]~52\ = CARRY((!\top_sw_0|sw_input_mode|sw_10ms_cnt\(16) & !\top_sw_0|sw_input_mode|sw_10ms_cnt[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_mode|sw_10ms_cnt\(16),
	datad => VCC,
	cin => \top_sw_0|sw_input_mode|sw_10ms_cnt[15]~50\,
	combout => \top_sw_0|sw_input_mode|sw_10ms_cnt[16]~51_combout\,
	cout => \top_sw_0|sw_input_mode|sw_10ms_cnt[16]~52\);

-- Location: FF_X105_Y40_N15
\top_sw_0|sw_input_mode|sw_10ms_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_10ms_cnt[16]~51_combout\,
	asdata => \top_sw_0|sw_input_mode|process_2~1_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_10ms_cnt\(16));

-- Location: LCCOMB_X105_Y40_N16
\top_sw_0|sw_input_mode|sw_10ms_cnt[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[17]~53_combout\ = (\top_sw_0|sw_input_mode|sw_10ms_cnt\(17) & ((GND) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt[16]~52\))) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(17) & (\top_sw_0|sw_input_mode|sw_10ms_cnt[16]~52\ $ 
-- (GND)))
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[17]~54\ = CARRY((\top_sw_0|sw_input_mode|sw_10ms_cnt\(17)) # (!\top_sw_0|sw_input_mode|sw_10ms_cnt[16]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_mode|sw_10ms_cnt\(17),
	datad => VCC,
	cin => \top_sw_0|sw_input_mode|sw_10ms_cnt[16]~52\,
	combout => \top_sw_0|sw_input_mode|sw_10ms_cnt[17]~53_combout\,
	cout => \top_sw_0|sw_input_mode|sw_10ms_cnt[17]~54\);

-- Location: FF_X105_Y40_N17
\top_sw_0|sw_input_mode|sw_10ms_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_10ms_cnt[17]~53_combout\,
	asdata => \top_sw_0|sw_input_mode|process_2~1_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_10ms_cnt\(17));

-- Location: LCCOMB_X105_Y40_N26
\top_sw_0|sw_input_mode|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|Equal2~2_combout\ = (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(8) & (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(9) & (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(11) & !\top_sw_0|sw_input_mode|sw_10ms_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_mode|sw_10ms_cnt\(8),
	datab => \top_sw_0|sw_input_mode|sw_10ms_cnt\(9),
	datac => \top_sw_0|sw_input_mode|sw_10ms_cnt\(11),
	datad => \top_sw_0|sw_input_mode|sw_10ms_cnt\(10),
	combout => \top_sw_0|sw_input_mode|Equal2~2_combout\);

-- Location: LCCOMB_X105_Y40_N28
\top_sw_0|sw_input_mode|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|Equal2~3_combout\ = (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(15) & (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(13) & (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(14) & !\top_sw_0|sw_input_mode|sw_10ms_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_mode|sw_10ms_cnt\(15),
	datab => \top_sw_0|sw_input_mode|sw_10ms_cnt\(13),
	datac => \top_sw_0|sw_input_mode|sw_10ms_cnt\(14),
	datad => \top_sw_0|sw_input_mode|sw_10ms_cnt\(12),
	combout => \top_sw_0|sw_input_mode|Equal2~3_combout\);

-- Location: LCCOMB_X105_Y41_N10
\top_sw_0|sw_input_mode|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|Equal2~1_combout\ = (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(4) & (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(5) & (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(6) & !\top_sw_0|sw_input_mode|sw_10ms_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_mode|sw_10ms_cnt\(4),
	datab => \top_sw_0|sw_input_mode|sw_10ms_cnt\(5),
	datac => \top_sw_0|sw_input_mode|sw_10ms_cnt\(6),
	datad => \top_sw_0|sw_input_mode|sw_10ms_cnt\(7),
	combout => \top_sw_0|sw_input_mode|Equal2~1_combout\);

-- Location: LCCOMB_X105_Y41_N8
\top_sw_0|sw_input_mode|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|Equal2~0_combout\ = (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(3) & (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(2) & (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(0) & !\top_sw_0|sw_input_mode|sw_10ms_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_mode|sw_10ms_cnt\(3),
	datab => \top_sw_0|sw_input_mode|sw_10ms_cnt\(2),
	datac => \top_sw_0|sw_input_mode|sw_10ms_cnt\(0),
	datad => \top_sw_0|sw_input_mode|sw_10ms_cnt\(1),
	combout => \top_sw_0|sw_input_mode|Equal2~0_combout\);

-- Location: LCCOMB_X105_Y40_N22
\top_sw_0|sw_input_mode|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|Equal2~4_combout\ = (\top_sw_0|sw_input_mode|Equal2~2_combout\ & (\top_sw_0|sw_input_mode|Equal2~3_combout\ & (\top_sw_0|sw_input_mode|Equal2~1_combout\ & \top_sw_0|sw_input_mode|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_mode|Equal2~2_combout\,
	datab => \top_sw_0|sw_input_mode|Equal2~3_combout\,
	datac => \top_sw_0|sw_input_mode|Equal2~1_combout\,
	datad => \top_sw_0|sw_input_mode|Equal2~0_combout\,
	combout => \top_sw_0|sw_input_mode|Equal2~4_combout\);

-- Location: LCCOMB_X105_Y40_N18
\top_sw_0|sw_input_mode|sw_10ms_cnt[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|sw_10ms_cnt[18]~55_combout\ = \top_sw_0|sw_input_mode|sw_10ms_cnt[17]~54\ $ (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \top_sw_0|sw_input_mode|sw_10ms_cnt\(18),
	cin => \top_sw_0|sw_input_mode|sw_10ms_cnt[17]~54\,
	combout => \top_sw_0|sw_input_mode|sw_10ms_cnt[18]~55_combout\);

-- Location: FF_X105_Y40_N19
\top_sw_0|sw_input_mode|sw_10ms_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|sw_10ms_cnt[18]~55_combout\,
	asdata => \top_sw_0|sw_input_mode|process_2~1_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_mode|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|sw_10ms_cnt\(18));

-- Location: LCCOMB_X105_Y40_N20
\top_sw_0|sw_input_mode|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|Equal2~5_combout\ = (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(17) & (!\top_sw_0|sw_input_mode|sw_10ms_cnt\(16) & (\top_sw_0|sw_input_mode|Equal2~4_combout\ & !\top_sw_0|sw_input_mode|sw_10ms_cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_mode|sw_10ms_cnt\(17),
	datab => \top_sw_0|sw_input_mode|sw_10ms_cnt\(16),
	datac => \top_sw_0|sw_input_mode|Equal2~4_combout\,
	datad => \top_sw_0|sw_input_mode|sw_10ms_cnt\(18),
	combout => \top_sw_0|sw_input_mode|Equal2~5_combout\);

-- Location: LCCOMB_X106_Y39_N16
\top_sw_0|sw_input_mode|SW_CLR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_mode|SW_CLR~0_combout\ = ((\top_sw_0|sw_input_mode|sw_cnt\(5) & (\top_sw_0|sw_input_mode|process_2~0_combout\ & !\top_sw_0|sw_input_mode|sw_cnt\(0)))) # (!\top_sw_0|sw_input_mode|Equal2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_mode|sw_cnt\(5),
	datab => \top_sw_0|sw_input_mode|process_2~0_combout\,
	datac => \top_sw_0|sw_input_mode|sw_cnt\(0),
	datad => \top_sw_0|sw_input_mode|Equal2~5_combout\,
	combout => \top_sw_0|sw_input_mode|SW_CLR~0_combout\);

-- Location: FF_X106_Y39_N17
\top_sw_0|sw_input_mode|SW_CLR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_mode|SW_CLR~0_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_mode|SW_CLR~q\);

-- Location: LCCOMB_X106_Y39_N12
\state_0|C_MODE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_0|C_MODE~0_combout\ = (\top_sw_0|sw_input_mode|SW_CLR~q\ & ((\alarm_0|EN_ADJUST~q\) # (\clock_0|C_EN_ADJUST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alarm_0|EN_ADJUST~q\,
	datac => \clock_0|C_EN_ADJUST~q\,
	datad => \top_sw_0|sw_input_mode|SW_CLR~q\,
	combout => \state_0|C_MODE~0_combout\);

-- Location: LCCOMB_X107_Y39_N26
\state_0|C_MODE~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_0|C_MODE~feeder_combout\ = \state_0|C_MODE~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_0|C_MODE~0_combout\,
	combout => \state_0|C_MODE~feeder_combout\);

-- Location: FF_X107_Y39_N27
\state_0|C_MODE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \state_0|C_MODE~feeder_combout\,
	clrn => \SW0~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_0|C_MODE~q\);

-- Location: FF_X111_Y40_N3
\state_0|C_ADJUST_LONG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	asdata => \top_sw_0|sw_input_adj_long_0|SW_CLR~q\,
	clrn => \SW0~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_0|C_ADJUST_LONG~q\);

-- Location: LCCOMB_X111_Y40_N28
\clock_0|state[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|state[1]~0_combout\ = (!\state_0|C_ADJUST_LONG~q\ & (\clock_0|state\(1) $ (((\state_0|C_MODE~q\ & \clock_0|state\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_0|C_MODE~q\,
	datab => \clock_0|state\(0),
	datac => \clock_0|state\(1),
	datad => \state_0|C_ADJUST_LONG~q\,
	combout => \clock_0|state[1]~0_combout\);

-- Location: FF_X111_Y40_N29
\clock_0|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|state[1]~0_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|state\(1));

-- Location: LCCOMB_X111_Y40_N14
\clock_0|state[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|state[0]~1_combout\ = (\state_0|C_ADJUST_LONG~q\ & (((!\clock_0|state\(1) & !\clock_0|state\(0))))) # (!\state_0|C_ADJUST_LONG~q\ & ((\state_0|C_MODE~q\ & (\clock_0|state\(1))) # (!\state_0|C_MODE~q\ & ((\clock_0|state\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_0|C_MODE~q\,
	datab => \clock_0|state\(1),
	datac => \clock_0|state\(0),
	datad => \state_0|C_ADJUST_LONG~q\,
	combout => \clock_0|state[0]~1_combout\);

-- Location: FF_X111_Y40_N15
\clock_0|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|state[0]~1_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|state\(0));

-- Location: LCCOMB_X111_Y39_N16
\clock_0|C_EN_ADJUST~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|C_EN_ADJUST~0_combout\ = (\state_0|C_ADJUST_LONG~q\ & (!\clock_0|state\(0) & ((!\clock_0|state\(1))))) # (!\state_0|C_ADJUST_LONG~q\ & (((\clock_0|C_EN_ADJUST~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|state\(0),
	datab => \state_0|C_ADJUST_LONG~q\,
	datac => \clock_0|C_EN_ADJUST~q\,
	datad => \clock_0|state\(1),
	combout => \clock_0|C_EN_ADJUST~0_combout\);

-- Location: FF_X111_Y39_N17
\clock_0|C_EN_ADJUST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|C_EN_ADJUST~0_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|C_EN_ADJUST~q\);

-- Location: LCCOMB_X106_Y39_N6
\state_0|state[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_0|state[1]~1_combout\ = (!\alarm_0|EN_ADJUST~q\ & (!\clock_0|C_EN_ADJUST~q\ & \top_sw_0|sw_input_mode|SW_CLR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alarm_0|EN_ADJUST~q\,
	datac => \clock_0|C_EN_ADJUST~q\,
	datad => \top_sw_0|sw_input_mode|SW_CLR~q\,
	combout => \state_0|state[1]~1_combout\);

-- Location: FF_X107_Y39_N13
\state_0|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \state_0|state~0_combout\,
	clrn => \SW0~input_o\,
	ena => \state_0|state[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_0|state\(1));

-- Location: LCCOMB_X107_Y39_N0
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\state_0|state\(0) & !\state_0|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_0|state\(0),
	datad => \state_0|state\(1),
	combout => \Equal0~0_combout\);

-- Location: FF_X107_Y39_N31
\state_0|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	asdata => \Equal0~0_combout\,
	clrn => \SW0~input_o\,
	sload => VCC,
	ena => \state_0|state[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_0|state\(0));

-- Location: LCCOMB_X110_Y39_N4
\stopwatch_top_0|CNT_0|tmp_cnt_p01s[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_p01s[0]~3_combout\ = !\stopwatch_top_0|CNT_0|tmp_cnt_p01s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(0),
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_p01s[0]~3_combout\);

-- Location: LCCOMB_X109_Y39_N28
\FND_mux_0|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux23~1_combout\ = (\state_0|state\(1) & !\state_0|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_0|state\(1),
	datad => \state_0|state\(0),
	combout => \FND_mux_0|Mux23~1_combout\);

-- Location: FF_X109_Y39_N7
\state_0|S_ADJUST_LONG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	asdata => \top_sw_0|sw_input_adj_long_0|SW_CLR~q\,
	clrn => \SW0~input_o\,
	sload => VCC,
	ena => \FND_mux_0|Mux23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_0|S_ADJUST_LONG~q\);

-- Location: LCCOMB_X109_Y39_N6
\stopwatch_top_0|rst_ad\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|rst_ad~combout\ = (\state_0|S_ADJUST_LONG~q\) # (!\SW0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datac => \state_0|S_ADJUST_LONG~q\,
	combout => \stopwatch_top_0|rst_ad~combout\);

-- Location: LCCOMB_X109_Y41_N20
\top_sw_0|sw_input_up|sw_cnt[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_cnt[0]~6_combout\ = \top_sw_0|sw_input_up|sw_cnt\(0) $ (VCC)
-- \top_sw_0|sw_input_up|sw_cnt[0]~7\ = CARRY(\top_sw_0|sw_input_up|sw_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up|sw_cnt\(0),
	datad => VCC,
	combout => \top_sw_0|sw_input_up|sw_cnt[0]~6_combout\,
	cout => \top_sw_0|sw_input_up|sw_cnt[0]~7\);

-- Location: IOIBUF_X115_Y53_N15
\SW1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1,
	o => \SW1~input_o\);

-- Location: LCCOMB_X109_Y41_N14
\top_sw_0|sw_input_up|sw_in_1d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_in_1d~0_combout\ = !\SW1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW1~input_o\,
	combout => \top_sw_0|sw_input_up|sw_in_1d~0_combout\);

-- Location: FF_X109_Y41_N15
\top_sw_0|sw_input_up|sw_in_1d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_in_1d~0_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_in_1d~q\);

-- Location: LCCOMB_X109_Y41_N4
\top_sw_0|sw_input_up|process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|process_2~0_combout\ = (\top_sw_0|sw_input_up|sw_cnt\(3) & (\top_sw_0|sw_input_up|sw_cnt\(4) & (\top_sw_0|sw_input_up|sw_cnt\(1) & \top_sw_0|sw_input_up|sw_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up|sw_cnt\(3),
	datab => \top_sw_0|sw_input_up|sw_cnt\(4),
	datac => \top_sw_0|sw_input_up|sw_cnt\(1),
	datad => \top_sw_0|sw_input_up|sw_cnt\(2),
	combout => \top_sw_0|sw_input_up|process_2~0_combout\);

-- Location: LCCOMB_X109_Y41_N16
\top_sw_0|sw_input_up|sw_cnt[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_cnt[0]~8_combout\ = ((\top_sw_0|sw_input_up|sw_cnt\(5) & (\top_sw_0|sw_input_up|process_2~0_combout\ & \top_sw_0|sw_input_up|sw_cnt\(0)))) # (!\top_sw_0|sw_input_up|sw_in_1d~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up|sw_cnt\(5),
	datab => \top_sw_0|sw_input_up|sw_in_1d~q\,
	datac => \top_sw_0|sw_input_up|process_2~0_combout\,
	datad => \top_sw_0|sw_input_up|sw_cnt\(0),
	combout => \top_sw_0|sw_input_up|sw_cnt[0]~8_combout\);

-- Location: FF_X109_Y41_N21
\top_sw_0|sw_input_up|sw_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_cnt[0]~6_combout\,
	asdata => \top_sw_0|sw_input_up|sw_in_1d~q\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|sw_cnt[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_cnt\(0));

-- Location: LCCOMB_X109_Y41_N22
\top_sw_0|sw_input_up|sw_cnt[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_cnt[1]~9_combout\ = (\top_sw_0|sw_input_up|sw_cnt\(1) & (!\top_sw_0|sw_input_up|sw_cnt[0]~7\)) # (!\top_sw_0|sw_input_up|sw_cnt\(1) & ((\top_sw_0|sw_input_up|sw_cnt[0]~7\) # (GND)))
-- \top_sw_0|sw_input_up|sw_cnt[1]~10\ = CARRY((!\top_sw_0|sw_input_up|sw_cnt[0]~7\) # (!\top_sw_0|sw_input_up|sw_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up|sw_cnt\(1),
	datad => VCC,
	cin => \top_sw_0|sw_input_up|sw_cnt[0]~7\,
	combout => \top_sw_0|sw_input_up|sw_cnt[1]~9_combout\,
	cout => \top_sw_0|sw_input_up|sw_cnt[1]~10\);

-- Location: FF_X109_Y41_N23
\top_sw_0|sw_input_up|sw_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_cnt[1]~9_combout\,
	asdata => \top_sw_0|sw_input_up|sw_in_1d~q\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|sw_cnt[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_cnt\(1));

-- Location: LCCOMB_X109_Y41_N24
\top_sw_0|sw_input_up|sw_cnt[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_cnt[2]~11_combout\ = (\top_sw_0|sw_input_up|sw_cnt\(2) & (\top_sw_0|sw_input_up|sw_cnt[1]~10\ $ (GND))) # (!\top_sw_0|sw_input_up|sw_cnt\(2) & (!\top_sw_0|sw_input_up|sw_cnt[1]~10\ & VCC))
-- \top_sw_0|sw_input_up|sw_cnt[2]~12\ = CARRY((\top_sw_0|sw_input_up|sw_cnt\(2) & !\top_sw_0|sw_input_up|sw_cnt[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up|sw_cnt\(2),
	datad => VCC,
	cin => \top_sw_0|sw_input_up|sw_cnt[1]~10\,
	combout => \top_sw_0|sw_input_up|sw_cnt[2]~11_combout\,
	cout => \top_sw_0|sw_input_up|sw_cnt[2]~12\);

-- Location: FF_X109_Y41_N25
\top_sw_0|sw_input_up|sw_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_cnt[2]~11_combout\,
	asdata => \top_sw_0|sw_input_up|sw_in_1d~q\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|sw_cnt[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_cnt\(2));

-- Location: LCCOMB_X109_Y41_N26
\top_sw_0|sw_input_up|sw_cnt[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_cnt[3]~13_combout\ = (\top_sw_0|sw_input_up|sw_cnt\(3) & (!\top_sw_0|sw_input_up|sw_cnt[2]~12\)) # (!\top_sw_0|sw_input_up|sw_cnt\(3) & ((\top_sw_0|sw_input_up|sw_cnt[2]~12\) # (GND)))
-- \top_sw_0|sw_input_up|sw_cnt[3]~14\ = CARRY((!\top_sw_0|sw_input_up|sw_cnt[2]~12\) # (!\top_sw_0|sw_input_up|sw_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up|sw_cnt\(3),
	datad => VCC,
	cin => \top_sw_0|sw_input_up|sw_cnt[2]~12\,
	combout => \top_sw_0|sw_input_up|sw_cnt[3]~13_combout\,
	cout => \top_sw_0|sw_input_up|sw_cnt[3]~14\);

-- Location: FF_X109_Y41_N27
\top_sw_0|sw_input_up|sw_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_cnt[3]~13_combout\,
	asdata => \top_sw_0|sw_input_up|sw_in_1d~q\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|sw_cnt[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_cnt\(3));

-- Location: LCCOMB_X109_Y41_N28
\top_sw_0|sw_input_up|sw_cnt[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_cnt[4]~15_combout\ = (\top_sw_0|sw_input_up|sw_cnt\(4) & (\top_sw_0|sw_input_up|sw_cnt[3]~14\ $ (GND))) # (!\top_sw_0|sw_input_up|sw_cnt\(4) & (!\top_sw_0|sw_input_up|sw_cnt[3]~14\ & VCC))
-- \top_sw_0|sw_input_up|sw_cnt[4]~16\ = CARRY((\top_sw_0|sw_input_up|sw_cnt\(4) & !\top_sw_0|sw_input_up|sw_cnt[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up|sw_cnt\(4),
	datad => VCC,
	cin => \top_sw_0|sw_input_up|sw_cnt[3]~14\,
	combout => \top_sw_0|sw_input_up|sw_cnt[4]~15_combout\,
	cout => \top_sw_0|sw_input_up|sw_cnt[4]~16\);

-- Location: FF_X109_Y41_N29
\top_sw_0|sw_input_up|sw_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_cnt[4]~15_combout\,
	asdata => \top_sw_0|sw_input_up|sw_in_1d~q\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|sw_cnt[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_cnt\(4));

-- Location: LCCOMB_X109_Y41_N30
\top_sw_0|sw_input_up|sw_cnt[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_cnt[5]~17_combout\ = \top_sw_0|sw_input_up|sw_cnt\(5) $ (\top_sw_0|sw_input_up|sw_cnt[4]~16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up|sw_cnt\(5),
	cin => \top_sw_0|sw_input_up|sw_cnt[4]~16\,
	combout => \top_sw_0|sw_input_up|sw_cnt[5]~17_combout\);

-- Location: FF_X109_Y41_N31
\top_sw_0|sw_input_up|sw_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_cnt[5]~17_combout\,
	asdata => \top_sw_0|sw_input_up|sw_in_1d~q\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|sw_cnt[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_cnt\(5));

-- Location: LCCOMB_X110_Y41_N14
\top_sw_0|sw_input_up|sw_10ms_cnt[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_10ms_cnt[0]~19_combout\ = !\top_sw_0|sw_input_up|sw_10ms_cnt\(0)
-- \top_sw_0|sw_input_up|sw_10ms_cnt[0]~20\ = CARRY(!\top_sw_0|sw_input_up|sw_10ms_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up|sw_10ms_cnt\(0),
	combout => \top_sw_0|sw_input_up|sw_10ms_cnt[0]~19_combout\,
	cout => \top_sw_0|sw_input_up|sw_10ms_cnt[0]~20\);

-- Location: LCCOMB_X110_Y41_N6
\top_sw_0|sw_input_up|process_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|process_2~1_combout\ = (\top_sw_0|sw_input_up|sw_cnt\(5) & (!\top_sw_0|sw_input_up|sw_cnt\(0) & (\top_sw_0|sw_input_up|process_2~0_combout\ & \top_sw_0|sw_input_up|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up|sw_cnt\(5),
	datab => \top_sw_0|sw_input_up|sw_cnt\(0),
	datac => \top_sw_0|sw_input_up|process_2~0_combout\,
	datad => \top_sw_0|sw_input_up|Equal2~5_combout\,
	combout => \top_sw_0|sw_input_up|process_2~1_combout\);

-- Location: FF_X110_Y41_N15
\top_sw_0|sw_input_up|sw_10ms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_10ms_cnt[0]~19_combout\,
	asdata => \top_sw_0|sw_input_up|process_2~1_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_10ms_cnt\(0));

-- Location: LCCOMB_X110_Y41_N16
\top_sw_0|sw_input_up|sw_10ms_cnt[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_10ms_cnt[1]~21_combout\ = (\top_sw_0|sw_input_up|sw_10ms_cnt\(1) & ((GND) # (!\top_sw_0|sw_input_up|sw_10ms_cnt[0]~20\))) # (!\top_sw_0|sw_input_up|sw_10ms_cnt\(1) & (\top_sw_0|sw_input_up|sw_10ms_cnt[0]~20\ $ (GND)))
-- \top_sw_0|sw_input_up|sw_10ms_cnt[1]~22\ = CARRY((\top_sw_0|sw_input_up|sw_10ms_cnt\(1)) # (!\top_sw_0|sw_input_up|sw_10ms_cnt[0]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up|sw_10ms_cnt\(1),
	datad => VCC,
	cin => \top_sw_0|sw_input_up|sw_10ms_cnt[0]~20\,
	combout => \top_sw_0|sw_input_up|sw_10ms_cnt[1]~21_combout\,
	cout => \top_sw_0|sw_input_up|sw_10ms_cnt[1]~22\);

-- Location: FF_X110_Y41_N17
\top_sw_0|sw_input_up|sw_10ms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_10ms_cnt[1]~21_combout\,
	asdata => \top_sw_0|sw_input_up|process_2~1_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_10ms_cnt\(1));

-- Location: LCCOMB_X110_Y41_N18
\top_sw_0|sw_input_up|sw_10ms_cnt[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_10ms_cnt[2]~23_combout\ = (\top_sw_0|sw_input_up|sw_10ms_cnt\(2) & (\top_sw_0|sw_input_up|sw_10ms_cnt[1]~22\ & VCC)) # (!\top_sw_0|sw_input_up|sw_10ms_cnt\(2) & (!\top_sw_0|sw_input_up|sw_10ms_cnt[1]~22\))
-- \top_sw_0|sw_input_up|sw_10ms_cnt[2]~24\ = CARRY((!\top_sw_0|sw_input_up|sw_10ms_cnt\(2) & !\top_sw_0|sw_input_up|sw_10ms_cnt[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up|sw_10ms_cnt\(2),
	datad => VCC,
	cin => \top_sw_0|sw_input_up|sw_10ms_cnt[1]~22\,
	combout => \top_sw_0|sw_input_up|sw_10ms_cnt[2]~23_combout\,
	cout => \top_sw_0|sw_input_up|sw_10ms_cnt[2]~24\);

-- Location: FF_X110_Y41_N19
\top_sw_0|sw_input_up|sw_10ms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_10ms_cnt[2]~23_combout\,
	asdata => \top_sw_0|sw_input_up|process_2~1_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_10ms_cnt\(2));

-- Location: LCCOMB_X110_Y41_N20
\top_sw_0|sw_input_up|sw_10ms_cnt[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_10ms_cnt[3]~25_combout\ = (\top_sw_0|sw_input_up|sw_10ms_cnt\(3) & ((GND) # (!\top_sw_0|sw_input_up|sw_10ms_cnt[2]~24\))) # (!\top_sw_0|sw_input_up|sw_10ms_cnt\(3) & (\top_sw_0|sw_input_up|sw_10ms_cnt[2]~24\ $ (GND)))
-- \top_sw_0|sw_input_up|sw_10ms_cnt[3]~26\ = CARRY((\top_sw_0|sw_input_up|sw_10ms_cnt\(3)) # (!\top_sw_0|sw_input_up|sw_10ms_cnt[2]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up|sw_10ms_cnt\(3),
	datad => VCC,
	cin => \top_sw_0|sw_input_up|sw_10ms_cnt[2]~24\,
	combout => \top_sw_0|sw_input_up|sw_10ms_cnt[3]~25_combout\,
	cout => \top_sw_0|sw_input_up|sw_10ms_cnt[3]~26\);

-- Location: FF_X110_Y41_N21
\top_sw_0|sw_input_up|sw_10ms_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_10ms_cnt[3]~25_combout\,
	asdata => \top_sw_0|sw_input_up|process_2~1_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_10ms_cnt\(3));

-- Location: LCCOMB_X110_Y41_N22
\top_sw_0|sw_input_up|sw_10ms_cnt[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_10ms_cnt[4]~27_combout\ = (\top_sw_0|sw_input_up|sw_10ms_cnt\(4) & (\top_sw_0|sw_input_up|sw_10ms_cnt[3]~26\ & VCC)) # (!\top_sw_0|sw_input_up|sw_10ms_cnt\(4) & (!\top_sw_0|sw_input_up|sw_10ms_cnt[3]~26\))
-- \top_sw_0|sw_input_up|sw_10ms_cnt[4]~28\ = CARRY((!\top_sw_0|sw_input_up|sw_10ms_cnt\(4) & !\top_sw_0|sw_input_up|sw_10ms_cnt[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up|sw_10ms_cnt\(4),
	datad => VCC,
	cin => \top_sw_0|sw_input_up|sw_10ms_cnt[3]~26\,
	combout => \top_sw_0|sw_input_up|sw_10ms_cnt[4]~27_combout\,
	cout => \top_sw_0|sw_input_up|sw_10ms_cnt[4]~28\);

-- Location: FF_X110_Y41_N23
\top_sw_0|sw_input_up|sw_10ms_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_10ms_cnt[4]~27_combout\,
	asdata => \top_sw_0|sw_input_up|process_2~1_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_10ms_cnt\(4));

-- Location: LCCOMB_X110_Y41_N24
\top_sw_0|sw_input_up|sw_10ms_cnt[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_10ms_cnt[5]~29_combout\ = (\top_sw_0|sw_input_up|sw_10ms_cnt\(5) & (!\top_sw_0|sw_input_up|sw_10ms_cnt[4]~28\)) # (!\top_sw_0|sw_input_up|sw_10ms_cnt\(5) & ((\top_sw_0|sw_input_up|sw_10ms_cnt[4]~28\) # (GND)))
-- \top_sw_0|sw_input_up|sw_10ms_cnt[5]~30\ = CARRY((!\top_sw_0|sw_input_up|sw_10ms_cnt[4]~28\) # (!\top_sw_0|sw_input_up|sw_10ms_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up|sw_10ms_cnt\(5),
	datad => VCC,
	cin => \top_sw_0|sw_input_up|sw_10ms_cnt[4]~28\,
	combout => \top_sw_0|sw_input_up|sw_10ms_cnt[5]~29_combout\,
	cout => \top_sw_0|sw_input_up|sw_10ms_cnt[5]~30\);

-- Location: FF_X110_Y41_N25
\top_sw_0|sw_input_up|sw_10ms_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_10ms_cnt[5]~29_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_10ms_cnt\(5));

-- Location: LCCOMB_X110_Y41_N26
\top_sw_0|sw_input_up|sw_10ms_cnt[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_10ms_cnt[6]~31_combout\ = (\top_sw_0|sw_input_up|sw_10ms_cnt\(6) & (\top_sw_0|sw_input_up|sw_10ms_cnt[5]~30\ $ (GND))) # (!\top_sw_0|sw_input_up|sw_10ms_cnt\(6) & (!\top_sw_0|sw_input_up|sw_10ms_cnt[5]~30\ & VCC))
-- \top_sw_0|sw_input_up|sw_10ms_cnt[6]~32\ = CARRY((\top_sw_0|sw_input_up|sw_10ms_cnt\(6) & !\top_sw_0|sw_input_up|sw_10ms_cnt[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up|sw_10ms_cnt\(6),
	datad => VCC,
	cin => \top_sw_0|sw_input_up|sw_10ms_cnt[5]~30\,
	combout => \top_sw_0|sw_input_up|sw_10ms_cnt[6]~31_combout\,
	cout => \top_sw_0|sw_input_up|sw_10ms_cnt[6]~32\);

-- Location: FF_X110_Y41_N27
\top_sw_0|sw_input_up|sw_10ms_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_10ms_cnt[6]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_10ms_cnt\(6));

-- Location: LCCOMB_X110_Y41_N28
\top_sw_0|sw_input_up|sw_10ms_cnt[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_10ms_cnt[7]~33_combout\ = (\top_sw_0|sw_input_up|sw_10ms_cnt\(7) & (!\top_sw_0|sw_input_up|sw_10ms_cnt[6]~32\)) # (!\top_sw_0|sw_input_up|sw_10ms_cnt\(7) & ((\top_sw_0|sw_input_up|sw_10ms_cnt[6]~32\) # (GND)))
-- \top_sw_0|sw_input_up|sw_10ms_cnt[7]~34\ = CARRY((!\top_sw_0|sw_input_up|sw_10ms_cnt[6]~32\) # (!\top_sw_0|sw_input_up|sw_10ms_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up|sw_10ms_cnt\(7),
	datad => VCC,
	cin => \top_sw_0|sw_input_up|sw_10ms_cnt[6]~32\,
	combout => \top_sw_0|sw_input_up|sw_10ms_cnt[7]~33_combout\,
	cout => \top_sw_0|sw_input_up|sw_10ms_cnt[7]~34\);

-- Location: FF_X110_Y41_N29
\top_sw_0|sw_input_up|sw_10ms_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_10ms_cnt[7]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_10ms_cnt\(7));

-- Location: LCCOMB_X110_Y41_N30
\top_sw_0|sw_input_up|sw_10ms_cnt[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_10ms_cnt[8]~35_combout\ = (\top_sw_0|sw_input_up|sw_10ms_cnt\(8) & (\top_sw_0|sw_input_up|sw_10ms_cnt[7]~34\ & VCC)) # (!\top_sw_0|sw_input_up|sw_10ms_cnt\(8) & (!\top_sw_0|sw_input_up|sw_10ms_cnt[7]~34\))
-- \top_sw_0|sw_input_up|sw_10ms_cnt[8]~36\ = CARRY((!\top_sw_0|sw_input_up|sw_10ms_cnt\(8) & !\top_sw_0|sw_input_up|sw_10ms_cnt[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up|sw_10ms_cnt\(8),
	datad => VCC,
	cin => \top_sw_0|sw_input_up|sw_10ms_cnt[7]~34\,
	combout => \top_sw_0|sw_input_up|sw_10ms_cnt[8]~35_combout\,
	cout => \top_sw_0|sw_input_up|sw_10ms_cnt[8]~36\);

-- Location: FF_X110_Y41_N31
\top_sw_0|sw_input_up|sw_10ms_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_10ms_cnt[8]~35_combout\,
	asdata => \top_sw_0|sw_input_up|process_2~1_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_10ms_cnt\(8));

-- Location: LCCOMB_X110_Y40_N0
\top_sw_0|sw_input_up|sw_10ms_cnt[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_10ms_cnt[9]~37_combout\ = (\top_sw_0|sw_input_up|sw_10ms_cnt\(9) & (!\top_sw_0|sw_input_up|sw_10ms_cnt[8]~36\)) # (!\top_sw_0|sw_input_up|sw_10ms_cnt\(9) & ((\top_sw_0|sw_input_up|sw_10ms_cnt[8]~36\) # (GND)))
-- \top_sw_0|sw_input_up|sw_10ms_cnt[9]~38\ = CARRY((!\top_sw_0|sw_input_up|sw_10ms_cnt[8]~36\) # (!\top_sw_0|sw_input_up|sw_10ms_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up|sw_10ms_cnt\(9),
	datad => VCC,
	cin => \top_sw_0|sw_input_up|sw_10ms_cnt[8]~36\,
	combout => \top_sw_0|sw_input_up|sw_10ms_cnt[9]~37_combout\,
	cout => \top_sw_0|sw_input_up|sw_10ms_cnt[9]~38\);

-- Location: FF_X110_Y40_N1
\top_sw_0|sw_input_up|sw_10ms_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_10ms_cnt[9]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_10ms_cnt\(9));

-- Location: LCCOMB_X110_Y40_N2
\top_sw_0|sw_input_up|sw_10ms_cnt[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_10ms_cnt[10]~39_combout\ = (\top_sw_0|sw_input_up|sw_10ms_cnt\(10) & (\top_sw_0|sw_input_up|sw_10ms_cnt[9]~38\ $ (GND))) # (!\top_sw_0|sw_input_up|sw_10ms_cnt\(10) & (!\top_sw_0|sw_input_up|sw_10ms_cnt[9]~38\ & VCC))
-- \top_sw_0|sw_input_up|sw_10ms_cnt[10]~40\ = CARRY((\top_sw_0|sw_input_up|sw_10ms_cnt\(10) & !\top_sw_0|sw_input_up|sw_10ms_cnt[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up|sw_10ms_cnt\(10),
	datad => VCC,
	cin => \top_sw_0|sw_input_up|sw_10ms_cnt[9]~38\,
	combout => \top_sw_0|sw_input_up|sw_10ms_cnt[10]~39_combout\,
	cout => \top_sw_0|sw_input_up|sw_10ms_cnt[10]~40\);

-- Location: FF_X110_Y40_N3
\top_sw_0|sw_input_up|sw_10ms_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_10ms_cnt[10]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_10ms_cnt\(10));

-- Location: LCCOMB_X110_Y40_N4
\top_sw_0|sw_input_up|sw_10ms_cnt[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_10ms_cnt[11]~41_combout\ = (\top_sw_0|sw_input_up|sw_10ms_cnt\(11) & (!\top_sw_0|sw_input_up|sw_10ms_cnt[10]~40\)) # (!\top_sw_0|sw_input_up|sw_10ms_cnt\(11) & ((\top_sw_0|sw_input_up|sw_10ms_cnt[10]~40\) # (GND)))
-- \top_sw_0|sw_input_up|sw_10ms_cnt[11]~42\ = CARRY((!\top_sw_0|sw_input_up|sw_10ms_cnt[10]~40\) # (!\top_sw_0|sw_input_up|sw_10ms_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up|sw_10ms_cnt\(11),
	datad => VCC,
	cin => \top_sw_0|sw_input_up|sw_10ms_cnt[10]~40\,
	combout => \top_sw_0|sw_input_up|sw_10ms_cnt[11]~41_combout\,
	cout => \top_sw_0|sw_input_up|sw_10ms_cnt[11]~42\);

-- Location: FF_X110_Y40_N5
\top_sw_0|sw_input_up|sw_10ms_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_10ms_cnt[11]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_10ms_cnt\(11));

-- Location: LCCOMB_X110_Y40_N6
\top_sw_0|sw_input_up|sw_10ms_cnt[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_10ms_cnt[12]~43_combout\ = (\top_sw_0|sw_input_up|sw_10ms_cnt\(12) & (\top_sw_0|sw_input_up|sw_10ms_cnt[11]~42\ $ (GND))) # (!\top_sw_0|sw_input_up|sw_10ms_cnt\(12) & (!\top_sw_0|sw_input_up|sw_10ms_cnt[11]~42\ & VCC))
-- \top_sw_0|sw_input_up|sw_10ms_cnt[12]~44\ = CARRY((\top_sw_0|sw_input_up|sw_10ms_cnt\(12) & !\top_sw_0|sw_input_up|sw_10ms_cnt[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up|sw_10ms_cnt\(12),
	datad => VCC,
	cin => \top_sw_0|sw_input_up|sw_10ms_cnt[11]~42\,
	combout => \top_sw_0|sw_input_up|sw_10ms_cnt[12]~43_combout\,
	cout => \top_sw_0|sw_input_up|sw_10ms_cnt[12]~44\);

-- Location: FF_X110_Y40_N7
\top_sw_0|sw_input_up|sw_10ms_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_10ms_cnt[12]~43_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_10ms_cnt\(12));

-- Location: LCCOMB_X110_Y40_N8
\top_sw_0|sw_input_up|sw_10ms_cnt[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_10ms_cnt[13]~45_combout\ = (\top_sw_0|sw_input_up|sw_10ms_cnt\(13) & ((GND) # (!\top_sw_0|sw_input_up|sw_10ms_cnt[12]~44\))) # (!\top_sw_0|sw_input_up|sw_10ms_cnt\(13) & (\top_sw_0|sw_input_up|sw_10ms_cnt[12]~44\ $ (GND)))
-- \top_sw_0|sw_input_up|sw_10ms_cnt[13]~46\ = CARRY((\top_sw_0|sw_input_up|sw_10ms_cnt\(13)) # (!\top_sw_0|sw_input_up|sw_10ms_cnt[12]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up|sw_10ms_cnt\(13),
	datad => VCC,
	cin => \top_sw_0|sw_input_up|sw_10ms_cnt[12]~44\,
	combout => \top_sw_0|sw_input_up|sw_10ms_cnt[13]~45_combout\,
	cout => \top_sw_0|sw_input_up|sw_10ms_cnt[13]~46\);

-- Location: FF_X110_Y40_N9
\top_sw_0|sw_input_up|sw_10ms_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_10ms_cnt[13]~45_combout\,
	asdata => \top_sw_0|sw_input_up|process_2~1_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_10ms_cnt\(13));

-- Location: LCCOMB_X110_Y40_N10
\top_sw_0|sw_input_up|sw_10ms_cnt[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_10ms_cnt[14]~47_combout\ = (\top_sw_0|sw_input_up|sw_10ms_cnt\(14) & (\top_sw_0|sw_input_up|sw_10ms_cnt[13]~46\ $ (GND))) # (!\top_sw_0|sw_input_up|sw_10ms_cnt\(14) & (!\top_sw_0|sw_input_up|sw_10ms_cnt[13]~46\ & VCC))
-- \top_sw_0|sw_input_up|sw_10ms_cnt[14]~48\ = CARRY((\top_sw_0|sw_input_up|sw_10ms_cnt\(14) & !\top_sw_0|sw_input_up|sw_10ms_cnt[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up|sw_10ms_cnt\(14),
	datad => VCC,
	cin => \top_sw_0|sw_input_up|sw_10ms_cnt[13]~46\,
	combout => \top_sw_0|sw_input_up|sw_10ms_cnt[14]~47_combout\,
	cout => \top_sw_0|sw_input_up|sw_10ms_cnt[14]~48\);

-- Location: FF_X110_Y40_N11
\top_sw_0|sw_input_up|sw_10ms_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_10ms_cnt[14]~47_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_10ms_cnt\(14));

-- Location: LCCOMB_X110_Y40_N12
\top_sw_0|sw_input_up|sw_10ms_cnt[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_10ms_cnt[15]~49_combout\ = (\top_sw_0|sw_input_up|sw_10ms_cnt\(15) & ((GND) # (!\top_sw_0|sw_input_up|sw_10ms_cnt[14]~48\))) # (!\top_sw_0|sw_input_up|sw_10ms_cnt\(15) & (\top_sw_0|sw_input_up|sw_10ms_cnt[14]~48\ $ (GND)))
-- \top_sw_0|sw_input_up|sw_10ms_cnt[15]~50\ = CARRY((\top_sw_0|sw_input_up|sw_10ms_cnt\(15)) # (!\top_sw_0|sw_input_up|sw_10ms_cnt[14]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up|sw_10ms_cnt\(15),
	datad => VCC,
	cin => \top_sw_0|sw_input_up|sw_10ms_cnt[14]~48\,
	combout => \top_sw_0|sw_input_up|sw_10ms_cnt[15]~49_combout\,
	cout => \top_sw_0|sw_input_up|sw_10ms_cnt[15]~50\);

-- Location: FF_X110_Y40_N13
\top_sw_0|sw_input_up|sw_10ms_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_10ms_cnt[15]~49_combout\,
	asdata => \top_sw_0|sw_input_up|process_2~1_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_10ms_cnt\(15));

-- Location: LCCOMB_X110_Y40_N14
\top_sw_0|sw_input_up|sw_10ms_cnt[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_10ms_cnt[16]~51_combout\ = (\top_sw_0|sw_input_up|sw_10ms_cnt\(16) & (\top_sw_0|sw_input_up|sw_10ms_cnt[15]~50\ & VCC)) # (!\top_sw_0|sw_input_up|sw_10ms_cnt\(16) & (!\top_sw_0|sw_input_up|sw_10ms_cnt[15]~50\))
-- \top_sw_0|sw_input_up|sw_10ms_cnt[16]~52\ = CARRY((!\top_sw_0|sw_input_up|sw_10ms_cnt\(16) & !\top_sw_0|sw_input_up|sw_10ms_cnt[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up|sw_10ms_cnt\(16),
	datad => VCC,
	cin => \top_sw_0|sw_input_up|sw_10ms_cnt[15]~50\,
	combout => \top_sw_0|sw_input_up|sw_10ms_cnt[16]~51_combout\,
	cout => \top_sw_0|sw_input_up|sw_10ms_cnt[16]~52\);

-- Location: FF_X110_Y40_N15
\top_sw_0|sw_input_up|sw_10ms_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_10ms_cnt[16]~51_combout\,
	asdata => \top_sw_0|sw_input_up|process_2~1_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_10ms_cnt\(16));

-- Location: LCCOMB_X110_Y40_N16
\top_sw_0|sw_input_up|sw_10ms_cnt[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_10ms_cnt[17]~53_combout\ = (\top_sw_0|sw_input_up|sw_10ms_cnt\(17) & ((GND) # (!\top_sw_0|sw_input_up|sw_10ms_cnt[16]~52\))) # (!\top_sw_0|sw_input_up|sw_10ms_cnt\(17) & (\top_sw_0|sw_input_up|sw_10ms_cnt[16]~52\ $ (GND)))
-- \top_sw_0|sw_input_up|sw_10ms_cnt[17]~54\ = CARRY((\top_sw_0|sw_input_up|sw_10ms_cnt\(17)) # (!\top_sw_0|sw_input_up|sw_10ms_cnt[16]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up|sw_10ms_cnt\(17),
	datad => VCC,
	cin => \top_sw_0|sw_input_up|sw_10ms_cnt[16]~52\,
	combout => \top_sw_0|sw_input_up|sw_10ms_cnt[17]~53_combout\,
	cout => \top_sw_0|sw_input_up|sw_10ms_cnt[17]~54\);

-- Location: FF_X110_Y40_N17
\top_sw_0|sw_input_up|sw_10ms_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_10ms_cnt[17]~53_combout\,
	asdata => \top_sw_0|sw_input_up|process_2~1_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_10ms_cnt\(17));

-- Location: LCCOMB_X110_Y40_N18
\top_sw_0|sw_input_up|sw_10ms_cnt[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|sw_10ms_cnt[18]~55_combout\ = \top_sw_0|sw_input_up|sw_10ms_cnt[17]~54\ $ (!\top_sw_0|sw_input_up|sw_10ms_cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \top_sw_0|sw_input_up|sw_10ms_cnt\(18),
	cin => \top_sw_0|sw_input_up|sw_10ms_cnt[17]~54\,
	combout => \top_sw_0|sw_input_up|sw_10ms_cnt[18]~55_combout\);

-- Location: FF_X110_Y40_N19
\top_sw_0|sw_input_up|sw_10ms_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|sw_10ms_cnt[18]~55_combout\,
	asdata => \top_sw_0|sw_input_up|process_2~1_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|sw_10ms_cnt\(18));

-- Location: LCCOMB_X110_Y40_N26
\top_sw_0|sw_input_up|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|Equal2~3_combout\ = (!\top_sw_0|sw_input_up|sw_10ms_cnt\(14) & (!\top_sw_0|sw_input_up|sw_10ms_cnt\(13) & (!\top_sw_0|sw_input_up|sw_10ms_cnt\(15) & !\top_sw_0|sw_input_up|sw_10ms_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up|sw_10ms_cnt\(14),
	datab => \top_sw_0|sw_input_up|sw_10ms_cnt\(13),
	datac => \top_sw_0|sw_input_up|sw_10ms_cnt\(15),
	datad => \top_sw_0|sw_input_up|sw_10ms_cnt\(12),
	combout => \top_sw_0|sw_input_up|Equal2~3_combout\);

-- Location: LCCOMB_X110_Y40_N28
\top_sw_0|sw_input_up|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|Equal2~2_combout\ = (!\top_sw_0|sw_input_up|sw_10ms_cnt\(11) & (!\top_sw_0|sw_input_up|sw_10ms_cnt\(10) & (!\top_sw_0|sw_input_up|sw_10ms_cnt\(8) & !\top_sw_0|sw_input_up|sw_10ms_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up|sw_10ms_cnt\(11),
	datab => \top_sw_0|sw_input_up|sw_10ms_cnt\(10),
	datac => \top_sw_0|sw_input_up|sw_10ms_cnt\(8),
	datad => \top_sw_0|sw_input_up|sw_10ms_cnt\(9),
	combout => \top_sw_0|sw_input_up|Equal2~2_combout\);

-- Location: LCCOMB_X110_Y41_N12
\top_sw_0|sw_input_up|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|Equal2~1_combout\ = (!\top_sw_0|sw_input_up|sw_10ms_cnt\(4) & (!\top_sw_0|sw_input_up|sw_10ms_cnt\(5) & (!\top_sw_0|sw_input_up|sw_10ms_cnt\(6) & !\top_sw_0|sw_input_up|sw_10ms_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up|sw_10ms_cnt\(4),
	datab => \top_sw_0|sw_input_up|sw_10ms_cnt\(5),
	datac => \top_sw_0|sw_input_up|sw_10ms_cnt\(6),
	datad => \top_sw_0|sw_input_up|sw_10ms_cnt\(7),
	combout => \top_sw_0|sw_input_up|Equal2~1_combout\);

-- Location: LCCOMB_X110_Y41_N2
\top_sw_0|sw_input_up|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|Equal2~0_combout\ = (!\top_sw_0|sw_input_up|sw_10ms_cnt\(3) & (!\top_sw_0|sw_input_up|sw_10ms_cnt\(2) & (!\top_sw_0|sw_input_up|sw_10ms_cnt\(0) & !\top_sw_0|sw_input_up|sw_10ms_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up|sw_10ms_cnt\(3),
	datab => \top_sw_0|sw_input_up|sw_10ms_cnt\(2),
	datac => \top_sw_0|sw_input_up|sw_10ms_cnt\(0),
	datad => \top_sw_0|sw_input_up|sw_10ms_cnt\(1),
	combout => \top_sw_0|sw_input_up|Equal2~0_combout\);

-- Location: LCCOMB_X110_Y40_N24
\top_sw_0|sw_input_up|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|Equal2~4_combout\ = (\top_sw_0|sw_input_up|Equal2~3_combout\ & (\top_sw_0|sw_input_up|Equal2~2_combout\ & (\top_sw_0|sw_input_up|Equal2~1_combout\ & \top_sw_0|sw_input_up|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up|Equal2~3_combout\,
	datab => \top_sw_0|sw_input_up|Equal2~2_combout\,
	datac => \top_sw_0|sw_input_up|Equal2~1_combout\,
	datad => \top_sw_0|sw_input_up|Equal2~0_combout\,
	combout => \top_sw_0|sw_input_up|Equal2~4_combout\);

-- Location: LCCOMB_X110_Y40_N30
\top_sw_0|sw_input_up|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|Equal2~5_combout\ = (!\top_sw_0|sw_input_up|sw_10ms_cnt\(18) & (!\top_sw_0|sw_input_up|sw_10ms_cnt\(17) & (!\top_sw_0|sw_input_up|sw_10ms_cnt\(16) & \top_sw_0|sw_input_up|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up|sw_10ms_cnt\(18),
	datab => \top_sw_0|sw_input_up|sw_10ms_cnt\(17),
	datac => \top_sw_0|sw_input_up|sw_10ms_cnt\(16),
	datad => \top_sw_0|sw_input_up|Equal2~4_combout\,
	combout => \top_sw_0|sw_input_up|Equal2~5_combout\);

-- Location: LCCOMB_X110_Y41_N8
\top_sw_0|sw_input_up|SW_CLR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up|SW_CLR~0_combout\ = ((\top_sw_0|sw_input_up|sw_cnt\(5) & (!\top_sw_0|sw_input_up|sw_cnt\(0) & \top_sw_0|sw_input_up|process_2~0_combout\))) # (!\top_sw_0|sw_input_up|Equal2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up|sw_cnt\(5),
	datab => \top_sw_0|sw_input_up|sw_cnt\(0),
	datac => \top_sw_0|sw_input_up|process_2~0_combout\,
	datad => \top_sw_0|sw_input_up|Equal2~5_combout\,
	combout => \top_sw_0|sw_input_up|SW_CLR~0_combout\);

-- Location: FF_X110_Y41_N9
\top_sw_0|sw_input_up|SW_CLR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up|SW_CLR~0_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up|SW_CLR~q\);

-- Location: LCCOMB_X109_Y39_N10
\state_0|S_UP_SHORT~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_0|S_UP_SHORT~feeder_combout\ = \top_sw_0|sw_input_up|SW_CLR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \top_sw_0|sw_input_up|SW_CLR~q\,
	combout => \state_0|S_UP_SHORT~feeder_combout\);

-- Location: FF_X109_Y39_N11
\state_0|S_UP_SHORT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \state_0|S_UP_SHORT~feeder_combout\,
	clrn => \SW0~input_o\,
	ena => \FND_mux_0|Mux23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_0|S_UP_SHORT~q\);

-- Location: LCCOMB_X110_Y39_N0
\stopwatch_top_0|STATE_M_0|tmp_state[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|STATE_M_0|tmp_state[0]~0_combout\ = (\stopwatch_top_0|STATE_M_0|tmp_state\(0) & (!\stopwatch_top_0|STATE_M_0|tmp_state\(1) & !\state_0|S_UP_SHORT~q\)) # (!\stopwatch_top_0|STATE_M_0|tmp_state\(0) & ((\state_0|S_UP_SHORT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stopwatch_top_0|STATE_M_0|tmp_state\(1),
	datac => \stopwatch_top_0|STATE_M_0|tmp_state\(0),
	datad => \state_0|S_UP_SHORT~q\,
	combout => \stopwatch_top_0|STATE_M_0|tmp_state[0]~0_combout\);

-- Location: FF_X110_Y39_N1
\stopwatch_top_0|STATE_M_0|tmp_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \stopwatch_top_0|STATE_M_0|tmp_state[0]~0_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|STATE_M_0|tmp_state\(0));

-- Location: LCCOMB_X110_Y39_N14
\stopwatch_top_0|STATE_M_0|tmp_state[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|STATE_M_0|tmp_state[1]~1_combout\ = (\state_0|S_UP_SHORT~q\ & (!\stopwatch_top_0|STATE_M_0|tmp_state\(1) & \stopwatch_top_0|STATE_M_0|tmp_state\(0))) # (!\state_0|S_UP_SHORT~q\ & (\stopwatch_top_0|STATE_M_0|tmp_state\(1) & 
-- !\stopwatch_top_0|STATE_M_0|tmp_state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_0|S_UP_SHORT~q\,
	datac => \stopwatch_top_0|STATE_M_0|tmp_state\(1),
	datad => \stopwatch_top_0|STATE_M_0|tmp_state\(0),
	combout => \stopwatch_top_0|STATE_M_0|tmp_state[1]~1_combout\);

-- Location: FF_X110_Y39_N15
\stopwatch_top_0|STATE_M_0|tmp_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \stopwatch_top_0|STATE_M_0|tmp_state[1]~1_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|STATE_M_0|tmp_state\(1));

-- Location: LCCOMB_X110_Y39_N28
\stopwatch_top_0|CNT_0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|Equal0~0_combout\ = (!\stopwatch_top_0|STATE_M_0|tmp_state\(1) & \stopwatch_top_0|STATE_M_0|tmp_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stopwatch_top_0|STATE_M_0|tmp_state\(1),
	datad => \stopwatch_top_0|STATE_M_0|tmp_state\(0),
	combout => \stopwatch_top_0|CNT_0|Equal0~0_combout\);

-- Location: FF_X110_Y39_N5
\stopwatch_top_0|CNT_0|tmp_cnt_p01s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \stopwatch_top_0|CNT_0|tmp_cnt_p01s[0]~3_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	ena => \stopwatch_top_0|CNT_0|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(0));

-- Location: LCCOMB_X113_Y39_N28
\clock_0|tmp_time_01s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_01s~4_combout\ = (!\clock_0|tmp_time_01s\(0) & ((!\clock_0|state\(0)) # (!\clock_0|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|state\(1),
	datac => \clock_0|tmp_time_01s\(0),
	datad => \clock_0|state\(0),
	combout => \clock_0|tmp_time_01s~4_combout\);

-- Location: FF_X111_Y40_N23
\state_0|C_UP_SHORT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	asdata => \top_sw_0|sw_input_up|SW_CLR~q\,
	clrn => \SW0~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_0|C_UP_SHORT~q\);

-- Location: LCCOMB_X109_Y44_N6
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[0]~26_combout\ = \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(0) $ (VCC)
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[0]~27\ = CARRY(\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(0),
	datad => VCC,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[0]~26_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[0]~27\);

-- Location: LCCOMB_X109_Y44_N4
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\ = (!\top_sw_0|sw_input_up_long_0|Equal0~8_combout\) # (!\top_sw_0|sw_input_up|sw_in_1d~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_sw_0|sw_input_up|sw_in_1d~q\,
	datad => \top_sw_0|sw_input_up_long_0|Equal0~8_combout\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\);

-- Location: FF_X109_Y44_N7
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[0]~26_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(0));

-- Location: LCCOMB_X109_Y44_N8
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[1]~29_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(1) & (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[0]~27\)) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(1) & ((\top_sw_0|sw_input_up_long_0|sw_cnt_1s[0]~27\) # 
-- (GND)))
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[1]~30\ = CARRY((!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[0]~27\) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(1),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[0]~27\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[1]~29_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[1]~30\);

-- Location: FF_X109_Y44_N9
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[1]~29_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(1));

-- Location: LCCOMB_X109_Y44_N10
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[2]~31_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(2) & (\top_sw_0|sw_input_up_long_0|sw_cnt_1s[1]~30\ $ (GND))) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(2) & (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[1]~30\ 
-- & VCC))
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[2]~32\ = CARRY((\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(2) & !\top_sw_0|sw_input_up_long_0|sw_cnt_1s[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(2),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[1]~30\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[2]~31_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[2]~32\);

-- Location: FF_X109_Y44_N11
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[2]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(2));

-- Location: LCCOMB_X109_Y44_N12
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[3]~33_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(3) & (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[2]~32\)) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(3) & ((\top_sw_0|sw_input_up_long_0|sw_cnt_1s[2]~32\) # 
-- (GND)))
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[3]~34\ = CARRY((!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[2]~32\) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(3),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[2]~32\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[3]~33_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[3]~34\);

-- Location: FF_X109_Y44_N13
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[3]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(3));

-- Location: LCCOMB_X109_Y44_N14
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~35_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(4) & (\top_sw_0|sw_input_up_long_0|sw_cnt_1s[3]~34\ $ (GND))) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(4) & (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[3]~34\ 
-- & VCC))
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~36\ = CARRY((\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(4) & !\top_sw_0|sw_input_up_long_0|sw_cnt_1s[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(4),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[3]~34\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~35_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~36\);

-- Location: FF_X109_Y44_N15
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(4));

-- Location: LCCOMB_X109_Y44_N16
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[5]~37_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(5) & (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~36\)) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(5) & ((\top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~36\) # 
-- (GND)))
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[5]~38\ = CARRY((!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~36\) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(5),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~36\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[5]~37_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[5]~38\);

-- Location: FF_X109_Y44_N17
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[5]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(5));

-- Location: LCCOMB_X109_Y44_N18
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[6]~39_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(6) & (\top_sw_0|sw_input_up_long_0|sw_cnt_1s[5]~38\ $ (GND))) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(6) & (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[5]~38\ 
-- & VCC))
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[6]~40\ = CARRY((\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(6) & !\top_sw_0|sw_input_up_long_0|sw_cnt_1s[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(6),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[5]~38\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[6]~39_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[6]~40\);

-- Location: FF_X109_Y44_N19
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[6]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(6));

-- Location: LCCOMB_X109_Y44_N20
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[7]~41_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(7) & (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[6]~40\)) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(7) & ((\top_sw_0|sw_input_up_long_0|sw_cnt_1s[6]~40\) # 
-- (GND)))
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[7]~42\ = CARRY((!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[6]~40\) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(7),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[6]~40\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[7]~41_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[7]~42\);

-- Location: FF_X109_Y44_N21
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[7]~41_combout\,
	asdata => \top_sw_0|sw_input_up|sw_in_1d~q\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(7));

-- Location: LCCOMB_X109_Y44_N22
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[8]~43_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(8) & (\top_sw_0|sw_input_up_long_0|sw_cnt_1s[7]~42\ $ (GND))) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(8) & (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[7]~42\ 
-- & VCC))
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[8]~44\ = CARRY((\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(8) & !\top_sw_0|sw_input_up_long_0|sw_cnt_1s[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(8),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[7]~42\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[8]~43_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[8]~44\);

-- Location: FF_X109_Y44_N23
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[8]~43_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(8));

-- Location: LCCOMB_X109_Y44_N24
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[9]~45_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(9) & (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[8]~44\)) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(9) & ((\top_sw_0|sw_input_up_long_0|sw_cnt_1s[8]~44\) # 
-- (GND)))
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[9]~46\ = CARRY((!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[8]~44\) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(9),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[8]~44\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[9]~45_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[9]~46\);

-- Location: FF_X109_Y44_N25
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[9]~45_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(9));

-- Location: LCCOMB_X109_Y44_N26
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[10]~47_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(10) & (\top_sw_0|sw_input_up_long_0|sw_cnt_1s[9]~46\ $ (GND))) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(10) & 
-- (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[9]~46\ & VCC))
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[10]~48\ = CARRY((\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(10) & !\top_sw_0|sw_input_up_long_0|sw_cnt_1s[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(10),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[9]~46\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[10]~47_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[10]~48\);

-- Location: FF_X109_Y44_N27
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[10]~47_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(10));

-- Location: LCCOMB_X109_Y44_N28
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[11]~49_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(11) & (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[10]~48\)) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(11) & ((\top_sw_0|sw_input_up_long_0|sw_cnt_1s[10]~48\) 
-- # (GND)))
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[11]~50\ = CARRY((!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[10]~48\) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(11),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[10]~48\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[11]~49_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[11]~50\);

-- Location: FF_X109_Y44_N29
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[11]~49_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(11));

-- Location: LCCOMB_X109_Y44_N30
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[12]~51_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(12) & (\top_sw_0|sw_input_up_long_0|sw_cnt_1s[11]~50\ $ (GND))) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(12) & 
-- (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[11]~50\ & VCC))
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[12]~52\ = CARRY((\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(12) & !\top_sw_0|sw_input_up_long_0|sw_cnt_1s[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(12),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[11]~50\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[12]~51_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[12]~52\);

-- Location: FF_X109_Y44_N31
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[12]~51_combout\,
	asdata => \top_sw_0|sw_input_up|sw_in_1d~q\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(12));

-- Location: LCCOMB_X109_Y43_N0
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[13]~53_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(13) & (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[12]~52\)) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(13) & ((\top_sw_0|sw_input_up_long_0|sw_cnt_1s[12]~52\) 
-- # (GND)))
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[13]~54\ = CARRY((!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[12]~52\) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(13),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[12]~52\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[13]~53_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[13]~54\);

-- Location: FF_X109_Y43_N1
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[13]~53_combout\,
	asdata => \top_sw_0|sw_input_up|sw_in_1d~q\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(13));

-- Location: LCCOMB_X109_Y43_N2
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[14]~55_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(14) & (\top_sw_0|sw_input_up_long_0|sw_cnt_1s[13]~54\ $ (GND))) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(14) & 
-- (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[13]~54\ & VCC))
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[14]~56\ = CARRY((\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(14) & !\top_sw_0|sw_input_up_long_0|sw_cnt_1s[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(14),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[13]~54\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[14]~55_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[14]~56\);

-- Location: FF_X109_Y43_N3
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[14]~55_combout\,
	asdata => \top_sw_0|sw_input_up|sw_in_1d~q\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(14));

-- Location: LCCOMB_X109_Y43_N4
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[15]~57_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(15) & (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[14]~56\)) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(15) & ((\top_sw_0|sw_input_up_long_0|sw_cnt_1s[14]~56\) 
-- # (GND)))
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[15]~58\ = CARRY((!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[14]~56\) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(15),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[14]~56\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[15]~57_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[15]~58\);

-- Location: FF_X109_Y43_N5
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[15]~57_combout\,
	asdata => \top_sw_0|sw_input_up|sw_in_1d~q\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(15));

-- Location: LCCOMB_X109_Y43_N6
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[16]~59_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(16) & (\top_sw_0|sw_input_up_long_0|sw_cnt_1s[15]~58\ $ (GND))) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(16) & 
-- (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[15]~58\ & VCC))
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[16]~60\ = CARRY((\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(16) & !\top_sw_0|sw_input_up_long_0|sw_cnt_1s[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(16),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[15]~58\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[16]~59_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[16]~60\);

-- Location: FF_X109_Y43_N7
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[16]~59_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(16));

-- Location: LCCOMB_X109_Y43_N8
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[17]~61_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(17) & (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[16]~60\)) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(17) & ((\top_sw_0|sw_input_up_long_0|sw_cnt_1s[16]~60\) 
-- # (GND)))
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[17]~62\ = CARRY((!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[16]~60\) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(17),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[16]~60\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[17]~61_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[17]~62\);

-- Location: FF_X109_Y43_N9
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[17]~61_combout\,
	asdata => \top_sw_0|sw_input_up|sw_in_1d~q\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(17));

-- Location: LCCOMB_X109_Y43_N10
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[18]~63_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(18) & (\top_sw_0|sw_input_up_long_0|sw_cnt_1s[17]~62\ $ (GND))) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(18) & 
-- (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[17]~62\ & VCC))
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[18]~64\ = CARRY((\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(18) & !\top_sw_0|sw_input_up_long_0|sw_cnt_1s[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(18),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[17]~62\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[18]~63_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[18]~64\);

-- Location: FF_X109_Y43_N11
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[18]~63_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(18));

-- Location: LCCOMB_X109_Y43_N12
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[19]~65_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(19) & (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[18]~64\)) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(19) & ((\top_sw_0|sw_input_up_long_0|sw_cnt_1s[18]~64\) 
-- # (GND)))
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[19]~66\ = CARRY((!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[18]~64\) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(19),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[18]~64\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[19]~65_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[19]~66\);

-- Location: FF_X109_Y43_N13
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[19]~65_combout\,
	asdata => \top_sw_0|sw_input_up|sw_in_1d~q\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(19));

-- Location: LCCOMB_X109_Y43_N14
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[20]~67_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(20) & (\top_sw_0|sw_input_up_long_0|sw_cnt_1s[19]~66\ $ (GND))) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(20) & 
-- (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[19]~66\ & VCC))
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[20]~68\ = CARRY((\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(20) & !\top_sw_0|sw_input_up_long_0|sw_cnt_1s[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(20),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[19]~66\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[20]~67_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[20]~68\);

-- Location: FF_X109_Y43_N15
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[20]~67_combout\,
	asdata => \top_sw_0|sw_input_up|sw_in_1d~q\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(20));

-- Location: LCCOMB_X109_Y43_N16
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[21]~69_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(21) & (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[20]~68\)) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(21) & ((\top_sw_0|sw_input_up_long_0|sw_cnt_1s[20]~68\) 
-- # (GND)))
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[21]~70\ = CARRY((!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[20]~68\) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(21),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[20]~68\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[21]~69_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[21]~70\);

-- Location: FF_X109_Y43_N17
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[21]~69_combout\,
	asdata => \top_sw_0|sw_input_up|sw_in_1d~q\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(21));

-- Location: LCCOMB_X109_Y43_N18
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[22]~71_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(22) & (\top_sw_0|sw_input_up_long_0|sw_cnt_1s[21]~70\ $ (GND))) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(22) & 
-- (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[21]~70\ & VCC))
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[22]~72\ = CARRY((\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(22) & !\top_sw_0|sw_input_up_long_0|sw_cnt_1s[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(22),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[21]~70\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[22]~71_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[22]~72\);

-- Location: FF_X109_Y43_N19
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[22]~71_combout\,
	asdata => \top_sw_0|sw_input_up|sw_in_1d~q\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(22));

-- Location: LCCOMB_X109_Y43_N20
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[23]~73_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(23) & (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[22]~72\)) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(23) & ((\top_sw_0|sw_input_up_long_0|sw_cnt_1s[22]~72\) 
-- # (GND)))
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[23]~74\ = CARRY((!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[22]~72\) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(23),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[22]~72\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[23]~73_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[23]~74\);

-- Location: FF_X109_Y43_N21
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[23]~73_combout\,
	asdata => \top_sw_0|sw_input_up|sw_in_1d~q\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(23));

-- Location: LCCOMB_X109_Y43_N22
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[24]~75_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(24) & (\top_sw_0|sw_input_up_long_0|sw_cnt_1s[23]~74\ $ (GND))) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(24) & 
-- (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s[23]~74\ & VCC))
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[24]~76\ = CARRY((\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(24) & !\top_sw_0|sw_input_up_long_0|sw_cnt_1s[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(24),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[23]~74\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[24]~75_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[24]~76\);

-- Location: FF_X109_Y43_N23
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[24]~75_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(24));

-- Location: LCCOMB_X109_Y43_N24
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_cnt_1s[25]~77_combout\ = \top_sw_0|sw_input_up_long_0|sw_cnt_1s[24]~76\ $ (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(25),
	cin => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[24]~76\,
	combout => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[25]~77_combout\);

-- Location: FF_X109_Y43_N25
\top_sw_0|sw_input_up_long_0|sw_cnt_1s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[25]~77_combout\,
	asdata => \top_sw_0|sw_input_up|sw_in_1d~q\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|sw_cnt_1s[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(25));

-- Location: LCCOMB_X109_Y43_N26
\top_sw_0|sw_input_up_long_0|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|Equal0~7_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(24)) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(24),
	datad => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(25),
	combout => \top_sw_0|sw_input_up_long_0|Equal0~7_combout\);

-- Location: LCCOMB_X109_Y43_N28
\top_sw_0|sw_input_up_long_0|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|Equal0~6_combout\ = (((!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(22)) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(20))) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(21))) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(23),
	datab => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(21),
	datac => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(20),
	datad => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(22),
	combout => \top_sw_0|sw_input_up_long_0|Equal0~6_combout\);

-- Location: LCCOMB_X110_Y43_N20
\top_sw_0|sw_input_up_long_0|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|Equal0~5_combout\ = ((\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(18)) # ((\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(16)) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(19)))) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(17),
	datab => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(18),
	datac => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(16),
	datad => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(19),
	combout => \top_sw_0|sw_input_up_long_0|Equal0~5_combout\);

-- Location: LCCOMB_X110_Y44_N6
\top_sw_0|sw_input_up_long_0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|Equal0~1_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(4)) # (((\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(5)) # (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(6))) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(4),
	datab => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(7),
	datac => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(5),
	datad => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(6),
	combout => \top_sw_0|sw_input_up_long_0|Equal0~1_combout\);

-- Location: LCCOMB_X110_Y44_N0
\top_sw_0|sw_input_up_long_0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|Equal0~2_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(10)) # ((\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(9)) # ((\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(11)) # (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(10),
	datab => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(9),
	datac => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(11),
	datad => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(8),
	combout => \top_sw_0|sw_input_up_long_0|Equal0~2_combout\);

-- Location: LCCOMB_X109_Y43_N30
\top_sw_0|sw_input_up_long_0|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|Equal0~3_combout\ = (((!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(14)) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(15))) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(13))) # (!\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(12),
	datab => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(13),
	datac => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(15),
	datad => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(14),
	combout => \top_sw_0|sw_input_up_long_0|Equal0~3_combout\);

-- Location: LCCOMB_X110_Y44_N4
\top_sw_0|sw_input_up_long_0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|Equal0~0_combout\ = (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(1)) # ((\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(2)) # ((\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(0)) # (\top_sw_0|sw_input_up_long_0|sw_cnt_1s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(1),
	datab => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(2),
	datac => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(0),
	datad => \top_sw_0|sw_input_up_long_0|sw_cnt_1s\(3),
	combout => \top_sw_0|sw_input_up_long_0|Equal0~0_combout\);

-- Location: LCCOMB_X109_Y44_N0
\top_sw_0|sw_input_up_long_0|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|Equal0~4_combout\ = (\top_sw_0|sw_input_up_long_0|Equal0~1_combout\) # ((\top_sw_0|sw_input_up_long_0|Equal0~2_combout\) # ((\top_sw_0|sw_input_up_long_0|Equal0~3_combout\) # (\top_sw_0|sw_input_up_long_0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|Equal0~1_combout\,
	datab => \top_sw_0|sw_input_up_long_0|Equal0~2_combout\,
	datac => \top_sw_0|sw_input_up_long_0|Equal0~3_combout\,
	datad => \top_sw_0|sw_input_up_long_0|Equal0~0_combout\,
	combout => \top_sw_0|sw_input_up_long_0|Equal0~4_combout\);

-- Location: LCCOMB_X109_Y44_N2
\top_sw_0|sw_input_up_long_0|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|Equal0~8_combout\ = (\top_sw_0|sw_input_up_long_0|Equal0~7_combout\) # ((\top_sw_0|sw_input_up_long_0|Equal0~6_combout\) # ((\top_sw_0|sw_input_up_long_0|Equal0~5_combout\) # (\top_sw_0|sw_input_up_long_0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|Equal0~7_combout\,
	datab => \top_sw_0|sw_input_up_long_0|Equal0~6_combout\,
	datac => \top_sw_0|sw_input_up_long_0|Equal0~5_combout\,
	datad => \top_sw_0|sw_input_up_long_0|Equal0~4_combout\,
	combout => \top_sw_0|sw_input_up_long_0|Equal0~8_combout\);

-- Location: LCCOMB_X110_Y44_N14
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[0]~19_combout\ = !\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(0)
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[0]~20\ = CARRY(!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(0),
	combout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[0]~19_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[0]~20\);

-- Location: LCCOMB_X110_Y44_N10
\top_sw_0|sw_input_up_long_0|process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|process_2~0_combout\ = (\top_sw_0|sw_input_up_long_0|Equal1~5_combout\ & !\top_sw_0|sw_input_up_long_0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_sw_0|sw_input_up_long_0|Equal1~5_combout\,
	datad => \top_sw_0|sw_input_up_long_0|Equal0~8_combout\,
	combout => \top_sw_0|sw_input_up_long_0|process_2~0_combout\);

-- Location: FF_X110_Y44_N15
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[0]~19_combout\,
	asdata => \top_sw_0|sw_input_up_long_0|process_2~0_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(0));

-- Location: LCCOMB_X110_Y44_N16
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[1]~21_combout\ = (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(1) & ((GND) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[0]~20\))) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(1) & 
-- (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[0]~20\ $ (GND)))
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[1]~22\ = CARRY((\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(1)) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[0]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(1),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[0]~20\,
	combout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[1]~21_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[1]~22\);

-- Location: FF_X110_Y44_N17
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[1]~21_combout\,
	asdata => \top_sw_0|sw_input_up_long_0|process_2~0_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(1));

-- Location: LCCOMB_X110_Y44_N18
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[2]~23_combout\ = (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(2) & (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[1]~22\ & VCC)) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(2) & 
-- (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[1]~22\))
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[2]~24\ = CARRY((!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(2) & !\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(2),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[1]~22\,
	combout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[2]~23_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[2]~24\);

-- Location: FF_X110_Y44_N19
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[2]~23_combout\,
	asdata => \top_sw_0|sw_input_up_long_0|process_2~0_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(2));

-- Location: LCCOMB_X110_Y44_N20
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[3]~25_combout\ = (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(3) & ((GND) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[2]~24\))) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(3) & 
-- (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[2]~24\ $ (GND)))
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[3]~26\ = CARRY((\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(3)) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[2]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(3),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[2]~24\,
	combout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[3]~25_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[3]~26\);

-- Location: FF_X110_Y44_N21
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[3]~25_combout\,
	asdata => \top_sw_0|sw_input_up_long_0|process_2~0_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(3));

-- Location: LCCOMB_X110_Y44_N22
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[4]~27_combout\ = (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(4) & (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[3]~26\ & VCC)) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(4) & 
-- (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[3]~26\))
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[4]~28\ = CARRY((!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(4) & !\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(4),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[3]~26\,
	combout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[4]~27_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[4]~28\);

-- Location: FF_X110_Y44_N23
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[4]~27_combout\,
	asdata => \top_sw_0|sw_input_up_long_0|process_2~0_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(4));

-- Location: LCCOMB_X110_Y44_N24
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[5]~29_combout\ = (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(5) & (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[4]~28\)) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(5) & 
-- ((\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[4]~28\) # (GND)))
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[5]~30\ = CARRY((!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[4]~28\) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(5),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[4]~28\,
	combout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[5]~29_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[5]~30\);

-- Location: FF_X110_Y44_N25
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[5]~29_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(5));

-- Location: LCCOMB_X110_Y44_N26
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[6]~31_combout\ = (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(6) & (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[5]~30\ $ (GND))) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(6) & 
-- (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[5]~30\ & VCC))
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[6]~32\ = CARRY((\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(6) & !\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(6),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[5]~30\,
	combout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[6]~31_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[6]~32\);

-- Location: FF_X110_Y44_N27
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[6]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(6));

-- Location: LCCOMB_X110_Y44_N28
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[7]~33_combout\ = (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(7) & (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[6]~32\)) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(7) & 
-- ((\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[6]~32\) # (GND)))
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[7]~34\ = CARRY((!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[6]~32\) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(7),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[6]~32\,
	combout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[7]~33_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[7]~34\);

-- Location: FF_X110_Y44_N29
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[7]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(7));

-- Location: LCCOMB_X110_Y44_N30
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[8]~35_combout\ = (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(8) & (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[7]~34\ & VCC)) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(8) & 
-- (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[7]~34\))
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[8]~36\ = CARRY((!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(8) & !\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(8),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[7]~34\,
	combout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[8]~35_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[8]~36\);

-- Location: FF_X110_Y44_N31
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[8]~35_combout\,
	asdata => \top_sw_0|sw_input_up_long_0|process_2~0_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(8));

-- Location: LCCOMB_X110_Y43_N0
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[9]~37_combout\ = (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(9) & (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[8]~36\)) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(9) & 
-- ((\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[8]~36\) # (GND)))
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[9]~38\ = CARRY((!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[8]~36\) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(9),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[8]~36\,
	combout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[9]~37_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[9]~38\);

-- Location: FF_X110_Y43_N1
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[9]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(9));

-- Location: LCCOMB_X110_Y43_N2
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[10]~39_combout\ = (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(10) & (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[9]~38\ $ (GND))) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(10) & 
-- (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[9]~38\ & VCC))
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[10]~40\ = CARRY((\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(10) & !\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(10),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[9]~38\,
	combout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[10]~39_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[10]~40\);

-- Location: FF_X110_Y43_N3
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[10]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(10));

-- Location: LCCOMB_X110_Y43_N4
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[11]~41_combout\ = (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(11) & (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[10]~40\)) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(11) & 
-- ((\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[10]~40\) # (GND)))
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[11]~42\ = CARRY((!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[10]~40\) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(11),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[10]~40\,
	combout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[11]~41_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[11]~42\);

-- Location: FF_X110_Y43_N5
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[11]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(11));

-- Location: LCCOMB_X110_Y43_N6
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[12]~43_combout\ = (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(12) & (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[11]~42\ $ (GND))) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(12) & 
-- (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[11]~42\ & VCC))
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[12]~44\ = CARRY((\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(12) & !\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(12),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[11]~42\,
	combout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[12]~43_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[12]~44\);

-- Location: FF_X110_Y43_N7
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[12]~43_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(12));

-- Location: LCCOMB_X110_Y43_N8
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[13]~45_combout\ = (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(13) & ((GND) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[12]~44\))) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(13) & 
-- (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[12]~44\ $ (GND)))
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[13]~46\ = CARRY((\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(13)) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[12]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(13),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[12]~44\,
	combout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[13]~45_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[13]~46\);

-- Location: FF_X110_Y43_N9
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[13]~45_combout\,
	asdata => \top_sw_0|sw_input_up_long_0|process_2~0_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(13));

-- Location: LCCOMB_X110_Y43_N10
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[14]~47_combout\ = (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(14) & (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[13]~46\ $ (GND))) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(14) & 
-- (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[13]~46\ & VCC))
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[14]~48\ = CARRY((\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(14) & !\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(14),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[13]~46\,
	combout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[14]~47_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[14]~48\);

-- Location: FF_X110_Y43_N11
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[14]~47_combout\,
	asdata => \~GND~combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(14));

-- Location: LCCOMB_X110_Y43_N12
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[15]~49_combout\ = (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(15) & ((GND) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[14]~48\))) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(15) & 
-- (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[14]~48\ $ (GND)))
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[15]~50\ = CARRY((\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(15)) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[14]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(15),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[14]~48\,
	combout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[15]~49_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[15]~50\);

-- Location: FF_X110_Y43_N13
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[15]~49_combout\,
	asdata => \top_sw_0|sw_input_up_long_0|process_2~0_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(15));

-- Location: LCCOMB_X110_Y43_N14
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[16]~51_combout\ = (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(16) & (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[15]~50\ & VCC)) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(16) & 
-- (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[15]~50\))
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[16]~52\ = CARRY((!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(16) & !\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(16),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[15]~50\,
	combout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[16]~51_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[16]~52\);

-- Location: FF_X110_Y43_N15
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[16]~51_combout\,
	asdata => \top_sw_0|sw_input_up_long_0|process_2~0_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(16));

-- Location: LCCOMB_X110_Y43_N16
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[17]~53_combout\ = (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(17) & ((GND) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[16]~52\))) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(17) & 
-- (\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[16]~52\ $ (GND)))
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[17]~54\ = CARRY((\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(17)) # (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[16]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(17),
	datad => VCC,
	cin => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[16]~52\,
	combout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[17]~53_combout\,
	cout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[17]~54\);

-- Location: FF_X110_Y43_N17
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[17]~53_combout\,
	asdata => \top_sw_0|sw_input_up_long_0|process_2~0_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(17));

-- Location: LCCOMB_X110_Y43_N18
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[18]~55_combout\ = \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[17]~54\ $ (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(18),
	cin => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[17]~54\,
	combout => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[18]~55_combout\);

-- Location: FF_X110_Y43_N19
\top_sw_0|sw_input_up_long_0|sw_10ms_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt[18]~55_combout\,
	asdata => \top_sw_0|sw_input_up_long_0|process_2~0_combout\,
	clrn => \SW0~input_o\,
	sload => \top_sw_0|sw_input_up_long_0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(18));

-- Location: LCCOMB_X110_Y43_N26
\top_sw_0|sw_input_up_long_0|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|Equal1~2_combout\ = (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(11) & (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(9) & (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(10) & !\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(11),
	datab => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(9),
	datac => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(10),
	datad => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(8),
	combout => \top_sw_0|sw_input_up_long_0|Equal1~2_combout\);

-- Location: LCCOMB_X110_Y43_N24
\top_sw_0|sw_input_up_long_0|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|Equal1~3_combout\ = (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(14) & (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(13) & (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(15) & !\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(14),
	datab => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(13),
	datac => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(15),
	datad => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(12),
	combout => \top_sw_0|sw_input_up_long_0|Equal1~3_combout\);

-- Location: LCCOMB_X110_Y44_N12
\top_sw_0|sw_input_up_long_0|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|Equal1~1_combout\ = (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(6) & (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(5) & (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(4) & !\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(6),
	datab => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(5),
	datac => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(4),
	datad => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(7),
	combout => \top_sw_0|sw_input_up_long_0|Equal1~1_combout\);

-- Location: LCCOMB_X110_Y44_N2
\top_sw_0|sw_input_up_long_0|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|Equal1~0_combout\ = (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(3) & (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(1) & (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(0) & !\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(3),
	datab => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(1),
	datac => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(0),
	datad => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(2),
	combout => \top_sw_0|sw_input_up_long_0|Equal1~0_combout\);

-- Location: LCCOMB_X110_Y43_N30
\top_sw_0|sw_input_up_long_0|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|Equal1~4_combout\ = (\top_sw_0|sw_input_up_long_0|Equal1~2_combout\ & (\top_sw_0|sw_input_up_long_0|Equal1~3_combout\ & (\top_sw_0|sw_input_up_long_0|Equal1~1_combout\ & \top_sw_0|sw_input_up_long_0|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|Equal1~2_combout\,
	datab => \top_sw_0|sw_input_up_long_0|Equal1~3_combout\,
	datac => \top_sw_0|sw_input_up_long_0|Equal1~1_combout\,
	datad => \top_sw_0|sw_input_up_long_0|Equal1~0_combout\,
	combout => \top_sw_0|sw_input_up_long_0|Equal1~4_combout\);

-- Location: LCCOMB_X110_Y43_N28
\top_sw_0|sw_input_up_long_0|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|Equal1~5_combout\ = (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(16) & (!\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(18) & (\top_sw_0|sw_input_up_long_0|Equal1~4_combout\ & !\top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(16),
	datab => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(18),
	datac => \top_sw_0|sw_input_up_long_0|Equal1~4_combout\,
	datad => \top_sw_0|sw_input_up_long_0|sw_10ms_cnt\(17),
	combout => \top_sw_0|sw_input_up_long_0|Equal1~5_combout\);

-- Location: LCCOMB_X110_Y40_N22
\top_sw_0|sw_input_up_long_0|SW_CLR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_sw_0|sw_input_up_long_0|SW_CLR~0_combout\ = (!\top_sw_0|sw_input_up_long_0|Equal1~5_combout\) # (!\top_sw_0|sw_input_up_long_0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_sw_0|sw_input_up_long_0|Equal0~8_combout\,
	datad => \top_sw_0|sw_input_up_long_0|Equal1~5_combout\,
	combout => \top_sw_0|sw_input_up_long_0|SW_CLR~0_combout\);

-- Location: FF_X110_Y40_N23
\top_sw_0|sw_input_up_long_0|SW_CLR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \top_sw_0|sw_input_up_long_0|SW_CLR~0_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_sw_0|sw_input_up_long_0|SW_CLR~q\);

-- Location: LCCOMB_X111_Y40_N16
\state_0|C_UP_LONG~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_0|C_UP_LONG~feeder_combout\ = \top_sw_0|sw_input_up_long_0|SW_CLR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \top_sw_0|sw_input_up_long_0|SW_CLR~q\,
	combout => \state_0|C_UP_LONG~feeder_combout\);

-- Location: FF_X111_Y40_N17
\state_0|C_UP_LONG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \state_0|C_UP_LONG~feeder_combout\,
	clrn => \SW0~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_0|C_UP_LONG~q\);

-- Location: LCCOMB_X111_Y40_N30
\clock_0|tmp_time_01s~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_01s~5_combout\ = (\clock_0|state\(0) & (\clock_0|state\(1) & ((\state_0|C_UP_SHORT~q\) # (\state_0|C_UP_LONG~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_0|C_UP_SHORT~q\,
	datab => \state_0|C_UP_LONG~q\,
	datac => \clock_0|state\(0),
	datad => \clock_0|state\(1),
	combout => \clock_0|tmp_time_01s~5_combout\);

-- Location: LCCOMB_X111_Y38_N8
\clock_0|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Add1~0_combout\ = \clock_0|tmp_cnt\(0) $ (VCC)
-- \clock_0|Add1~1\ = CARRY(\clock_0|tmp_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_0|tmp_cnt\(0),
	datad => VCC,
	combout => \clock_0|Add1~0_combout\,
	cout => \clock_0|Add1~1\);

-- Location: FF_X111_Y38_N9
\clock_0|tmp_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|Add1~0_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_cnt\(0));

-- Location: LCCOMB_X111_Y38_N10
\clock_0|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Add1~2_combout\ = (\clock_0|tmp_cnt\(1) & (!\clock_0|Add1~1\)) # (!\clock_0|tmp_cnt\(1) & ((\clock_0|Add1~1\) # (GND)))
-- \clock_0|Add1~3\ = CARRY((!\clock_0|Add1~1\) # (!\clock_0|tmp_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_0|tmp_cnt\(1),
	datad => VCC,
	cin => \clock_0|Add1~1\,
	combout => \clock_0|Add1~2_combout\,
	cout => \clock_0|Add1~3\);

-- Location: FF_X111_Y38_N11
\clock_0|tmp_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|Add1~2_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_cnt\(1));

-- Location: LCCOMB_X111_Y38_N12
\clock_0|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Add1~4_combout\ = (\clock_0|tmp_cnt\(2) & (\clock_0|Add1~3\ $ (GND))) # (!\clock_0|tmp_cnt\(2) & (!\clock_0|Add1~3\ & VCC))
-- \clock_0|Add1~5\ = CARRY((\clock_0|tmp_cnt\(2) & !\clock_0|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_0|tmp_cnt\(2),
	datad => VCC,
	cin => \clock_0|Add1~3\,
	combout => \clock_0|Add1~4_combout\,
	cout => \clock_0|Add1~5\);

-- Location: LCCOMB_X111_Y38_N2
\clock_0|tmp_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_cnt~1_combout\ = (!\clock_0|Equal15~1_combout\ & \clock_0|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_0|Equal15~1_combout\,
	datad => \clock_0|Add1~4_combout\,
	combout => \clock_0|tmp_cnt~1_combout\);

-- Location: FF_X111_Y38_N3
\clock_0|tmp_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_cnt~1_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_cnt\(2));

-- Location: LCCOMB_X111_Y38_N14
\clock_0|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Add1~6_combout\ = (\clock_0|tmp_cnt\(3) & (!\clock_0|Add1~5\)) # (!\clock_0|tmp_cnt\(3) & ((\clock_0|Add1~5\) # (GND)))
-- \clock_0|Add1~7\ = CARRY((!\clock_0|Add1~5\) # (!\clock_0|tmp_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_cnt\(3),
	datad => VCC,
	cin => \clock_0|Add1~5\,
	combout => \clock_0|Add1~6_combout\,
	cout => \clock_0|Add1~7\);

-- Location: FF_X111_Y38_N15
\clock_0|tmp_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|Add1~6_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_cnt\(3));

-- Location: LCCOMB_X111_Y38_N16
\clock_0|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Add1~8_combout\ = (\clock_0|tmp_cnt\(4) & (\clock_0|Add1~7\ $ (GND))) # (!\clock_0|tmp_cnt\(4) & (!\clock_0|Add1~7\ & VCC))
-- \clock_0|Add1~9\ = CARRY((\clock_0|tmp_cnt\(4) & !\clock_0|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_0|tmp_cnt\(4),
	datad => VCC,
	cin => \clock_0|Add1~7\,
	combout => \clock_0|Add1~8_combout\,
	cout => \clock_0|Add1~9\);

-- Location: FF_X111_Y38_N17
\clock_0|tmp_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|Add1~8_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_cnt\(4));

-- Location: LCCOMB_X111_Y38_N18
\clock_0|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Add1~10_combout\ = (\clock_0|tmp_cnt\(5) & (!\clock_0|Add1~9\)) # (!\clock_0|tmp_cnt\(5) & ((\clock_0|Add1~9\) # (GND)))
-- \clock_0|Add1~11\ = CARRY((!\clock_0|Add1~9\) # (!\clock_0|tmp_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_0|tmp_cnt\(5),
	datad => VCC,
	cin => \clock_0|Add1~9\,
	combout => \clock_0|Add1~10_combout\,
	cout => \clock_0|Add1~11\);

-- Location: LCCOMB_X111_Y38_N28
\clock_0|tmp_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_cnt~0_combout\ = (\clock_0|Add1~10_combout\ & !\clock_0|Equal15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|Add1~10_combout\,
	datad => \clock_0|Equal15~1_combout\,
	combout => \clock_0|tmp_cnt~0_combout\);

-- Location: FF_X111_Y38_N29
\clock_0|tmp_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_cnt~0_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_cnt\(5));

-- Location: LCCOMB_X111_Y38_N20
\clock_0|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Add1~12_combout\ = \clock_0|tmp_cnt\(6) $ (!\clock_0|Add1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_cnt\(6),
	cin => \clock_0|Add1~11\,
	combout => \clock_0|Add1~12_combout\);

-- Location: LCCOMB_X111_Y38_N22
\clock_0|tmp_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_cnt~2_combout\ = (!\clock_0|Equal15~1_combout\ & \clock_0|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_0|Equal15~1_combout\,
	datad => \clock_0|Add1~12_combout\,
	combout => \clock_0|tmp_cnt~2_combout\);

-- Location: FF_X111_Y38_N23
\clock_0|tmp_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_cnt~2_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_cnt\(6));

-- Location: LCCOMB_X111_Y38_N0
\clock_0|Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Equal15~0_combout\ = (\clock_0|tmp_cnt\(1) & (!\clock_0|tmp_cnt\(2) & (!\clock_0|tmp_cnt\(3) & \clock_0|tmp_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_cnt\(1),
	datab => \clock_0|tmp_cnt\(2),
	datac => \clock_0|tmp_cnt\(3),
	datad => \clock_0|tmp_cnt\(5),
	combout => \clock_0|Equal15~0_combout\);

-- Location: LCCOMB_X111_Y38_N30
\clock_0|Equal15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Equal15~1_combout\ = (\clock_0|tmp_cnt\(6) & (!\clock_0|tmp_cnt\(4) & (\clock_0|tmp_cnt\(0) & \clock_0|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_cnt\(6),
	datab => \clock_0|tmp_cnt\(4),
	datac => \clock_0|tmp_cnt\(0),
	datad => \clock_0|Equal15~0_combout\,
	combout => \clock_0|Equal15~1_combout\);

-- Location: LCCOMB_X113_Y39_N24
\clock_0|tmp_time_01s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_01s~6_combout\ = (\clock_0|tmp_time_01s~5_combout\) # ((!\clock_0|state\(1) & (!\clock_0|state\(0) & \clock_0|Equal15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|state\(1),
	datab => \clock_0|state\(0),
	datac => \clock_0|tmp_time_01s~5_combout\,
	datad => \clock_0|Equal15~1_combout\,
	combout => \clock_0|tmp_time_01s~6_combout\);

-- Location: FF_X113_Y39_N29
\clock_0|tmp_time_01s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_time_01s~4_combout\,
	clrn => \SW0~input_o\,
	ena => \clock_0|tmp_time_01s~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_time_01s\(0));

-- Location: LCCOMB_X111_Y39_N0
\FND_mux_0|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux23~0_combout\ = (\state_0|state\(0) & (((\clock_0|tmp_time_01s\(0))))) # (!\state_0|state\(0) & ((\state_0|state\(1) & (\stopwatch_top_0|CNT_0|tmp_cnt_p01s\(0))) # (!\state_0|state\(1) & ((\clock_0|tmp_time_01s\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_0|state\(0),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(0),
	datac => \state_0|state\(1),
	datad => \clock_0|tmp_time_01s\(0),
	combout => \FND_mux_0|Mux23~0_combout\);

-- Location: LCCOMB_X112_Y39_N24
\clock_0|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Equal5~0_combout\ = (\clock_0|state\(1) & \clock_0|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_0|state\(1),
	datad => \clock_0|state\(0),
	combout => \clock_0|Equal5~0_combout\);

-- Location: LCCOMB_X113_Y39_N26
\clock_0|tmp_time_01s~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_01s~7_combout\ = (\clock_0|Equal14~0_combout\ & (!\clock_0|Equal5~0_combout\ & (\clock_0|tmp_time_01s\(0) $ (\clock_0|tmp_time_01s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|Equal14~0_combout\,
	datab => \clock_0|tmp_time_01s\(0),
	datac => \clock_0|tmp_time_01s\(1),
	datad => \clock_0|Equal5~0_combout\,
	combout => \clock_0|tmp_time_01s~7_combout\);

-- Location: FF_X113_Y39_N27
\clock_0|tmp_time_01s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_time_01s~7_combout\,
	clrn => \SW0~input_o\,
	ena => \clock_0|tmp_time_01s~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_time_01s\(1));

-- Location: LCCOMB_X113_Y39_N16
\clock_0|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Add3~0_combout\ = \clock_0|tmp_time_01s\(2) $ (((\clock_0|tmp_time_01s\(1) & \clock_0|tmp_time_01s\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_0|tmp_time_01s\(2),
	datac => \clock_0|tmp_time_01s\(1),
	datad => \clock_0|tmp_time_01s\(0),
	combout => \clock_0|Add3~0_combout\);

-- Location: LCCOMB_X113_Y39_N4
\clock_0|tmp_time_01s~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_01s~8_combout\ = (\clock_0|Equal14~0_combout\ & (\clock_0|Add3~0_combout\ & ((!\clock_0|state\(0)) # (!\clock_0|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|state\(1),
	datab => \clock_0|state\(0),
	datac => \clock_0|Equal14~0_combout\,
	datad => \clock_0|Add3~0_combout\,
	combout => \clock_0|tmp_time_01s~8_combout\);

-- Location: FF_X113_Y39_N5
\clock_0|tmp_time_01s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_time_01s~8_combout\,
	clrn => \SW0~input_o\,
	ena => \clock_0|tmp_time_01s~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_time_01s\(2));

-- Location: LCCOMB_X113_Y39_N30
\clock_0|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Equal14~0_combout\ = ((\clock_0|tmp_time_01s\(2)) # ((\clock_0|tmp_time_01s\(1)) # (!\clock_0|tmp_time_01s\(0)))) # (!\clock_0|tmp_time_01s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_01s\(3),
	datab => \clock_0|tmp_time_01s\(2),
	datac => \clock_0|tmp_time_01s\(1),
	datad => \clock_0|tmp_time_01s\(0),
	combout => \clock_0|Equal14~0_combout\);

-- Location: LCCOMB_X113_Y39_N10
\clock_0|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Add3~1_combout\ = \clock_0|tmp_time_01s\(3) $ (((\clock_0|tmp_time_01s\(1) & (\clock_0|tmp_time_01s\(2) & \clock_0|tmp_time_01s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_01s\(3),
	datab => \clock_0|tmp_time_01s\(1),
	datac => \clock_0|tmp_time_01s\(2),
	datad => \clock_0|tmp_time_01s\(0),
	combout => \clock_0|Add3~1_combout\);

-- Location: LCCOMB_X113_Y39_N6
\clock_0|tmp_time_01s~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_01s~9_combout\ = (\clock_0|Equal14~0_combout\ & (\clock_0|Add3~1_combout\ & ((!\clock_0|state\(0)) # (!\clock_0|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|state\(1),
	datab => \clock_0|state\(0),
	datac => \clock_0|Equal14~0_combout\,
	datad => \clock_0|Add3~1_combout\,
	combout => \clock_0|tmp_time_01s~9_combout\);

-- Location: FF_X113_Y39_N7
\clock_0|tmp_time_01s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_time_01s~9_combout\,
	clrn => \SW0~input_o\,
	ena => \clock_0|tmp_time_01s~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_time_01s\(3));

-- Location: LCCOMB_X110_Y39_N24
\stopwatch_top_0|CNT_0|tmp_cnt_p01s[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_p01s[2]~1_combout\ = \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(2) $ (((\stopwatch_top_0|CNT_0|tmp_cnt_p01s\(1) & (\stopwatch_top_0|CNT_0|tmp_cnt_p01s\(0) & \stopwatch_top_0|CNT_0|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(1),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(0),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(2),
	datad => \stopwatch_top_0|CNT_0|Equal0~0_combout\,
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_p01s[2]~1_combout\);

-- Location: FF_X110_Y39_N25
\stopwatch_top_0|CNT_0|tmp_cnt_p01s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \stopwatch_top_0|CNT_0|tmp_cnt_p01s[2]~1_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(2));

-- Location: LCCOMB_X110_Y39_N30
\stopwatch_top_0|CNT_0|tmp_cnt_p01s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_p01s~0_combout\ = (\stopwatch_top_0|CNT_0|tmp_cnt_p01s\(1) & (((!\stopwatch_top_0|CNT_0|tmp_cnt_p01s\(0))))) # (!\stopwatch_top_0|CNT_0|tmp_cnt_p01s\(1) & (\stopwatch_top_0|CNT_0|tmp_cnt_p01s\(0) & 
-- ((\stopwatch_top_0|CNT_0|tmp_cnt_p01s\(2)) # (!\stopwatch_top_0|CNT_0|tmp_cnt_p01s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(2),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(3),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(1),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(0),
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_p01s~0_combout\);

-- Location: FF_X110_Y39_N31
\stopwatch_top_0|CNT_0|tmp_cnt_p01s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \stopwatch_top_0|CNT_0|tmp_cnt_p01s~0_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	ena => \stopwatch_top_0|CNT_0|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(1));

-- Location: LCCOMB_X110_Y39_N2
\stopwatch_top_0|CNT_0|tmp_cnt_p01s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_p01s~2_combout\ = (\stopwatch_top_0|CNT_0|tmp_cnt_p01s\(1) & (\stopwatch_top_0|CNT_0|tmp_cnt_p01s\(3) $ (((\stopwatch_top_0|CNT_0|tmp_cnt_p01s\(0) & \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(2)))))) # 
-- (!\stopwatch_top_0|CNT_0|tmp_cnt_p01s\(1) & (\stopwatch_top_0|CNT_0|tmp_cnt_p01s\(3) & ((\stopwatch_top_0|CNT_0|tmp_cnt_p01s\(2)) # (!\stopwatch_top_0|CNT_0|tmp_cnt_p01s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(1),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(0),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(3),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(2),
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_p01s~2_combout\);

-- Location: FF_X110_Y39_N3
\stopwatch_top_0|CNT_0|tmp_cnt_p01s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \stopwatch_top_0|CNT_0|tmp_cnt_p01s~2_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	ena => \stopwatch_top_0|CNT_0|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(3));

-- Location: LCCOMB_X109_Y39_N30
\FND_mux_0|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux20~0_combout\ = (\state_0|state\(1) & ((\state_0|state\(0) & (\clock_0|tmp_time_01s\(3))) # (!\state_0|state\(0) & ((\stopwatch_top_0|CNT_0|tmp_cnt_p01s\(3)))))) # (!\state_0|state\(1) & (((\clock_0|tmp_time_01s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_0|state\(1),
	datab => \state_0|state\(0),
	datac => \clock_0|tmp_time_01s\(3),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(3),
	combout => \FND_mux_0|Mux20~0_combout\);

-- Location: LCCOMB_X109_Y39_N16
\FND_mux_0|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux21~0_combout\ = (\state_0|state\(1) & ((\state_0|state\(0) & (\clock_0|tmp_time_01s\(2))) # (!\state_0|state\(0) & ((\stopwatch_top_0|CNT_0|tmp_cnt_p01s\(2)))))) # (!\state_0|state\(1) & (\clock_0|tmp_time_01s\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_01s\(2),
	datab => \state_0|state\(1),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(2),
	datad => \state_0|state\(0),
	combout => \FND_mux_0|Mux21~0_combout\);

-- Location: LCCOMB_X112_Y42_N0
\FND_mux_0|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux22~0_combout\ = (\state_0|state\(0) & (((\clock_0|tmp_time_01s\(1))))) # (!\state_0|state\(0) & ((\state_0|state\(1) & (\stopwatch_top_0|CNT_0|tmp_cnt_p01s\(1))) # (!\state_0|state\(1) & ((\clock_0|tmp_time_01s\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_0|state\(0),
	datab => \state_0|state\(1),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(1),
	datad => \clock_0|tmp_time_01s\(1),
	combout => \FND_mux_0|Mux22~0_combout\);

-- Location: LCCOMB_X112_Y43_N28
\FND_DRIVER_0|SEG_DRV_01S|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_01S|Mux6~0_combout\ = (\FND_mux_0|Mux23~0_combout\ & (\FND_mux_0|Mux20~0_combout\ $ (((!\FND_mux_0|Mux21~0_combout\ & !\FND_mux_0|Mux22~0_combout\))))) # (!\FND_mux_0|Mux23~0_combout\ & (\FND_mux_0|Mux21~0_combout\ & 
-- ((\FND_mux_0|Mux20~0_combout\) # (!\FND_mux_0|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux23~0_combout\,
	datab => \FND_mux_0|Mux20~0_combout\,
	datac => \FND_mux_0|Mux21~0_combout\,
	datad => \FND_mux_0|Mux22~0_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_01S|Mux6~0_combout\);

-- Location: LCCOMB_X112_Y43_N14
\FND_DRIVER_0|SEG_DRV_01S|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_01S|Mux5~0_combout\ = (\FND_mux_0|Mux23~0_combout\ & ((\FND_mux_0|Mux22~0_combout\ & (\FND_mux_0|Mux20~0_combout\)) # (!\FND_mux_0|Mux22~0_combout\ & ((\FND_mux_0|Mux21~0_combout\))))) # (!\FND_mux_0|Mux23~0_combout\ & 
-- (\FND_mux_0|Mux21~0_combout\ & ((\FND_mux_0|Mux20~0_combout\) # (\FND_mux_0|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux23~0_combout\,
	datab => \FND_mux_0|Mux20~0_combout\,
	datac => \FND_mux_0|Mux21~0_combout\,
	datad => \FND_mux_0|Mux22~0_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_01S|Mux5~0_combout\);

-- Location: LCCOMB_X112_Y43_N4
\FND_DRIVER_0|SEG_DRV_01S|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_01S|Mux4~0_combout\ = (\FND_mux_0|Mux21~0_combout\ & (((\FND_mux_0|Mux20~0_combout\)))) # (!\FND_mux_0|Mux21~0_combout\ & (\FND_mux_0|Mux22~0_combout\ & (\FND_mux_0|Mux23~0_combout\ $ (!\FND_mux_0|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux23~0_combout\,
	datab => \FND_mux_0|Mux20~0_combout\,
	datac => \FND_mux_0|Mux21~0_combout\,
	datad => \FND_mux_0|Mux22~0_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_01S|Mux4~0_combout\);

-- Location: LCCOMB_X112_Y43_N2
\FND_DRIVER_0|SEG_DRV_01S|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_01S|Mux3~0_combout\ = (\FND_mux_0|Mux22~0_combout\ & ((\FND_mux_0|Mux23~0_combout\ & ((\FND_mux_0|Mux21~0_combout\))) # (!\FND_mux_0|Mux23~0_combout\ & (\FND_mux_0|Mux20~0_combout\)))) # (!\FND_mux_0|Mux22~0_combout\ & 
-- (!\FND_mux_0|Mux20~0_combout\ & (\FND_mux_0|Mux23~0_combout\ $ (\FND_mux_0|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux23~0_combout\,
	datab => \FND_mux_0|Mux20~0_combout\,
	datac => \FND_mux_0|Mux21~0_combout\,
	datad => \FND_mux_0|Mux22~0_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_01S|Mux3~0_combout\);

-- Location: LCCOMB_X112_Y43_N12
\FND_DRIVER_0|SEG_DRV_01S|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_01S|Mux2~0_combout\ = (\FND_mux_0|Mux23~0_combout\ & ((\FND_mux_0|Mux21~0_combout\ $ (!\FND_mux_0|Mux22~0_combout\)) # (!\FND_mux_0|Mux20~0_combout\))) # (!\FND_mux_0|Mux23~0_combout\ & (\FND_mux_0|Mux21~0_combout\ & 
-- (\FND_mux_0|Mux20~0_combout\ $ (!\FND_mux_0|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux23~0_combout\,
	datab => \FND_mux_0|Mux20~0_combout\,
	datac => \FND_mux_0|Mux21~0_combout\,
	datad => \FND_mux_0|Mux22~0_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_01S|Mux2~0_combout\);

-- Location: LCCOMB_X112_Y43_N18
\FND_DRIVER_0|SEG_DRV_01S|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_01S|Mux1~0_combout\ = (\FND_mux_0|Mux23~0_combout\ & ((\FND_mux_0|Mux22~0_combout\) # ((!\FND_mux_0|Mux20~0_combout\ & !\FND_mux_0|Mux21~0_combout\)))) # (!\FND_mux_0|Mux23~0_combout\ & (\FND_mux_0|Mux22~0_combout\ & 
-- (\FND_mux_0|Mux20~0_combout\ $ (!\FND_mux_0|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux23~0_combout\,
	datab => \FND_mux_0|Mux20~0_combout\,
	datac => \FND_mux_0|Mux21~0_combout\,
	datad => \FND_mux_0|Mux22~0_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_01S|Mux1~0_combout\);

-- Location: LCCOMB_X112_Y43_N20
\FND_DRIVER_0|SEG_DRV_01S|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_01S|Mux0~0_combout\ = (\FND_mux_0|Mux21~0_combout\ & ((\FND_mux_0|Mux20~0_combout\ $ (!\FND_mux_0|Mux22~0_combout\)) # (!\FND_mux_0|Mux23~0_combout\))) # (!\FND_mux_0|Mux21~0_combout\ & (((\FND_mux_0|Mux20~0_combout\) # 
-- (\FND_mux_0|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux23~0_combout\,
	datab => \FND_mux_0|Mux20~0_combout\,
	datac => \FND_mux_0|Mux21~0_combout\,
	datad => \FND_mux_0|Mux22~0_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_01S|Mux0~0_combout\);

-- Location: LCCOMB_X113_Y39_N12
\clock_0|tmp_time_10s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_10s~4_combout\ = (!\clock_0|tmp_time_10s\(0) & ((!\clock_0|state\(0)) # (!\clock_0|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|state\(1),
	datac => \clock_0|tmp_time_10s\(0),
	datad => \clock_0|state\(0),
	combout => \clock_0|tmp_time_10s~4_combout\);

-- Location: LCCOMB_X112_Y39_N26
\clock_0|tmp_time_10s~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_10s~5_combout\ = (!\clock_0|state\(1) & !\clock_0|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_0|state\(1),
	datad => \clock_0|state\(0),
	combout => \clock_0|tmp_time_10s~5_combout\);

-- Location: LCCOMB_X113_Y39_N20
\clock_0|tmp_time_10s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_10s~6_combout\ = (\clock_0|tmp_time_01s~5_combout\) # ((!\clock_0|Equal14~0_combout\ & (\clock_0|tmp_time_10s~5_combout\ & \clock_0|Equal15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|Equal14~0_combout\,
	datab => \clock_0|tmp_time_01s~5_combout\,
	datac => \clock_0|tmp_time_10s~5_combout\,
	datad => \clock_0|Equal15~1_combout\,
	combout => \clock_0|tmp_time_10s~6_combout\);

-- Location: FF_X113_Y39_N13
\clock_0|tmp_time_10s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_time_10s~4_combout\,
	clrn => \SW0~input_o\,
	ena => \clock_0|tmp_time_10s~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_time_10s\(0));

-- Location: LCCOMB_X110_Y39_N26
\stopwatch_top_0|CNT_0|tmp_cnt_p1s[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_p1s[0]~4_combout\ = !\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(0),
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_p1s[0]~4_combout\);

-- Location: LCCOMB_X110_Y39_N6
\stopwatch_top_0|CNT_0|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|Equal1~0_combout\ = (!\stopwatch_top_0|CNT_0|tmp_cnt_p01s\(1) & (!\stopwatch_top_0|CNT_0|tmp_cnt_p01s\(2) & (\stopwatch_top_0|CNT_0|tmp_cnt_p01s\(0) & \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(1),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(2),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(0),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_p01s\(3),
	combout => \stopwatch_top_0|CNT_0|Equal1~0_combout\);

-- Location: LCCOMB_X111_Y39_N22
\stopwatch_top_0|CNT_0|tmp_cnt_p1s[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_p1s[3]~0_combout\ = (!\stopwatch_top_0|STATE_M_0|tmp_state\(1) & (\stopwatch_top_0|CNT_0|Equal1~0_combout\ & \stopwatch_top_0|STATE_M_0|tmp_state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|STATE_M_0|tmp_state\(1),
	datab => \stopwatch_top_0|CNT_0|Equal1~0_combout\,
	datac => \stopwatch_top_0|STATE_M_0|tmp_state\(0),
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_p1s[3]~0_combout\);

-- Location: FF_X111_Y39_N27
\stopwatch_top_0|CNT_0|tmp_cnt_p1s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	asdata => \stopwatch_top_0|CNT_0|tmp_cnt_p1s[0]~4_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	sload => VCC,
	ena => \stopwatch_top_0|CNT_0|tmp_cnt_p1s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(0));

-- Location: LCCOMB_X111_Y39_N26
\FND_mux_0|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux19~0_combout\ = (\state_0|state\(0) & (\clock_0|tmp_time_10s\(0))) # (!\state_0|state\(0) & ((\state_0|state\(1) & ((\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(0)))) # (!\state_0|state\(1) & (\clock_0|tmp_time_10s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_0|state\(0),
	datab => \clock_0|tmp_time_10s\(0),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(0),
	datad => \state_0|state\(1),
	combout => \FND_mux_0|Mux19~0_combout\);

-- Location: LCCOMB_X113_Y39_N2
\clock_0|tmp_time_10s~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_10s~7_combout\ = (\clock_0|Equal13~0_combout\ & (!\clock_0|Equal5~0_combout\ & (\clock_0|tmp_time_10s\(0) $ (\clock_0|tmp_time_10s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|Equal13~0_combout\,
	datab => \clock_0|tmp_time_10s\(0),
	datac => \clock_0|tmp_time_10s\(1),
	datad => \clock_0|Equal5~0_combout\,
	combout => \clock_0|tmp_time_10s~7_combout\);

-- Location: FF_X113_Y39_N3
\clock_0|tmp_time_10s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_time_10s~7_combout\,
	clrn => \SW0~input_o\,
	ena => \clock_0|tmp_time_10s~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_time_10s\(1));

-- Location: LCCOMB_X113_Y39_N0
\clock_0|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Add4~0_combout\ = \clock_0|tmp_time_10s\(2) $ (((\clock_0|tmp_time_10s\(0) & \clock_0|tmp_time_10s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_10s\(2),
	datab => \clock_0|tmp_time_10s\(0),
	datac => \clock_0|tmp_time_10s\(1),
	combout => \clock_0|Add4~0_combout\);

-- Location: LCCOMB_X113_Y39_N8
\clock_0|tmp_time_10s~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_10s~8_combout\ = (\clock_0|Add4~0_combout\ & (\clock_0|Equal13~0_combout\ & ((!\clock_0|state\(1)) # (!\clock_0|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|Add4~0_combout\,
	datab => \clock_0|state\(0),
	datac => \clock_0|state\(1),
	datad => \clock_0|Equal13~0_combout\,
	combout => \clock_0|tmp_time_10s~8_combout\);

-- Location: FF_X113_Y39_N9
\clock_0|tmp_time_10s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_time_10s~8_combout\,
	clrn => \SW0~input_o\,
	ena => \clock_0|tmp_time_10s~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_time_10s\(2));

-- Location: LCCOMB_X113_Y39_N18
\clock_0|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Equal13~0_combout\ = (((\clock_0|tmp_time_10s\(3)) # (\clock_0|tmp_time_10s\(1))) # (!\clock_0|tmp_time_10s\(2))) # (!\clock_0|tmp_time_10s\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_10s\(0),
	datab => \clock_0|tmp_time_10s\(2),
	datac => \clock_0|tmp_time_10s\(3),
	datad => \clock_0|tmp_time_10s\(1),
	combout => \clock_0|Equal13~0_combout\);

-- Location: LCCOMB_X113_Y39_N14
\clock_0|Add4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Add4~1_combout\ = \clock_0|tmp_time_10s\(3) $ (((\clock_0|tmp_time_10s\(2) & (\clock_0|tmp_time_10s\(1) & \clock_0|tmp_time_10s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_10s\(2),
	datab => \clock_0|tmp_time_10s\(1),
	datac => \clock_0|tmp_time_10s\(0),
	datad => \clock_0|tmp_time_10s\(3),
	combout => \clock_0|Add4~1_combout\);

-- Location: LCCOMB_X113_Y39_N22
\clock_0|tmp_time_10s~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_10s~9_combout\ = (\clock_0|Equal13~0_combout\ & (\clock_0|Add4~1_combout\ & ((!\clock_0|state\(0)) # (!\clock_0|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|state\(1),
	datab => \clock_0|state\(0),
	datac => \clock_0|Equal13~0_combout\,
	datad => \clock_0|Add4~1_combout\,
	combout => \clock_0|tmp_time_10s~9_combout\);

-- Location: FF_X113_Y39_N23
\clock_0|tmp_time_10s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_time_10s~9_combout\,
	clrn => \SW0~input_o\,
	ena => \clock_0|tmp_time_10s~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_time_10s\(3));

-- Location: LCCOMB_X110_Y39_N8
\stopwatch_top_0|CNT_0|tmp_cnt_p1s[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_p1s[2]~2_combout\ = \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(2) $ (((\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(1) & (\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(0) & \stopwatch_top_0|CNT_0|tmp_cnt_p1s[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(1),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(0),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(2),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_p1s[3]~0_combout\,
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_p1s[2]~2_combout\);

-- Location: FF_X110_Y39_N9
\stopwatch_top_0|CNT_0|tmp_cnt_p1s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \stopwatch_top_0|CNT_0|tmp_cnt_p1s[2]~2_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(2));

-- Location: LCCOMB_X111_Y39_N4
\stopwatch_top_0|CNT_0|tmp_cnt_p1s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_p1s~1_combout\ = (\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(0) & (!\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(1) & ((\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(2)) # (!\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(3))))) # 
-- (!\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(0) & (((\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(0),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(2),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(1),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(3),
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_p1s~1_combout\);

-- Location: FF_X111_Y39_N5
\stopwatch_top_0|CNT_0|tmp_cnt_p1s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \stopwatch_top_0|CNT_0|tmp_cnt_p1s~1_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	ena => \stopwatch_top_0|CNT_0|tmp_cnt_p1s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(1));

-- Location: LCCOMB_X110_Y39_N16
\stopwatch_top_0|CNT_0|tmp_cnt_p1s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_p1s~3_combout\ = (\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(1) & (\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(3) $ (((\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(2) & \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(0)))))) # 
-- (!\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(1) & (\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(3) & ((\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(2)) # (!\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(1),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(2),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(3),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(0),
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_p1s~3_combout\);

-- Location: FF_X111_Y39_N13
\stopwatch_top_0|CNT_0|tmp_cnt_p1s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	asdata => \stopwatch_top_0|CNT_0|tmp_cnt_p1s~3_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	sload => VCC,
	ena => \stopwatch_top_0|CNT_0|tmp_cnt_p1s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(3));

-- Location: LCCOMB_X111_Y39_N12
\FND_mux_0|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux16~0_combout\ = (\state_0|state\(0) & (\clock_0|tmp_time_10s\(3))) # (!\state_0|state\(0) & ((\state_0|state\(1) & ((\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(3)))) # (!\state_0|state\(1) & (\clock_0|tmp_time_10s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_0|state\(0),
	datab => \clock_0|tmp_time_10s\(3),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(3),
	datad => \state_0|state\(1),
	combout => \FND_mux_0|Mux16~0_combout\);

-- Location: LCCOMB_X109_Y39_N20
\FND_mux_0|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux17~0_combout\ = (\state_0|state\(1) & ((\state_0|state\(0) & (\clock_0|tmp_time_10s\(2))) # (!\state_0|state\(0) & ((\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(2)))))) # (!\state_0|state\(1) & (\clock_0|tmp_time_10s\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_10s\(2),
	datab => \state_0|state\(1),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(2),
	datad => \state_0|state\(0),
	combout => \FND_mux_0|Mux17~0_combout\);

-- Location: LCCOMB_X111_Y39_N10
\FND_mux_0|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux18~0_combout\ = (\state_0|state\(1) & ((\state_0|state\(0) & ((\clock_0|tmp_time_10s\(1)))) # (!\state_0|state\(0) & (\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(1))))) # (!\state_0|state\(1) & (((\clock_0|tmp_time_10s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_0|state\(1),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(1),
	datac => \state_0|state\(0),
	datad => \clock_0|tmp_time_10s\(1),
	combout => \FND_mux_0|Mux18~0_combout\);

-- Location: LCCOMB_X111_Y39_N6
\FND_DRIVER_0|SEG_DRV_10S|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_10S|Mux6~0_combout\ = (\FND_mux_0|Mux19~0_combout\ & (\FND_mux_0|Mux16~0_combout\ $ (((!\FND_mux_0|Mux17~0_combout\ & !\FND_mux_0|Mux18~0_combout\))))) # (!\FND_mux_0|Mux19~0_combout\ & (\FND_mux_0|Mux17~0_combout\ & 
-- ((\FND_mux_0|Mux16~0_combout\) # (!\FND_mux_0|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux19~0_combout\,
	datab => \FND_mux_0|Mux16~0_combout\,
	datac => \FND_mux_0|Mux17~0_combout\,
	datad => \FND_mux_0|Mux18~0_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_10S|Mux6~0_combout\);

-- Location: LCCOMB_X111_Y39_N24
\FND_DRIVER_0|SEG_DRV_10S|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_10S|Mux5~0_combout\ = (\FND_mux_0|Mux19~0_combout\ & ((\FND_mux_0|Mux18~0_combout\ & (\FND_mux_0|Mux16~0_combout\)) # (!\FND_mux_0|Mux18~0_combout\ & ((\FND_mux_0|Mux17~0_combout\))))) # (!\FND_mux_0|Mux19~0_combout\ & 
-- (\FND_mux_0|Mux17~0_combout\ & ((\FND_mux_0|Mux16~0_combout\) # (\FND_mux_0|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux19~0_combout\,
	datab => \FND_mux_0|Mux16~0_combout\,
	datac => \FND_mux_0|Mux17~0_combout\,
	datad => \FND_mux_0|Mux18~0_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_10S|Mux5~0_combout\);

-- Location: LCCOMB_X111_Y39_N18
\FND_DRIVER_0|SEG_DRV_10S|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_10S|Mux4~0_combout\ = (\FND_mux_0|Mux17~0_combout\ & (((\FND_mux_0|Mux16~0_combout\)))) # (!\FND_mux_0|Mux17~0_combout\ & (\FND_mux_0|Mux18~0_combout\ & (\FND_mux_0|Mux19~0_combout\ $ (!\FND_mux_0|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux19~0_combout\,
	datab => \FND_mux_0|Mux16~0_combout\,
	datac => \FND_mux_0|Mux17~0_combout\,
	datad => \FND_mux_0|Mux18~0_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_10S|Mux4~0_combout\);

-- Location: LCCOMB_X111_Y39_N20
\FND_DRIVER_0|SEG_DRV_10S|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_10S|Mux3~0_combout\ = (\FND_mux_0|Mux18~0_combout\ & ((\FND_mux_0|Mux19~0_combout\ & ((\FND_mux_0|Mux17~0_combout\))) # (!\FND_mux_0|Mux19~0_combout\ & (\FND_mux_0|Mux16~0_combout\)))) # (!\FND_mux_0|Mux18~0_combout\ & 
-- (!\FND_mux_0|Mux16~0_combout\ & (\FND_mux_0|Mux19~0_combout\ $ (\FND_mux_0|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux19~0_combout\,
	datab => \FND_mux_0|Mux16~0_combout\,
	datac => \FND_mux_0|Mux17~0_combout\,
	datad => \FND_mux_0|Mux18~0_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_10S|Mux3~0_combout\);

-- Location: LCCOMB_X111_Y39_N14
\FND_DRIVER_0|SEG_DRV_10S|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_10S|Mux2~0_combout\ = (\FND_mux_0|Mux19~0_combout\ & ((\FND_mux_0|Mux17~0_combout\ $ (!\FND_mux_0|Mux18~0_combout\)) # (!\FND_mux_0|Mux16~0_combout\))) # (!\FND_mux_0|Mux19~0_combout\ & (\FND_mux_0|Mux17~0_combout\ & 
-- (\FND_mux_0|Mux16~0_combout\ $ (!\FND_mux_0|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux19~0_combout\,
	datab => \FND_mux_0|Mux16~0_combout\,
	datac => \FND_mux_0|Mux17~0_combout\,
	datad => \FND_mux_0|Mux18~0_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_10S|Mux2~0_combout\);

-- Location: LCCOMB_X111_Y39_N28
\FND_DRIVER_0|SEG_DRV_10S|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_10S|Mux1~0_combout\ = (\FND_mux_0|Mux19~0_combout\ & ((\FND_mux_0|Mux18~0_combout\) # ((!\FND_mux_0|Mux16~0_combout\ & !\FND_mux_0|Mux17~0_combout\)))) # (!\FND_mux_0|Mux19~0_combout\ & (\FND_mux_0|Mux18~0_combout\ & 
-- (\FND_mux_0|Mux16~0_combout\ $ (!\FND_mux_0|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux19~0_combout\,
	datab => \FND_mux_0|Mux16~0_combout\,
	datac => \FND_mux_0|Mux17~0_combout\,
	datad => \FND_mux_0|Mux18~0_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_10S|Mux1~0_combout\);

-- Location: LCCOMB_X111_Y39_N2
\FND_DRIVER_0|SEG_DRV_10S|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_10S|Mux0~0_combout\ = (\FND_mux_0|Mux17~0_combout\ & ((\FND_mux_0|Mux16~0_combout\ $ (!\FND_mux_0|Mux18~0_combout\)) # (!\FND_mux_0|Mux19~0_combout\))) # (!\FND_mux_0|Mux17~0_combout\ & (((\FND_mux_0|Mux16~0_combout\) # 
-- (\FND_mux_0|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux19~0_combout\,
	datab => \FND_mux_0|Mux16~0_combout\,
	datac => \FND_mux_0|Mux17~0_combout\,
	datad => \FND_mux_0|Mux18~0_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_10S|Mux0~0_combout\);

-- Location: LCCOMB_X109_Y37_N20
\alarm_0|tmp_set_01M[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_01M[0]~4_combout\ = !\alarm_0|tmp_set_01M\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alarm_0|tmp_set_01M\(0),
	combout => \alarm_0|tmp_set_01M[0]~4_combout\);

-- Location: LCCOMB_X106_Y39_N18
\state_0|A_MODE~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_0|A_MODE~feeder_combout\ = \state_0|C_MODE~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_0|C_MODE~0_combout\,
	combout => \state_0|A_MODE~feeder_combout\);

-- Location: FF_X106_Y39_N19
\state_0|A_MODE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \state_0|A_MODE~feeder_combout\,
	clrn => \SW0~input_o\,
	ena => \FND_DRIVER_0|SEG_DRV_ST1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_0|A_MODE~q\);

-- Location: LCCOMB_X108_Y38_N2
\alarm_0|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|Add6~0_combout\ = \alarm_0|tmp_set_01H\(2) $ (((\alarm_0|tmp_set_01H\(0) & !\alarm_0|tmp_set_01H\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alarm_0|tmp_set_01H\(0),
	datac => \alarm_0|tmp_set_01H\(1),
	datad => \alarm_0|tmp_set_01H\(2),
	combout => \alarm_0|Add6~0_combout\);

-- Location: LCCOMB_X108_Y38_N28
\alarm_0|tmp_set_10H[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_10H[3]~0_combout\ = (\alarm_0|tmp_set_01H\(3) & (!\alarm_0|tmp_set_01H\(2) & (\alarm_0|tmp_set_01H\(1) & \alarm_0|tmp_set_01H\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_01H\(3),
	datab => \alarm_0|tmp_set_01H\(2),
	datac => \alarm_0|tmp_set_01H\(1),
	datad => \alarm_0|tmp_set_01H\(0),
	combout => \alarm_0|tmp_set_10H[3]~0_combout\);

-- Location: LCCOMB_X108_Y38_N8
\alarm_0|tmp_set_10H[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_10H[3]~1_combout\ = (\alarm_0|tmp_set_10H\(1) & (\alarm_0|Equal10~0_combout\ & ((\alarm_0|tmp_set_10H\(0))))) # (!\alarm_0|tmp_set_10H\(1) & (((\alarm_0|tmp_set_10H[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|Equal10~0_combout\,
	datab => \alarm_0|tmp_set_10H[3]~0_combout\,
	datac => \alarm_0|tmp_set_10H\(0),
	datad => \alarm_0|tmp_set_10H\(1),
	combout => \alarm_0|tmp_set_10H[3]~1_combout\);

-- Location: LCCOMB_X108_Y37_N16
\alarm_0|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|Equal4~0_combout\ = (!\alarm_0|mode_tmp\(2) & (!\alarm_0|mode_tmp\(1) & !\alarm_0|mode_tmp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|mode_tmp\(2),
	datab => \alarm_0|mode_tmp\(1),
	datad => \alarm_0|mode_tmp\(0),
	combout => \alarm_0|Equal4~0_combout\);

-- Location: LCCOMB_X108_Y37_N10
\alarm_0|mode_tmp[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|mode_tmp[1]~1_combout\ = (\state_0|A_ADJUST_LONG~q\ & ((\alarm_0|Equal4~0_combout\) # (!\alarm_0|mode_tmp[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alarm_0|Equal4~0_combout\,
	datac => \state_0|A_ADJUST_LONG~q\,
	datad => \alarm_0|mode_tmp[1]~0_combout\,
	combout => \alarm_0|mode_tmp[1]~1_combout\);

-- Location: LCCOMB_X108_Y37_N20
\alarm_0|mode_tmp[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|mode_tmp[1]~3_combout\ = (\alarm_0|mode_tmp[1]~2_combout\ & (\alarm_0|mode_tmp\(1))) # (!\alarm_0|mode_tmp[1]~2_combout\ & ((\alarm_0|mode_tmp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alarm_0|mode_tmp[1]~2_combout\,
	datac => \alarm_0|mode_tmp\(1),
	datad => \alarm_0|mode_tmp[1]~1_combout\,
	combout => \alarm_0|mode_tmp[1]~3_combout\);

-- Location: FF_X108_Y37_N21
\alarm_0|mode_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|mode_tmp[1]~3_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|mode_tmp\(1));

-- Location: LCCOMB_X109_Y40_N14
\state_0|A_UP_SHORT~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_0|A_UP_SHORT~feeder_combout\ = \top_sw_0|sw_input_up|SW_CLR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \top_sw_0|sw_input_up|SW_CLR~q\,
	combout => \state_0|A_UP_SHORT~feeder_combout\);

-- Location: FF_X109_Y40_N15
\state_0|A_UP_SHORT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \state_0|A_UP_SHORT~feeder_combout\,
	clrn => \SW0~input_o\,
	ena => \FND_DRIVER_0|SEG_DRV_ST1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_0|A_UP_SHORT~q\);

-- Location: LCCOMB_X109_Y40_N24
\state_0|A_UP_LONG~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_0|A_UP_LONG~feeder_combout\ = \top_sw_0|sw_input_up_long_0|SW_CLR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \top_sw_0|sw_input_up_long_0|SW_CLR~q\,
	combout => \state_0|A_UP_LONG~feeder_combout\);

-- Location: FF_X109_Y40_N25
\state_0|A_UP_LONG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \state_0|A_UP_LONG~feeder_combout\,
	clrn => \SW0~input_o\,
	ena => \FND_DRIVER_0|SEG_DRV_ST1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_0|A_UP_LONG~q\);

-- Location: LCCOMB_X109_Y40_N18
\alarm_0|tmp_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_cnt~0_combout\ = (\alarm_0|tmp_cnt\(2) & (\alarm_0|tmp_cnt\(3) $ (((\alarm_0|tmp_cnt\(1) & \alarm_0|tmp_cnt\(0)))))) # (!\alarm_0|tmp_cnt\(2) & (\alarm_0|tmp_cnt\(3) & ((\alarm_0|tmp_cnt\(0)) # (!\alarm_0|tmp_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_cnt\(2),
	datab => \alarm_0|tmp_cnt\(1),
	datac => \alarm_0|tmp_cnt\(3),
	datad => \alarm_0|tmp_cnt\(0),
	combout => \alarm_0|tmp_cnt~0_combout\);

-- Location: FF_X109_Y40_N19
\alarm_0|tmp_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_cnt~0_combout\,
	clrn => \SW0~input_o\,
	ena => \state_0|A_UP_LONG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_cnt\(3));

-- Location: LCCOMB_X109_Y40_N16
\alarm_0|tmp_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_cnt~1_combout\ = (\alarm_0|tmp_cnt\(1) & (!\alarm_0|tmp_cnt\(0) & ((\alarm_0|tmp_cnt\(2)) # (!\alarm_0|tmp_cnt\(3))))) # (!\alarm_0|tmp_cnt\(1) & (((\alarm_0|tmp_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_cnt\(2),
	datab => \alarm_0|tmp_cnt\(3),
	datac => \alarm_0|tmp_cnt\(1),
	datad => \alarm_0|tmp_cnt\(0),
	combout => \alarm_0|tmp_cnt~1_combout\);

-- Location: FF_X109_Y40_N17
\alarm_0|tmp_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_cnt~1_combout\,
	clrn => \SW0~input_o\,
	ena => \state_0|A_UP_LONG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_cnt\(1));

-- Location: LCCOMB_X110_Y40_N20
\alarm_0|tmp_cnt[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_cnt[2]~2_combout\ = \alarm_0|tmp_cnt\(2) $ (((\alarm_0|tmp_cnt\(1) & (\alarm_0|tmp_cnt\(0) & \state_0|A_UP_LONG~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_cnt\(1),
	datab => \alarm_0|tmp_cnt\(0),
	datac => \alarm_0|tmp_cnt\(2),
	datad => \state_0|A_UP_LONG~q\,
	combout => \alarm_0|tmp_cnt[2]~2_combout\);

-- Location: FF_X110_Y40_N21
\alarm_0|tmp_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_cnt[2]~2_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_cnt\(2));

-- Location: LCCOMB_X109_Y40_N6
\alarm_0|tmp_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_cnt~3_combout\ = (!\alarm_0|tmp_cnt\(0) & ((\alarm_0|tmp_cnt\(2)) # ((!\alarm_0|tmp_cnt\(1)) # (!\alarm_0|tmp_cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_cnt\(2),
	datab => \alarm_0|tmp_cnt\(3),
	datac => \alarm_0|tmp_cnt\(0),
	datad => \alarm_0|tmp_cnt\(1),
	combout => \alarm_0|tmp_cnt~3_combout\);

-- Location: FF_X109_Y40_N7
\alarm_0|tmp_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_cnt~3_combout\,
	clrn => \SW0~input_o\,
	ena => \state_0|A_UP_LONG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_cnt\(0));

-- Location: LCCOMB_X109_Y40_N28
\alarm_0|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|Equal9~0_combout\ = (!\alarm_0|tmp_cnt\(0) & (\alarm_0|tmp_cnt\(3) & (!\alarm_0|tmp_cnt\(2) & \alarm_0|tmp_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_cnt\(0),
	datab => \alarm_0|tmp_cnt\(3),
	datac => \alarm_0|tmp_cnt\(2),
	datad => \alarm_0|tmp_cnt\(1),
	combout => \alarm_0|Equal9~0_combout\);

-- Location: LCCOMB_X109_Y40_N10
\alarm_0|tmp_set_01H[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_01H[3]~0_combout\ = (\state_0|A_ADJUST_LONG~q\ & ((\state_0|A_UP_SHORT~q\) # ((\state_0|A_UP_LONG~q\ & \alarm_0|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_0|A_UP_SHORT~q\,
	datab => \state_0|A_UP_LONG~q\,
	datac => \state_0|A_ADJUST_LONG~q\,
	datad => \alarm_0|Equal9~0_combout\,
	combout => \alarm_0|tmp_set_01H[3]~0_combout\);

-- Location: LCCOMB_X109_Y40_N30
\alarm_0|tmp_set_01H[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_01H[3]~1_combout\ = (\alarm_0|mode_tmp\(0) & (!\alarm_0|mode_tmp\(2) & (\alarm_0|mode_tmp\(1) & \alarm_0|tmp_set_01H[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|mode_tmp\(0),
	datab => \alarm_0|mode_tmp\(2),
	datac => \alarm_0|mode_tmp\(1),
	datad => \alarm_0|tmp_set_01H[3]~0_combout\,
	combout => \alarm_0|tmp_set_01H[3]~1_combout\);

-- Location: LCCOMB_X108_Y38_N12
\alarm_0|tmp_set_10H[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_10H[0]~2_combout\ = (\alarm_0|tmp_set_10H[3]~1_combout\ & ((\alarm_0|tmp_set_10H\(0) & ((\alarm_0|Equal10~0_combout\) # (!\alarm_0|tmp_set_01H[3]~1_combout\))) # (!\alarm_0|tmp_set_10H\(0) & ((\alarm_0|tmp_set_01H[3]~1_combout\))))) # 
-- (!\alarm_0|tmp_set_10H[3]~1_combout\ & (((\alarm_0|tmp_set_10H\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|Equal10~0_combout\,
	datab => \alarm_0|tmp_set_10H[3]~1_combout\,
	datac => \alarm_0|tmp_set_10H\(0),
	datad => \alarm_0|tmp_set_01H[3]~1_combout\,
	combout => \alarm_0|tmp_set_10H[0]~2_combout\);

-- Location: FF_X108_Y38_N13
\alarm_0|tmp_set_10H[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_set_10H[0]~2_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_set_10H\(0));

-- Location: LCCOMB_X108_Y38_N4
\alarm_0|tmp_set_01H~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_01H~3_combout\ = (\alarm_0|tmp_set_10H[3]~0_combout\) # ((\alarm_0|tmp_set_10H\(1) & (\alarm_0|tmp_set_10H\(0) & \alarm_0|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_10H\(1),
	datab => \alarm_0|tmp_set_10H\(0),
	datac => \alarm_0|Equal10~0_combout\,
	datad => \alarm_0|tmp_set_10H[3]~0_combout\,
	combout => \alarm_0|tmp_set_01H~3_combout\);

-- Location: LCCOMB_X108_Y38_N24
\alarm_0|tmp_set_01H[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_01H[3]~7_combout\ = (\alarm_0|tmp_set_01H[3]~1_combout\ & ((!\alarm_0|tmp_set_10H[3]~0_combout\) # (!\alarm_0|tmp_set_10H\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_10H\(1),
	datab => \alarm_0|tmp_set_10H[3]~0_combout\,
	datad => \alarm_0|tmp_set_01H[3]~1_combout\,
	combout => \alarm_0|tmp_set_01H[3]~7_combout\);

-- Location: LCCOMB_X108_Y38_N0
\alarm_0|tmp_set_01H[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_01H[2]~8_combout\ = (\alarm_0|tmp_set_01H[3]~7_combout\ & (\alarm_0|Add6~0_combout\ & (!\alarm_0|tmp_set_01H~3_combout\))) # (!\alarm_0|tmp_set_01H[3]~7_combout\ & (((\alarm_0|tmp_set_01H\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|Add6~0_combout\,
	datab => \alarm_0|tmp_set_01H~3_combout\,
	datac => \alarm_0|tmp_set_01H\(2),
	datad => \alarm_0|tmp_set_01H[3]~7_combout\,
	combout => \alarm_0|tmp_set_01H[2]~8_combout\);

-- Location: FF_X108_Y38_N1
\alarm_0|tmp_set_01H[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_set_01H[2]~8_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_set_01H\(2));

-- Location: LCCOMB_X108_Y38_N26
\alarm_0|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|Equal10~0_combout\ = (!\alarm_0|tmp_set_01H\(3) & (!\alarm_0|tmp_set_01H\(2) & (!\alarm_0|tmp_set_01H\(1) & \alarm_0|tmp_set_01H\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_01H\(3),
	datab => \alarm_0|tmp_set_01H\(2),
	datac => \alarm_0|tmp_set_01H\(1),
	datad => \alarm_0|tmp_set_01H\(0),
	combout => \alarm_0|Equal10~0_combout\);

-- Location: LCCOMB_X108_Y38_N10
\alarm_0|tmp_set_10H[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_10H[3]~3_combout\ = (\alarm_0|tmp_set_10H[3]~1_combout\ & \alarm_0|tmp_set_01H[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alarm_0|tmp_set_10H[3]~1_combout\,
	datad => \alarm_0|tmp_set_01H[3]~1_combout\,
	combout => \alarm_0|tmp_set_10H[3]~3_combout\);

-- Location: LCCOMB_X108_Y38_N6
\alarm_0|tmp_set_10H[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_10H[1]~4_combout\ = (\alarm_0|tmp_set_10H[3]~3_combout\ & (!\alarm_0|Equal10~0_combout\ & (\alarm_0|tmp_set_10H\(0) $ (!\alarm_0|tmp_set_10H\(1))))) # (!\alarm_0|tmp_set_10H[3]~3_combout\ & (((\alarm_0|tmp_set_10H\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|Equal10~0_combout\,
	datab => \alarm_0|tmp_set_10H\(0),
	datac => \alarm_0|tmp_set_10H\(1),
	datad => \alarm_0|tmp_set_10H[3]~3_combout\,
	combout => \alarm_0|tmp_set_10H[1]~4_combout\);

-- Location: FF_X108_Y38_N7
\alarm_0|tmp_set_10H[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_set_10H[1]~4_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_set_10H\(1));

-- Location: LCCOMB_X108_Y38_N20
\alarm_0|tmp_set_01H[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_01H[0]~2_combout\ = \alarm_0|tmp_set_01H\(0) $ (((\alarm_0|tmp_set_01H[3]~1_combout\ & ((!\alarm_0|tmp_set_10H[3]~0_combout\) # (!\alarm_0|tmp_set_10H\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_10H\(1),
	datab => \alarm_0|tmp_set_10H[3]~0_combout\,
	datac => \alarm_0|tmp_set_01H\(0),
	datad => \alarm_0|tmp_set_01H[3]~1_combout\,
	combout => \alarm_0|tmp_set_01H[0]~2_combout\);

-- Location: FF_X108_Y38_N21
\alarm_0|tmp_set_01H[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_set_01H[0]~2_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_set_01H\(0));

-- Location: LCCOMB_X108_Y38_N22
\alarm_0|tmp_set_01H[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_01H[1]~4_combout\ = (!\alarm_0|tmp_set_01H~3_combout\ & (\alarm_0|tmp_set_01H\(0) $ (!\alarm_0|tmp_set_01H\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alarm_0|tmp_set_01H\(0),
	datac => \alarm_0|tmp_set_01H~3_combout\,
	datad => \alarm_0|tmp_set_01H\(1),
	combout => \alarm_0|tmp_set_01H[1]~4_combout\);

-- Location: LCCOMB_X108_Y38_N16
\alarm_0|tmp_set_01H[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_01H[1]~5_combout\ = (\alarm_0|tmp_set_10H\(1) & (!\alarm_0|Equal10~0_combout\ & \alarm_0|tmp_set_10H[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_10H\(1),
	datac => \alarm_0|Equal10~0_combout\,
	datad => \alarm_0|tmp_set_10H[3]~0_combout\,
	combout => \alarm_0|tmp_set_01H[1]~5_combout\);

-- Location: LCCOMB_X108_Y38_N18
\alarm_0|tmp_set_01H[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_01H[1]~6_combout\ = (\alarm_0|tmp_set_01H[3]~1_combout\ & (!\alarm_0|tmp_set_01H[1]~4_combout\ & ((\alarm_0|tmp_set_01H\(1)) # (!\alarm_0|tmp_set_01H[1]~5_combout\)))) # (!\alarm_0|tmp_set_01H[3]~1_combout\ & 
-- (((\alarm_0|tmp_set_01H\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_01H[1]~4_combout\,
	datab => \alarm_0|tmp_set_01H[1]~5_combout\,
	datac => \alarm_0|tmp_set_01H\(1),
	datad => \alarm_0|tmp_set_01H[3]~1_combout\,
	combout => \alarm_0|tmp_set_01H[1]~6_combout\);

-- Location: FF_X108_Y38_N19
\alarm_0|tmp_set_01H[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_set_01H[1]~6_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_set_01H\(1));

-- Location: LCCOMB_X108_Y38_N14
\alarm_0|Add6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|Add6~1_combout\ = \alarm_0|tmp_set_01H\(3) $ (((!\alarm_0|tmp_set_01H\(1) & (\alarm_0|tmp_set_01H\(2) & \alarm_0|tmp_set_01H\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_01H\(1),
	datab => \alarm_0|tmp_set_01H\(2),
	datac => \alarm_0|tmp_set_01H\(3),
	datad => \alarm_0|tmp_set_01H\(0),
	combout => \alarm_0|Add6~1_combout\);

-- Location: LCCOMB_X108_Y38_N30
\alarm_0|tmp_set_01H[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_01H[3]~9_combout\ = (\alarm_0|tmp_set_01H[3]~7_combout\ & (\alarm_0|Add6~1_combout\ & (!\alarm_0|tmp_set_01H~3_combout\))) # (!\alarm_0|tmp_set_01H[3]~7_combout\ & (((\alarm_0|tmp_set_01H\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|Add6~1_combout\,
	datab => \alarm_0|tmp_set_01H~3_combout\,
	datac => \alarm_0|tmp_set_01H\(3),
	datad => \alarm_0|tmp_set_01H[3]~7_combout\,
	combout => \alarm_0|tmp_set_01H[3]~9_combout\);

-- Location: FF_X108_Y38_N31
\alarm_0|tmp_set_01H[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_set_01H[3]~9_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_set_01H\(3));

-- Location: LCCOMB_X110_Y37_N16
\clock_0|tmp_time_01h[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_01h[0]~9_combout\ = !\clock_0|tmp_time_01h\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clock_0|tmp_time_01h\(0),
	combout => \clock_0|tmp_time_01h[0]~9_combout\);

-- Location: LCCOMB_X111_Y40_N4
\clock_0|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Add2~0_combout\ = \clock_0|tmp_cnt_long_press\(0) $ (VCC)
-- \clock_0|Add2~1\ = CARRY(\clock_0|tmp_cnt_long_press\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_0|tmp_cnt_long_press\(0),
	datad => VCC,
	combout => \clock_0|Add2~0_combout\,
	cout => \clock_0|Add2~1\);

-- Location: LCCOMB_X111_Y40_N24
\clock_0|tmp_cnt_long_press~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_cnt_long_press~0_combout\ = (\clock_0|Add2~0_combout\ & (((!\clock_0|tmp_cnt_long_press\(4)) # (!\clock_0|tmp_cnt_long_press\(2))) # (!\clock_0|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|Equal2~0_combout\,
	datab => \clock_0|Add2~0_combout\,
	datac => \clock_0|tmp_cnt_long_press\(2),
	datad => \clock_0|tmp_cnt_long_press\(4),
	combout => \clock_0|tmp_cnt_long_press~0_combout\);

-- Location: FF_X111_Y40_N25
\clock_0|tmp_cnt_long_press[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_cnt_long_press~0_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_cnt_long_press\(0));

-- Location: LCCOMB_X111_Y40_N6
\clock_0|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Add2~2_combout\ = (\clock_0|tmp_cnt_long_press\(1) & (!\clock_0|Add2~1\)) # (!\clock_0|tmp_cnt_long_press\(1) & ((\clock_0|Add2~1\) # (GND)))
-- \clock_0|Add2~3\ = CARRY((!\clock_0|Add2~1\) # (!\clock_0|tmp_cnt_long_press\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_0|tmp_cnt_long_press\(1),
	datad => VCC,
	cin => \clock_0|Add2~1\,
	combout => \clock_0|Add2~2_combout\,
	cout => \clock_0|Add2~3\);

-- Location: FF_X111_Y40_N7
\clock_0|tmp_cnt_long_press[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|Add2~2_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_cnt_long_press\(1));

-- Location: LCCOMB_X111_Y40_N8
\clock_0|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Add2~4_combout\ = (\clock_0|tmp_cnt_long_press\(2) & (\clock_0|Add2~3\ $ (GND))) # (!\clock_0|tmp_cnt_long_press\(2) & (!\clock_0|Add2~3\ & VCC))
-- \clock_0|Add2~5\ = CARRY((\clock_0|tmp_cnt_long_press\(2) & !\clock_0|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_cnt_long_press\(2),
	datad => VCC,
	cin => \clock_0|Add2~3\,
	combout => \clock_0|Add2~4_combout\,
	cout => \clock_0|Add2~5\);

-- Location: LCCOMB_X111_Y40_N10
\clock_0|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Add2~6_combout\ = (\clock_0|tmp_cnt_long_press\(3) & (!\clock_0|Add2~5\)) # (!\clock_0|tmp_cnt_long_press\(3) & ((\clock_0|Add2~5\) # (GND)))
-- \clock_0|Add2~7\ = CARRY((!\clock_0|Add2~5\) # (!\clock_0|tmp_cnt_long_press\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_cnt_long_press\(3),
	datad => VCC,
	cin => \clock_0|Add2~5\,
	combout => \clock_0|Add2~6_combout\,
	cout => \clock_0|Add2~7\);

-- Location: FF_X111_Y40_N11
\clock_0|tmp_cnt_long_press[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|Add2~6_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_cnt_long_press\(3));

-- Location: LCCOMB_X111_Y40_N22
\clock_0|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Equal2~0_combout\ = (!\clock_0|tmp_cnt_long_press\(3) & (!\clock_0|tmp_cnt_long_press\(0) & !\clock_0|tmp_cnt_long_press\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_cnt_long_press\(3),
	datab => \clock_0|tmp_cnt_long_press\(0),
	datad => \clock_0|tmp_cnt_long_press\(1),
	combout => \clock_0|Equal2~0_combout\);

-- Location: LCCOMB_X111_Y40_N26
\clock_0|tmp_cnt_long_press~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_cnt_long_press~2_combout\ = (\clock_0|Add2~4_combout\ & (((!\clock_0|tmp_cnt_long_press\(4)) # (!\clock_0|tmp_cnt_long_press\(2))) # (!\clock_0|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|Equal2~0_combout\,
	datab => \clock_0|Add2~4_combout\,
	datac => \clock_0|tmp_cnt_long_press\(2),
	datad => \clock_0|tmp_cnt_long_press\(4),
	combout => \clock_0|tmp_cnt_long_press~2_combout\);

-- Location: FF_X111_Y40_N27
\clock_0|tmp_cnt_long_press[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_cnt_long_press~2_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_cnt_long_press\(2));

-- Location: LCCOMB_X111_Y40_N12
\clock_0|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Add2~8_combout\ = \clock_0|Add2~7\ $ (!\clock_0|tmp_cnt_long_press\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clock_0|tmp_cnt_long_press\(4),
	cin => \clock_0|Add2~7\,
	combout => \clock_0|Add2~8_combout\);

-- Location: LCCOMB_X111_Y40_N0
\clock_0|tmp_cnt_long_press~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_cnt_long_press~1_combout\ = (\clock_0|Add2~8_combout\ & (((!\clock_0|tmp_cnt_long_press\(4)) # (!\clock_0|Equal2~0_combout\)) # (!\clock_0|tmp_cnt_long_press\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_cnt_long_press\(2),
	datab => \clock_0|Equal2~0_combout\,
	datac => \clock_0|tmp_cnt_long_press\(4),
	datad => \clock_0|Add2~8_combout\,
	combout => \clock_0|tmp_cnt_long_press~1_combout\);

-- Location: FF_X111_Y40_N1
\clock_0|tmp_cnt_long_press[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_cnt_long_press~1_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_cnt_long_press\(4));

-- Location: LCCOMB_X111_Y40_N18
\clock_0|process_8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|process_8~0_combout\ = (!\clock_0|tmp_cnt_long_press\(1) & (\state_0|C_UP_LONG~q\ & (!\clock_0|tmp_cnt_long_press\(0) & !\clock_0|tmp_cnt_long_press\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_cnt_long_press\(1),
	datab => \state_0|C_UP_LONG~q\,
	datac => \clock_0|tmp_cnt_long_press\(0),
	datad => \clock_0|tmp_cnt_long_press\(3),
	combout => \clock_0|process_8~0_combout\);

-- Location: LCCOMB_X111_Y40_N20
\clock_0|tmp_time_01m~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_01m~2_combout\ = (\state_0|C_UP_SHORT~q\) # ((!\clock_0|tmp_cnt_long_press\(4) & (!\clock_0|tmp_cnt_long_press\(2) & \clock_0|process_8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_0|C_UP_SHORT~q\,
	datab => \clock_0|tmp_cnt_long_press\(4),
	datac => \clock_0|tmp_cnt_long_press\(2),
	datad => \clock_0|process_8~0_combout\,
	combout => \clock_0|tmp_time_01m~2_combout\);

-- Location: LCCOMB_X112_Y37_N16
\clock_0|tmp_time_01m[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_01m[0]~7_combout\ = !\clock_0|tmp_time_01m\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_0|tmp_time_01m\(0),
	combout => \clock_0|tmp_time_01m[0]~7_combout\);

-- Location: LCCOMB_X112_Y37_N12
\clock_0|tmp_time_01m~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_01m~0_combout\ = (!\clock_0|Equal14~0_combout\ & !\clock_0|Equal13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_0|Equal14~0_combout\,
	datad => \clock_0|Equal13~0_combout\,
	combout => \clock_0|tmp_time_01m~0_combout\);

-- Location: LCCOMB_X112_Y37_N18
\clock_0|tmp_time_01m~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_01m~1_combout\ = (!\clock_0|state\(0) & (!\clock_0|state\(1) & (\clock_0|Equal15~1_combout\ & \clock_0|tmp_time_01m~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|state\(0),
	datab => \clock_0|state\(1),
	datac => \clock_0|Equal15~1_combout\,
	datad => \clock_0|tmp_time_01m~0_combout\,
	combout => \clock_0|tmp_time_01m~1_combout\);

-- Location: LCCOMB_X112_Y37_N24
\clock_0|tmp_time_01m~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_01m~3_combout\ = (\clock_0|tmp_time_01m~1_combout\) # ((\clock_0|tmp_time_01m~2_combout\ & (\clock_0|state\(1) & !\clock_0|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_01m~2_combout\,
	datab => \clock_0|state\(1),
	datac => \clock_0|state\(0),
	datad => \clock_0|tmp_time_01m~1_combout\,
	combout => \clock_0|tmp_time_01m~3_combout\);

-- Location: FF_X112_Y37_N17
\clock_0|tmp_time_01m[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_time_01m[0]~7_combout\,
	clrn => \SW0~input_o\,
	ena => \clock_0|tmp_time_01m~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_time_01m\(0));

-- Location: LCCOMB_X111_Y37_N24
\clock_0|tmp_time_01m[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_01m[2]~5_combout\ = \clock_0|tmp_time_01m\(2) $ (((\clock_0|tmp_time_01m\(0) & (\clock_0|tmp_time_01m\(1) & \clock_0|tmp_time_01m~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_01m\(0),
	datab => \clock_0|tmp_time_01m\(1),
	datac => \clock_0|tmp_time_01m\(2),
	datad => \clock_0|tmp_time_01m~3_combout\,
	combout => \clock_0|tmp_time_01m[2]~5_combout\);

-- Location: FF_X111_Y37_N25
\clock_0|tmp_time_01m[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_time_01m[2]~5_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_time_01m\(2));

-- Location: LCCOMB_X112_Y37_N8
\clock_0|tmp_time_01m~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_01m~6_combout\ = (\clock_0|tmp_time_01m\(1) & (\clock_0|tmp_time_01m\(3) $ (((\clock_0|tmp_time_01m\(0) & \clock_0|tmp_time_01m\(2)))))) # (!\clock_0|tmp_time_01m\(1) & (\clock_0|tmp_time_01m\(3) & ((\clock_0|tmp_time_01m\(2)) # 
-- (!\clock_0|tmp_time_01m\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_01m\(1),
	datab => \clock_0|tmp_time_01m\(0),
	datac => \clock_0|tmp_time_01m\(3),
	datad => \clock_0|tmp_time_01m\(2),
	combout => \clock_0|tmp_time_01m~6_combout\);

-- Location: FF_X112_Y37_N9
\clock_0|tmp_time_01m[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_time_01m~6_combout\,
	clrn => \SW0~input_o\,
	ena => \clock_0|tmp_time_01m~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_time_01m\(3));

-- Location: LCCOMB_X112_Y37_N10
\clock_0|tmp_time_01m~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_01m~4_combout\ = (\clock_0|tmp_time_01m\(0) & (!\clock_0|tmp_time_01m\(1) & ((\clock_0|tmp_time_01m\(2)) # (!\clock_0|tmp_time_01m\(3))))) # (!\clock_0|tmp_time_01m\(0) & (((\clock_0|tmp_time_01m\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_01m\(0),
	datab => \clock_0|tmp_time_01m\(3),
	datac => \clock_0|tmp_time_01m\(1),
	datad => \clock_0|tmp_time_01m\(2),
	combout => \clock_0|tmp_time_01m~4_combout\);

-- Location: FF_X112_Y37_N11
\clock_0|tmp_time_01m[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_time_01m~4_combout\,
	clrn => \SW0~input_o\,
	ena => \clock_0|tmp_time_01m~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_time_01m\(1));

-- Location: LCCOMB_X112_Y37_N26
\clock_0|Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Equal12~0_combout\ = (\clock_0|tmp_time_01m\(1)) # (((\clock_0|tmp_time_01m\(2)) # (!\clock_0|tmp_time_01m\(3))) # (!\clock_0|tmp_time_01m\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_01m\(1),
	datab => \clock_0|tmp_time_01m\(0),
	datac => \clock_0|tmp_time_01m\(3),
	datad => \clock_0|tmp_time_01m\(2),
	combout => \clock_0|Equal12~0_combout\);

-- Location: LCCOMB_X112_Y37_N14
\clock_0|tmp_time_10m[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_10m[0]~6_combout\ = !\clock_0|tmp_time_10m\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_0|tmp_time_10m\(0),
	combout => \clock_0|tmp_time_10m[0]~6_combout\);

-- Location: LCCOMB_X112_Y37_N0
\clock_0|tmp_time_10m[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_10m[0]~0_combout\ = (\clock_0|Equal12~0_combout\) # ((\clock_0|state\(0)) # ((!\clock_0|state\(1) & !\clock_0|tmp_time_01m~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|Equal12~0_combout\,
	datab => \clock_0|state\(1),
	datac => \clock_0|state\(0),
	datad => \clock_0|tmp_time_01m~0_combout\,
	combout => \clock_0|tmp_time_10m[0]~0_combout\);

-- Location: LCCOMB_X112_Y37_N30
\clock_0|tmp_time_10m[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_10m[0]~1_combout\ = (!\clock_0|tmp_time_10m[0]~0_combout\ & ((\clock_0|state\(1) & (\clock_0|tmp_time_01m~2_combout\)) # (!\clock_0|state\(1) & ((\clock_0|Equal15~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_01m~2_combout\,
	datab => \clock_0|state\(1),
	datac => \clock_0|Equal15~1_combout\,
	datad => \clock_0|tmp_time_10m[0]~0_combout\,
	combout => \clock_0|tmp_time_10m[0]~1_combout\);

-- Location: FF_X112_Y37_N15
\clock_0|tmp_time_10m[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_time_10m[0]~6_combout\,
	clrn => \SW0~input_o\,
	ena => \clock_0|tmp_time_10m[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_time_10m\(0));

-- Location: LCCOMB_X112_Y37_N20
\clock_0|tmp_time_10m~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_10m~2_combout\ = (\clock_0|tmp_time_10m\(0) & (!\clock_0|tmp_time_10m\(1) & ((\clock_0|tmp_time_10m\(3)) # (!\clock_0|tmp_time_10m\(2))))) # (!\clock_0|tmp_time_10m\(0) & (((\clock_0|tmp_time_10m\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_10m\(2),
	datab => \clock_0|tmp_time_10m\(0),
	datac => \clock_0|tmp_time_10m\(1),
	datad => \clock_0|tmp_time_10m\(3),
	combout => \clock_0|tmp_time_10m~2_combout\);

-- Location: FF_X112_Y37_N21
\clock_0|tmp_time_10m[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_time_10m~2_combout\,
	clrn => \SW0~input_o\,
	ena => \clock_0|tmp_time_10m[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_time_10m\(1));

-- Location: LCCOMB_X110_Y37_N22
\clock_0|tmp_time_10m[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_10m[3]~4_combout\ = (\clock_0|tmp_time_10m\(0) & (\clock_0|tmp_time_10m\(1) & \clock_0|tmp_time_10m\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_10m\(0),
	datac => \clock_0|tmp_time_10m\(1),
	datad => \clock_0|tmp_time_10m\(2),
	combout => \clock_0|tmp_time_10m[3]~4_combout\);

-- Location: LCCOMB_X110_Y37_N6
\clock_0|tmp_time_10m[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_10m[3]~5_combout\ = \clock_0|tmp_time_10m\(3) $ (((\clock_0|tmp_time_10m[3]~4_combout\ & \clock_0|tmp_time_10m[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_10m[3]~4_combout\,
	datac => \clock_0|tmp_time_10m\(3),
	datad => \clock_0|tmp_time_10m[0]~1_combout\,
	combout => \clock_0|tmp_time_10m[3]~5_combout\);

-- Location: FF_X110_Y37_N7
\clock_0|tmp_time_10m[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_time_10m[3]~5_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_time_10m\(3));

-- Location: LCCOMB_X112_Y37_N22
\clock_0|tmp_time_10m~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_10m~3_combout\ = (\clock_0|tmp_time_10m\(0) & ((\clock_0|tmp_time_10m\(2) & (\clock_0|tmp_time_10m\(3) & !\clock_0|tmp_time_10m\(1))) # (!\clock_0|tmp_time_10m\(2) & ((\clock_0|tmp_time_10m\(1)))))) # (!\clock_0|tmp_time_10m\(0) & 
-- (((\clock_0|tmp_time_10m\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_10m\(3),
	datab => \clock_0|tmp_time_10m\(0),
	datac => \clock_0|tmp_time_10m\(2),
	datad => \clock_0|tmp_time_10m\(1),
	combout => \clock_0|tmp_time_10m~3_combout\);

-- Location: FF_X112_Y37_N23
\clock_0|tmp_time_10m[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_time_10m~3_combout\,
	clrn => \SW0~input_o\,
	ena => \clock_0|tmp_time_10m[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_time_10m\(2));

-- Location: LCCOMB_X112_Y37_N4
\clock_0|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Equal11~0_combout\ = (\clock_0|tmp_time_10m\(2) & (!\clock_0|tmp_time_10m\(1) & (\clock_0|tmp_time_10m\(0) & !\clock_0|tmp_time_10m\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_10m\(2),
	datab => \clock_0|tmp_time_10m\(1),
	datac => \clock_0|tmp_time_10m\(0),
	datad => \clock_0|tmp_time_10m\(3),
	combout => \clock_0|Equal11~0_combout\);

-- Location: LCCOMB_X112_Y37_N6
\clock_0|tmp_time_01h[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_01h[2]~2_combout\ = (!\clock_0|Equal12~0_combout\ & (\clock_0|Equal11~0_combout\ & (\clock_0|Equal15~1_combout\ & \clock_0|tmp_time_01m~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|Equal12~0_combout\,
	datab => \clock_0|Equal11~0_combout\,
	datac => \clock_0|Equal15~1_combout\,
	datad => \clock_0|tmp_time_01m~0_combout\,
	combout => \clock_0|tmp_time_01h[2]~2_combout\);

-- Location: LCCOMB_X111_Y37_N2
\clock_0|tmp_time_01h[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_01h[2]~8_combout\ = (!\clock_0|state\(1) & ((\clock_0|state\(0) & (\clock_0|tmp_time_01m~2_combout\)) # (!\clock_0|state\(0) & ((\clock_0|tmp_time_01h[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|state\(0),
	datab => \clock_0|state\(1),
	datac => \clock_0|tmp_time_01m~2_combout\,
	datad => \clock_0|tmp_time_01h[2]~2_combout\,
	combout => \clock_0|tmp_time_01h[2]~8_combout\);

-- Location: FF_X111_Y37_N23
\clock_0|tmp_time_01h[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	asdata => \clock_0|tmp_time_01h[0]~9_combout\,
	clrn => \SW0~input_o\,
	sload => VCC,
	ena => \clock_0|tmp_time_01h[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_time_01h\(0));

-- Location: LCCOMB_X111_Y37_N4
\clock_0|tmp_time_01h[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_01h[1]~4_combout\ = (\clock_0|tmp_time_01h[2]~8_combout\ & ((\clock_0|Equal8~0_combout\) # (\clock_0|tmp_time_01h\(0) $ (\clock_0|tmp_time_01h\(1))))) # (!\clock_0|tmp_time_01h[2]~8_combout\ & (((\clock_0|tmp_time_01h\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|Equal8~0_combout\,
	datab => \clock_0|tmp_time_01h\(0),
	datac => \clock_0|tmp_time_01h\(1),
	datad => \clock_0|tmp_time_01h[2]~8_combout\,
	combout => \clock_0|tmp_time_01h[1]~4_combout\);

-- Location: FF_X111_Y37_N5
\clock_0|tmp_time_01h[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_time_01h[1]~4_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_time_01h\(1));

-- Location: LCCOMB_X109_Y37_N2
\clock_0|Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Add7~0_combout\ = \clock_0|tmp_time_01h\(2) $ (((\clock_0|tmp_time_01h\(0) & !\clock_0|tmp_time_01h\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_01h\(2),
	datac => \clock_0|tmp_time_01h\(0),
	datad => \clock_0|tmp_time_01h\(1),
	combout => \clock_0|Add7~0_combout\);

-- Location: LCCOMB_X111_Y40_N2
\clock_0|tmp_time_01h~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_01h~3_combout\ = (!\clock_0|state\(1) & ((\clock_0|tmp_time_01m~2_combout\) # (!\clock_0|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|state\(1),
	datab => \clock_0|state\(0),
	datad => \clock_0|tmp_time_01m~2_combout\,
	combout => \clock_0|tmp_time_01h~3_combout\);

-- Location: LCCOMB_X112_Y37_N28
\clock_0|tmp_time_10h[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_10h[2]~0_combout\ = (\clock_0|Equal8~0_combout\ & ((\clock_0|tmp_time_01h[2]~2_combout\) # ((!\clock_0|state\(1) & \clock_0|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|Equal8~0_combout\,
	datab => \clock_0|state\(1),
	datac => \clock_0|state\(0),
	datad => \clock_0|tmp_time_01h[2]~2_combout\,
	combout => \clock_0|tmp_time_10h[2]~0_combout\);

-- Location: LCCOMB_X111_Y37_N18
\clock_0|tmp_time_10h[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_10h[0]~1_combout\ = \clock_0|tmp_time_10h\(0) $ (((\clock_0|tmp_time_01h~3_combout\ & \clock_0|tmp_time_10h[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_0|tmp_time_01h~3_combout\,
	datac => \clock_0|tmp_time_10h\(0),
	datad => \clock_0|tmp_time_10h[2]~0_combout\,
	combout => \clock_0|tmp_time_10h[0]~1_combout\);

-- Location: FF_X111_Y37_N19
\clock_0|tmp_time_10h[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_time_10h[0]~1_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_time_10h\(0));

-- Location: LCCOMB_X112_Y37_N2
\clock_0|tmp_time_10h[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_10h[2]~2_combout\ = (\clock_0|tmp_time_01h[2]~2_combout\) # ((!\clock_0|state\(1) & \clock_0|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_0|state\(1),
	datac => \clock_0|state\(0),
	datad => \clock_0|tmp_time_01h[2]~2_combout\,
	combout => \clock_0|tmp_time_10h[2]~2_combout\);

-- Location: LCCOMB_X111_Y37_N10
\clock_0|tmp_time_10h[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_10h[2]~3_combout\ = (((!\clock_0|Equal8~0_combout\ & !\clock_0|process_8~3_combout\)) # (!\clock_0|tmp_time_10h[2]~2_combout\)) # (!\clock_0|tmp_time_01h~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|Equal8~0_combout\,
	datab => \clock_0|tmp_time_01h~3_combout\,
	datac => \clock_0|process_8~3_combout\,
	datad => \clock_0|tmp_time_10h[2]~2_combout\,
	combout => \clock_0|tmp_time_10h[2]~3_combout\);

-- Location: LCCOMB_X111_Y37_N8
\clock_0|tmp_time_10h[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_10h[1]~4_combout\ = (\clock_0|tmp_time_10h[2]~3_combout\ & (((\clock_0|tmp_time_10h\(1))))) # (!\clock_0|tmp_time_10h[2]~3_combout\ & (\clock_0|tmp_time_10h[2]~0_combout\ & (\clock_0|tmp_time_10h\(0) $ (!\clock_0|tmp_time_10h\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_10h\(0),
	datab => \clock_0|tmp_time_10h[2]~0_combout\,
	datac => \clock_0|tmp_time_10h\(1),
	datad => \clock_0|tmp_time_10h[2]~3_combout\,
	combout => \clock_0|tmp_time_10h[1]~4_combout\);

-- Location: FF_X111_Y37_N9
\clock_0|tmp_time_10h[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_time_10h[1]~4_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_time_10h\(1));

-- Location: LCCOMB_X110_Y37_N26
\clock_0|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Add8~0_combout\ = \clock_0|tmp_time_10h\(2) $ (((\clock_0|tmp_time_10h\(1) & !\clock_0|tmp_time_10h\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_0|tmp_time_10h\(1),
	datac => \clock_0|tmp_time_10h\(2),
	datad => \clock_0|tmp_time_10h\(0),
	combout => \clock_0|Add8~0_combout\);

-- Location: LCCOMB_X111_Y37_N30
\clock_0|tmp_time_10h[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_10h[2]~5_combout\ = (\clock_0|tmp_time_10h[2]~3_combout\ & (((\clock_0|tmp_time_10h\(2))))) # (!\clock_0|tmp_time_10h[2]~3_combout\ & (\clock_0|Add8~0_combout\ & (\clock_0|tmp_time_10h[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|Add8~0_combout\,
	datab => \clock_0|tmp_time_10h[2]~0_combout\,
	datac => \clock_0|tmp_time_10h\(2),
	datad => \clock_0|tmp_time_10h[2]~3_combout\,
	combout => \clock_0|tmp_time_10h[2]~5_combout\);

-- Location: FF_X111_Y37_N31
\clock_0|tmp_time_10h[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_time_10h[2]~5_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_time_10h\(2));

-- Location: LCCOMB_X111_Y37_N20
\clock_0|Add8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Add8~1_combout\ = \clock_0|tmp_time_10h\(3) $ (((\clock_0|tmp_time_10h\(2) & (!\clock_0|tmp_time_10h\(0) & \clock_0|tmp_time_10h\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_10h\(2),
	datab => \clock_0|tmp_time_10h\(0),
	datac => \clock_0|tmp_time_10h\(1),
	datad => \clock_0|tmp_time_10h\(3),
	combout => \clock_0|Add8~1_combout\);

-- Location: LCCOMB_X111_Y37_N0
\clock_0|tmp_time_10h[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_10h[3]~6_combout\ = (\clock_0|tmp_time_10h[2]~3_combout\ & (((\clock_0|tmp_time_10h\(3))))) # (!\clock_0|tmp_time_10h[2]~3_combout\ & (\clock_0|Add8~1_combout\ & (\clock_0|tmp_time_10h[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|Add8~1_combout\,
	datab => \clock_0|tmp_time_10h[2]~0_combout\,
	datac => \clock_0|tmp_time_10h\(3),
	datad => \clock_0|tmp_time_10h[2]~3_combout\,
	combout => \clock_0|tmp_time_10h[3]~6_combout\);

-- Location: FF_X111_Y37_N1
\clock_0|tmp_time_10h[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_time_10h[3]~6_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_time_10h\(3));

-- Location: LCCOMB_X111_Y37_N12
\clock_0|process_8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|process_8~1_combout\ = (!\clock_0|tmp_time_10h\(2) & !\clock_0|tmp_time_10h\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_0|tmp_time_10h\(2),
	datad => \clock_0|tmp_time_10h\(3),
	combout => \clock_0|process_8~1_combout\);

-- Location: LCCOMB_X110_Y37_N8
\clock_0|process_8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|process_8~2_combout\ = (!\clock_0|tmp_time_01h\(1) & (\clock_0|tmp_time_10h\(1) & (!\clock_0|tmp_time_01h\(3) & \clock_0|tmp_time_10h\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_01h\(1),
	datab => \clock_0|tmp_time_10h\(1),
	datac => \clock_0|tmp_time_01h\(3),
	datad => \clock_0|tmp_time_10h\(0),
	combout => \clock_0|process_8~2_combout\);

-- Location: LCCOMB_X111_Y37_N14
\clock_0|process_8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|process_8~3_combout\ = (\clock_0|process_8~1_combout\ & (\clock_0|tmp_time_01h\(0) & (!\clock_0|tmp_time_01h\(2) & \clock_0|process_8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|process_8~1_combout\,
	datab => \clock_0|tmp_time_01h\(0),
	datac => \clock_0|tmp_time_01h\(2),
	datad => \clock_0|process_8~2_combout\,
	combout => \clock_0|process_8~3_combout\);

-- Location: LCCOMB_X111_Y37_N28
\clock_0|tmp_time_01h[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_01h[2]~5_combout\ = (\clock_0|process_8~3_combout\ & ((\clock_0|tmp_time_01h[2]~2_combout\) # ((\clock_0|state\(0) & !\clock_0|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|state\(0),
	datab => \clock_0|state\(1),
	datac => \clock_0|process_8~3_combout\,
	datad => \clock_0|tmp_time_01h[2]~2_combout\,
	combout => \clock_0|tmp_time_01h[2]~5_combout\);

-- Location: LCCOMB_X111_Y37_N26
\clock_0|tmp_time_01h~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_01h~6_combout\ = (!\clock_0|Equal8~0_combout\ & (\clock_0|Add7~0_combout\ & !\clock_0|tmp_time_01h[2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|Equal8~0_combout\,
	datac => \clock_0|Add7~0_combout\,
	datad => \clock_0|tmp_time_01h[2]~5_combout\,
	combout => \clock_0|tmp_time_01h~6_combout\);

-- Location: FF_X111_Y37_N27
\clock_0|tmp_time_01h[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_time_01h~6_combout\,
	clrn => \SW0~input_o\,
	ena => \clock_0|tmp_time_01h[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_time_01h\(2));

-- Location: LCCOMB_X111_Y37_N6
\clock_0|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Equal8~0_combout\ = (!\clock_0|tmp_time_01h\(2) & (\clock_0|tmp_time_01h\(3) & (\clock_0|tmp_time_01h\(1) & \clock_0|tmp_time_01h\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_01h\(2),
	datab => \clock_0|tmp_time_01h\(3),
	datac => \clock_0|tmp_time_01h\(1),
	datad => \clock_0|tmp_time_01h\(0),
	combout => \clock_0|Equal8~0_combout\);

-- Location: LCCOMB_X111_Y37_N22
\clock_0|Add7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|Add7~1_combout\ = \clock_0|tmp_time_01h\(3) $ (((\clock_0|tmp_time_01h\(2) & (!\clock_0|tmp_time_01h\(1) & \clock_0|tmp_time_01h\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_01h\(2),
	datab => \clock_0|tmp_time_01h\(1),
	datac => \clock_0|tmp_time_01h\(0),
	datad => \clock_0|tmp_time_01h\(3),
	combout => \clock_0|Add7~1_combout\);

-- Location: LCCOMB_X111_Y37_N16
\clock_0|tmp_time_01h~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|tmp_time_01h~7_combout\ = (!\clock_0|Equal8~0_combout\ & (\clock_0|Add7~1_combout\ & !\clock_0|tmp_time_01h[2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|Equal8~0_combout\,
	datac => \clock_0|Add7~1_combout\,
	datad => \clock_0|tmp_time_01h[2]~5_combout\,
	combout => \clock_0|tmp_time_01h~7_combout\);

-- Location: FF_X111_Y37_N17
\clock_0|tmp_time_01h[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|tmp_time_01h~7_combout\,
	clrn => \SW0~input_o\,
	ena => \clock_0|tmp_time_01h[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|tmp_time_01h\(3));

-- Location: LCCOMB_X108_Y37_N30
\alarm_0|process_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|process_2~1_combout\ = (\alarm_0|tmp_set_01H\(3) & (\clock_0|tmp_time_01h\(3) & (\alarm_0|tmp_set_01H\(2) $ (!\clock_0|tmp_time_01h\(2))))) # (!\alarm_0|tmp_set_01H\(3) & (!\clock_0|tmp_time_01h\(3) & (\alarm_0|tmp_set_01H\(2) $ 
-- (!\clock_0|tmp_time_01h\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_01H\(3),
	datab => \clock_0|tmp_time_01h\(3),
	datac => \alarm_0|tmp_set_01H\(2),
	datad => \clock_0|tmp_time_01h\(2),
	combout => \alarm_0|process_2~1_combout\);

-- Location: LCCOMB_X108_Y37_N0
\alarm_0|process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|process_2~0_combout\ = (\clock_0|tmp_time_01h\(0) & (\alarm_0|tmp_set_01H\(0) & (\clock_0|tmp_time_01h\(1) $ (!\alarm_0|tmp_set_01H\(1))))) # (!\clock_0|tmp_time_01h\(0) & (!\alarm_0|tmp_set_01H\(0) & (\clock_0|tmp_time_01h\(1) $ 
-- (!\alarm_0|tmp_set_01H\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_01h\(0),
	datab => \clock_0|tmp_time_01h\(1),
	datac => \alarm_0|tmp_set_01H\(0),
	datad => \alarm_0|tmp_set_01H\(1),
	combout => \alarm_0|process_2~0_combout\);

-- Location: LCCOMB_X108_Y37_N8
\alarm_0|process_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|process_2~2_combout\ = (\clock_0|tmp_time_10h\(0) & (\alarm_0|tmp_set_10H\(0) & (\clock_0|tmp_time_10h\(1) $ (!\alarm_0|tmp_set_10H\(1))))) # (!\clock_0|tmp_time_10h\(0) & (!\alarm_0|tmp_set_10H\(0) & (\clock_0|tmp_time_10h\(1) $ 
-- (!\alarm_0|tmp_set_10H\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_10h\(0),
	datab => \clock_0|tmp_time_10h\(1),
	datac => \alarm_0|tmp_set_10H\(1),
	datad => \alarm_0|tmp_set_10H\(0),
	combout => \alarm_0|process_2~2_combout\);

-- Location: LCCOMB_X110_Y37_N30
\alarm_0|tmp_set_01M~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_01M~3_combout\ = (\alarm_0|tmp_set_01M\(0) & ((\alarm_0|tmp_set_01M\(2) & (\alarm_0|tmp_set_01M\(3) $ (\alarm_0|tmp_set_01M\(1)))) # (!\alarm_0|tmp_set_01M\(2) & (\alarm_0|tmp_set_01M\(3) & \alarm_0|tmp_set_01M\(1))))) # 
-- (!\alarm_0|tmp_set_01M\(0) & (((\alarm_0|tmp_set_01M\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_01M\(0),
	datab => \alarm_0|tmp_set_01M\(2),
	datac => \alarm_0|tmp_set_01M\(3),
	datad => \alarm_0|tmp_set_01M\(1),
	combout => \alarm_0|tmp_set_01M~3_combout\);

-- Location: FF_X110_Y37_N31
\alarm_0|tmp_set_01M[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_set_01M~3_combout\,
	clrn => \SW0~input_o\,
	ena => \alarm_0|tmp_set_01M[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_set_01M\(3));

-- Location: LCCOMB_X110_Y37_N0
\alarm_0|tmp_set_01M~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_01M~1_combout\ = (\alarm_0|tmp_set_01M\(1) & (((!\alarm_0|tmp_set_01M\(0))))) # (!\alarm_0|tmp_set_01M\(1) & (\alarm_0|tmp_set_01M\(0) & ((\alarm_0|tmp_set_01M\(2)) # (!\alarm_0|tmp_set_01M\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_01M\(3),
	datab => \alarm_0|tmp_set_01M\(1),
	datac => \alarm_0|tmp_set_01M\(0),
	datad => \alarm_0|tmp_set_01M\(2),
	combout => \alarm_0|tmp_set_01M~1_combout\);

-- Location: FF_X109_Y37_N23
\alarm_0|tmp_set_01M[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	asdata => \alarm_0|tmp_set_01M~1_combout\,
	clrn => \SW0~input_o\,
	sload => VCC,
	ena => \alarm_0|tmp_set_01M[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_set_01M\(1));

-- Location: LCCOMB_X109_Y37_N28
\alarm_0|process_2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|process_2~3_combout\ = (\alarm_0|tmp_set_01M\(1) & (\clock_0|tmp_time_01m\(1) & (\alarm_0|tmp_set_01M\(0) $ (!\clock_0|tmp_time_01m\(0))))) # (!\alarm_0|tmp_set_01M\(1) & (!\clock_0|tmp_time_01m\(1) & (\alarm_0|tmp_set_01M\(0) $ 
-- (!\clock_0|tmp_time_01m\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_01M\(1),
	datab => \alarm_0|tmp_set_01M\(0),
	datac => \clock_0|tmp_time_01m\(1),
	datad => \clock_0|tmp_time_01m\(0),
	combout => \alarm_0|process_2~3_combout\);

-- Location: LCCOMB_X108_Y37_N14
\alarm_0|process_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|process_2~4_combout\ = (\alarm_0|process_2~1_combout\ & (\alarm_0|process_2~0_combout\ & (\alarm_0|process_2~2_combout\ & \alarm_0|process_2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|process_2~1_combout\,
	datab => \alarm_0|process_2~0_combout\,
	datac => \alarm_0|process_2~2_combout\,
	datad => \alarm_0|process_2~3_combout\,
	combout => \alarm_0|process_2~4_combout\);

-- Location: LCCOMB_X106_Y37_N0
\alarm_0|tmp_cnt2[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_cnt2[0]~18_combout\ = \alarm_0|tmp_cnt2\(0) $ (VCC)
-- \alarm_0|tmp_cnt2[0]~19\ = CARRY(\alarm_0|tmp_cnt2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alarm_0|tmp_cnt2\(0),
	datad => VCC,
	combout => \alarm_0|tmp_cnt2[0]~18_combout\,
	cout => \alarm_0|tmp_cnt2[0]~19\);

-- Location: LCCOMB_X108_Y37_N18
\alarm_0|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|Equal4~1_combout\ = ((\alarm_0|mode_tmp\(1)) # (!\alarm_0|mode_tmp\(0))) # (!\alarm_0|mode_tmp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|mode_tmp\(2),
	datab => \alarm_0|mode_tmp\(1),
	datad => \alarm_0|mode_tmp\(0),
	combout => \alarm_0|Equal4~1_combout\);

-- Location: LCCOMB_X107_Y37_N24
\alarm_0|tmp_cnt2[0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_cnt2[0]~50_combout\ = ((!\alarm_0|mode_tmp\(1) & (\alarm_0|mode_tmp\(2) & \alarm_0|mode_tmp\(0)))) # (!\alarm_0|Equal16~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|mode_tmp\(1),
	datab => \alarm_0|mode_tmp\(2),
	datac => \alarm_0|mode_tmp\(0),
	datad => \alarm_0|Equal16~4_combout\,
	combout => \alarm_0|tmp_cnt2[0]~50_combout\);

-- Location: FF_X106_Y37_N1
\alarm_0|tmp_cnt2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_cnt2[0]~18_combout\,
	clrn => \SW0~input_o\,
	sclr => \alarm_0|Equal4~1_combout\,
	ena => \alarm_0|tmp_cnt2[0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_cnt2\(0));

-- Location: LCCOMB_X106_Y37_N2
\alarm_0|tmp_cnt2[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_cnt2[1]~20_combout\ = (\alarm_0|tmp_cnt2\(1) & (!\alarm_0|tmp_cnt2[0]~19\)) # (!\alarm_0|tmp_cnt2\(1) & ((\alarm_0|tmp_cnt2[0]~19\) # (GND)))
-- \alarm_0|tmp_cnt2[1]~21\ = CARRY((!\alarm_0|tmp_cnt2[0]~19\) # (!\alarm_0|tmp_cnt2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alarm_0|tmp_cnt2\(1),
	datad => VCC,
	cin => \alarm_0|tmp_cnt2[0]~19\,
	combout => \alarm_0|tmp_cnt2[1]~20_combout\,
	cout => \alarm_0|tmp_cnt2[1]~21\);

-- Location: FF_X106_Y37_N3
\alarm_0|tmp_cnt2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_cnt2[1]~20_combout\,
	clrn => \SW0~input_o\,
	sclr => \alarm_0|Equal4~1_combout\,
	ena => \alarm_0|tmp_cnt2[0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_cnt2\(1));

-- Location: LCCOMB_X106_Y37_N4
\alarm_0|tmp_cnt2[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_cnt2[2]~22_combout\ = (\alarm_0|tmp_cnt2\(2) & (\alarm_0|tmp_cnt2[1]~21\ $ (GND))) # (!\alarm_0|tmp_cnt2\(2) & (!\alarm_0|tmp_cnt2[1]~21\ & VCC))
-- \alarm_0|tmp_cnt2[2]~23\ = CARRY((\alarm_0|tmp_cnt2\(2) & !\alarm_0|tmp_cnt2[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alarm_0|tmp_cnt2\(2),
	datad => VCC,
	cin => \alarm_0|tmp_cnt2[1]~21\,
	combout => \alarm_0|tmp_cnt2[2]~22_combout\,
	cout => \alarm_0|tmp_cnt2[2]~23\);

-- Location: FF_X106_Y37_N5
\alarm_0|tmp_cnt2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_cnt2[2]~22_combout\,
	clrn => \SW0~input_o\,
	sclr => \alarm_0|Equal4~1_combout\,
	ena => \alarm_0|tmp_cnt2[0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_cnt2\(2));

-- Location: LCCOMB_X106_Y37_N6
\alarm_0|tmp_cnt2[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_cnt2[3]~24_combout\ = (\alarm_0|tmp_cnt2\(3) & (!\alarm_0|tmp_cnt2[2]~23\)) # (!\alarm_0|tmp_cnt2\(3) & ((\alarm_0|tmp_cnt2[2]~23\) # (GND)))
-- \alarm_0|tmp_cnt2[3]~25\ = CARRY((!\alarm_0|tmp_cnt2[2]~23\) # (!\alarm_0|tmp_cnt2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_cnt2\(3),
	datad => VCC,
	cin => \alarm_0|tmp_cnt2[2]~23\,
	combout => \alarm_0|tmp_cnt2[3]~24_combout\,
	cout => \alarm_0|tmp_cnt2[3]~25\);

-- Location: FF_X106_Y37_N7
\alarm_0|tmp_cnt2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_cnt2[3]~24_combout\,
	clrn => \SW0~input_o\,
	sclr => \alarm_0|Equal4~1_combout\,
	ena => \alarm_0|tmp_cnt2[0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_cnt2\(3));

-- Location: LCCOMB_X107_Y37_N10
\alarm_0|Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|Equal16~0_combout\ = (\alarm_0|tmp_cnt2\(1)) # ((\alarm_0|tmp_cnt2\(2)) # ((\alarm_0|tmp_cnt2\(0)) # (\alarm_0|tmp_cnt2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_cnt2\(1),
	datab => \alarm_0|tmp_cnt2\(2),
	datac => \alarm_0|tmp_cnt2\(0),
	datad => \alarm_0|tmp_cnt2\(3),
	combout => \alarm_0|Equal16~0_combout\);

-- Location: LCCOMB_X106_Y37_N8
\alarm_0|tmp_cnt2[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_cnt2[4]~26_combout\ = (\alarm_0|tmp_cnt2\(4) & (\alarm_0|tmp_cnt2[3]~25\ $ (GND))) # (!\alarm_0|tmp_cnt2\(4) & (!\alarm_0|tmp_cnt2[3]~25\ & VCC))
-- \alarm_0|tmp_cnt2[4]~27\ = CARRY((\alarm_0|tmp_cnt2\(4) & !\alarm_0|tmp_cnt2[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alarm_0|tmp_cnt2\(4),
	datad => VCC,
	cin => \alarm_0|tmp_cnt2[3]~25\,
	combout => \alarm_0|tmp_cnt2[4]~26_combout\,
	cout => \alarm_0|tmp_cnt2[4]~27\);

-- Location: FF_X106_Y37_N9
\alarm_0|tmp_cnt2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_cnt2[4]~26_combout\,
	clrn => \SW0~input_o\,
	sclr => \alarm_0|Equal4~1_combout\,
	ena => \alarm_0|tmp_cnt2[0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_cnt2\(4));

-- Location: LCCOMB_X106_Y37_N10
\alarm_0|tmp_cnt2[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_cnt2[5]~28_combout\ = (\alarm_0|tmp_cnt2\(5) & (!\alarm_0|tmp_cnt2[4]~27\)) # (!\alarm_0|tmp_cnt2\(5) & ((\alarm_0|tmp_cnt2[4]~27\) # (GND)))
-- \alarm_0|tmp_cnt2[5]~29\ = CARRY((!\alarm_0|tmp_cnt2[4]~27\) # (!\alarm_0|tmp_cnt2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_cnt2\(5),
	datad => VCC,
	cin => \alarm_0|tmp_cnt2[4]~27\,
	combout => \alarm_0|tmp_cnt2[5]~28_combout\,
	cout => \alarm_0|tmp_cnt2[5]~29\);

-- Location: FF_X106_Y37_N11
\alarm_0|tmp_cnt2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_cnt2[5]~28_combout\,
	clrn => \SW0~input_o\,
	sclr => \alarm_0|Equal4~1_combout\,
	ena => \alarm_0|tmp_cnt2[0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_cnt2\(5));

-- Location: LCCOMB_X106_Y37_N12
\alarm_0|tmp_cnt2[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_cnt2[6]~30_combout\ = (\alarm_0|tmp_cnt2\(6) & (\alarm_0|tmp_cnt2[5]~29\ $ (GND))) # (!\alarm_0|tmp_cnt2\(6) & (!\alarm_0|tmp_cnt2[5]~29\ & VCC))
-- \alarm_0|tmp_cnt2[6]~31\ = CARRY((\alarm_0|tmp_cnt2\(6) & !\alarm_0|tmp_cnt2[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_cnt2\(6),
	datad => VCC,
	cin => \alarm_0|tmp_cnt2[5]~29\,
	combout => \alarm_0|tmp_cnt2[6]~30_combout\,
	cout => \alarm_0|tmp_cnt2[6]~31\);

-- Location: FF_X106_Y37_N13
\alarm_0|tmp_cnt2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_cnt2[6]~30_combout\,
	clrn => \SW0~input_o\,
	sclr => \alarm_0|Equal4~1_combout\,
	ena => \alarm_0|tmp_cnt2[0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_cnt2\(6));

-- Location: LCCOMB_X106_Y37_N14
\alarm_0|tmp_cnt2[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_cnt2[7]~32_combout\ = (\alarm_0|tmp_cnt2\(7) & (!\alarm_0|tmp_cnt2[6]~31\)) # (!\alarm_0|tmp_cnt2\(7) & ((\alarm_0|tmp_cnt2[6]~31\) # (GND)))
-- \alarm_0|tmp_cnt2[7]~33\ = CARRY((!\alarm_0|tmp_cnt2[6]~31\) # (!\alarm_0|tmp_cnt2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alarm_0|tmp_cnt2\(7),
	datad => VCC,
	cin => \alarm_0|tmp_cnt2[6]~31\,
	combout => \alarm_0|tmp_cnt2[7]~32_combout\,
	cout => \alarm_0|tmp_cnt2[7]~33\);

-- Location: FF_X106_Y37_N15
\alarm_0|tmp_cnt2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_cnt2[7]~32_combout\,
	clrn => \SW0~input_o\,
	sclr => \alarm_0|Equal4~1_combout\,
	ena => \alarm_0|tmp_cnt2[0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_cnt2\(7));

-- Location: LCCOMB_X106_Y37_N16
\alarm_0|tmp_cnt2[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_cnt2[8]~34_combout\ = (\alarm_0|tmp_cnt2\(8) & (\alarm_0|tmp_cnt2[7]~33\ $ (GND))) # (!\alarm_0|tmp_cnt2\(8) & (!\alarm_0|tmp_cnt2[7]~33\ & VCC))
-- \alarm_0|tmp_cnt2[8]~35\ = CARRY((\alarm_0|tmp_cnt2\(8) & !\alarm_0|tmp_cnt2[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alarm_0|tmp_cnt2\(8),
	datad => VCC,
	cin => \alarm_0|tmp_cnt2[7]~33\,
	combout => \alarm_0|tmp_cnt2[8]~34_combout\,
	cout => \alarm_0|tmp_cnt2[8]~35\);

-- Location: FF_X106_Y37_N17
\alarm_0|tmp_cnt2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_cnt2[8]~34_combout\,
	clrn => \SW0~input_o\,
	sclr => \alarm_0|Equal4~1_combout\,
	ena => \alarm_0|tmp_cnt2[0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_cnt2\(8));

-- Location: LCCOMB_X106_Y37_N18
\alarm_0|tmp_cnt2[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_cnt2[9]~36_combout\ = (\alarm_0|tmp_cnt2\(9) & (!\alarm_0|tmp_cnt2[8]~35\)) # (!\alarm_0|tmp_cnt2\(9) & ((\alarm_0|tmp_cnt2[8]~35\) # (GND)))
-- \alarm_0|tmp_cnt2[9]~37\ = CARRY((!\alarm_0|tmp_cnt2[8]~35\) # (!\alarm_0|tmp_cnt2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alarm_0|tmp_cnt2\(9),
	datad => VCC,
	cin => \alarm_0|tmp_cnt2[8]~35\,
	combout => \alarm_0|tmp_cnt2[9]~36_combout\,
	cout => \alarm_0|tmp_cnt2[9]~37\);

-- Location: FF_X106_Y37_N19
\alarm_0|tmp_cnt2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_cnt2[9]~36_combout\,
	clrn => \SW0~input_o\,
	sclr => \alarm_0|Equal4~1_combout\,
	ena => \alarm_0|tmp_cnt2[0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_cnt2\(9));

-- Location: LCCOMB_X106_Y37_N20
\alarm_0|tmp_cnt2[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_cnt2[10]~38_combout\ = (\alarm_0|tmp_cnt2\(10) & (\alarm_0|tmp_cnt2[9]~37\ $ (GND))) # (!\alarm_0|tmp_cnt2\(10) & (!\alarm_0|tmp_cnt2[9]~37\ & VCC))
-- \alarm_0|tmp_cnt2[10]~39\ = CARRY((\alarm_0|tmp_cnt2\(10) & !\alarm_0|tmp_cnt2[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alarm_0|tmp_cnt2\(10),
	datad => VCC,
	cin => \alarm_0|tmp_cnt2[9]~37\,
	combout => \alarm_0|tmp_cnt2[10]~38_combout\,
	cout => \alarm_0|tmp_cnt2[10]~39\);

-- Location: FF_X106_Y37_N21
\alarm_0|tmp_cnt2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_cnt2[10]~38_combout\,
	clrn => \SW0~input_o\,
	sclr => \alarm_0|Equal4~1_combout\,
	ena => \alarm_0|tmp_cnt2[0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_cnt2\(10));

-- Location: LCCOMB_X106_Y37_N22
\alarm_0|tmp_cnt2[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_cnt2[11]~40_combout\ = (\alarm_0|tmp_cnt2\(11) & (!\alarm_0|tmp_cnt2[10]~39\)) # (!\alarm_0|tmp_cnt2\(11) & ((\alarm_0|tmp_cnt2[10]~39\) # (GND)))
-- \alarm_0|tmp_cnt2[11]~41\ = CARRY((!\alarm_0|tmp_cnt2[10]~39\) # (!\alarm_0|tmp_cnt2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_cnt2\(11),
	datad => VCC,
	cin => \alarm_0|tmp_cnt2[10]~39\,
	combout => \alarm_0|tmp_cnt2[11]~40_combout\,
	cout => \alarm_0|tmp_cnt2[11]~41\);

-- Location: FF_X106_Y37_N23
\alarm_0|tmp_cnt2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_cnt2[11]~40_combout\,
	clrn => \SW0~input_o\,
	sclr => \alarm_0|Equal4~1_combout\,
	ena => \alarm_0|tmp_cnt2[0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_cnt2\(11));

-- Location: LCCOMB_X106_Y37_N24
\alarm_0|tmp_cnt2[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_cnt2[12]~42_combout\ = (\alarm_0|tmp_cnt2\(12) & (\alarm_0|tmp_cnt2[11]~41\ $ (GND))) # (!\alarm_0|tmp_cnt2\(12) & (!\alarm_0|tmp_cnt2[11]~41\ & VCC))
-- \alarm_0|tmp_cnt2[12]~43\ = CARRY((\alarm_0|tmp_cnt2\(12) & !\alarm_0|tmp_cnt2[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alarm_0|tmp_cnt2\(12),
	datad => VCC,
	cin => \alarm_0|tmp_cnt2[11]~41\,
	combout => \alarm_0|tmp_cnt2[12]~42_combout\,
	cout => \alarm_0|tmp_cnt2[12]~43\);

-- Location: FF_X106_Y37_N25
\alarm_0|tmp_cnt2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_cnt2[12]~42_combout\,
	clrn => \SW0~input_o\,
	sclr => \alarm_0|Equal4~1_combout\,
	ena => \alarm_0|tmp_cnt2[0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_cnt2\(12));

-- Location: LCCOMB_X106_Y37_N26
\alarm_0|tmp_cnt2[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_cnt2[13]~44_combout\ = (\alarm_0|tmp_cnt2\(13) & (!\alarm_0|tmp_cnt2[12]~43\)) # (!\alarm_0|tmp_cnt2\(13) & ((\alarm_0|tmp_cnt2[12]~43\) # (GND)))
-- \alarm_0|tmp_cnt2[13]~45\ = CARRY((!\alarm_0|tmp_cnt2[12]~43\) # (!\alarm_0|tmp_cnt2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_cnt2\(13),
	datad => VCC,
	cin => \alarm_0|tmp_cnt2[12]~43\,
	combout => \alarm_0|tmp_cnt2[13]~44_combout\,
	cout => \alarm_0|tmp_cnt2[13]~45\);

-- Location: FF_X106_Y37_N27
\alarm_0|tmp_cnt2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_cnt2[13]~44_combout\,
	clrn => \SW0~input_o\,
	sclr => \alarm_0|Equal4~1_combout\,
	ena => \alarm_0|tmp_cnt2[0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_cnt2\(13));

-- Location: LCCOMB_X106_Y37_N28
\alarm_0|tmp_cnt2[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_cnt2[14]~46_combout\ = (\alarm_0|tmp_cnt2\(14) & (\alarm_0|tmp_cnt2[13]~45\ $ (GND))) # (!\alarm_0|tmp_cnt2\(14) & (!\alarm_0|tmp_cnt2[13]~45\ & VCC))
-- \alarm_0|tmp_cnt2[14]~47\ = CARRY((\alarm_0|tmp_cnt2\(14) & !\alarm_0|tmp_cnt2[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alarm_0|tmp_cnt2\(14),
	datad => VCC,
	cin => \alarm_0|tmp_cnt2[13]~45\,
	combout => \alarm_0|tmp_cnt2[14]~46_combout\,
	cout => \alarm_0|tmp_cnt2[14]~47\);

-- Location: FF_X106_Y37_N29
\alarm_0|tmp_cnt2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_cnt2[14]~46_combout\,
	clrn => \SW0~input_o\,
	sclr => \alarm_0|Equal4~1_combout\,
	ena => \alarm_0|tmp_cnt2[0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_cnt2\(14));

-- Location: LCCOMB_X106_Y37_N30
\alarm_0|tmp_cnt2[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_cnt2[15]~48_combout\ = \alarm_0|tmp_cnt2\(15) $ (\alarm_0|tmp_cnt2[14]~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_cnt2\(15),
	cin => \alarm_0|tmp_cnt2[14]~47\,
	combout => \alarm_0|tmp_cnt2[15]~48_combout\);

-- Location: FF_X106_Y37_N31
\alarm_0|tmp_cnt2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_cnt2[15]~48_combout\,
	clrn => \SW0~input_o\,
	sclr => \alarm_0|Equal4~1_combout\,
	ena => \alarm_0|tmp_cnt2[0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_cnt2\(15));

-- Location: LCCOMB_X107_Y37_N8
\alarm_0|Equal16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|Equal16~3_combout\ = (\alarm_0|tmp_cnt2\(13)) # ((\alarm_0|tmp_cnt2\(14)) # ((\alarm_0|tmp_cnt2\(15)) # (!\alarm_0|tmp_cnt2\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_cnt2\(13),
	datab => \alarm_0|tmp_cnt2\(14),
	datac => \alarm_0|tmp_cnt2\(12),
	datad => \alarm_0|tmp_cnt2\(15),
	combout => \alarm_0|Equal16~3_combout\);

-- Location: LCCOMB_X107_Y37_N30
\alarm_0|Equal16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|Equal16~2_combout\ = ((\alarm_0|tmp_cnt2\(11)) # ((!\alarm_0|tmp_cnt2\(9)) # (!\alarm_0|tmp_cnt2\(10)))) # (!\alarm_0|tmp_cnt2\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_cnt2\(8),
	datab => \alarm_0|tmp_cnt2\(11),
	datac => \alarm_0|tmp_cnt2\(10),
	datad => \alarm_0|tmp_cnt2\(9),
	combout => \alarm_0|Equal16~2_combout\);

-- Location: LCCOMB_X107_Y37_N28
\alarm_0|Equal16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|Equal16~1_combout\ = ((\alarm_0|tmp_cnt2\(7)) # ((!\alarm_0|tmp_cnt2\(5)) # (!\alarm_0|tmp_cnt2\(4)))) # (!\alarm_0|tmp_cnt2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_cnt2\(6),
	datab => \alarm_0|tmp_cnt2\(7),
	datac => \alarm_0|tmp_cnt2\(4),
	datad => \alarm_0|tmp_cnt2\(5),
	combout => \alarm_0|Equal16~1_combout\);

-- Location: LCCOMB_X107_Y37_N6
\alarm_0|Equal16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|Equal16~4_combout\ = (\alarm_0|Equal16~0_combout\) # ((\alarm_0|Equal16~3_combout\) # ((\alarm_0|Equal16~2_combout\) # (\alarm_0|Equal16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|Equal16~0_combout\,
	datab => \alarm_0|Equal16~3_combout\,
	datac => \alarm_0|Equal16~2_combout\,
	datad => \alarm_0|Equal16~1_combout\,
	combout => \alarm_0|Equal16~4_combout\);

-- Location: LCCOMB_X110_Y37_N12
\alarm_0|process_2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|process_2~5_combout\ = (\alarm_0|tmp_set_01M\(3) & (\clock_0|tmp_time_01m\(3) & (\alarm_0|tmp_set_01M\(2) $ (!\clock_0|tmp_time_01m\(2))))) # (!\alarm_0|tmp_set_01M\(3) & (!\clock_0|tmp_time_01m\(3) & (\alarm_0|tmp_set_01M\(2) $ 
-- (!\clock_0|tmp_time_01m\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_01M\(3),
	datab => \alarm_0|tmp_set_01M\(2),
	datac => \clock_0|tmp_time_01m\(3),
	datad => \clock_0|tmp_time_01m\(2),
	combout => \alarm_0|process_2~5_combout\);

-- Location: LCCOMB_X109_Y37_N16
\alarm_0|tmp_set_10M[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_10M[0]~5_combout\ = !\alarm_0|tmp_set_10M\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alarm_0|tmp_set_10M\(0),
	combout => \alarm_0|tmp_set_10M[0]~5_combout\);

-- Location: LCCOMB_X110_Y37_N18
\alarm_0|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|Equal6~0_combout\ = (\alarm_0|tmp_set_01M\(3) & (!\alarm_0|tmp_set_01M\(2) & (\alarm_0|tmp_set_01M\(0) & !\alarm_0|tmp_set_01M\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_01M\(3),
	datab => \alarm_0|tmp_set_01M\(2),
	datac => \alarm_0|tmp_set_01M\(0),
	datad => \alarm_0|tmp_set_01M\(1),
	combout => \alarm_0|Equal6~0_combout\);

-- Location: LCCOMB_X109_Y37_N4
\alarm_0|tmp_set_10M[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_10M[3]~0_combout\ = (\alarm_0|Equal6~0_combout\ & (\alarm_0|Equal4~0_combout\ & \alarm_0|tmp_set_01H[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alarm_0|Equal6~0_combout\,
	datac => \alarm_0|Equal4~0_combout\,
	datad => \alarm_0|tmp_set_01H[3]~0_combout\,
	combout => \alarm_0|tmp_set_10M[3]~0_combout\);

-- Location: FF_X109_Y37_N17
\alarm_0|tmp_set_10M[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_set_10M[0]~5_combout\,
	clrn => \SW0~input_o\,
	ena => \alarm_0|tmp_set_10M[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_set_10M\(0));

-- Location: LCCOMB_X110_Y37_N4
\alarm_0|tmp_set_10M[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_10M[3]~3_combout\ = (\alarm_0|tmp_set_10M\(2) & (\alarm_0|tmp_set_10M\(1) & \alarm_0|tmp_set_10M\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alarm_0|tmp_set_10M\(2),
	datac => \alarm_0|tmp_set_10M\(1),
	datad => \alarm_0|tmp_set_10M\(0),
	combout => \alarm_0|tmp_set_10M[3]~3_combout\);

-- Location: LCCOMB_X110_Y37_N28
\alarm_0|tmp_set_10M[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_10M[3]~4_combout\ = \alarm_0|tmp_set_10M\(3) $ (((\alarm_0|tmp_set_10M[3]~3_combout\ & (\alarm_0|tmp_set_01M[3]~0_combout\ & \alarm_0|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_10M[3]~3_combout\,
	datab => \alarm_0|tmp_set_01M[3]~0_combout\,
	datac => \alarm_0|tmp_set_10M\(3),
	datad => \alarm_0|Equal6~0_combout\,
	combout => \alarm_0|tmp_set_10M[3]~4_combout\);

-- Location: FF_X110_Y37_N29
\alarm_0|tmp_set_10M[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_set_10M[3]~4_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_set_10M\(3));

-- Location: LCCOMB_X109_Y37_N6
\alarm_0|tmp_set_10M~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_10M~2_combout\ = (\alarm_0|tmp_set_10M\(1) & ((\alarm_0|tmp_set_10M\(2) $ (\alarm_0|tmp_set_10M\(0))))) # (!\alarm_0|tmp_set_10M\(1) & (\alarm_0|tmp_set_10M\(2) & ((\alarm_0|tmp_set_10M\(3)) # (!\alarm_0|tmp_set_10M\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_10M\(1),
	datab => \alarm_0|tmp_set_10M\(3),
	datac => \alarm_0|tmp_set_10M\(2),
	datad => \alarm_0|tmp_set_10M\(0),
	combout => \alarm_0|tmp_set_10M~2_combout\);

-- Location: FF_X109_Y37_N7
\alarm_0|tmp_set_10M[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_set_10M~2_combout\,
	clrn => \SW0~input_o\,
	ena => \alarm_0|tmp_set_10M[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_set_10M\(2));

-- Location: LCCOMB_X109_Y37_N24
\alarm_0|tmp_set_10M~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_10M~1_combout\ = (\alarm_0|tmp_set_10M\(1) & (((!\alarm_0|tmp_set_10M\(0))))) # (!\alarm_0|tmp_set_10M\(1) & (\alarm_0|tmp_set_10M\(0) & ((\alarm_0|tmp_set_10M\(3)) # (!\alarm_0|tmp_set_10M\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_10M\(2),
	datab => \alarm_0|tmp_set_10M\(3),
	datac => \alarm_0|tmp_set_10M\(1),
	datad => \alarm_0|tmp_set_10M\(0),
	combout => \alarm_0|tmp_set_10M~1_combout\);

-- Location: FF_X109_Y37_N25
\alarm_0|tmp_set_10M[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_set_10M~1_combout\,
	clrn => \SW0~input_o\,
	ena => \alarm_0|tmp_set_10M[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_set_10M\(1));

-- Location: LCCOMB_X110_Y37_N14
\alarm_0|process_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|process_2~6_combout\ = (\alarm_0|tmp_set_10M\(0) & (\clock_0|tmp_time_10m\(0) & (\alarm_0|tmp_set_10M\(1) $ (!\clock_0|tmp_time_10m\(1))))) # (!\alarm_0|tmp_set_10M\(0) & (!\clock_0|tmp_time_10m\(0) & (\alarm_0|tmp_set_10M\(1) $ 
-- (!\clock_0|tmp_time_10m\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_10M\(0),
	datab => \alarm_0|tmp_set_10M\(1),
	datac => \clock_0|tmp_time_10m\(1),
	datad => \clock_0|tmp_time_10m\(0),
	combout => \alarm_0|process_2~6_combout\);

-- Location: LCCOMB_X110_Y37_N20
\alarm_0|process_2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|process_2~7_combout\ = (\clock_0|tmp_time_10m\(3) & (\alarm_0|tmp_set_10M\(3) & (\alarm_0|tmp_set_10M\(2) $ (!\clock_0|tmp_time_10m\(2))))) # (!\clock_0|tmp_time_10m\(3) & (!\alarm_0|tmp_set_10M\(3) & (\alarm_0|tmp_set_10M\(2) $ 
-- (!\clock_0|tmp_time_10m\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_10m\(3),
	datab => \alarm_0|tmp_set_10M\(3),
	datac => \alarm_0|tmp_set_10M\(2),
	datad => \clock_0|tmp_time_10m\(2),
	combout => \alarm_0|process_2~7_combout\);

-- Location: LCCOMB_X110_Y37_N10
\alarm_0|process_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|process_2~8_combout\ = (\alarm_0|process_2~5_combout\ & (\clock_0|process_8~1_combout\ & (\alarm_0|process_2~6_combout\ & \alarm_0|process_2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|process_2~5_combout\,
	datab => \clock_0|process_8~1_combout\,
	datac => \alarm_0|process_2~6_combout\,
	datad => \alarm_0|process_2~7_combout\,
	combout => \alarm_0|process_2~8_combout\);

-- Location: LCCOMB_X108_Y37_N28
\alarm_0|mode_tmp[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|mode_tmp[1]~0_combout\ = (\alarm_0|Equal16~4_combout\ & ((!\alarm_0|process_2~8_combout\) # (!\alarm_0|process_2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alarm_0|process_2~4_combout\,
	datac => \alarm_0|Equal16~4_combout\,
	datad => \alarm_0|process_2~8_combout\,
	combout => \alarm_0|mode_tmp[1]~0_combout\);

-- Location: LCCOMB_X108_Y37_N24
\alarm_0|mode_tmp[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|mode_tmp[1]~2_combout\ = ((!\state_0|A_MODE~q\ & (!\alarm_0|process_2~9_combout\ & \alarm_0|mode_tmp[1]~0_combout\))) # (!\state_0|A_ADJUST_LONG~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_0|A_MODE~q\,
	datab => \state_0|A_ADJUST_LONG~q\,
	datac => \alarm_0|process_2~9_combout\,
	datad => \alarm_0|mode_tmp[1]~0_combout\,
	combout => \alarm_0|mode_tmp[1]~2_combout\);

-- Location: LCCOMB_X108_Y37_N6
\alarm_0|mode_tmp[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|mode_tmp[2]~4_combout\ = (!\alarm_0|Equal4~0_combout\ & (\state_0|A_ADJUST_LONG~q\ & \alarm_0|mode_tmp[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alarm_0|Equal4~0_combout\,
	datac => \state_0|A_ADJUST_LONG~q\,
	datad => \alarm_0|mode_tmp[1]~0_combout\,
	combout => \alarm_0|mode_tmp[2]~4_combout\);

-- Location: LCCOMB_X108_Y37_N22
\alarm_0|mode_tmp[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|mode_tmp[2]~5_combout\ = (\alarm_0|mode_tmp[1]~2_combout\ & (((\alarm_0|mode_tmp\(2))))) # (!\alarm_0|mode_tmp[1]~2_combout\ & (\alarm_0|process_2~9_combout\ & ((\alarm_0|mode_tmp[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|process_2~9_combout\,
	datab => \alarm_0|mode_tmp[1]~2_combout\,
	datac => \alarm_0|mode_tmp\(2),
	datad => \alarm_0|mode_tmp[2]~4_combout\,
	combout => \alarm_0|mode_tmp[2]~5_combout\);

-- Location: FF_X108_Y37_N23
\alarm_0|mode_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|mode_tmp[2]~5_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|mode_tmp\(2));

-- Location: LCCOMB_X107_Y40_N6
\alarm_0|process_2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|process_2~9_combout\ = (!\alarm_0|mode_tmp\(0) & (!\alarm_0|mode_tmp\(2) & (\alarm_0|mode_tmp\(1) & \state_0|A_UP_SHORT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|mode_tmp\(0),
	datab => \alarm_0|mode_tmp\(2),
	datac => \alarm_0|mode_tmp\(1),
	datad => \state_0|A_UP_SHORT~q\,
	combout => \alarm_0|process_2~9_combout\);

-- Location: LCCOMB_X107_Y40_N24
\alarm_0|mode_tmp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|mode_tmp~6_combout\ = (\alarm_0|mode_tmp\(0) & (\state_0|A_MODE~q\)) # (!\alarm_0|mode_tmp\(0) & (((\alarm_0|mode_tmp\(1)) # (\alarm_0|mode_tmp\(2))) # (!\state_0|A_MODE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|mode_tmp\(0),
	datab => \state_0|A_MODE~q\,
	datac => \alarm_0|mode_tmp\(1),
	datad => \alarm_0|mode_tmp\(2),
	combout => \alarm_0|mode_tmp~6_combout\);

-- Location: LCCOMB_X107_Y40_N12
\alarm_0|mode_tmp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|mode_tmp~7_combout\ = (\alarm_0|mode_tmp[1]~0_combout\ & ((\alarm_0|process_2~9_combout\) # (!\alarm_0|mode_tmp~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|process_2~9_combout\,
	datab => \alarm_0|mode_tmp~6_combout\,
	datad => \alarm_0|mode_tmp[1]~0_combout\,
	combout => \alarm_0|mode_tmp~7_combout\);

-- Location: FF_X107_Y40_N13
\alarm_0|mode_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|mode_tmp~7_combout\,
	clrn => \SW0~input_o\,
	ena => \state_0|A_ADJUST_LONG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|mode_tmp\(0));

-- Location: LCCOMB_X109_Y40_N12
\alarm_0|tmp_set_01M[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_01M[3]~0_combout\ = (!\alarm_0|mode_tmp\(0) & (!\alarm_0|mode_tmp\(2) & (!\alarm_0|mode_tmp\(1) & \alarm_0|tmp_set_01H[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|mode_tmp\(0),
	datab => \alarm_0|mode_tmp\(2),
	datac => \alarm_0|mode_tmp\(1),
	datad => \alarm_0|tmp_set_01H[3]~0_combout\,
	combout => \alarm_0|tmp_set_01M[3]~0_combout\);

-- Location: FF_X109_Y37_N21
\alarm_0|tmp_set_01M[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_set_01M[0]~4_combout\,
	clrn => \SW0~input_o\,
	ena => \alarm_0|tmp_set_01M[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_set_01M\(0));

-- Location: LCCOMB_X110_Y37_N24
\alarm_0|tmp_set_01M[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_set_01M[2]~2_combout\ = \alarm_0|tmp_set_01M\(2) $ (((\alarm_0|tmp_set_01M\(0) & (\alarm_0|tmp_set_01M[3]~0_combout\ & \alarm_0|tmp_set_01M\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_01M\(0),
	datab => \alarm_0|tmp_set_01M[3]~0_combout\,
	datac => \alarm_0|tmp_set_01M\(2),
	datad => \alarm_0|tmp_set_01M\(1),
	combout => \alarm_0|tmp_set_01M[2]~2_combout\);

-- Location: FF_X110_Y37_N25
\alarm_0|tmp_set_01M[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_set_01M[2]~2_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_set_01M\(2));

-- Location: LCCOMB_X109_Y39_N22
\stopwatch_top_0|CNT_0|tmp_cnt_1s[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_1s[0]~4_combout\ = !\stopwatch_top_0|CNT_0|tmp_cnt_1s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_1s\(0),
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_1s[0]~4_combout\);

-- Location: LCCOMB_X111_Y39_N8
\stopwatch_top_0|CNT_0|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|Equal2~0_combout\ = (\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(3) & (!\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(1) & (\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(0) & !\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(3),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(1),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(0),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(2),
	combout => \stopwatch_top_0|CNT_0|Equal2~0_combout\);

-- Location: LCCOMB_X111_Y39_N30
\stopwatch_top_0|CNT_0|tmp_cnt_1s[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_1s[3]~0_combout\ = (\stopwatch_top_0|STATE_M_0|tmp_state\(0) & (\stopwatch_top_0|CNT_0|Equal1~0_combout\ & (\stopwatch_top_0|CNT_0|Equal2~0_combout\ & !\stopwatch_top_0|STATE_M_0|tmp_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|STATE_M_0|tmp_state\(0),
	datab => \stopwatch_top_0|CNT_0|Equal1~0_combout\,
	datac => \stopwatch_top_0|CNT_0|Equal2~0_combout\,
	datad => \stopwatch_top_0|STATE_M_0|tmp_state\(1),
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_1s[3]~0_combout\);

-- Location: FF_X109_Y39_N23
\stopwatch_top_0|CNT_0|tmp_cnt_1s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \stopwatch_top_0|CNT_0|tmp_cnt_1s[0]~4_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	ena => \stopwatch_top_0|CNT_0|tmp_cnt_1s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|CNT_0|tmp_cnt_1s\(0));

-- Location: LCCOMB_X109_Y39_N14
\stopwatch_top_0|CNT_0|tmp_cnt_1s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_1s~3_combout\ = (\stopwatch_top_0|CNT_0|tmp_cnt_1s\(0) & ((\stopwatch_top_0|CNT_0|tmp_cnt_1s\(2) & (\stopwatch_top_0|CNT_0|tmp_cnt_1s\(3) $ (\stopwatch_top_0|CNT_0|tmp_cnt_1s\(1)))) # (!\stopwatch_top_0|CNT_0|tmp_cnt_1s\(2) 
-- & (\stopwatch_top_0|CNT_0|tmp_cnt_1s\(3) & \stopwatch_top_0|CNT_0|tmp_cnt_1s\(1))))) # (!\stopwatch_top_0|CNT_0|tmp_cnt_1s\(0) & (((\stopwatch_top_0|CNT_0|tmp_cnt_1s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_1s\(0),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_1s\(2),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_1s\(3),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_1s\(1),
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_1s~3_combout\);

-- Location: FF_X109_Y39_N15
\stopwatch_top_0|CNT_0|tmp_cnt_1s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \stopwatch_top_0|CNT_0|tmp_cnt_1s~3_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	ena => \stopwatch_top_0|CNT_0|tmp_cnt_1s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|CNT_0|tmp_cnt_1s\(3));

-- Location: LCCOMB_X109_Y39_N26
\stopwatch_top_0|CNT_0|tmp_cnt_1s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_1s~1_combout\ = (\stopwatch_top_0|CNT_0|tmp_cnt_1s\(0) & (!\stopwatch_top_0|CNT_0|tmp_cnt_1s\(1) & ((\stopwatch_top_0|CNT_0|tmp_cnt_1s\(2)) # (!\stopwatch_top_0|CNT_0|tmp_cnt_1s\(3))))) # 
-- (!\stopwatch_top_0|CNT_0|tmp_cnt_1s\(0) & (((\stopwatch_top_0|CNT_0|tmp_cnt_1s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_1s\(0),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_1s\(3),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_1s\(1),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_1s\(2),
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_1s~1_combout\);

-- Location: FF_X109_Y39_N27
\stopwatch_top_0|CNT_0|tmp_cnt_1s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \stopwatch_top_0|CNT_0|tmp_cnt_1s~1_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	ena => \stopwatch_top_0|CNT_0|tmp_cnt_1s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|CNT_0|tmp_cnt_1s\(1));

-- Location: LCCOMB_X108_Y39_N12
\stopwatch_top_0|CNT_0|tmp_cnt_1s[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_1s[2]~2_combout\ = \stopwatch_top_0|CNT_0|tmp_cnt_1s\(2) $ (((\stopwatch_top_0|CNT_0|tmp_cnt_1s\(1) & (\stopwatch_top_0|CNT_0|tmp_cnt_1s\(0) & \stopwatch_top_0|CNT_0|tmp_cnt_1s[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_1s\(1),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_1s\(0),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_1s\(2),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_1s[3]~0_combout\,
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_1s[2]~2_combout\);

-- Location: FF_X108_Y39_N13
\stopwatch_top_0|CNT_0|tmp_cnt_1s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \stopwatch_top_0|CNT_0|tmp_cnt_1s[2]~2_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|CNT_0|tmp_cnt_1s\(2));

-- Location: LCCOMB_X109_Y39_N8
\FND_mux_0|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux13~2_combout\ = (\state_0|state\(0) & (\alarm_0|tmp_set_01M\(2) & (!\state_0|state\(1)))) # (!\state_0|state\(0) & (((\state_0|state\(1) & \stopwatch_top_0|CNT_0|tmp_cnt_1s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_01M\(2),
	datab => \state_0|state\(0),
	datac => \state_0|state\(1),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_1s\(2),
	combout => \FND_mux_0|Mux13~2_combout\);

-- Location: LCCOMB_X113_Y37_N12
\FND_mux_0|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux13~3_combout\ = (\FND_mux_0|Mux13~2_combout\) # ((\clock_0|tmp_time_01m\(2) & (\state_0|state\(1) $ (!\state_0|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux13~2_combout\,
	datab => \state_0|state\(1),
	datac => \clock_0|tmp_time_01m\(2),
	datad => \state_0|state\(0),
	combout => \FND_mux_0|Mux13~3_combout\);

-- Location: LCCOMB_X109_Y37_N22
\FND_mux_0|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux14~2_combout\ = (\state_0|state\(1) & (!\state_0|state\(0) & ((\stopwatch_top_0|CNT_0|tmp_cnt_1s\(1))))) # (!\state_0|state\(1) & (\state_0|state\(0) & (\alarm_0|tmp_set_01M\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_0|state\(1),
	datab => \state_0|state\(0),
	datac => \alarm_0|tmp_set_01M\(1),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_1s\(1),
	combout => \FND_mux_0|Mux14~2_combout\);

-- Location: LCCOMB_X113_Y37_N18
\FND_mux_0|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux14~3_combout\ = (\FND_mux_0|Mux14~2_combout\) # ((\clock_0|tmp_time_01m\(1) & (\state_0|state\(0) $ (!\state_0|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_01m\(1),
	datab => \state_0|state\(0),
	datac => \state_0|state\(1),
	datad => \FND_mux_0|Mux14~2_combout\,
	combout => \FND_mux_0|Mux14~3_combout\);

-- Location: LCCOMB_X109_Y39_N12
\FND_mux_0|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux12~2_combout\ = (\state_0|state\(1) & (((\stopwatch_top_0|CNT_0|tmp_cnt_1s\(3) & !\state_0|state\(0))))) # (!\state_0|state\(1) & (\alarm_0|tmp_set_01M\(3) & ((\state_0|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_01M\(3),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_1s\(3),
	datac => \state_0|state\(1),
	datad => \state_0|state\(0),
	combout => \FND_mux_0|Mux12~2_combout\);

-- Location: LCCOMB_X113_Y37_N26
\FND_mux_0|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux12~3_combout\ = (\FND_mux_0|Mux12~2_combout\) # ((\clock_0|tmp_time_01m\(3) & (\state_0|state\(1) $ (!\state_0|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_01m\(3),
	datab => \state_0|state\(1),
	datac => \FND_mux_0|Mux12~2_combout\,
	datad => \state_0|state\(0),
	combout => \FND_mux_0|Mux12~3_combout\);

-- Location: LCCOMB_X109_Y39_N4
\FND_mux_0|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux15~2_combout\ = (\state_0|state\(1) & (((\stopwatch_top_0|CNT_0|tmp_cnt_1s\(0) & !\state_0|state\(0))))) # (!\state_0|state\(1) & (\alarm_0|tmp_set_01M\(0) & ((\state_0|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_01M\(0),
	datab => \state_0|state\(1),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_1s\(0),
	datad => \state_0|state\(0),
	combout => \FND_mux_0|Mux15~2_combout\);

-- Location: LCCOMB_X113_Y37_N20
\FND_mux_0|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux15~3_combout\ = (\FND_mux_0|Mux15~2_combout\) # ((\clock_0|tmp_time_01m\(0) & (\state_0|state\(1) $ (!\state_0|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux15~2_combout\,
	datab => \state_0|state\(1),
	datac => \clock_0|tmp_time_01m\(0),
	datad => \state_0|state\(0),
	combout => \FND_mux_0|Mux15~3_combout\);

-- Location: LCCOMB_X113_Y37_N16
\FND_DRIVER_0|SEG_DRV_01M|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_01M|Mux6~0_combout\ = (\FND_mux_0|Mux13~3_combout\ & ((\FND_mux_0|Mux12~3_combout\) # ((!\FND_mux_0|Mux14~3_combout\ & !\FND_mux_0|Mux15~3_combout\)))) # (!\FND_mux_0|Mux13~3_combout\ & (\FND_mux_0|Mux15~3_combout\ & 
-- (\FND_mux_0|Mux14~3_combout\ $ (!\FND_mux_0|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux13~3_combout\,
	datab => \FND_mux_0|Mux14~3_combout\,
	datac => \FND_mux_0|Mux12~3_combout\,
	datad => \FND_mux_0|Mux15~3_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_01M|Mux6~0_combout\);

-- Location: LCCOMB_X113_Y37_N2
\FND_DRIVER_0|SEG_DRV_01M|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_01M|Mux5~0_combout\ = (\FND_mux_0|Mux13~3_combout\ & ((\FND_mux_0|Mux12~3_combout\) # (\FND_mux_0|Mux14~3_combout\ $ (\FND_mux_0|Mux15~3_combout\)))) # (!\FND_mux_0|Mux13~3_combout\ & (\FND_mux_0|Mux14~3_combout\ & 
-- (\FND_mux_0|Mux12~3_combout\ & \FND_mux_0|Mux15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux13~3_combout\,
	datab => \FND_mux_0|Mux14~3_combout\,
	datac => \FND_mux_0|Mux12~3_combout\,
	datad => \FND_mux_0|Mux15~3_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_01M|Mux5~0_combout\);

-- Location: LCCOMB_X113_Y37_N24
\FND_DRIVER_0|SEG_DRV_01M|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_01M|Mux4~0_combout\ = (\FND_mux_0|Mux13~3_combout\ & (((\FND_mux_0|Mux12~3_combout\)))) # (!\FND_mux_0|Mux13~3_combout\ & (\FND_mux_0|Mux14~3_combout\ & (\FND_mux_0|Mux12~3_combout\ $ (!\FND_mux_0|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux13~3_combout\,
	datab => \FND_mux_0|Mux14~3_combout\,
	datac => \FND_mux_0|Mux12~3_combout\,
	datad => \FND_mux_0|Mux15~3_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_01M|Mux4~0_combout\);

-- Location: LCCOMB_X113_Y37_N14
\FND_DRIVER_0|SEG_DRV_01M|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_01M|Mux3~0_combout\ = (\FND_mux_0|Mux14~3_combout\ & ((\FND_mux_0|Mux15~3_combout\ & (\FND_mux_0|Mux13~3_combout\)) # (!\FND_mux_0|Mux15~3_combout\ & ((\FND_mux_0|Mux12~3_combout\))))) # (!\FND_mux_0|Mux14~3_combout\ & 
-- (!\FND_mux_0|Mux12~3_combout\ & (\FND_mux_0|Mux13~3_combout\ $ (\FND_mux_0|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux13~3_combout\,
	datab => \FND_mux_0|Mux14~3_combout\,
	datac => \FND_mux_0|Mux12~3_combout\,
	datad => \FND_mux_0|Mux15~3_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_01M|Mux3~0_combout\);

-- Location: LCCOMB_X113_Y37_N4
\FND_DRIVER_0|SEG_DRV_01M|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_01M|Mux2~0_combout\ = (\FND_mux_0|Mux14~3_combout\ & ((\FND_mux_0|Mux12~3_combout\ & (\FND_mux_0|Mux13~3_combout\)) # (!\FND_mux_0|Mux12~3_combout\ & ((\FND_mux_0|Mux15~3_combout\))))) # (!\FND_mux_0|Mux14~3_combout\ & 
-- ((\FND_mux_0|Mux13~3_combout\ & (!\FND_mux_0|Mux12~3_combout\)) # (!\FND_mux_0|Mux13~3_combout\ & ((\FND_mux_0|Mux15~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux13~3_combout\,
	datab => \FND_mux_0|Mux14~3_combout\,
	datac => \FND_mux_0|Mux12~3_combout\,
	datad => \FND_mux_0|Mux15~3_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_01M|Mux2~0_combout\);

-- Location: LCCOMB_X113_Y37_N22
\FND_DRIVER_0|SEG_DRV_01M|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_01M|Mux1~0_combout\ = (\FND_mux_0|Mux14~3_combout\ & ((\FND_mux_0|Mux15~3_combout\) # (\FND_mux_0|Mux13~3_combout\ $ (!\FND_mux_0|Mux12~3_combout\)))) # (!\FND_mux_0|Mux14~3_combout\ & (!\FND_mux_0|Mux13~3_combout\ & 
-- (!\FND_mux_0|Mux12~3_combout\ & \FND_mux_0|Mux15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux13~3_combout\,
	datab => \FND_mux_0|Mux14~3_combout\,
	datac => \FND_mux_0|Mux12~3_combout\,
	datad => \FND_mux_0|Mux15~3_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_01M|Mux1~0_combout\);

-- Location: LCCOMB_X113_Y37_N8
\FND_DRIVER_0|SEG_DRV_01M|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_01M|Mux0~0_combout\ = (\FND_mux_0|Mux13~3_combout\ & ((\FND_mux_0|Mux14~3_combout\ $ (!\FND_mux_0|Mux12~3_combout\)) # (!\FND_mux_0|Mux15~3_combout\))) # (!\FND_mux_0|Mux13~3_combout\ & ((\FND_mux_0|Mux14~3_combout\) # 
-- ((\FND_mux_0|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux13~3_combout\,
	datab => \FND_mux_0|Mux14~3_combout\,
	datac => \FND_mux_0|Mux12~3_combout\,
	datad => \FND_mux_0|Mux15~3_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_01M|Mux0~0_combout\);

-- Location: LCCOMB_X112_Y39_N12
\stopwatch_top_0|CNT_0|tmp_cnt_10s[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_10s[0]~5_combout\ = !\stopwatch_top_0|CNT_0|tmp_cnt_10s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(0),
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_10s[0]~5_combout\);

-- Location: LCCOMB_X108_Y39_N28
\stopwatch_top_0|CNT_0|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|Equal3~0_combout\ = (!\stopwatch_top_0|CNT_0|tmp_cnt_1s\(2) & (!\stopwatch_top_0|CNT_0|tmp_cnt_1s\(1) & (\stopwatch_top_0|CNT_0|tmp_cnt_1s\(3) & \stopwatch_top_0|CNT_0|tmp_cnt_1s\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_1s\(2),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_1s\(1),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_1s\(3),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_1s\(0),
	combout => \stopwatch_top_0|CNT_0|Equal3~0_combout\);

-- Location: LCCOMB_X112_Y39_N28
\stopwatch_top_0|CNT_0|tmp_cnt_10s[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_10s[3]~0_combout\ = (\stopwatch_top_0|CNT_0|Equal2~0_combout\ & (\stopwatch_top_0|CNT_0|Equal0~0_combout\ & (\stopwatch_top_0|CNT_0|Equal3~0_combout\ & \stopwatch_top_0|CNT_0|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|Equal2~0_combout\,
	datab => \stopwatch_top_0|CNT_0|Equal0~0_combout\,
	datac => \stopwatch_top_0|CNT_0|Equal3~0_combout\,
	datad => \stopwatch_top_0|CNT_0|Equal1~0_combout\,
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_10s[3]~0_combout\);

-- Location: FF_X112_Y39_N13
\stopwatch_top_0|CNT_0|tmp_cnt_10s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \stopwatch_top_0|CNT_0|tmp_cnt_10s[0]~5_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	ena => \stopwatch_top_0|CNT_0|tmp_cnt_10s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(0));

-- Location: LCCOMB_X112_Y39_N20
\stopwatch_top_0|CNT_0|tmp_cnt_10s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_10s~2_combout\ = (\stopwatch_top_0|CNT_0|tmp_cnt_10s\(1) & ((\stopwatch_top_0|CNT_0|tmp_cnt_10s\(2) $ (\stopwatch_top_0|CNT_0|tmp_cnt_10s\(0))))) # (!\stopwatch_top_0|CNT_0|tmp_cnt_10s\(1) & 
-- (\stopwatch_top_0|CNT_0|tmp_cnt_10s\(2) & ((\stopwatch_top_0|CNT_0|tmp_cnt_10s\(3)) # (!\stopwatch_top_0|CNT_0|tmp_cnt_10s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(3),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(1),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(2),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(0),
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_10s~2_combout\);

-- Location: FF_X112_Y39_N21
\stopwatch_top_0|CNT_0|tmp_cnt_10s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \stopwatch_top_0|CNT_0|tmp_cnt_10s~2_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	ena => \stopwatch_top_0|CNT_0|tmp_cnt_10s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(2));

-- Location: LCCOMB_X112_Y39_N18
\stopwatch_top_0|CNT_0|tmp_cnt_10s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_10s~1_combout\ = (\stopwatch_top_0|CNT_0|tmp_cnt_10s\(1) & (((!\stopwatch_top_0|CNT_0|tmp_cnt_10s\(0))))) # (!\stopwatch_top_0|CNT_0|tmp_cnt_10s\(1) & (\stopwatch_top_0|CNT_0|tmp_cnt_10s\(0) & 
-- ((\stopwatch_top_0|CNT_0|tmp_cnt_10s\(3)) # (!\stopwatch_top_0|CNT_0|tmp_cnt_10s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(3),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(2),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(1),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(0),
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_10s~1_combout\);

-- Location: FF_X112_Y39_N19
\stopwatch_top_0|CNT_0|tmp_cnt_10s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \stopwatch_top_0|CNT_0|tmp_cnt_10s~1_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	ena => \stopwatch_top_0|CNT_0|tmp_cnt_10s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(1));

-- Location: LCCOMB_X112_Y39_N6
\stopwatch_top_0|CNT_0|tmp_cnt_10s[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_10s[3]~3_combout\ = (\stopwatch_top_0|CNT_0|tmp_cnt_10s\(1) & (\stopwatch_top_0|CNT_0|tmp_cnt_10s\(2) & \stopwatch_top_0|CNT_0|tmp_cnt_10s\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(1),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(2),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(0),
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_10s[3]~3_combout\);

-- Location: LCCOMB_X108_Y39_N18
\stopwatch_top_0|CNT_0|tmp_cnt_10s[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_10s[3]~4_combout\ = \stopwatch_top_0|CNT_0|tmp_cnt_10s\(3) $ (((\stopwatch_top_0|CNT_0|tmp_cnt_10s[3]~3_combout\ & (\stopwatch_top_0|CNT_0|Equal3~0_combout\ & \stopwatch_top_0|CNT_0|tmp_cnt_1s[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_10s[3]~3_combout\,
	datab => \stopwatch_top_0|CNT_0|Equal3~0_combout\,
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(3),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_1s[3]~0_combout\,
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_10s[3]~4_combout\);

-- Location: FF_X108_Y39_N19
\stopwatch_top_0|CNT_0|tmp_cnt_10s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \stopwatch_top_0|CNT_0|tmp_cnt_10s[3]~4_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(3));

-- Location: LCCOMB_X109_Y37_N10
\FND_mux_0|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux8~2_combout\ = (\state_0|state\(1) & (\stopwatch_top_0|CNT_0|tmp_cnt_10s\(3) & ((!\state_0|state\(0))))) # (!\state_0|state\(1) & (((\alarm_0|tmp_set_10M\(3) & \state_0|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(3),
	datab => \alarm_0|tmp_set_10M\(3),
	datac => \state_0|state\(1),
	datad => \state_0|state\(0),
	combout => \FND_mux_0|Mux8~2_combout\);

-- Location: LCCOMB_X109_Y37_N30
\FND_mux_0|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux8~3_combout\ = (\FND_mux_0|Mux8~2_combout\) # ((\clock_0|tmp_time_10m\(3) & (\state_0|state\(1) $ (!\state_0|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_0|state\(1),
	datab => \clock_0|tmp_time_10m\(3),
	datac => \FND_mux_0|Mux8~2_combout\,
	datad => \state_0|state\(0),
	combout => \FND_mux_0|Mux8~3_combout\);

-- Location: LCCOMB_X109_Y37_N12
\FND_mux_0|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux9~2_combout\ = (\state_0|state\(0) & (((!\state_0|state\(1) & \alarm_0|tmp_set_10M\(2))))) # (!\state_0|state\(0) & (\stopwatch_top_0|CNT_0|tmp_cnt_10s\(2) & (\state_0|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(2),
	datab => \state_0|state\(0),
	datac => \state_0|state\(1),
	datad => \alarm_0|tmp_set_10M\(2),
	combout => \FND_mux_0|Mux9~2_combout\);

-- Location: LCCOMB_X109_Y37_N0
\FND_mux_0|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux9~3_combout\ = (\FND_mux_0|Mux9~2_combout\) # ((\clock_0|tmp_time_10m\(2) & (\state_0|state\(0) $ (!\state_0|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_10m\(2),
	datab => \state_0|state\(0),
	datac => \state_0|state\(1),
	datad => \FND_mux_0|Mux9~2_combout\,
	combout => \FND_mux_0|Mux9~3_combout\);

-- Location: LCCOMB_X109_Y37_N18
\FND_mux_0|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux11~2_combout\ = (\state_0|state\(1) & (\stopwatch_top_0|CNT_0|tmp_cnt_10s\(0) & ((!\state_0|state\(0))))) # (!\state_0|state\(1) & (((\alarm_0|tmp_set_10M\(0) & \state_0|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(0),
	datab => \alarm_0|tmp_set_10M\(0),
	datac => \state_0|state\(1),
	datad => \state_0|state\(0),
	combout => \FND_mux_0|Mux11~2_combout\);

-- Location: LCCOMB_X109_Y37_N14
\FND_mux_0|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux11~3_combout\ = (\FND_mux_0|Mux11~2_combout\) # ((\clock_0|tmp_time_10m\(0) & (\state_0|state\(0) $ (!\state_0|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_0|state\(0),
	datab => \clock_0|tmp_time_10m\(0),
	datac => \state_0|state\(1),
	datad => \FND_mux_0|Mux11~2_combout\,
	combout => \FND_mux_0|Mux11~3_combout\);

-- Location: LCCOMB_X113_Y37_N10
\FND_mux_0|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux10~3_combout\ = (\state_0|state\(1) & (\stopwatch_top_0|CNT_0|tmp_cnt_10s\(1) & ((!\state_0|state\(0))))) # (!\state_0|state\(1) & (((\alarm_0|tmp_set_10M\(1) & \state_0|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(1),
	datab => \state_0|state\(1),
	datac => \alarm_0|tmp_set_10M\(1),
	datad => \state_0|state\(0),
	combout => \FND_mux_0|Mux10~3_combout\);

-- Location: LCCOMB_X113_Y37_N28
\FND_mux_0|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux10~4_combout\ = (\FND_mux_0|Mux10~3_combout\) # ((\clock_0|tmp_time_10m\(1) & (\state_0|state\(1) $ (!\state_0|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux10~3_combout\,
	datab => \clock_0|tmp_time_10m\(1),
	datac => \state_0|state\(1),
	datad => \state_0|state\(0),
	combout => \FND_mux_0|Mux10~4_combout\);

-- Location: LCCOMB_X107_Y37_N16
\FND_DRIVER_0|SEG_DRV_10M|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_10M|Mux6~0_combout\ = (\FND_mux_0|Mux8~3_combout\ & ((\FND_mux_0|Mux9~3_combout\) # ((\FND_mux_0|Mux11~3_combout\ & \FND_mux_0|Mux10~4_combout\)))) # (!\FND_mux_0|Mux8~3_combout\ & (!\FND_mux_0|Mux10~4_combout\ & 
-- (\FND_mux_0|Mux9~3_combout\ $ (\FND_mux_0|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux8~3_combout\,
	datab => \FND_mux_0|Mux9~3_combout\,
	datac => \FND_mux_0|Mux11~3_combout\,
	datad => \FND_mux_0|Mux10~4_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_10M|Mux6~0_combout\);

-- Location: LCCOMB_X109_Y37_N8
\FND_DRIVER_0|SEG_DRV_10M|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_10M|Mux5~0_combout\ = (\FND_mux_0|Mux8~3_combout\ & ((\FND_mux_0|Mux9~3_combout\) # ((\FND_mux_0|Mux11~3_combout\ & \FND_mux_0|Mux10~4_combout\)))) # (!\FND_mux_0|Mux8~3_combout\ & (\FND_mux_0|Mux9~3_combout\ & 
-- (\FND_mux_0|Mux11~3_combout\ $ (\FND_mux_0|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux8~3_combout\,
	datab => \FND_mux_0|Mux9~3_combout\,
	datac => \FND_mux_0|Mux11~3_combout\,
	datad => \FND_mux_0|Mux10~4_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_10M|Mux5~0_combout\);

-- Location: LCCOMB_X107_Y37_N14
\FND_DRIVER_0|SEG_DRV_10M|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_10M|Mux4~0_combout\ = (\FND_mux_0|Mux9~3_combout\ & (\FND_mux_0|Mux8~3_combout\)) # (!\FND_mux_0|Mux9~3_combout\ & (\FND_mux_0|Mux10~4_combout\ & (\FND_mux_0|Mux8~3_combout\ $ (!\FND_mux_0|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux8~3_combout\,
	datab => \FND_mux_0|Mux9~3_combout\,
	datac => \FND_mux_0|Mux11~3_combout\,
	datad => \FND_mux_0|Mux10~4_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_10M|Mux4~0_combout\);

-- Location: LCCOMB_X109_Y37_N26
\FND_DRIVER_0|SEG_DRV_10M|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_10M|Mux3~0_combout\ = (\FND_mux_0|Mux10~4_combout\ & ((\FND_mux_0|Mux11~3_combout\ & ((\FND_mux_0|Mux9~3_combout\))) # (!\FND_mux_0|Mux11~3_combout\ & (\FND_mux_0|Mux8~3_combout\)))) # (!\FND_mux_0|Mux10~4_combout\ & 
-- (!\FND_mux_0|Mux8~3_combout\ & (\FND_mux_0|Mux9~3_combout\ $ (\FND_mux_0|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux8~3_combout\,
	datab => \FND_mux_0|Mux9~3_combout\,
	datac => \FND_mux_0|Mux11~3_combout\,
	datad => \FND_mux_0|Mux10~4_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_10M|Mux3~0_combout\);

-- Location: LCCOMB_X107_Y37_N4
\FND_DRIVER_0|SEG_DRV_10M|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_10M|Mux2~0_combout\ = (\FND_mux_0|Mux11~3_combout\ & ((\FND_mux_0|Mux9~3_combout\ $ (!\FND_mux_0|Mux10~4_combout\)) # (!\FND_mux_0|Mux8~3_combout\))) # (!\FND_mux_0|Mux11~3_combout\ & (\FND_mux_0|Mux9~3_combout\ & 
-- (\FND_mux_0|Mux8~3_combout\ $ (!\FND_mux_0|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux8~3_combout\,
	datab => \FND_mux_0|Mux9~3_combout\,
	datac => \FND_mux_0|Mux11~3_combout\,
	datad => \FND_mux_0|Mux10~4_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_10M|Mux2~0_combout\);

-- Location: LCCOMB_X107_Y37_N2
\FND_DRIVER_0|SEG_DRV_10M|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_10M|Mux1~0_combout\ = (\FND_mux_0|Mux11~3_combout\ & ((\FND_mux_0|Mux10~4_combout\) # ((!\FND_mux_0|Mux8~3_combout\ & !\FND_mux_0|Mux9~3_combout\)))) # (!\FND_mux_0|Mux11~3_combout\ & (\FND_mux_0|Mux10~4_combout\ & 
-- (\FND_mux_0|Mux8~3_combout\ $ (!\FND_mux_0|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux8~3_combout\,
	datab => \FND_mux_0|Mux9~3_combout\,
	datac => \FND_mux_0|Mux11~3_combout\,
	datad => \FND_mux_0|Mux10~4_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_10M|Mux1~0_combout\);

-- Location: LCCOMB_X107_Y37_N0
\FND_DRIVER_0|SEG_DRV_10M|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_10M|Mux0~0_combout\ = (\FND_mux_0|Mux9~3_combout\ & ((\FND_mux_0|Mux8~3_combout\ $ (!\FND_mux_0|Mux10~4_combout\)) # (!\FND_mux_0|Mux11~3_combout\))) # (!\FND_mux_0|Mux9~3_combout\ & ((\FND_mux_0|Mux8~3_combout\) # 
-- ((\FND_mux_0|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux8~3_combout\,
	datab => \FND_mux_0|Mux9~3_combout\,
	datac => \FND_mux_0|Mux11~3_combout\,
	datad => \FND_mux_0|Mux10~4_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_10M|Mux0~0_combout\);

-- Location: LCCOMB_X112_Y39_N22
\stopwatch_top_0|CNT_0|tmp_cnt_1m[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_1m[0]~4_combout\ = !\stopwatch_top_0|CNT_0|tmp_cnt_1m\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_1m\(0),
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_1m[0]~4_combout\);

-- Location: LCCOMB_X112_Y39_N0
\stopwatch_top_0|CNT_0|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|Equal4~0_combout\ = (\stopwatch_top_0|CNT_0|tmp_cnt_10s\(2) & (!\stopwatch_top_0|CNT_0|tmp_cnt_10s\(1) & (!\stopwatch_top_0|CNT_0|tmp_cnt_10s\(3) & \stopwatch_top_0|CNT_0|tmp_cnt_10s\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(2),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(1),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(3),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_10s\(0),
	combout => \stopwatch_top_0|CNT_0|Equal4~0_combout\);

-- Location: LCCOMB_X112_Y39_N30
\stopwatch_top_0|CNT_0|tmp_cnt_1m[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_1m[3]~0_combout\ = (\stopwatch_top_0|CNT_0|Equal4~0_combout\ & (\stopwatch_top_0|CNT_0|Equal3~0_combout\ & \stopwatch_top_0|CNT_0|tmp_cnt_1s[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stopwatch_top_0|CNT_0|Equal4~0_combout\,
	datac => \stopwatch_top_0|CNT_0|Equal3~0_combout\,
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_1s[3]~0_combout\,
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_1m[3]~0_combout\);

-- Location: FF_X112_Y39_N23
\stopwatch_top_0|CNT_0|tmp_cnt_1m[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \stopwatch_top_0|CNT_0|tmp_cnt_1m[0]~4_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	ena => \stopwatch_top_0|CNT_0|tmp_cnt_1m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|CNT_0|tmp_cnt_1m\(0));

-- Location: LCCOMB_X112_Y39_N16
\stopwatch_top_0|CNT_0|tmp_cnt_1m~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_1m~1_combout\ = (\stopwatch_top_0|CNT_0|tmp_cnt_1m\(1) & (((!\stopwatch_top_0|CNT_0|tmp_cnt_1m\(0))))) # (!\stopwatch_top_0|CNT_0|tmp_cnt_1m\(1) & (\stopwatch_top_0|CNT_0|tmp_cnt_1m\(0) & 
-- ((\stopwatch_top_0|CNT_0|tmp_cnt_1m\(2)) # (!\stopwatch_top_0|CNT_0|tmp_cnt_1m\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_1m\(2),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_1m\(3),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_1m\(1),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_1m\(0),
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_1m~1_combout\);

-- Location: FF_X112_Y39_N17
\stopwatch_top_0|CNT_0|tmp_cnt_1m[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \stopwatch_top_0|CNT_0|tmp_cnt_1m~1_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	ena => \stopwatch_top_0|CNT_0|tmp_cnt_1m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|CNT_0|tmp_cnt_1m\(1));

-- Location: LCCOMB_X108_Y39_N24
\stopwatch_top_0|CNT_0|tmp_cnt_1m[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_1m[2]~2_combout\ = \stopwatch_top_0|CNT_0|tmp_cnt_1m\(2) $ (((\stopwatch_top_0|CNT_0|tmp_cnt_1m\(0) & (\stopwatch_top_0|CNT_0|tmp_cnt_1m\(1) & \stopwatch_top_0|CNT_0|tmp_cnt_1m[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_1m\(0),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_1m\(1),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_1m\(2),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_1m[3]~0_combout\,
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_1m[2]~2_combout\);

-- Location: FF_X108_Y39_N25
\stopwatch_top_0|CNT_0|tmp_cnt_1m[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \stopwatch_top_0|CNT_0|tmp_cnt_1m[2]~2_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|CNT_0|tmp_cnt_1m\(2));

-- Location: LCCOMB_X112_Y39_N14
\stopwatch_top_0|CNT_0|tmp_cnt_1m~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_1m~3_combout\ = (\stopwatch_top_0|CNT_0|tmp_cnt_1m\(2) & (\stopwatch_top_0|CNT_0|tmp_cnt_1m\(3) $ (((\stopwatch_top_0|CNT_0|tmp_cnt_1m\(1) & \stopwatch_top_0|CNT_0|tmp_cnt_1m\(0)))))) # 
-- (!\stopwatch_top_0|CNT_0|tmp_cnt_1m\(2) & (\stopwatch_top_0|CNT_0|tmp_cnt_1m\(3) & ((\stopwatch_top_0|CNT_0|tmp_cnt_1m\(1)) # (!\stopwatch_top_0|CNT_0|tmp_cnt_1m\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_1m\(2),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_1m\(1),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_1m\(3),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_1m\(0),
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_1m~3_combout\);

-- Location: FF_X112_Y39_N15
\stopwatch_top_0|CNT_0|tmp_cnt_1m[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \stopwatch_top_0|CNT_0|tmp_cnt_1m~3_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	ena => \stopwatch_top_0|CNT_0|tmp_cnt_1m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|CNT_0|tmp_cnt_1m\(3));

-- Location: LCCOMB_X108_Y39_N22
\FND_mux_0|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux4~2_combout\ = (\state_0|state\(1) & (((\stopwatch_top_0|CNT_0|tmp_cnt_1m\(3) & !\state_0|state\(0))))) # (!\state_0|state\(1) & (\alarm_0|tmp_set_01H\(3) & ((\state_0|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_01H\(3),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_1m\(3),
	datac => \state_0|state\(1),
	datad => \state_0|state\(0),
	combout => \FND_mux_0|Mux4~2_combout\);

-- Location: LCCOMB_X107_Y38_N22
\FND_mux_0|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux4~3_combout\ = (\FND_mux_0|Mux4~2_combout\) # ((\clock_0|tmp_time_01h\(3) & (\state_0|state\(1) $ (!\state_0|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_0|state\(1),
	datab => \FND_mux_0|Mux4~2_combout\,
	datac => \state_0|state\(0),
	datad => \clock_0|tmp_time_01h\(3),
	combout => \FND_mux_0|Mux4~3_combout\);

-- Location: LCCOMB_X108_Y39_N26
\FND_mux_0|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux6~2_combout\ = (\state_0|state\(1) & (((\stopwatch_top_0|CNT_0|tmp_cnt_1m\(1) & !\state_0|state\(0))))) # (!\state_0|state\(1) & (!\alarm_0|tmp_set_01H\(1) & ((\state_0|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_01H\(1),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_1m\(1),
	datac => \state_0|state\(1),
	datad => \state_0|state\(0),
	combout => \FND_mux_0|Mux6~2_combout\);

-- Location: LCCOMB_X107_Y38_N28
\FND_mux_0|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux6~3_combout\ = (\FND_mux_0|Mux6~2_combout\) # ((!\clock_0|tmp_time_01h\(1) & (\state_0|state\(0) $ (!\state_0|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_0|state\(0),
	datab => \FND_mux_0|Mux6~2_combout\,
	datac => \clock_0|tmp_time_01h\(1),
	datad => \state_0|state\(1),
	combout => \FND_mux_0|Mux6~3_combout\);

-- Location: LCCOMB_X108_Y39_N20
\FND_mux_0|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux7~2_combout\ = (\state_0|state\(0) & (\alarm_0|tmp_set_01H\(0) & (!\state_0|state\(1)))) # (!\state_0|state\(0) & (((\state_0|state\(1) & \stopwatch_top_0|CNT_0|tmp_cnt_1m\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_01H\(0),
	datab => \state_0|state\(0),
	datac => \state_0|state\(1),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_1m\(0),
	combout => \FND_mux_0|Mux7~2_combout\);

-- Location: LCCOMB_X107_Y38_N30
\FND_mux_0|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux7~3_combout\ = (\FND_mux_0|Mux7~2_combout\) # ((\clock_0|tmp_time_01h\(0) & (\state_0|state\(1) $ (!\state_0|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_01h\(0),
	datab => \state_0|state\(1),
	datac => \FND_mux_0|Mux7~2_combout\,
	datad => \state_0|state\(0),
	combout => \FND_mux_0|Mux7~3_combout\);

-- Location: LCCOMB_X108_Y37_N4
\FND_mux_0|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux5~2_combout\ = (\state_0|state\(1) & (\stopwatch_top_0|CNT_0|tmp_cnt_1m\(2) & ((!\state_0|state\(0))))) # (!\state_0|state\(1) & (((\alarm_0|tmp_set_01H\(2) & \state_0|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_0|state\(1),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_1m\(2),
	datac => \alarm_0|tmp_set_01H\(2),
	datad => \state_0|state\(0),
	combout => \FND_mux_0|Mux5~2_combout\);

-- Location: LCCOMB_X108_Y37_N12
\FND_mux_0|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux5~3_combout\ = (\FND_mux_0|Mux5~2_combout\) # ((\clock_0|tmp_time_01h\(2) & (\state_0|state\(1) $ (!\state_0|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_0|state\(1),
	datab => \state_0|state\(0),
	datac => \FND_mux_0|Mux5~2_combout\,
	datad => \clock_0|tmp_time_01h\(2),
	combout => \FND_mux_0|Mux5~3_combout\);

-- Location: LCCOMB_X107_Y38_N12
\FND_DRIVER_0|SEG_DRV_01H|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_01H|Mux6~0_combout\ = (\FND_mux_0|Mux4~3_combout\ & ((\FND_mux_0|Mux5~3_combout\) # ((\FND_mux_0|Mux6~3_combout\ & \FND_mux_0|Mux7~3_combout\)))) # (!\FND_mux_0|Mux4~3_combout\ & (!\FND_mux_0|Mux6~3_combout\ & 
-- (\FND_mux_0|Mux7~3_combout\ $ (\FND_mux_0|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux4~3_combout\,
	datab => \FND_mux_0|Mux6~3_combout\,
	datac => \FND_mux_0|Mux7~3_combout\,
	datad => \FND_mux_0|Mux5~3_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_01H|Mux6~0_combout\);

-- Location: LCCOMB_X107_Y38_N10
\FND_DRIVER_0|SEG_DRV_01H|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_01H|Mux5~0_combout\ = (\FND_mux_0|Mux4~3_combout\ & ((\FND_mux_0|Mux5~3_combout\) # ((\FND_mux_0|Mux6~3_combout\ & \FND_mux_0|Mux7~3_combout\)))) # (!\FND_mux_0|Mux4~3_combout\ & (\FND_mux_0|Mux5~3_combout\ & 
-- (\FND_mux_0|Mux6~3_combout\ $ (\FND_mux_0|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux4~3_combout\,
	datab => \FND_mux_0|Mux6~3_combout\,
	datac => \FND_mux_0|Mux7~3_combout\,
	datad => \FND_mux_0|Mux5~3_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_01H|Mux5~0_combout\);

-- Location: LCCOMB_X107_Y38_N20
\FND_DRIVER_0|SEG_DRV_01H|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_01H|Mux4~0_combout\ = (\FND_mux_0|Mux5~3_combout\ & (\FND_mux_0|Mux4~3_combout\)) # (!\FND_mux_0|Mux5~3_combout\ & (\FND_mux_0|Mux6~3_combout\ & (\FND_mux_0|Mux4~3_combout\ $ (!\FND_mux_0|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux4~3_combout\,
	datab => \FND_mux_0|Mux6~3_combout\,
	datac => \FND_mux_0|Mux7~3_combout\,
	datad => \FND_mux_0|Mux5~3_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_01H|Mux4~0_combout\);

-- Location: LCCOMB_X107_Y38_N26
\FND_DRIVER_0|SEG_DRV_01H|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_01H|Mux3~0_combout\ = (\FND_mux_0|Mux6~3_combout\ & ((\FND_mux_0|Mux7~3_combout\ & ((\FND_mux_0|Mux5~3_combout\))) # (!\FND_mux_0|Mux7~3_combout\ & (\FND_mux_0|Mux4~3_combout\)))) # (!\FND_mux_0|Mux6~3_combout\ & 
-- (!\FND_mux_0|Mux4~3_combout\ & (\FND_mux_0|Mux7~3_combout\ $ (\FND_mux_0|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux4~3_combout\,
	datab => \FND_mux_0|Mux6~3_combout\,
	datac => \FND_mux_0|Mux7~3_combout\,
	datad => \FND_mux_0|Mux5~3_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_01H|Mux3~0_combout\);

-- Location: LCCOMB_X107_Y38_N4
\FND_DRIVER_0|SEG_DRV_01H|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_01H|Mux2~0_combout\ = (\FND_mux_0|Mux6~3_combout\ & ((\FND_mux_0|Mux4~3_combout\ & ((\FND_mux_0|Mux5~3_combout\))) # (!\FND_mux_0|Mux4~3_combout\ & (\FND_mux_0|Mux7~3_combout\)))) # (!\FND_mux_0|Mux6~3_combout\ & 
-- ((\FND_mux_0|Mux5~3_combout\ & (!\FND_mux_0|Mux4~3_combout\)) # (!\FND_mux_0|Mux5~3_combout\ & ((\FND_mux_0|Mux7~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux4~3_combout\,
	datab => \FND_mux_0|Mux6~3_combout\,
	datac => \FND_mux_0|Mux7~3_combout\,
	datad => \FND_mux_0|Mux5~3_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_01H|Mux2~0_combout\);

-- Location: LCCOMB_X107_Y38_N18
\FND_DRIVER_0|SEG_DRV_01H|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_01H|Mux1~0_combout\ = (\FND_mux_0|Mux6~3_combout\ & ((\FND_mux_0|Mux7~3_combout\) # (\FND_mux_0|Mux4~3_combout\ $ (!\FND_mux_0|Mux5~3_combout\)))) # (!\FND_mux_0|Mux6~3_combout\ & (!\FND_mux_0|Mux4~3_combout\ & 
-- (\FND_mux_0|Mux7~3_combout\ & !\FND_mux_0|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux4~3_combout\,
	datab => \FND_mux_0|Mux6~3_combout\,
	datac => \FND_mux_0|Mux7~3_combout\,
	datad => \FND_mux_0|Mux5~3_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_01H|Mux1~0_combout\);

-- Location: LCCOMB_X107_Y38_N24
\FND_DRIVER_0|SEG_DRV_01H|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_01H|Mux0~0_combout\ = (\FND_mux_0|Mux5~3_combout\ & ((\FND_mux_0|Mux4~3_combout\ $ (!\FND_mux_0|Mux6~3_combout\)) # (!\FND_mux_0|Mux7~3_combout\))) # (!\FND_mux_0|Mux5~3_combout\ & ((\FND_mux_0|Mux4~3_combout\) # 
-- ((\FND_mux_0|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux4~3_combout\,
	datab => \FND_mux_0|Mux6~3_combout\,
	datac => \FND_mux_0|Mux7~3_combout\,
	datad => \FND_mux_0|Mux5~3_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_01H|Mux0~0_combout\);

-- Location: LCCOMB_X108_Y39_N8
\stopwatch_top_0|CNT_0|tmp_cnt_10m[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_10m[0]~4_combout\ = !\stopwatch_top_0|CNT_0|tmp_cnt_10m\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_10m\(0),
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_10m[0]~4_combout\);

-- Location: LCCOMB_X108_Y39_N30
\stopwatch_top_0|CNT_0|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|Equal5~0_combout\ = (!\stopwatch_top_0|CNT_0|tmp_cnt_1m\(2) & (!\stopwatch_top_0|CNT_0|tmp_cnt_1m\(1) & (\stopwatch_top_0|CNT_0|tmp_cnt_1m\(3) & \stopwatch_top_0|CNT_0|tmp_cnt_1m\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_1m\(2),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_1m\(1),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_1m\(3),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_1m\(0),
	combout => \stopwatch_top_0|CNT_0|Equal5~0_combout\);

-- Location: LCCOMB_X108_Y39_N16
\stopwatch_top_0|CNT_0|tmp_cnt_10m[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_10m[3]~0_combout\ = (\stopwatch_top_0|CNT_0|Equal5~0_combout\ & (\stopwatch_top_0|CNT_0|Equal3~0_combout\ & (\stopwatch_top_0|CNT_0|Equal4~0_combout\ & \stopwatch_top_0|CNT_0|tmp_cnt_1s[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|Equal5~0_combout\,
	datab => \stopwatch_top_0|CNT_0|Equal3~0_combout\,
	datac => \stopwatch_top_0|CNT_0|Equal4~0_combout\,
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_1s[3]~0_combout\,
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_10m[3]~0_combout\);

-- Location: FF_X108_Y39_N9
\stopwatch_top_0|CNT_0|tmp_cnt_10m[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \stopwatch_top_0|CNT_0|tmp_cnt_10m[0]~4_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	ena => \stopwatch_top_0|CNT_0|tmp_cnt_10m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|CNT_0|tmp_cnt_10m\(0));

-- Location: LCCOMB_X108_Y39_N6
\stopwatch_top_0|CNT_0|tmp_cnt_10m~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_10m~3_combout\ = (\stopwatch_top_0|CNT_0|tmp_cnt_10m\(1) & (\stopwatch_top_0|CNT_0|tmp_cnt_10m\(3) $ (((\stopwatch_top_0|CNT_0|tmp_cnt_10m\(2) & \stopwatch_top_0|CNT_0|tmp_cnt_10m\(0)))))) # 
-- (!\stopwatch_top_0|CNT_0|tmp_cnt_10m\(1) & (\stopwatch_top_0|CNT_0|tmp_cnt_10m\(3) & ((\stopwatch_top_0|CNT_0|tmp_cnt_10m\(2)) # (!\stopwatch_top_0|CNT_0|tmp_cnt_10m\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_10m\(1),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_10m\(2),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_10m\(3),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_10m\(0),
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_10m~3_combout\);

-- Location: FF_X108_Y39_N7
\stopwatch_top_0|CNT_0|tmp_cnt_10m[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \stopwatch_top_0|CNT_0|tmp_cnt_10m~3_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	ena => \stopwatch_top_0|CNT_0|tmp_cnt_10m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|CNT_0|tmp_cnt_10m\(3));

-- Location: LCCOMB_X108_Y39_N10
\stopwatch_top_0|CNT_0|tmp_cnt_10m~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_10m~1_combout\ = (\stopwatch_top_0|CNT_0|tmp_cnt_10m\(0) & (!\stopwatch_top_0|CNT_0|tmp_cnt_10m\(1) & ((\stopwatch_top_0|CNT_0|tmp_cnt_10m\(2)) # (!\stopwatch_top_0|CNT_0|tmp_cnt_10m\(3))))) # 
-- (!\stopwatch_top_0|CNT_0|tmp_cnt_10m\(0) & (((\stopwatch_top_0|CNT_0|tmp_cnt_10m\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_10m\(0),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_10m\(2),
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_10m\(1),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_10m\(3),
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_10m~1_combout\);

-- Location: FF_X108_Y39_N11
\stopwatch_top_0|CNT_0|tmp_cnt_10m[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \stopwatch_top_0|CNT_0|tmp_cnt_10m~1_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	ena => \stopwatch_top_0|CNT_0|tmp_cnt_10m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|CNT_0|tmp_cnt_10m\(1));

-- Location: LCCOMB_X108_Y39_N2
\stopwatch_top_0|CNT_0|tmp_cnt_10m[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|CNT_0|tmp_cnt_10m[2]~2_combout\ = \stopwatch_top_0|CNT_0|tmp_cnt_10m\(2) $ (((\stopwatch_top_0|CNT_0|tmp_cnt_10m\(1) & (\stopwatch_top_0|CNT_0|tmp_cnt_10m[3]~0_combout\ & \stopwatch_top_0|CNT_0|tmp_cnt_10m\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_10m\(1),
	datab => \stopwatch_top_0|CNT_0|tmp_cnt_10m[3]~0_combout\,
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_10m\(2),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_10m\(0),
	combout => \stopwatch_top_0|CNT_0|tmp_cnt_10m[2]~2_combout\);

-- Location: FF_X108_Y39_N3
\stopwatch_top_0|CNT_0|tmp_cnt_10m[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \stopwatch_top_0|CNT_0|tmp_cnt_10m[2]~2_combout\,
	clrn => \stopwatch_top_0|ALT_INV_rst_ad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stopwatch_top_0|CNT_0|tmp_cnt_10m\(2));

-- Location: LCCOMB_X108_Y39_N4
\FND_mux_0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux1~0_combout\ = (\state_0|state\(0) & (\clock_0|tmp_time_10h\(2) & (\state_0|state\(1)))) # (!\state_0|state\(0) & ((\state_0|state\(1) & ((\stopwatch_top_0|CNT_0|tmp_cnt_10m\(2)))) # (!\state_0|state\(1) & (\clock_0|tmp_time_10h\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_10h\(2),
	datab => \state_0|state\(0),
	datac => \state_0|state\(1),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_10m\(2),
	combout => \FND_mux_0|Mux1~0_combout\);

-- Location: LCCOMB_X108_Y39_N0
\FND_mux_0|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux2~2_combout\ = (\state_0|state\(0) & (\alarm_0|tmp_set_10H\(1) & (!\state_0|state\(1)))) # (!\state_0|state\(0) & (((\state_0|state\(1) & \stopwatch_top_0|CNT_0|tmp_cnt_10m\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_set_10H\(1),
	datab => \state_0|state\(0),
	datac => \state_0|state\(1),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_10m\(1),
	combout => \FND_mux_0|Mux2~2_combout\);

-- Location: LCCOMB_X108_Y39_N14
\FND_mux_0|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux2~3_combout\ = (\FND_mux_0|Mux2~2_combout\) # ((\clock_0|tmp_time_10h\(1) & (\state_0|state\(0) $ (!\state_0|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_10h\(1),
	datab => \state_0|state\(0),
	datac => \state_0|state\(1),
	datad => \FND_mux_0|Mux2~2_combout\,
	combout => \FND_mux_0|Mux2~3_combout\);

-- Location: LCCOMB_X107_Y39_N30
\FND_mux_0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux0~0_combout\ = (\state_0|state\(1) & ((\state_0|state\(0) & (\clock_0|tmp_time_10h\(3))) # (!\state_0|state\(0) & ((\stopwatch_top_0|CNT_0|tmp_cnt_10m\(3)))))) # (!\state_0|state\(1) & (\clock_0|tmp_time_10h\(3) & (!\state_0|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_0|state\(1),
	datab => \clock_0|tmp_time_10h\(3),
	datac => \state_0|state\(0),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_10m\(3),
	combout => \FND_mux_0|Mux0~0_combout\);

-- Location: LCCOMB_X108_Y37_N26
\FND_mux_0|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux3~2_combout\ = (\state_0|state\(0) & (((!\state_0|state\(1) & !\alarm_0|tmp_set_10H\(0))))) # (!\state_0|state\(0) & (\stopwatch_top_0|CNT_0|tmp_cnt_10m\(0) & (\state_0|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_10m\(0),
	datab => \state_0|state\(0),
	datac => \state_0|state\(1),
	datad => \alarm_0|tmp_set_10H\(0),
	combout => \FND_mux_0|Mux3~2_combout\);

-- Location: LCCOMB_X108_Y37_N2
\FND_mux_0|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux3~3_combout\ = (\FND_mux_0|Mux3~2_combout\) # ((!\clock_0|tmp_time_10h\(0) & (\state_0|state\(0) $ (!\state_0|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_time_10h\(0),
	datab => \state_0|state\(0),
	datac => \FND_mux_0|Mux3~2_combout\,
	datad => \state_0|state\(1),
	combout => \FND_mux_0|Mux3~3_combout\);

-- Location: LCCOMB_X92_Y4_N4
\FND_DRIVER_0|SEG_DRV_10H|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_10H|Mux6~0_combout\ = (\FND_mux_0|Mux1~0_combout\ & ((\FND_mux_0|Mux0~0_combout\) # ((!\FND_mux_0|Mux2~3_combout\ & !\FND_mux_0|Mux3~3_combout\)))) # (!\FND_mux_0|Mux1~0_combout\ & (\FND_mux_0|Mux3~3_combout\ & 
-- (\FND_mux_0|Mux2~3_combout\ $ (!\FND_mux_0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux1~0_combout\,
	datab => \FND_mux_0|Mux2~3_combout\,
	datac => \FND_mux_0|Mux0~0_combout\,
	datad => \FND_mux_0|Mux3~3_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_10H|Mux6~0_combout\);

-- Location: LCCOMB_X92_Y4_N30
\FND_DRIVER_0|SEG_DRV_10H|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_10H|Mux5~0_combout\ = (\FND_mux_0|Mux1~0_combout\ & ((\FND_mux_0|Mux0~0_combout\) # (\FND_mux_0|Mux2~3_combout\ $ (\FND_mux_0|Mux3~3_combout\)))) # (!\FND_mux_0|Mux1~0_combout\ & (\FND_mux_0|Mux2~3_combout\ & 
-- (\FND_mux_0|Mux0~0_combout\ & \FND_mux_0|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux1~0_combout\,
	datab => \FND_mux_0|Mux2~3_combout\,
	datac => \FND_mux_0|Mux0~0_combout\,
	datad => \FND_mux_0|Mux3~3_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_10H|Mux5~0_combout\);

-- Location: LCCOMB_X92_Y4_N28
\FND_DRIVER_0|SEG_DRV_10H|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_10H|Mux4~0_combout\ = (\FND_mux_0|Mux1~0_combout\ & (((\FND_mux_0|Mux0~0_combout\)))) # (!\FND_mux_0|Mux1~0_combout\ & (\FND_mux_0|Mux2~3_combout\ & (\FND_mux_0|Mux0~0_combout\ $ (!\FND_mux_0|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux1~0_combout\,
	datab => \FND_mux_0|Mux2~3_combout\,
	datac => \FND_mux_0|Mux0~0_combout\,
	datad => \FND_mux_0|Mux3~3_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_10H|Mux4~0_combout\);

-- Location: LCCOMB_X92_Y4_N22
\FND_DRIVER_0|SEG_DRV_10H|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_10H|Mux3~0_combout\ = (\FND_mux_0|Mux2~3_combout\ & ((\FND_mux_0|Mux3~3_combout\ & (\FND_mux_0|Mux1~0_combout\)) # (!\FND_mux_0|Mux3~3_combout\ & ((\FND_mux_0|Mux0~0_combout\))))) # (!\FND_mux_0|Mux2~3_combout\ & 
-- (!\FND_mux_0|Mux0~0_combout\ & (\FND_mux_0|Mux1~0_combout\ $ (\FND_mux_0|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux1~0_combout\,
	datab => \FND_mux_0|Mux2~3_combout\,
	datac => \FND_mux_0|Mux0~0_combout\,
	datad => \FND_mux_0|Mux3~3_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_10H|Mux3~0_combout\);

-- Location: LCCOMB_X92_Y4_N8
\FND_DRIVER_0|SEG_DRV_10H|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_10H|Mux2~0_combout\ = (\FND_mux_0|Mux2~3_combout\ & ((\FND_mux_0|Mux0~0_combout\ & (\FND_mux_0|Mux1~0_combout\)) # (!\FND_mux_0|Mux0~0_combout\ & ((\FND_mux_0|Mux3~3_combout\))))) # (!\FND_mux_0|Mux2~3_combout\ & 
-- ((\FND_mux_0|Mux1~0_combout\ & (!\FND_mux_0|Mux0~0_combout\)) # (!\FND_mux_0|Mux1~0_combout\ & ((\FND_mux_0|Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux1~0_combout\,
	datab => \FND_mux_0|Mux2~3_combout\,
	datac => \FND_mux_0|Mux0~0_combout\,
	datad => \FND_mux_0|Mux3~3_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_10H|Mux2~0_combout\);

-- Location: LCCOMB_X92_Y4_N10
\FND_DRIVER_0|SEG_DRV_10H|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_10H|Mux1~0_combout\ = (\FND_mux_0|Mux2~3_combout\ & ((\FND_mux_0|Mux3~3_combout\) # (\FND_mux_0|Mux1~0_combout\ $ (!\FND_mux_0|Mux0~0_combout\)))) # (!\FND_mux_0|Mux2~3_combout\ & (!\FND_mux_0|Mux1~0_combout\ & 
-- (!\FND_mux_0|Mux0~0_combout\ & \FND_mux_0|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux1~0_combout\,
	datab => \FND_mux_0|Mux2~3_combout\,
	datac => \FND_mux_0|Mux0~0_combout\,
	datad => \FND_mux_0|Mux3~3_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_10H|Mux1~0_combout\);

-- Location: LCCOMB_X92_Y4_N12
\FND_DRIVER_0|SEG_DRV_10H|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_DRIVER_0|SEG_DRV_10H|Mux0~0_combout\ = (\FND_mux_0|Mux1~0_combout\ & ((\FND_mux_0|Mux2~3_combout\ $ (!\FND_mux_0|Mux0~0_combout\)) # (!\FND_mux_0|Mux3~3_combout\))) # (!\FND_mux_0|Mux1~0_combout\ & ((\FND_mux_0|Mux2~3_combout\) # 
-- ((\FND_mux_0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FND_mux_0|Mux1~0_combout\,
	datab => \FND_mux_0|Mux2~3_combout\,
	datac => \FND_mux_0|Mux0~0_combout\,
	datad => \FND_mux_0|Mux3~3_combout\,
	combout => \FND_DRIVER_0|SEG_DRV_10H|Mux0~0_combout\);

-- Location: LCCOMB_X74_Y1_N14
\state_0|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_0|Equal1~0_combout\ = (\state_0|state\(1) & \state_0|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_0|state\(1),
	datac => \state_0|state\(0),
	combout => \state_0|Equal1~0_combout\);

-- Location: LCCOMB_X74_Y1_N20
\FND_mux_0|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND_mux_0|Mux10~2_combout\ = \state_0|state\(1) $ (\state_0|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_0|state\(1),
	datac => \state_0|state\(0),
	combout => \FND_mux_0|Mux10~2_combout\);

-- Location: LCCOMB_X110_Y39_N12
\clock_0|C_LED~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|C_LED~2_combout\ = (\clock_0|tmp_cnt\(5) & ((\clock_0|C_LED~q\) # (\clock_0|tmp_cnt\(4)))) # (!\clock_0|tmp_cnt\(5) & (\clock_0|C_LED~q\ & \clock_0|tmp_cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_0|tmp_cnt\(5),
	datac => \clock_0|C_LED~q\,
	datad => \clock_0|tmp_cnt\(4),
	combout => \clock_0|C_LED~2_combout\);

-- Location: LCCOMB_X111_Y38_N24
\clock_0|C_LED~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|C_LED~0_combout\ = (!\clock_0|tmp_cnt\(2) & (!\clock_0|state\(0) & (!\clock_0|state\(1) & !\clock_0|tmp_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_cnt\(2),
	datab => \clock_0|state\(0),
	datac => \clock_0|state\(1),
	datad => \clock_0|tmp_cnt\(3),
	combout => \clock_0|C_LED~0_combout\);

-- Location: LCCOMB_X111_Y38_N26
\clock_0|C_LED~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|C_LED~1_combout\ = (!\clock_0|tmp_cnt\(6) & (!\clock_0|tmp_cnt\(0) & (!\state_0|C_ADJUST_LONG~q\ & \clock_0|C_LED~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|tmp_cnt\(6),
	datab => \clock_0|tmp_cnt\(0),
	datac => \state_0|C_ADJUST_LONG~q\,
	datad => \clock_0|C_LED~0_combout\,
	combout => \clock_0|C_LED~1_combout\);

-- Location: LCCOMB_X110_Y39_N22
\clock_0|C_LED~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_0|C_LED~3_combout\ = (\clock_0|C_LED~2_combout\ & ((\clock_0|C_LED~q\) # ((\clock_0|tmp_cnt\(1) & \clock_0|C_LED~1_combout\)))) # (!\clock_0|C_LED~2_combout\ & (\clock_0|C_LED~q\ & ((\clock_0|tmp_cnt\(1)) # (!\clock_0|C_LED~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|C_LED~2_combout\,
	datab => \clock_0|tmp_cnt\(1),
	datac => \clock_0|C_LED~q\,
	datad => \clock_0|C_LED~1_combout\,
	combout => \clock_0|C_LED~3_combout\);

-- Location: FF_X110_Y39_N23
\clock_0|C_LED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \clock_0|C_LED~3_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_0|C_LED~q\);

-- Location: LCCOMB_X110_Y39_N10
\stopwatch_top_0|tmp_led~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|tmp_led~0_combout\ = (\stopwatch_top_0|STATE_M_0|tmp_state\(0) & (!\stopwatch_top_0|STATE_M_0|tmp_state\(1) & (\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(2) $ (!\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(2),
	datab => \stopwatch_top_0|STATE_M_0|tmp_state\(0),
	datac => \stopwatch_top_0|STATE_M_0|tmp_state\(1),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(0),
	combout => \stopwatch_top_0|tmp_led~0_combout\);

-- Location: LCCOMB_X110_Y39_N20
\stopwatch_top_0|tmp_led~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|tmp_led~1_combout\ = (!\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(3) & !\stopwatch_top_0|CNT_0|tmp_cnt_p1s\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(3),
	datad => \stopwatch_top_0|CNT_0|tmp_cnt_p1s\(1),
	combout => \stopwatch_top_0|tmp_led~1_combout\);

-- Location: LCCOMB_X110_Y39_N18
\stopwatch_top_0|tmp_led~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stopwatch_top_0|tmp_led~2_combout\ = (\SW0~input_o\ & (\stopwatch_top_0|tmp_led~2_combout\ $ (((\stopwatch_top_0|tmp_led~0_combout\ & \stopwatch_top_0|tmp_led~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stopwatch_top_0|tmp_led~0_combout\,
	datab => \stopwatch_top_0|tmp_led~1_combout\,
	datac => \SW0~input_o\,
	datad => \stopwatch_top_0|tmp_led~2_combout\,
	combout => \stopwatch_top_0|tmp_led~2_combout\);

-- Location: LCCOMB_X109_Y39_N24
\LEDG8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG8~0_combout\ = (!\state_0|state\(0) & ((\state_0|state\(1) & ((\stopwatch_top_0|tmp_led~2_combout\))) # (!\state_0|state\(1) & (\clock_0|C_LED~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_0|C_LED~q\,
	datab => \state_0|state\(0),
	datac => \state_0|state\(1),
	datad => \stopwatch_top_0|tmp_led~2_combout\,
	combout => \LEDG8~0_combout\);

-- Location: IOIBUF_X0_Y27_N15
\TOGGLE_SW0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TOGGLE_SW0,
	o => \TOGGLE_SW0~input_o\);

-- Location: LCCOMB_X106_Y40_N6
\alarm_0|tmp_led[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_led[1]~6_combout\ = (\TOGGLE_SW0~input_o\ & ((\alarm_0|mode_tmp\(0) & (\alarm_0|mode_tmp\(2) & !\alarm_0|mode_tmp\(1))) # (!\alarm_0|mode_tmp\(0) & (!\alarm_0|mode_tmp\(2) & \alarm_0|mode_tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TOGGLE_SW0~input_o\,
	datab => \alarm_0|mode_tmp\(0),
	datac => \alarm_0|mode_tmp\(2),
	datad => \alarm_0|mode_tmp\(1),
	combout => \alarm_0|tmp_led[1]~6_combout\);

-- Location: LCCOMB_X107_Y40_N18
\alarm_0|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|Equal4~2_combout\ = (!\alarm_0|mode_tmp\(0) & (\alarm_0|mode_tmp\(1) & !\alarm_0|mode_tmp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|mode_tmp\(0),
	datac => \alarm_0|mode_tmp\(1),
	datad => \alarm_0|mode_tmp\(2),
	combout => \alarm_0|Equal4~2_combout\);

-- Location: LCCOMB_X107_Y40_N16
\alarm_0|tmp_led~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_led~8_combout\ = (!\alarm_0|tmp_led\(0) & (\alarm_0|Equal4~2_combout\ & ((\alarm_0|Equal14~5_combout\) # (\alarm_0|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|Equal14~5_combout\,
	datab => \alarm_0|tmp_led\(0),
	datac => \alarm_0|Equal14~0_combout\,
	datad => \alarm_0|Equal4~2_combout\,
	combout => \alarm_0|tmp_led~8_combout\);

-- Location: FF_X107_Y40_N17
\alarm_0|tmp_led[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_led~8_combout\,
	clrn => \SW0~input_o\,
	ena => \alarm_0|tmp_led[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_led\(1));

-- Location: LCCOMB_X107_Y40_N14
\alarm_0|tmp_led~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_led~23_combout\ = (!\alarm_0|mode_tmp\(0) & (\alarm_0|tmp_led\(1) & (\alarm_0|mode_tmp\(1) & !\alarm_0|mode_tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|mode_tmp\(0),
	datab => \alarm_0|tmp_led\(1),
	datac => \alarm_0|mode_tmp\(1),
	datad => \alarm_0|mode_tmp\(2),
	combout => \alarm_0|tmp_led~23_combout\);

-- Location: FF_X107_Y40_N15
\alarm_0|tmp_led[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_led~23_combout\,
	clrn => \SW0~input_o\,
	ena => \alarm_0|tmp_led[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_led\(2));

-- Location: LCCOMB_X107_Y40_N20
\alarm_0|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|Equal14~0_combout\ = (\alarm_0|tmp_led\(2)) # (\alarm_0|tmp_led\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alarm_0|tmp_led\(2),
	datad => \alarm_0|tmp_led\(1),
	combout => \alarm_0|Equal14~0_combout\);

-- Location: LCCOMB_X107_Y40_N4
\alarm_0|tmp_led~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_led~24_combout\ = (!\alarm_0|mode_tmp\(0) & (\alarm_0|tmp_led\(2) & (\alarm_0|mode_tmp\(1) & !\alarm_0|mode_tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|mode_tmp\(0),
	datab => \alarm_0|tmp_led\(2),
	datac => \alarm_0|mode_tmp\(1),
	datad => \alarm_0|mode_tmp\(2),
	combout => \alarm_0|tmp_led~24_combout\);

-- Location: FF_X107_Y40_N5
\alarm_0|tmp_led[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_led~24_combout\,
	clrn => \SW0~input_o\,
	ena => \alarm_0|tmp_led[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_led\(3));

-- Location: LCCOMB_X107_Y40_N22
\alarm_0|tmp_led~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_led~9_combout\ = (\alarm_0|Equal4~2_combout\ & (\alarm_0|tmp_led\(3) & ((\alarm_0|Equal14~0_combout\) # (\alarm_0|Equal14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|Equal14~0_combout\,
	datab => \alarm_0|Equal4~2_combout\,
	datac => \alarm_0|tmp_led\(3),
	datad => \alarm_0|Equal14~5_combout\,
	combout => \alarm_0|tmp_led~9_combout\);

-- Location: FF_X107_Y40_N23
\alarm_0|tmp_led[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_led~9_combout\,
	clrn => \SW0~input_o\,
	ena => \alarm_0|tmp_led[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_led\(4));

-- Location: LCCOMB_X107_Y40_N28
\alarm_0|tmp_led~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_led~10_combout\ = (\alarm_0|tmp_led\(4) & (\alarm_0|Equal4~2_combout\ & ((\alarm_0|Equal14~0_combout\) # (\alarm_0|Equal14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_led\(4),
	datab => \alarm_0|Equal4~2_combout\,
	datac => \alarm_0|Equal14~0_combout\,
	datad => \alarm_0|Equal14~5_combout\,
	combout => \alarm_0|tmp_led~10_combout\);

-- Location: FF_X107_Y40_N29
\alarm_0|tmp_led[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_led~10_combout\,
	clrn => \SW0~input_o\,
	ena => \alarm_0|tmp_led[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_led\(5));

-- Location: LCCOMB_X107_Y40_N2
\alarm_0|tmp_led~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_led~11_combout\ = (\alarm_0|tmp_led\(5) & (\alarm_0|Equal4~2_combout\ & ((\alarm_0|Equal14~5_combout\) # (\alarm_0|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|Equal14~5_combout\,
	datab => \alarm_0|tmp_led\(5),
	datac => \alarm_0|Equal14~0_combout\,
	datad => \alarm_0|Equal4~2_combout\,
	combout => \alarm_0|tmp_led~11_combout\);

-- Location: FF_X107_Y40_N3
\alarm_0|tmp_led[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_led~11_combout\,
	clrn => \SW0~input_o\,
	ena => \alarm_0|tmp_led[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_led\(6));

-- Location: LCCOMB_X106_Y40_N2
\alarm_0|tmp_led~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_led~12_combout\ = (\alarm_0|Equal4~2_combout\ & (\alarm_0|tmp_led\(6) & ((\alarm_0|Equal14~0_combout\) # (\alarm_0|Equal14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|Equal14~0_combout\,
	datab => \alarm_0|Equal4~2_combout\,
	datac => \alarm_0|Equal14~5_combout\,
	datad => \alarm_0|tmp_led\(6),
	combout => \alarm_0|tmp_led~12_combout\);

-- Location: FF_X106_Y40_N3
\alarm_0|tmp_led[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_led~12_combout\,
	clrn => \SW0~input_o\,
	ena => \alarm_0|tmp_led[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_led\(7));

-- Location: LCCOMB_X106_Y40_N16
\alarm_0|tmp_led~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_led~13_combout\ = (\alarm_0|tmp_led\(7) & (\alarm_0|Equal4~2_combout\ & ((\alarm_0|Equal14~0_combout\) # (\alarm_0|Equal14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|Equal14~0_combout\,
	datab => \alarm_0|tmp_led\(7),
	datac => \alarm_0|Equal14~5_combout\,
	datad => \alarm_0|Equal4~2_combout\,
	combout => \alarm_0|tmp_led~13_combout\);

-- Location: FF_X106_Y40_N17
\alarm_0|tmp_led[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_led~13_combout\,
	clrn => \SW0~input_o\,
	ena => \alarm_0|tmp_led[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_led\(8));

-- Location: LCCOMB_X106_Y40_N26
\alarm_0|tmp_led~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_led~14_combout\ = (\alarm_0|tmp_led\(8) & (\alarm_0|Equal4~2_combout\ & ((\alarm_0|Equal14~0_combout\) # (\alarm_0|Equal14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|Equal14~0_combout\,
	datab => \alarm_0|tmp_led\(8),
	datac => \alarm_0|Equal14~5_combout\,
	datad => \alarm_0|Equal4~2_combout\,
	combout => \alarm_0|tmp_led~14_combout\);

-- Location: FF_X106_Y40_N27
\alarm_0|tmp_led[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_led~14_combout\,
	clrn => \SW0~input_o\,
	ena => \alarm_0|tmp_led[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_led\(9));

-- Location: LCCOMB_X106_Y40_N12
\alarm_0|tmp_led~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_led~15_combout\ = (\alarm_0|tmp_led\(9) & (\alarm_0|Equal4~2_combout\ & ((\alarm_0|Equal14~5_combout\) # (\alarm_0|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_led\(9),
	datab => \alarm_0|Equal14~5_combout\,
	datac => \alarm_0|Equal14~0_combout\,
	datad => \alarm_0|Equal4~2_combout\,
	combout => \alarm_0|tmp_led~15_combout\);

-- Location: FF_X106_Y40_N13
\alarm_0|tmp_led[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_led~15_combout\,
	clrn => \SW0~input_o\,
	ena => \alarm_0|tmp_led[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_led\(10));

-- Location: LCCOMB_X106_Y40_N30
\alarm_0|tmp_led~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_led~16_combout\ = (\alarm_0|tmp_led\(10) & (\alarm_0|Equal4~2_combout\ & ((\alarm_0|Equal14~5_combout\) # (\alarm_0|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_led\(10),
	datab => \alarm_0|Equal14~5_combout\,
	datac => \alarm_0|Equal14~0_combout\,
	datad => \alarm_0|Equal4~2_combout\,
	combout => \alarm_0|tmp_led~16_combout\);

-- Location: FF_X106_Y40_N31
\alarm_0|tmp_led[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_led~16_combout\,
	clrn => \SW0~input_o\,
	ena => \alarm_0|tmp_led[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_led\(11));

-- Location: LCCOMB_X106_Y40_N24
\alarm_0|tmp_led~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_led~17_combout\ = (\alarm_0|tmp_led\(11) & (\alarm_0|Equal4~2_combout\ & ((\alarm_0|Equal14~5_combout\) # (\alarm_0|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_led\(11),
	datab => \alarm_0|Equal14~5_combout\,
	datac => \alarm_0|Equal14~0_combout\,
	datad => \alarm_0|Equal4~2_combout\,
	combout => \alarm_0|tmp_led~17_combout\);

-- Location: FF_X106_Y40_N25
\alarm_0|tmp_led[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_led~17_combout\,
	clrn => \SW0~input_o\,
	ena => \alarm_0|tmp_led[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_led\(12));

-- Location: LCCOMB_X106_Y40_N22
\alarm_0|tmp_led~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_led~18_combout\ = (\alarm_0|tmp_led\(12) & (\alarm_0|Equal4~2_combout\ & ((\alarm_0|Equal14~0_combout\) # (\alarm_0|Equal14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|Equal14~0_combout\,
	datab => \alarm_0|tmp_led\(12),
	datac => \alarm_0|Equal14~5_combout\,
	datad => \alarm_0|Equal4~2_combout\,
	combout => \alarm_0|tmp_led~18_combout\);

-- Location: FF_X106_Y40_N23
\alarm_0|tmp_led[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_led~18_combout\,
	clrn => \SW0~input_o\,
	ena => \alarm_0|tmp_led[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_led\(13));

-- Location: LCCOMB_X106_Y40_N4
\alarm_0|tmp_led~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_led~19_combout\ = (\alarm_0|tmp_led\(13) & (\alarm_0|Equal4~2_combout\ & ((\alarm_0|Equal14~5_combout\) # (\alarm_0|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_led\(13),
	datab => \alarm_0|Equal14~5_combout\,
	datac => \alarm_0|Equal14~0_combout\,
	datad => \alarm_0|Equal4~2_combout\,
	combout => \alarm_0|tmp_led~19_combout\);

-- Location: FF_X106_Y40_N5
\alarm_0|tmp_led[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_led~19_combout\,
	clrn => \SW0~input_o\,
	ena => \alarm_0|tmp_led[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_led\(14));

-- Location: LCCOMB_X106_Y40_N10
\alarm_0|Equal14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|Equal14~2_combout\ = (\alarm_0|tmp_led\(11)) # ((\alarm_0|tmp_led\(14)) # ((\alarm_0|tmp_led\(13)) # (\alarm_0|tmp_led\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_led\(11),
	datab => \alarm_0|tmp_led\(14),
	datac => \alarm_0|tmp_led\(13),
	datad => \alarm_0|tmp_led\(12),
	combout => \alarm_0|Equal14~2_combout\);

-- Location: LCCOMB_X106_Y40_N8
\alarm_0|Equal14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|Equal14~3_combout\ = (\alarm_0|tmp_led\(10)) # ((\alarm_0|tmp_led\(8)) # ((\alarm_0|tmp_led\(9)) # (\alarm_0|tmp_led\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_led\(10),
	datab => \alarm_0|tmp_led\(8),
	datac => \alarm_0|tmp_led\(9),
	datad => \alarm_0|tmp_led\(7),
	combout => \alarm_0|Equal14~3_combout\);

-- Location: LCCOMB_X107_Y40_N0
\alarm_0|Equal14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|Equal14~4_combout\ = (\alarm_0|tmp_led\(4)) # ((\alarm_0|tmp_led\(5)) # ((\alarm_0|tmp_led\(3)) # (\alarm_0|tmp_led\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_led\(4),
	datab => \alarm_0|tmp_led\(5),
	datac => \alarm_0|tmp_led\(3),
	datad => \alarm_0|tmp_led\(6),
	combout => \alarm_0|Equal14~4_combout\);

-- Location: LCCOMB_X106_Y40_N18
\alarm_0|tmp_led~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_led~20_combout\ = (\alarm_0|tmp_led\(14) & (\alarm_0|Equal4~2_combout\ & ((\alarm_0|Equal14~0_combout\) # (\alarm_0|Equal14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|Equal14~0_combout\,
	datab => \alarm_0|tmp_led\(14),
	datac => \alarm_0|Equal14~5_combout\,
	datad => \alarm_0|Equal4~2_combout\,
	combout => \alarm_0|tmp_led~20_combout\);

-- Location: FF_X106_Y40_N19
\alarm_0|tmp_led[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_led~20_combout\,
	clrn => \SW0~input_o\,
	ena => \alarm_0|tmp_led[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_led\(15));

-- Location: LCCOMB_X107_Y40_N8
\alarm_0|tmp_led~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_led~21_combout\ = (\alarm_0|tmp_led\(15) & (\alarm_0|Equal4~2_combout\ & ((\alarm_0|Equal14~5_combout\) # (\alarm_0|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|Equal14~5_combout\,
	datab => \alarm_0|tmp_led\(15),
	datac => \alarm_0|Equal14~0_combout\,
	datad => \alarm_0|Equal4~2_combout\,
	combout => \alarm_0|tmp_led~21_combout\);

-- Location: FF_X107_Y40_N9
\alarm_0|tmp_led[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_led~21_combout\,
	clrn => \SW0~input_o\,
	ena => \alarm_0|tmp_led[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_led\(16));

-- Location: LCCOMB_X107_Y40_N10
\alarm_0|tmp_led~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_led~22_combout\ = (\alarm_0|tmp_led\(16) & (\alarm_0|Equal4~2_combout\ & ((\alarm_0|Equal14~5_combout\) # (\alarm_0|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|Equal14~5_combout\,
	datab => \alarm_0|tmp_led\(16),
	datac => \alarm_0|Equal14~0_combout\,
	datad => \alarm_0|Equal4~2_combout\,
	combout => \alarm_0|tmp_led~22_combout\);

-- Location: FF_X107_Y40_N11
\alarm_0|tmp_led[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_led~22_combout\,
	clrn => \SW0~input_o\,
	ena => \alarm_0|tmp_led[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_led\(17));

-- Location: LCCOMB_X107_Y40_N26
\alarm_0|Equal14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|Equal14~1_combout\ = (((\alarm_0|tmp_led\(16)) # (\alarm_0|tmp_led\(15))) # (!\alarm_0|tmp_led\(0))) # (!\alarm_0|tmp_led\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_led\(17),
	datab => \alarm_0|tmp_led\(0),
	datac => \alarm_0|tmp_led\(16),
	datad => \alarm_0|tmp_led\(15),
	combout => \alarm_0|Equal14~1_combout\);

-- Location: LCCOMB_X106_Y40_N14
\alarm_0|Equal14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|Equal14~5_combout\ = (\alarm_0|Equal14~2_combout\) # ((\alarm_0|Equal14~3_combout\) # ((\alarm_0|Equal14~4_combout\) # (\alarm_0|Equal14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|Equal14~2_combout\,
	datab => \alarm_0|Equal14~3_combout\,
	datac => \alarm_0|Equal14~4_combout\,
	datad => \alarm_0|Equal14~1_combout\,
	combout => \alarm_0|Equal14~5_combout\);

-- Location: LCCOMB_X106_Y40_N0
\alarm_0|tmp_led[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_led[0]~5_combout\ = (\TOGGLE_SW0~input_o\ & (!\alarm_0|Equal14~5_combout\ & (!\alarm_0|Equal14~0_combout\ & \alarm_0|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TOGGLE_SW0~input_o\,
	datab => \alarm_0|Equal14~5_combout\,
	datac => \alarm_0|Equal14~0_combout\,
	datad => \alarm_0|Equal4~2_combout\,
	combout => \alarm_0|tmp_led[0]~5_combout\);

-- Location: LCCOMB_X106_Y40_N20
\alarm_0|tmp_led[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_led[0]~4_combout\ = (\TOGGLE_SW0~input_o\ & (!\alarm_0|Equal4~2_combout\ & (!\alarm_0|Equal4~1_combout\ & !\alarm_0|Equal16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TOGGLE_SW0~input_o\,
	datab => \alarm_0|Equal4~2_combout\,
	datac => \alarm_0|Equal4~1_combout\,
	datad => \alarm_0|Equal16~4_combout\,
	combout => \alarm_0|tmp_led[0]~4_combout\);

-- Location: LCCOMB_X106_Y40_N28
\alarm_0|tmp_led[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alarm_0|tmp_led[0]~7_combout\ = (!\alarm_0|tmp_led[0]~5_combout\ & (!\alarm_0|tmp_led[0]~4_combout\ & ((\alarm_0|tmp_led[1]~6_combout\) # (\alarm_0|tmp_led\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarm_0|tmp_led[1]~6_combout\,
	datab => \alarm_0|tmp_led[0]~5_combout\,
	datac => \alarm_0|tmp_led\(0),
	datad => \alarm_0|tmp_led[0]~4_combout\,
	combout => \alarm_0|tmp_led[0]~7_combout\);

-- Location: FF_X106_Y40_N29
\alarm_0|tmp_led[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_0|tmp_clk_100hz~clkctrl_outclk\,
	d => \alarm_0|tmp_led[0]~7_combout\,
	clrn => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm_0|tmp_led\(0));

ww_FND0(0) <= \FND0[0]~output_o\;

ww_FND0(1) <= \FND0[1]~output_o\;

ww_FND0(2) <= \FND0[2]~output_o\;

ww_FND0(3) <= \FND0[3]~output_o\;

ww_FND0(4) <= \FND0[4]~output_o\;

ww_FND0(5) <= \FND0[5]~output_o\;

ww_FND0(6) <= \FND0[6]~output_o\;

ww_FND1(0) <= \FND1[0]~output_o\;

ww_FND1(1) <= \FND1[1]~output_o\;

ww_FND1(2) <= \FND1[2]~output_o\;

ww_FND1(3) <= \FND1[3]~output_o\;

ww_FND1(4) <= \FND1[4]~output_o\;

ww_FND1(5) <= \FND1[5]~output_o\;

ww_FND1(6) <= \FND1[6]~output_o\;

ww_FND2(0) <= \FND2[0]~output_o\;

ww_FND2(1) <= \FND2[1]~output_o\;

ww_FND2(2) <= \FND2[2]~output_o\;

ww_FND2(3) <= \FND2[3]~output_o\;

ww_FND2(4) <= \FND2[4]~output_o\;

ww_FND2(5) <= \FND2[5]~output_o\;

ww_FND2(6) <= \FND2[6]~output_o\;

ww_FND3(0) <= \FND3[0]~output_o\;

ww_FND3(1) <= \FND3[1]~output_o\;

ww_FND3(2) <= \FND3[2]~output_o\;

ww_FND3(3) <= \FND3[3]~output_o\;

ww_FND3(4) <= \FND3[4]~output_o\;

ww_FND3(5) <= \FND3[5]~output_o\;

ww_FND3(6) <= \FND3[6]~output_o\;

ww_FND4(0) <= \FND4[0]~output_o\;

ww_FND4(1) <= \FND4[1]~output_o\;

ww_FND4(2) <= \FND4[2]~output_o\;

ww_FND4(3) <= \FND4[3]~output_o\;

ww_FND4(4) <= \FND4[4]~output_o\;

ww_FND4(5) <= \FND4[5]~output_o\;

ww_FND4(6) <= \FND4[6]~output_o\;

ww_FND5(0) <= \FND5[0]~output_o\;

ww_FND5(1) <= \FND5[1]~output_o\;

ww_FND5(2) <= \FND5[2]~output_o\;

ww_FND5(3) <= \FND5[3]~output_o\;

ww_FND5(4) <= \FND5[4]~output_o\;

ww_FND5(5) <= \FND5[5]~output_o\;

ww_FND5(6) <= \FND5[6]~output_o\;

ww_FND6(0) <= \FND6[0]~output_o\;

ww_FND6(1) <= \FND6[1]~output_o\;

ww_FND6(2) <= \FND6[2]~output_o\;

ww_FND6(3) <= \FND6[3]~output_o\;

ww_FND6(4) <= \FND6[4]~output_o\;

ww_FND6(5) <= \FND6[5]~output_o\;

ww_FND6(6) <= \FND6[6]~output_o\;

ww_FND7(0) <= \FND7[0]~output_o\;

ww_FND7(1) <= \FND7[1]~output_o\;

ww_FND7(2) <= \FND7[2]~output_o\;

ww_FND7(3) <= \FND7[3]~output_o\;

ww_FND7(4) <= \FND7[4]~output_o\;

ww_FND7(5) <= \FND7[5]~output_o\;

ww_FND7(6) <= \FND7[6]~output_o\;

ww_LEDG8 <= \LEDG8~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;
END structure;


