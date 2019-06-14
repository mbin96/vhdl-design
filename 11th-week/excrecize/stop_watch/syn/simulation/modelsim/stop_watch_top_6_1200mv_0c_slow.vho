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

-- DATE "05/24/2019 10:44:31"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	stop_watch_top IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	START_SW : IN std_logic;
	STOP_SW : IN std_logic;
	SEG_OUT_10S : OUT std_logic_vector(6 DOWNTO 0);
	SEG_OUT_1S : OUT std_logic_vector(6 DOWNTO 0);
	SEG_OUT_P1S : OUT std_logic_vector(6 DOWNTO 0);
	SEG_OUT_P01S : OUT std_logic_vector(6 DOWNTO 0)
	);
END stop_watch_top;

-- Design Ports Information
-- SEG_OUT_10S[0]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_10S[1]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_10S[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_10S[3]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_10S[4]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_10S[5]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_10S[6]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_1S[0]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_1S[1]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_1S[2]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_1S[3]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_1S[4]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_1S[5]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_1S[6]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P1S[0]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P1S[1]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P1S[2]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P1S[3]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P1S[4]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P1S[5]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P1S[6]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P01S[0]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P01S[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P01S[2]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P01S[3]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P01S[4]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P01S[5]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P01S[6]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- START_SW	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STOP_SW	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF stop_watch_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_START_SW : std_logic;
SIGNAL ww_STOP_SW : std_logic;
SIGNAL ww_SEG_OUT_10S : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEG_OUT_1S : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEG_OUT_P1S : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEG_OUT_P01S : std_logic_vector(6 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SEG_OUT_10S[0]~output_o\ : std_logic;
SIGNAL \SEG_OUT_10S[1]~output_o\ : std_logic;
SIGNAL \SEG_OUT_10S[2]~output_o\ : std_logic;
SIGNAL \SEG_OUT_10S[3]~output_o\ : std_logic;
SIGNAL \SEG_OUT_10S[4]~output_o\ : std_logic;
SIGNAL \SEG_OUT_10S[5]~output_o\ : std_logic;
SIGNAL \SEG_OUT_10S[6]~output_o\ : std_logic;
SIGNAL \SEG_OUT_1S[0]~output_o\ : std_logic;
SIGNAL \SEG_OUT_1S[1]~output_o\ : std_logic;
SIGNAL \SEG_OUT_1S[2]~output_o\ : std_logic;
SIGNAL \SEG_OUT_1S[3]~output_o\ : std_logic;
SIGNAL \SEG_OUT_1S[4]~output_o\ : std_logic;
SIGNAL \SEG_OUT_1S[5]~output_o\ : std_logic;
SIGNAL \SEG_OUT_1S[6]~output_o\ : std_logic;
SIGNAL \SEG_OUT_P1S[0]~output_o\ : std_logic;
SIGNAL \SEG_OUT_P1S[1]~output_o\ : std_logic;
SIGNAL \SEG_OUT_P1S[2]~output_o\ : std_logic;
SIGNAL \SEG_OUT_P1S[3]~output_o\ : std_logic;
SIGNAL \SEG_OUT_P1S[4]~output_o\ : std_logic;
SIGNAL \SEG_OUT_P1S[5]~output_o\ : std_logic;
SIGNAL \SEG_OUT_P1S[6]~output_o\ : std_logic;
SIGNAL \SEG_OUT_P01S[0]~output_o\ : std_logic;
SIGNAL \SEG_OUT_P01S[1]~output_o\ : std_logic;
SIGNAL \SEG_OUT_P01S[2]~output_o\ : std_logic;
SIGNAL \SEG_OUT_P01S[3]~output_o\ : std_logic;
SIGNAL \SEG_OUT_P01S[4]~output_o\ : std_logic;
SIGNAL \SEG_OUT_P01S[5]~output_o\ : std_logic;
SIGNAL \SEG_OUT_P01S[6]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_1s[0]~4_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p01s[0]~6_combout\ : std_logic;
SIGNAL \START_SW~input_o\ : std_logic;
SIGNAL \SW_INPUT_START|sw_in_1d~0_combout\ : std_logic;
SIGNAL \SW_INPUT_START|sw_in_1d~q\ : std_logic;
SIGNAL \SW_INPUT_START|sw_cnt[1]~2_combout\ : std_logic;
SIGNAL \SW_INPUT_START|sw_cnt[2]~0_combout\ : std_logic;
SIGNAL \SW_INPUT_START|sw_cnt[0]~1_combout\ : std_logic;
SIGNAL \SW_INPUT_START|Equal0~0_combout\ : std_logic;
SIGNAL \SW_INPUT_START|SW_CLR~q\ : std_logic;
SIGNAL \STOP_SW~input_o\ : std_logic;
SIGNAL \SW_INPUT_STOP|sw_in_1d~0_combout\ : std_logic;
SIGNAL \SW_INPUT_STOP|sw_in_1d~q\ : std_logic;
SIGNAL \SW_INPUT_STOP|sw_cnt[2]~0_combout\ : std_logic;
SIGNAL \SW_INPUT_STOP|sw_cnt[0]~1_combout\ : std_logic;
SIGNAL \SW_INPUT_STOP|sw_cnt[1]~2_combout\ : std_logic;
SIGNAL \SW_INPUT_STOP|Equal0~0_combout\ : std_logic;
SIGNAL \SW_INPUT_STOP|SW_CLR~q\ : std_logic;
SIGNAL \STATE_M_0|tmp_state[0]~1_combout\ : std_logic;
SIGNAL \STATE_M_0|tmp_state[1]~2_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[0]~16_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[13]~44_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[0]~17\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[1]~18_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[1]~19\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[2]~20_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[2]~21\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[3]~22_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[3]~23\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[4]~24_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[4]~25\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[5]~26_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[5]~27\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[6]~28_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[6]~29\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[7]~30_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[7]~31\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[8]~32_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[8]~33\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[9]~34_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[9]~35\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[10]~36_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[10]~37\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[11]~38_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[11]~39\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[12]~40_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[12]~41\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[13]~42_combout\ : std_logic;
SIGNAL \CNT_0|Equal2~3_combout\ : std_logic;
SIGNAL \CNT_0|Equal2~1_combout\ : std_logic;
SIGNAL \CNT_0|Equal2~0_combout\ : std_logic;
SIGNAL \CNT_0|Equal2~2_combout\ : std_logic;
SIGNAL \CNT_0|Equal2~4_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p01s[3]~5_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p01s~4_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p01s~2_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p01s[2]~3_combout\ : std_logic;
SIGNAL \CNT_0|Equal3~0_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p1s[0]~6_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p1s[3]~5_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p1s[2]~3_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p1s~2_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p1s~4_combout\ : std_logic;
SIGNAL \CNT_0|Equal0~0_combout\ : std_logic;
SIGNAL \STATE_M_0|tmp_state[1]~0_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_1s[3]~0_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_1s~3_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_1s~1_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_1s[2]~2_combout\ : std_logic;
SIGNAL \SEG_DRV_1S|Mux6~0_combout\ : std_logic;
SIGNAL \SEG_DRV_1S|Mux5~0_combout\ : std_logic;
SIGNAL \SEG_DRV_1S|Mux4~0_combout\ : std_logic;
SIGNAL \SEG_DRV_1S|Mux3~0_combout\ : std_logic;
SIGNAL \SEG_DRV_1S|Mux2~0_combout\ : std_logic;
SIGNAL \SEG_DRV_1S|Mux1~0_combout\ : std_logic;
SIGNAL \SEG_DRV_1S|Mux0~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P1S|Mux6~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P1S|Mux5~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P1S|Mux4~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P1S|Mux3~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P1S|Mux2~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P1S|Mux1~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P1S|Mux0~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P01S|Mux6~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P01S|Mux5~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P01S|Mux4~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P01S|Mux3~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P01S|Mux2~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P01S|Mux1~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P01S|Mux0~0_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \SW_INPUT_STOP|sw_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \STATE_M_0|tmp_state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CNT_0|tmp_cnt_1s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CNT_0|tmp_cnt_p1s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CNT_0|tmp_cnt_p01s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW_INPUT_START|sw_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SEG_DRV_P01S|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P1S|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SEG_DRV_1S|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
ww_START_SW <= START_SW;
ww_STOP_SW <= STOP_SW;
SEG_OUT_10S <= ww_SEG_OUT_10S;
SEG_OUT_1S <= ww_SEG_OUT_1S;
SEG_OUT_P1S <= ww_SEG_OUT_P1S;
SEG_OUT_P01S <= ww_SEG_OUT_P01S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\SEG_DRV_P01S|ALT_INV_Mux0~0_combout\ <= NOT \SEG_DRV_P01S|Mux0~0_combout\;
\SEG_DRV_P1S|ALT_INV_Mux0~0_combout\ <= NOT \SEG_DRV_P1S|Mux0~0_combout\;
\SEG_DRV_1S|ALT_INV_Mux0~0_combout\ <= NOT \SEG_DRV_1S|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X3_Y24_N23
\SEG_OUT_10S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SEG_OUT_10S[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\SEG_OUT_10S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SEG_OUT_10S[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\SEG_OUT_10S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SEG_OUT_10S[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\SEG_OUT_10S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SEG_OUT_10S[3]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\SEG_OUT_10S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SEG_OUT_10S[4]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\SEG_OUT_10S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SEG_OUT_10S[5]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\SEG_OUT_10S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SEG_OUT_10S[6]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\SEG_OUT_1S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG_DRV_1S|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SEG_OUT_1S[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\SEG_OUT_1S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG_DRV_1S|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SEG_OUT_1S[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\SEG_OUT_1S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG_DRV_1S|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SEG_OUT_1S[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\SEG_OUT_1S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG_DRV_1S|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEG_OUT_1S[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\SEG_OUT_1S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG_DRV_1S|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SEG_OUT_1S[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\SEG_OUT_1S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG_DRV_1S|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SEG_OUT_1S[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\SEG_OUT_1S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG_DRV_1S|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SEG_OUT_1S[6]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\SEG_OUT_P1S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG_DRV_P1S|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SEG_OUT_P1S[0]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\SEG_OUT_P1S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG_DRV_P1S|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SEG_OUT_P1S[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\SEG_OUT_P1S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG_DRV_P1S|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SEG_OUT_P1S[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\SEG_OUT_P1S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG_DRV_P1S|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEG_OUT_P1S[3]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\SEG_OUT_P1S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG_DRV_P1S|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SEG_OUT_P1S[4]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\SEG_OUT_P1S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG_DRV_P1S|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SEG_OUT_P1S[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\SEG_OUT_P1S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG_DRV_P1S|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SEG_OUT_P1S[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\SEG_OUT_P01S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG_DRV_P01S|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SEG_OUT_P01S[0]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\SEG_OUT_P01S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG_DRV_P01S|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SEG_OUT_P01S[1]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\SEG_OUT_P01S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG_DRV_P01S|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SEG_OUT_P01S[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\SEG_OUT_P01S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG_DRV_P01S|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEG_OUT_P01S[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\SEG_OUT_P01S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG_DRV_P01S|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SEG_OUT_P01S[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\SEG_OUT_P01S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG_DRV_P01S|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SEG_OUT_P01S[5]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\SEG_OUT_P01S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG_DRV_P01S|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SEG_OUT_P01S[6]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X24_Y7_N20
\CNT_0|tmp_cnt_1s[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_1s[0]~4_combout\ = !\CNT_0|tmp_cnt_1s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt_1s\(0),
	combout => \CNT_0|tmp_cnt_1s[0]~4_combout\);

-- Location: IOIBUF_X0_Y11_N15
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G4
\RST~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: LCCOMB_X26_Y7_N18
\CNT_0|tmp_cnt_p01s[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p01s[0]~6_combout\ = !\CNT_0|tmp_cnt_p01s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt_p01s\(0),
	combout => \CNT_0|tmp_cnt_p01s[0]~6_combout\);

-- Location: IOIBUF_X0_Y11_N22
\START_SW~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_START_SW,
	o => \START_SW~input_o\);

-- Location: LCCOMB_X22_Y7_N28
\SW_INPUT_START|sw_in_1d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW_INPUT_START|sw_in_1d~0_combout\ = !\START_SW~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \START_SW~input_o\,
	combout => \SW_INPUT_START|sw_in_1d~0_combout\);

-- Location: FF_X22_Y7_N29
\SW_INPUT_START|sw_in_1d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SW_INPUT_START|sw_in_1d~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SW_INPUT_START|sw_in_1d~q\);

-- Location: LCCOMB_X22_Y7_N18
\SW_INPUT_START|sw_cnt[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW_INPUT_START|sw_cnt[1]~2_combout\ = (\SW_INPUT_START|sw_in_1d~q\ & ((\SW_INPUT_START|sw_cnt\(0) & (!\SW_INPUT_START|sw_cnt\(1) & !\SW_INPUT_START|sw_cnt\(2))) # (!\SW_INPUT_START|sw_cnt\(0) & (\SW_INPUT_START|sw_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_START|sw_cnt\(0),
	datab => \SW_INPUT_START|sw_in_1d~q\,
	datac => \SW_INPUT_START|sw_cnt\(1),
	datad => \SW_INPUT_START|sw_cnt\(2),
	combout => \SW_INPUT_START|sw_cnt[1]~2_combout\);

-- Location: FF_X22_Y7_N19
\SW_INPUT_START|sw_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SW_INPUT_START|sw_cnt[1]~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SW_INPUT_START|sw_cnt\(1));

-- Location: LCCOMB_X22_Y7_N10
\SW_INPUT_START|sw_cnt[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW_INPUT_START|sw_cnt[2]~0_combout\ = (\SW_INPUT_START|sw_in_1d~q\ & (\SW_INPUT_START|sw_cnt\(2) $ (((\SW_INPUT_START|sw_cnt\(0) & \SW_INPUT_START|sw_cnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_START|sw_cnt\(0),
	datab => \SW_INPUT_START|sw_in_1d~q\,
	datac => \SW_INPUT_START|sw_cnt\(2),
	datad => \SW_INPUT_START|sw_cnt\(1),
	combout => \SW_INPUT_START|sw_cnt[2]~0_combout\);

-- Location: FF_X22_Y7_N11
\SW_INPUT_START|sw_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SW_INPUT_START|sw_cnt[2]~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SW_INPUT_START|sw_cnt\(2));

-- Location: LCCOMB_X22_Y7_N12
\SW_INPUT_START|sw_cnt[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW_INPUT_START|sw_cnt[0]~1_combout\ = (\SW_INPUT_START|sw_in_1d~q\ & (((\SW_INPUT_START|sw_cnt\(2) & !\SW_INPUT_START|sw_cnt\(1))) # (!\SW_INPUT_START|sw_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_START|sw_cnt\(2),
	datab => \SW_INPUT_START|sw_in_1d~q\,
	datac => \SW_INPUT_START|sw_cnt\(0),
	datad => \SW_INPUT_START|sw_cnt\(1),
	combout => \SW_INPUT_START|sw_cnt[0]~1_combout\);

-- Location: FF_X22_Y7_N13
\SW_INPUT_START|sw_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SW_INPUT_START|sw_cnt[0]~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SW_INPUT_START|sw_cnt\(0));

-- Location: LCCOMB_X22_Y7_N0
\SW_INPUT_START|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW_INPUT_START|Equal0~0_combout\ = (\SW_INPUT_START|sw_cnt\(0) & (!\SW_INPUT_START|sw_cnt\(1) & \SW_INPUT_START|sw_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_START|sw_cnt\(0),
	datab => \SW_INPUT_START|sw_cnt\(1),
	datad => \SW_INPUT_START|sw_cnt\(2),
	combout => \SW_INPUT_START|Equal0~0_combout\);

-- Location: FF_X22_Y7_N1
\SW_INPUT_START|SW_CLR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SW_INPUT_START|Equal0~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SW_INPUT_START|SW_CLR~q\);

-- Location: IOIBUF_X34_Y9_N22
\STOP_SW~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STOP_SW,
	o => \STOP_SW~input_o\);

-- Location: LCCOMB_X33_Y9_N28
\SW_INPUT_STOP|sw_in_1d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW_INPUT_STOP|sw_in_1d~0_combout\ = !\STOP_SW~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STOP_SW~input_o\,
	combout => \SW_INPUT_STOP|sw_in_1d~0_combout\);

-- Location: FF_X33_Y9_N29
\SW_INPUT_STOP|sw_in_1d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SW_INPUT_STOP|sw_in_1d~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SW_INPUT_STOP|sw_in_1d~q\);

-- Location: LCCOMB_X33_Y9_N18
\SW_INPUT_STOP|sw_cnt[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW_INPUT_STOP|sw_cnt[2]~0_combout\ = (\SW_INPUT_STOP|sw_in_1d~q\ & (\SW_INPUT_STOP|sw_cnt\(2) $ (((\SW_INPUT_STOP|sw_cnt\(1) & \SW_INPUT_STOP|sw_cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_STOP|sw_cnt\(1),
	datab => \SW_INPUT_STOP|sw_in_1d~q\,
	datac => \SW_INPUT_STOP|sw_cnt\(2),
	datad => \SW_INPUT_STOP|sw_cnt\(0),
	combout => \SW_INPUT_STOP|sw_cnt[2]~0_combout\);

-- Location: FF_X33_Y9_N19
\SW_INPUT_STOP|sw_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SW_INPUT_STOP|sw_cnt[2]~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SW_INPUT_STOP|sw_cnt\(2));

-- Location: LCCOMB_X33_Y9_N12
\SW_INPUT_STOP|sw_cnt[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW_INPUT_STOP|sw_cnt[0]~1_combout\ = (\SW_INPUT_STOP|sw_in_1d~q\ & (((!\SW_INPUT_STOP|sw_cnt\(1) & \SW_INPUT_STOP|sw_cnt\(2))) # (!\SW_INPUT_STOP|sw_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_STOP|sw_cnt\(1),
	datab => \SW_INPUT_STOP|sw_in_1d~q\,
	datac => \SW_INPUT_STOP|sw_cnt\(0),
	datad => \SW_INPUT_STOP|sw_cnt\(2),
	combout => \SW_INPUT_STOP|sw_cnt[0]~1_combout\);

-- Location: FF_X33_Y9_N13
\SW_INPUT_STOP|sw_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SW_INPUT_STOP|sw_cnt[0]~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SW_INPUT_STOP|sw_cnt\(0));

-- Location: LCCOMB_X33_Y9_N10
\SW_INPUT_STOP|sw_cnt[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW_INPUT_STOP|sw_cnt[1]~2_combout\ = (\SW_INPUT_STOP|sw_in_1d~q\ & ((\SW_INPUT_STOP|sw_cnt\(0) & (!\SW_INPUT_STOP|sw_cnt\(1) & !\SW_INPUT_STOP|sw_cnt\(2))) # (!\SW_INPUT_STOP|sw_cnt\(0) & (\SW_INPUT_STOP|sw_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_STOP|sw_cnt\(0),
	datab => \SW_INPUT_STOP|sw_in_1d~q\,
	datac => \SW_INPUT_STOP|sw_cnt\(1),
	datad => \SW_INPUT_STOP|sw_cnt\(2),
	combout => \SW_INPUT_STOP|sw_cnt[1]~2_combout\);

-- Location: FF_X33_Y9_N11
\SW_INPUT_STOP|sw_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SW_INPUT_STOP|sw_cnt[1]~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SW_INPUT_STOP|sw_cnt\(1));

-- Location: LCCOMB_X33_Y9_N8
\SW_INPUT_STOP|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW_INPUT_STOP|Equal0~0_combout\ = (!\SW_INPUT_STOP|sw_cnt\(1) & (\SW_INPUT_STOP|sw_cnt\(2) & \SW_INPUT_STOP|sw_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_STOP|sw_cnt\(1),
	datab => \SW_INPUT_STOP|sw_cnt\(2),
	datad => \SW_INPUT_STOP|sw_cnt\(0),
	combout => \SW_INPUT_STOP|Equal0~0_combout\);

-- Location: FF_X33_Y9_N9
\SW_INPUT_STOP|SW_CLR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SW_INPUT_STOP|Equal0~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SW_INPUT_STOP|SW_CLR~q\);

-- Location: LCCOMB_X25_Y7_N28
\STATE_M_0|tmp_state[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE_M_0|tmp_state[0]~1_combout\ = (\STATE_M_0|tmp_state\(0) & (!\STATE_M_0|tmp_state\(1) & ((!\SW_INPUT_STOP|SW_CLR~q\)))) # (!\STATE_M_0|tmp_state\(0) & (((\SW_INPUT_START|SW_CLR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE_M_0|tmp_state\(1),
	datab => \SW_INPUT_START|SW_CLR~q\,
	datac => \STATE_M_0|tmp_state\(0),
	datad => \SW_INPUT_STOP|SW_CLR~q\,
	combout => \STATE_M_0|tmp_state[0]~1_combout\);

-- Location: FF_X25_Y7_N29
\STATE_M_0|tmp_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \STATE_M_0|tmp_state[0]~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE_M_0|tmp_state\(0));

-- Location: LCCOMB_X25_Y7_N10
\STATE_M_0|tmp_state[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE_M_0|tmp_state[1]~2_combout\ = (\STATE_M_0|tmp_state\(0) & (((!\STATE_M_0|tmp_state\(1) & \SW_INPUT_STOP|SW_CLR~q\)))) # (!\STATE_M_0|tmp_state\(0) & (!\SW_INPUT_START|SW_CLR~q\ & (\STATE_M_0|tmp_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_START|SW_CLR~q\,
	datab => \STATE_M_0|tmp_state\(0),
	datac => \STATE_M_0|tmp_state\(1),
	datad => \SW_INPUT_STOP|SW_CLR~q\,
	combout => \STATE_M_0|tmp_state[1]~2_combout\);

-- Location: FF_X25_Y7_N11
\STATE_M_0|tmp_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \STATE_M_0|tmp_state[1]~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE_M_0|tmp_state\(1));

-- Location: LCCOMB_X23_Y7_N0
\CNT_0|tmp_cnt[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[0]~16_combout\ = \CNT_0|tmp_cnt\(0) $ (VCC)
-- \CNT_0|tmp_cnt[0]~17\ = CARRY(\CNT_0|tmp_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt\(0),
	datad => VCC,
	combout => \CNT_0|tmp_cnt[0]~16_combout\,
	cout => \CNT_0|tmp_cnt[0]~17\);

-- Location: LCCOMB_X24_Y7_N2
\CNT_0|tmp_cnt[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[13]~44_combout\ = ((\STATE_M_0|tmp_state\(1)) # (!\CNT_0|Equal2~4_combout\)) # (!\STATE_M_0|tmp_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STATE_M_0|tmp_state\(0),
	datac => \STATE_M_0|tmp_state\(1),
	datad => \CNT_0|Equal2~4_combout\,
	combout => \CNT_0|tmp_cnt[13]~44_combout\);

-- Location: FF_X23_Y7_N1
\CNT_0|tmp_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[0]~16_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(0));

-- Location: LCCOMB_X23_Y7_N2
\CNT_0|tmp_cnt[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[1]~18_combout\ = (\CNT_0|tmp_cnt\(1) & (!\CNT_0|tmp_cnt[0]~17\)) # (!\CNT_0|tmp_cnt\(1) & ((\CNT_0|tmp_cnt[0]~17\) # (GND)))
-- \CNT_0|tmp_cnt[1]~19\ = CARRY((!\CNT_0|tmp_cnt[0]~17\) # (!\CNT_0|tmp_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt\(1),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[0]~17\,
	combout => \CNT_0|tmp_cnt[1]~18_combout\,
	cout => \CNT_0|tmp_cnt[1]~19\);

-- Location: FF_X23_Y7_N3
\CNT_0|tmp_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[1]~18_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(1));

-- Location: LCCOMB_X23_Y7_N4
\CNT_0|tmp_cnt[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[2]~20_combout\ = (\CNT_0|tmp_cnt\(2) & (\CNT_0|tmp_cnt[1]~19\ $ (GND))) # (!\CNT_0|tmp_cnt\(2) & (!\CNT_0|tmp_cnt[1]~19\ & VCC))
-- \CNT_0|tmp_cnt[2]~21\ = CARRY((\CNT_0|tmp_cnt\(2) & !\CNT_0|tmp_cnt[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt\(2),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[1]~19\,
	combout => \CNT_0|tmp_cnt[2]~20_combout\,
	cout => \CNT_0|tmp_cnt[2]~21\);

-- Location: FF_X23_Y7_N5
\CNT_0|tmp_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[2]~20_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(2));

-- Location: LCCOMB_X23_Y7_N6
\CNT_0|tmp_cnt[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[3]~22_combout\ = (\CNT_0|tmp_cnt\(3) & (!\CNT_0|tmp_cnt[2]~21\)) # (!\CNT_0|tmp_cnt\(3) & ((\CNT_0|tmp_cnt[2]~21\) # (GND)))
-- \CNT_0|tmp_cnt[3]~23\ = CARRY((!\CNT_0|tmp_cnt[2]~21\) # (!\CNT_0|tmp_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt\(3),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[2]~21\,
	combout => \CNT_0|tmp_cnt[3]~22_combout\,
	cout => \CNT_0|tmp_cnt[3]~23\);

-- Location: FF_X23_Y7_N7
\CNT_0|tmp_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[3]~22_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(3));

-- Location: LCCOMB_X23_Y7_N8
\CNT_0|tmp_cnt[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[4]~24_combout\ = (\CNT_0|tmp_cnt\(4) & (\CNT_0|tmp_cnt[3]~23\ $ (GND))) # (!\CNT_0|tmp_cnt\(4) & (!\CNT_0|tmp_cnt[3]~23\ & VCC))
-- \CNT_0|tmp_cnt[4]~25\ = CARRY((\CNT_0|tmp_cnt\(4) & !\CNT_0|tmp_cnt[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt\(4),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[3]~23\,
	combout => \CNT_0|tmp_cnt[4]~24_combout\,
	cout => \CNT_0|tmp_cnt[4]~25\);

-- Location: FF_X23_Y7_N9
\CNT_0|tmp_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[4]~24_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(4));

-- Location: LCCOMB_X23_Y7_N10
\CNT_0|tmp_cnt[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[5]~26_combout\ = (\CNT_0|tmp_cnt\(5) & (!\CNT_0|tmp_cnt[4]~25\)) # (!\CNT_0|tmp_cnt\(5) & ((\CNT_0|tmp_cnt[4]~25\) # (GND)))
-- \CNT_0|tmp_cnt[5]~27\ = CARRY((!\CNT_0|tmp_cnt[4]~25\) # (!\CNT_0|tmp_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt\(5),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[4]~25\,
	combout => \CNT_0|tmp_cnt[5]~26_combout\,
	cout => \CNT_0|tmp_cnt[5]~27\);

-- Location: FF_X23_Y7_N11
\CNT_0|tmp_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[5]~26_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(5));

-- Location: LCCOMB_X23_Y7_N12
\CNT_0|tmp_cnt[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[6]~28_combout\ = (\CNT_0|tmp_cnt\(6) & (\CNT_0|tmp_cnt[5]~27\ $ (GND))) # (!\CNT_0|tmp_cnt\(6) & (!\CNT_0|tmp_cnt[5]~27\ & VCC))
-- \CNT_0|tmp_cnt[6]~29\ = CARRY((\CNT_0|tmp_cnt\(6) & !\CNT_0|tmp_cnt[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt\(6),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[5]~27\,
	combout => \CNT_0|tmp_cnt[6]~28_combout\,
	cout => \CNT_0|tmp_cnt[6]~29\);

-- Location: FF_X23_Y7_N13
\CNT_0|tmp_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[6]~28_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(6));

-- Location: LCCOMB_X23_Y7_N14
\CNT_0|tmp_cnt[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[7]~30_combout\ = (\CNT_0|tmp_cnt\(7) & (!\CNT_0|tmp_cnt[6]~29\)) # (!\CNT_0|tmp_cnt\(7) & ((\CNT_0|tmp_cnt[6]~29\) # (GND)))
-- \CNT_0|tmp_cnt[7]~31\ = CARRY((!\CNT_0|tmp_cnt[6]~29\) # (!\CNT_0|tmp_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt\(7),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[6]~29\,
	combout => \CNT_0|tmp_cnt[7]~30_combout\,
	cout => \CNT_0|tmp_cnt[7]~31\);

-- Location: FF_X23_Y7_N15
\CNT_0|tmp_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[7]~30_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(7));

-- Location: LCCOMB_X23_Y7_N16
\CNT_0|tmp_cnt[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[8]~32_combout\ = (\CNT_0|tmp_cnt\(8) & (\CNT_0|tmp_cnt[7]~31\ $ (GND))) # (!\CNT_0|tmp_cnt\(8) & (!\CNT_0|tmp_cnt[7]~31\ & VCC))
-- \CNT_0|tmp_cnt[8]~33\ = CARRY((\CNT_0|tmp_cnt\(8) & !\CNT_0|tmp_cnt[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt\(8),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[7]~31\,
	combout => \CNT_0|tmp_cnt[8]~32_combout\,
	cout => \CNT_0|tmp_cnt[8]~33\);

-- Location: FF_X23_Y7_N17
\CNT_0|tmp_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[8]~32_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(8));

-- Location: LCCOMB_X23_Y7_N18
\CNT_0|tmp_cnt[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[9]~34_combout\ = (\CNT_0|tmp_cnt\(9) & (!\CNT_0|tmp_cnt[8]~33\)) # (!\CNT_0|tmp_cnt\(9) & ((\CNT_0|tmp_cnt[8]~33\) # (GND)))
-- \CNT_0|tmp_cnt[9]~35\ = CARRY((!\CNT_0|tmp_cnt[8]~33\) # (!\CNT_0|tmp_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt\(9),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[8]~33\,
	combout => \CNT_0|tmp_cnt[9]~34_combout\,
	cout => \CNT_0|tmp_cnt[9]~35\);

-- Location: FF_X23_Y7_N19
\CNT_0|tmp_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[9]~34_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(9));

-- Location: LCCOMB_X23_Y7_N20
\CNT_0|tmp_cnt[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[10]~36_combout\ = (\CNT_0|tmp_cnt\(10) & (\CNT_0|tmp_cnt[9]~35\ $ (GND))) # (!\CNT_0|tmp_cnt\(10) & (!\CNT_0|tmp_cnt[9]~35\ & VCC))
-- \CNT_0|tmp_cnt[10]~37\ = CARRY((\CNT_0|tmp_cnt\(10) & !\CNT_0|tmp_cnt[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt\(10),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[9]~35\,
	combout => \CNT_0|tmp_cnt[10]~36_combout\,
	cout => \CNT_0|tmp_cnt[10]~37\);

-- Location: FF_X23_Y7_N21
\CNT_0|tmp_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[10]~36_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(10));

-- Location: LCCOMB_X23_Y7_N22
\CNT_0|tmp_cnt[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[11]~38_combout\ = (\CNT_0|tmp_cnt\(11) & (!\CNT_0|tmp_cnt[10]~37\)) # (!\CNT_0|tmp_cnt\(11) & ((\CNT_0|tmp_cnt[10]~37\) # (GND)))
-- \CNT_0|tmp_cnt[11]~39\ = CARRY((!\CNT_0|tmp_cnt[10]~37\) # (!\CNT_0|tmp_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt\(11),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[10]~37\,
	combout => \CNT_0|tmp_cnt[11]~38_combout\,
	cout => \CNT_0|tmp_cnt[11]~39\);

-- Location: FF_X23_Y7_N23
\CNT_0|tmp_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[11]~38_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(11));

-- Location: LCCOMB_X23_Y7_N24
\CNT_0|tmp_cnt[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[12]~40_combout\ = (\CNT_0|tmp_cnt\(12) & (\CNT_0|tmp_cnt[11]~39\ $ (GND))) # (!\CNT_0|tmp_cnt\(12) & (!\CNT_0|tmp_cnt[11]~39\ & VCC))
-- \CNT_0|tmp_cnt[12]~41\ = CARRY((\CNT_0|tmp_cnt\(12) & !\CNT_0|tmp_cnt[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt\(12),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[11]~39\,
	combout => \CNT_0|tmp_cnt[12]~40_combout\,
	cout => \CNT_0|tmp_cnt[12]~41\);

-- Location: FF_X23_Y7_N25
\CNT_0|tmp_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[12]~40_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(12));

-- Location: LCCOMB_X23_Y7_N26
\CNT_0|tmp_cnt[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[13]~42_combout\ = \CNT_0|tmp_cnt\(13) $ (\CNT_0|tmp_cnt[12]~41\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt\(13),
	cin => \CNT_0|tmp_cnt[12]~41\,
	combout => \CNT_0|tmp_cnt[13]~42_combout\);

-- Location: FF_X23_Y7_N27
\CNT_0|tmp_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[13]~42_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(13));

-- Location: LCCOMB_X24_Y7_N12
\CNT_0|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|Equal2~3_combout\ = (\CNT_0|tmp_cnt\(12)) # (!\CNT_0|tmp_cnt\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt\(13),
	datad => \CNT_0|tmp_cnt\(12),
	combout => \CNT_0|Equal2~3_combout\);

-- Location: LCCOMB_X23_Y7_N28
\CNT_0|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|Equal2~1_combout\ = (\CNT_0|tmp_cnt\(5)) # ((\CNT_0|tmp_cnt\(4)) # ((\CNT_0|tmp_cnt\(7)) # (\CNT_0|tmp_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt\(5),
	datab => \CNT_0|tmp_cnt\(4),
	datac => \CNT_0|tmp_cnt\(7),
	datad => \CNT_0|tmp_cnt\(6),
	combout => \CNT_0|Equal2~1_combout\);

-- Location: LCCOMB_X24_Y7_N30
\CNT_0|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|Equal2~0_combout\ = (((!\CNT_0|tmp_cnt\(1)) # (!\CNT_0|tmp_cnt\(2))) # (!\CNT_0|tmp_cnt\(3))) # (!\CNT_0|tmp_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt\(0),
	datab => \CNT_0|tmp_cnt\(3),
	datac => \CNT_0|tmp_cnt\(2),
	datad => \CNT_0|tmp_cnt\(1),
	combout => \CNT_0|Equal2~0_combout\);

-- Location: LCCOMB_X23_Y7_N30
\CNT_0|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|Equal2~2_combout\ = (\CNT_0|tmp_cnt\(11)) # (((!\CNT_0|tmp_cnt\(10)) # (!\CNT_0|tmp_cnt\(9))) # (!\CNT_0|tmp_cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt\(11),
	datab => \CNT_0|tmp_cnt\(8),
	datac => \CNT_0|tmp_cnt\(9),
	datad => \CNT_0|tmp_cnt\(10),
	combout => \CNT_0|Equal2~2_combout\);

-- Location: LCCOMB_X24_Y7_N18
\CNT_0|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|Equal2~4_combout\ = (\CNT_0|Equal2~3_combout\) # ((\CNT_0|Equal2~1_combout\) # ((\CNT_0|Equal2~0_combout\) # (\CNT_0|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|Equal2~3_combout\,
	datab => \CNT_0|Equal2~1_combout\,
	datac => \CNT_0|Equal2~0_combout\,
	datad => \CNT_0|Equal2~2_combout\,
	combout => \CNT_0|Equal2~4_combout\);

-- Location: LCCOMB_X26_Y7_N10
\CNT_0|tmp_cnt_p01s[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p01s[3]~5_combout\ = (!\STATE_M_0|tmp_state\(1) & (\STATE_M_0|tmp_state\(0) & !\CNT_0|Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE_M_0|tmp_state\(1),
	datab => \STATE_M_0|tmp_state\(0),
	datad => \CNT_0|Equal2~4_combout\,
	combout => \CNT_0|tmp_cnt_p01s[3]~5_combout\);

-- Location: FF_X26_Y7_N19
\CNT_0|tmp_cnt_p01s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_p01s[0]~6_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \CNT_0|tmp_cnt_p01s[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_p01s\(0));

-- Location: LCCOMB_X26_Y7_N20
\CNT_0|tmp_cnt_p01s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p01s~4_combout\ = (\CNT_0|tmp_cnt_p01s\(2) & (\CNT_0|tmp_cnt_p01s\(3) $ (((\CNT_0|tmp_cnt_p01s\(1) & \CNT_0|tmp_cnt_p01s\(0)))))) # (!\CNT_0|tmp_cnt_p01s\(2) & (\CNT_0|tmp_cnt_p01s\(3) & ((\CNT_0|tmp_cnt_p01s\(1)) # 
-- (!\CNT_0|tmp_cnt_p01s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(2),
	datab => \CNT_0|tmp_cnt_p01s\(1),
	datac => \CNT_0|tmp_cnt_p01s\(3),
	datad => \CNT_0|tmp_cnt_p01s\(0),
	combout => \CNT_0|tmp_cnt_p01s~4_combout\);

-- Location: FF_X26_Y7_N21
\CNT_0|tmp_cnt_p01s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_p01s~4_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \CNT_0|tmp_cnt_p01s[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_p01s\(3));

-- Location: LCCOMB_X26_Y7_N8
\CNT_0|tmp_cnt_p01s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p01s~2_combout\ = (\CNT_0|tmp_cnt_p01s\(1) & (((!\CNT_0|tmp_cnt_p01s\(0))))) # (!\CNT_0|tmp_cnt_p01s\(1) & (\CNT_0|tmp_cnt_p01s\(0) & ((\CNT_0|tmp_cnt_p01s\(2)) # (!\CNT_0|tmp_cnt_p01s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(2),
	datab => \CNT_0|tmp_cnt_p01s\(3),
	datac => \CNT_0|tmp_cnt_p01s\(1),
	datad => \CNT_0|tmp_cnt_p01s\(0),
	combout => \CNT_0|tmp_cnt_p01s~2_combout\);

-- Location: FF_X26_Y7_N9
\CNT_0|tmp_cnt_p01s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_p01s~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \CNT_0|tmp_cnt_p01s[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_p01s\(1));

-- Location: LCCOMB_X26_Y7_N22
\CNT_0|tmp_cnt_p01s[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p01s[2]~3_combout\ = \CNT_0|tmp_cnt_p01s\(2) $ (((\CNT_0|tmp_cnt_p01s\(1) & (\CNT_0|tmp_cnt_p01s\(0) & \CNT_0|tmp_cnt_p01s[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(1),
	datab => \CNT_0|tmp_cnt_p01s\(0),
	datac => \CNT_0|tmp_cnt_p01s\(2),
	datad => \CNT_0|tmp_cnt_p01s[3]~5_combout\,
	combout => \CNT_0|tmp_cnt_p01s[2]~3_combout\);

-- Location: FF_X26_Y7_N23
\CNT_0|tmp_cnt_p01s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_p01s[2]~3_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_p01s\(2));

-- Location: LCCOMB_X26_Y7_N16
\CNT_0|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|Equal3~0_combout\ = (!\CNT_0|tmp_cnt_p01s\(2) & (\CNT_0|tmp_cnt_p01s\(3) & (!\CNT_0|tmp_cnt_p01s\(1) & \CNT_0|tmp_cnt_p01s\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(2),
	datab => \CNT_0|tmp_cnt_p01s\(3),
	datac => \CNT_0|tmp_cnt_p01s\(1),
	datad => \CNT_0|tmp_cnt_p01s\(0),
	combout => \CNT_0|Equal3~0_combout\);

-- Location: LCCOMB_X25_Y7_N16
\CNT_0|tmp_cnt_p1s[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p1s[0]~6_combout\ = !\CNT_0|tmp_cnt_p1s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt_p1s\(0),
	combout => \CNT_0|tmp_cnt_p1s[0]~6_combout\);

-- Location: LCCOMB_X25_Y7_N20
\CNT_0|tmp_cnt_p1s[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p1s[3]~5_combout\ = (!\STATE_M_0|tmp_state\(1) & (\STATE_M_0|tmp_state\(0) & (\CNT_0|Equal3~0_combout\ & !\CNT_0|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE_M_0|tmp_state\(1),
	datab => \STATE_M_0|tmp_state\(0),
	datac => \CNT_0|Equal3~0_combout\,
	datad => \CNT_0|Equal2~4_combout\,
	combout => \CNT_0|tmp_cnt_p1s[3]~5_combout\);

-- Location: FF_X25_Y7_N17
\CNT_0|tmp_cnt_p1s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_p1s[0]~6_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \CNT_0|tmp_cnt_p1s[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_p1s\(0));

-- Location: LCCOMB_X25_Y7_N12
\CNT_0|tmp_cnt_p1s[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p1s[2]~3_combout\ = \CNT_0|tmp_cnt_p1s\(2) $ (((\CNT_0|tmp_cnt_p1s\(1) & (\CNT_0|tmp_cnt_p1s\(0) & \CNT_0|tmp_cnt_p1s[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(1),
	datab => \CNT_0|tmp_cnt_p1s\(0),
	datac => \CNT_0|tmp_cnt_p1s\(2),
	datad => \CNT_0|tmp_cnt_p1s[3]~5_combout\,
	combout => \CNT_0|tmp_cnt_p1s[2]~3_combout\);

-- Location: FF_X25_Y7_N13
\CNT_0|tmp_cnt_p1s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_p1s[2]~3_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_p1s\(2));

-- Location: LCCOMB_X25_Y7_N30
\CNT_0|tmp_cnt_p1s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p1s~2_combout\ = (\CNT_0|tmp_cnt_p1s\(0) & (!\CNT_0|tmp_cnt_p1s\(1) & ((\CNT_0|tmp_cnt_p1s\(2)) # (!\CNT_0|tmp_cnt_p1s\(3))))) # (!\CNT_0|tmp_cnt_p1s\(0) & (((\CNT_0|tmp_cnt_p1s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(3),
	datab => \CNT_0|tmp_cnt_p1s\(0),
	datac => \CNT_0|tmp_cnt_p1s\(1),
	datad => \CNT_0|tmp_cnt_p1s\(2),
	combout => \CNT_0|tmp_cnt_p1s~2_combout\);

-- Location: FF_X25_Y7_N31
\CNT_0|tmp_cnt_p1s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_p1s~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \CNT_0|tmp_cnt_p1s[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_p1s\(1));

-- Location: LCCOMB_X25_Y7_N6
\CNT_0|tmp_cnt_p1s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p1s~4_combout\ = (\CNT_0|tmp_cnt_p1s\(1) & (\CNT_0|tmp_cnt_p1s\(3) $ (((\CNT_0|tmp_cnt_p1s\(0) & \CNT_0|tmp_cnt_p1s\(2)))))) # (!\CNT_0|tmp_cnt_p1s\(1) & (\CNT_0|tmp_cnt_p1s\(3) & ((\CNT_0|tmp_cnt_p1s\(2)) # (!\CNT_0|tmp_cnt_p1s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(1),
	datab => \CNT_0|tmp_cnt_p1s\(0),
	datac => \CNT_0|tmp_cnt_p1s\(3),
	datad => \CNT_0|tmp_cnt_p1s\(2),
	combout => \CNT_0|tmp_cnt_p1s~4_combout\);

-- Location: FF_X25_Y7_N7
\CNT_0|tmp_cnt_p1s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_p1s~4_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \CNT_0|tmp_cnt_p1s[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_p1s\(3));

-- Location: LCCOMB_X25_Y7_N22
\CNT_0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|Equal0~0_combout\ = (\CNT_0|tmp_cnt_p1s\(3) & (\CNT_0|tmp_cnt_p1s\(0) & (!\CNT_0|tmp_cnt_p1s\(1) & !\CNT_0|tmp_cnt_p1s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(3),
	datab => \CNT_0|tmp_cnt_p1s\(0),
	datac => \CNT_0|tmp_cnt_p1s\(1),
	datad => \CNT_0|tmp_cnt_p1s\(2),
	combout => \CNT_0|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y7_N24
\STATE_M_0|tmp_state[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE_M_0|tmp_state[1]~0_combout\ = (!\STATE_M_0|tmp_state\(1) & \STATE_M_0|tmp_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE_M_0|tmp_state\(1),
	datad => \STATE_M_0|tmp_state\(0),
	combout => \STATE_M_0|tmp_state[1]~0_combout\);

-- Location: LCCOMB_X24_Y7_N0
\CNT_0|tmp_cnt_1s[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_1s[3]~0_combout\ = (\CNT_0|Equal3~0_combout\ & (\CNT_0|Equal0~0_combout\ & (\STATE_M_0|tmp_state[1]~0_combout\ & !\CNT_0|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|Equal3~0_combout\,
	datab => \CNT_0|Equal0~0_combout\,
	datac => \STATE_M_0|tmp_state[1]~0_combout\,
	datad => \CNT_0|Equal2~4_combout\,
	combout => \CNT_0|tmp_cnt_1s[3]~0_combout\);

-- Location: FF_X24_Y7_N21
\CNT_0|tmp_cnt_1s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_1s[0]~4_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \CNT_0|tmp_cnt_1s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_1s\(0));

-- Location: LCCOMB_X24_Y7_N26
\CNT_0|tmp_cnt_1s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_1s~3_combout\ = (\CNT_0|tmp_cnt_1s\(2) & (\CNT_0|tmp_cnt_1s\(3) $ (((\CNT_0|tmp_cnt_1s\(0) & \CNT_0|tmp_cnt_1s\(1)))))) # (!\CNT_0|tmp_cnt_1s\(2) & (\CNT_0|tmp_cnt_1s\(3) & ((\CNT_0|tmp_cnt_1s\(1)) # (!\CNT_0|tmp_cnt_1s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(2),
	datab => \CNT_0|tmp_cnt_1s\(0),
	datac => \CNT_0|tmp_cnt_1s\(3),
	datad => \CNT_0|tmp_cnt_1s\(1),
	combout => \CNT_0|tmp_cnt_1s~3_combout\);

-- Location: FF_X24_Y7_N27
\CNT_0|tmp_cnt_1s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_1s~3_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \CNT_0|tmp_cnt_1s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_1s\(3));

-- Location: LCCOMB_X24_Y7_N6
\CNT_0|tmp_cnt_1s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_1s~1_combout\ = (\CNT_0|tmp_cnt_1s\(0) & (!\CNT_0|tmp_cnt_1s\(1) & ((\CNT_0|tmp_cnt_1s\(2)) # (!\CNT_0|tmp_cnt_1s\(3))))) # (!\CNT_0|tmp_cnt_1s\(0) & (((\CNT_0|tmp_cnt_1s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(3),
	datab => \CNT_0|tmp_cnt_1s\(0),
	datac => \CNT_0|tmp_cnt_1s\(1),
	datad => \CNT_0|tmp_cnt_1s\(2),
	combout => \CNT_0|tmp_cnt_1s~1_combout\);

-- Location: FF_X24_Y7_N7
\CNT_0|tmp_cnt_1s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_1s~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \CNT_0|tmp_cnt_1s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_1s\(1));

-- Location: LCCOMB_X24_Y7_N8
\CNT_0|tmp_cnt_1s[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_1s[2]~2_combout\ = \CNT_0|tmp_cnt_1s\(2) $ (((\CNT_0|tmp_cnt_1s\(1) & (\CNT_0|tmp_cnt_1s\(0) & \CNT_0|tmp_cnt_1s[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(1),
	datab => \CNT_0|tmp_cnt_1s\(0),
	datac => \CNT_0|tmp_cnt_1s\(2),
	datad => \CNT_0|tmp_cnt_1s[3]~0_combout\,
	combout => \CNT_0|tmp_cnt_1s[2]~2_combout\);

-- Location: FF_X24_Y7_N9
\CNT_0|tmp_cnt_1s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_1s[2]~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_1s\(2));

-- Location: LCCOMB_X24_Y7_N16
\SEG_DRV_1S|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_1S|Mux6~0_combout\ = (\CNT_0|tmp_cnt_1s\(1) & (((\CNT_0|tmp_cnt_1s\(3))))) # (!\CNT_0|tmp_cnt_1s\(1) & (\CNT_0|tmp_cnt_1s\(2) $ (((\CNT_0|tmp_cnt_1s\(0) & !\CNT_0|tmp_cnt_1s\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(2),
	datab => \CNT_0|tmp_cnt_1s\(0),
	datac => \CNT_0|tmp_cnt_1s\(3),
	datad => \CNT_0|tmp_cnt_1s\(1),
	combout => \SEG_DRV_1S|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y7_N14
\SEG_DRV_1S|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_1S|Mux5~0_combout\ = (\CNT_0|tmp_cnt_1s\(2) & ((\CNT_0|tmp_cnt_1s\(3)) # (\CNT_0|tmp_cnt_1s\(0) $ (\CNT_0|tmp_cnt_1s\(1))))) # (!\CNT_0|tmp_cnt_1s\(2) & (((\CNT_0|tmp_cnt_1s\(3) & \CNT_0|tmp_cnt_1s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(2),
	datab => \CNT_0|tmp_cnt_1s\(0),
	datac => \CNT_0|tmp_cnt_1s\(3),
	datad => \CNT_0|tmp_cnt_1s\(1),
	combout => \SEG_DRV_1S|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y7_N4
\SEG_DRV_1S|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_1S|Mux4~0_combout\ = (\CNT_0|tmp_cnt_1s\(2) & (((\CNT_0|tmp_cnt_1s\(3))))) # (!\CNT_0|tmp_cnt_1s\(2) & (\CNT_0|tmp_cnt_1s\(1) & ((\CNT_0|tmp_cnt_1s\(3)) # (!\CNT_0|tmp_cnt_1s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(2),
	datab => \CNT_0|tmp_cnt_1s\(0),
	datac => \CNT_0|tmp_cnt_1s\(3),
	datad => \CNT_0|tmp_cnt_1s\(1),
	combout => \SEG_DRV_1S|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y7_N22
\SEG_DRV_1S|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_1S|Mux3~0_combout\ = (\CNT_0|tmp_cnt_1s\(0) & ((\CNT_0|tmp_cnt_1s\(2)) # (\CNT_0|tmp_cnt_1s\(3) $ (!\CNT_0|tmp_cnt_1s\(1))))) # (!\CNT_0|tmp_cnt_1s\(0) & ((\CNT_0|tmp_cnt_1s\(1) & ((\CNT_0|tmp_cnt_1s\(3)))) # (!\CNT_0|tmp_cnt_1s\(1) & 
-- (\CNT_0|tmp_cnt_1s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(2),
	datab => \CNT_0|tmp_cnt_1s\(0),
	datac => \CNT_0|tmp_cnt_1s\(3),
	datad => \CNT_0|tmp_cnt_1s\(1),
	combout => \SEG_DRV_1S|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y7_N24
\SEG_DRV_1S|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_1S|Mux2~0_combout\ = (\CNT_0|tmp_cnt_1s\(2) & ((\CNT_0|tmp_cnt_1s\(3)) # (\CNT_0|tmp_cnt_1s\(0) $ (!\CNT_0|tmp_cnt_1s\(1))))) # (!\CNT_0|tmp_cnt_1s\(2) & ((\CNT_0|tmp_cnt_1s\(0)) # ((\CNT_0|tmp_cnt_1s\(3) & \CNT_0|tmp_cnt_1s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(2),
	datab => \CNT_0|tmp_cnt_1s\(0),
	datac => \CNT_0|tmp_cnt_1s\(3),
	datad => \CNT_0|tmp_cnt_1s\(1),
	combout => \SEG_DRV_1S|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y7_N10
\SEG_DRV_1S|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_1S|Mux1~0_combout\ = (\CNT_0|tmp_cnt_1s\(2) & ((\CNT_0|tmp_cnt_1s\(3)) # ((\CNT_0|tmp_cnt_1s\(0) & \CNT_0|tmp_cnt_1s\(1))))) # (!\CNT_0|tmp_cnt_1s\(2) & ((\CNT_0|tmp_cnt_1s\(1)) # ((\CNT_0|tmp_cnt_1s\(0) & !\CNT_0|tmp_cnt_1s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(2),
	datab => \CNT_0|tmp_cnt_1s\(0),
	datac => \CNT_0|tmp_cnt_1s\(3),
	datad => \CNT_0|tmp_cnt_1s\(1),
	combout => \SEG_DRV_1S|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y7_N28
\SEG_DRV_1S|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_1S|Mux0~0_combout\ = (\CNT_0|tmp_cnt_1s\(2) & (!\CNT_0|tmp_cnt_1s\(3) & ((!\CNT_0|tmp_cnt_1s\(1)) # (!\CNT_0|tmp_cnt_1s\(0))))) # (!\CNT_0|tmp_cnt_1s\(2) & ((\CNT_0|tmp_cnt_1s\(3) $ (\CNT_0|tmp_cnt_1s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(2),
	datab => \CNT_0|tmp_cnt_1s\(0),
	datac => \CNT_0|tmp_cnt_1s\(3),
	datad => \CNT_0|tmp_cnt_1s\(1),
	combout => \SEG_DRV_1S|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y7_N4
\SEG_DRV_P1S|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P1S|Mux6~0_combout\ = (\CNT_0|tmp_cnt_p1s\(1) & (\CNT_0|tmp_cnt_p1s\(3))) # (!\CNT_0|tmp_cnt_p1s\(1) & (\CNT_0|tmp_cnt_p1s\(2) $ (((!\CNT_0|tmp_cnt_p1s\(3) & \CNT_0|tmp_cnt_p1s\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(3),
	datab => \CNT_0|tmp_cnt_p1s\(0),
	datac => \CNT_0|tmp_cnt_p1s\(1),
	datad => \CNT_0|tmp_cnt_p1s\(2),
	combout => \SEG_DRV_P1S|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y7_N12
\SEG_DRV_P1S|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P1S|Mux5~0_combout\ = (\CNT_0|tmp_cnt_p1s\(3) & (((\CNT_0|tmp_cnt_p1s\(1)) # (\CNT_0|tmp_cnt_p1s\(2))))) # (!\CNT_0|tmp_cnt_p1s\(3) & (\CNT_0|tmp_cnt_p1s\(2) & (\CNT_0|tmp_cnt_p1s\(0) $ (\CNT_0|tmp_cnt_p1s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(0),
	datab => \CNT_0|tmp_cnt_p1s\(1),
	datac => \CNT_0|tmp_cnt_p1s\(3),
	datad => \CNT_0|tmp_cnt_p1s\(2),
	combout => \SEG_DRV_P1S|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y7_N30
\SEG_DRV_P1S|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P1S|Mux4~0_combout\ = (\CNT_0|tmp_cnt_p1s\(2) & (((\CNT_0|tmp_cnt_p1s\(3))))) # (!\CNT_0|tmp_cnt_p1s\(2) & (\CNT_0|tmp_cnt_p1s\(1) & ((\CNT_0|tmp_cnt_p1s\(3)) # (!\CNT_0|tmp_cnt_p1s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(0),
	datab => \CNT_0|tmp_cnt_p1s\(1),
	datac => \CNT_0|tmp_cnt_p1s\(3),
	datad => \CNT_0|tmp_cnt_p1s\(2),
	combout => \SEG_DRV_P1S|Mux4~0_combout\);

-- Location: LCCOMB_X25_Y7_N18
\SEG_DRV_P1S|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P1S|Mux3~0_combout\ = (\CNT_0|tmp_cnt_p1s\(0) & ((\CNT_0|tmp_cnt_p1s\(2)) # (\CNT_0|tmp_cnt_p1s\(3) $ (!\CNT_0|tmp_cnt_p1s\(1))))) # (!\CNT_0|tmp_cnt_p1s\(0) & ((\CNT_0|tmp_cnt_p1s\(1) & (\CNT_0|tmp_cnt_p1s\(3))) # (!\CNT_0|tmp_cnt_p1s\(1) & 
-- ((\CNT_0|tmp_cnt_p1s\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(3),
	datab => \CNT_0|tmp_cnt_p1s\(0),
	datac => \CNT_0|tmp_cnt_p1s\(1),
	datad => \CNT_0|tmp_cnt_p1s\(2),
	combout => \SEG_DRV_P1S|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y7_N24
\SEG_DRV_P1S|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P1S|Mux2~0_combout\ = (\CNT_0|tmp_cnt_p1s\(0) & ((\CNT_0|tmp_cnt_p1s\(1)) # ((\CNT_0|tmp_cnt_p1s\(3)) # (!\CNT_0|tmp_cnt_p1s\(2))))) # (!\CNT_0|tmp_cnt_p1s\(0) & ((\CNT_0|tmp_cnt_p1s\(1) & (\CNT_0|tmp_cnt_p1s\(3))) # (!\CNT_0|tmp_cnt_p1s\(1) & 
-- ((\CNT_0|tmp_cnt_p1s\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(0),
	datab => \CNT_0|tmp_cnt_p1s\(1),
	datac => \CNT_0|tmp_cnt_p1s\(3),
	datad => \CNT_0|tmp_cnt_p1s\(2),
	combout => \SEG_DRV_P1S|Mux2~0_combout\);

-- Location: LCCOMB_X25_Y7_N0
\SEG_DRV_P1S|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P1S|Mux1~0_combout\ = (\CNT_0|tmp_cnt_p1s\(0) & ((\CNT_0|tmp_cnt_p1s\(1)) # (\CNT_0|tmp_cnt_p1s\(3) $ (!\CNT_0|tmp_cnt_p1s\(2))))) # (!\CNT_0|tmp_cnt_p1s\(0) & ((\CNT_0|tmp_cnt_p1s\(2) & (\CNT_0|tmp_cnt_p1s\(3))) # (!\CNT_0|tmp_cnt_p1s\(2) & 
-- ((\CNT_0|tmp_cnt_p1s\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(3),
	datab => \CNT_0|tmp_cnt_p1s\(0),
	datac => \CNT_0|tmp_cnt_p1s\(1),
	datad => \CNT_0|tmp_cnt_p1s\(2),
	combout => \SEG_DRV_P1S|Mux1~0_combout\);

-- Location: LCCOMB_X25_Y7_N26
\SEG_DRV_P1S|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P1S|Mux0~0_combout\ = (\CNT_0|tmp_cnt_p1s\(1) & (!\CNT_0|tmp_cnt_p1s\(3) & ((!\CNT_0|tmp_cnt_p1s\(2)) # (!\CNT_0|tmp_cnt_p1s\(0))))) # (!\CNT_0|tmp_cnt_p1s\(1) & (\CNT_0|tmp_cnt_p1s\(3) $ (((\CNT_0|tmp_cnt_p1s\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(3),
	datab => \CNT_0|tmp_cnt_p1s\(0),
	datac => \CNT_0|tmp_cnt_p1s\(1),
	datad => \CNT_0|tmp_cnt_p1s\(2),
	combout => \SEG_DRV_P1S|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y7_N2
\SEG_DRV_P01S|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P01S|Mux6~0_combout\ = (\CNT_0|tmp_cnt_p01s\(1) & (((\CNT_0|tmp_cnt_p01s\(3))))) # (!\CNT_0|tmp_cnt_p01s\(1) & (\CNT_0|tmp_cnt_p01s\(2) $ (((!\CNT_0|tmp_cnt_p01s\(3) & \CNT_0|tmp_cnt_p01s\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(2),
	datab => \CNT_0|tmp_cnt_p01s\(3),
	datac => \CNT_0|tmp_cnt_p01s\(1),
	datad => \CNT_0|tmp_cnt_p01s\(0),
	combout => \SEG_DRV_P01S|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y7_N0
\SEG_DRV_P01S|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P01S|Mux5~0_combout\ = (\CNT_0|tmp_cnt_p01s\(2) & ((\CNT_0|tmp_cnt_p01s\(3)) # (\CNT_0|tmp_cnt_p01s\(1) $ (\CNT_0|tmp_cnt_p01s\(0))))) # (!\CNT_0|tmp_cnt_p01s\(2) & (\CNT_0|tmp_cnt_p01s\(3) & (\CNT_0|tmp_cnt_p01s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(2),
	datab => \CNT_0|tmp_cnt_p01s\(3),
	datac => \CNT_0|tmp_cnt_p01s\(1),
	datad => \CNT_0|tmp_cnt_p01s\(0),
	combout => \SEG_DRV_P01S|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y7_N26
\SEG_DRV_P01S|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P01S|Mux4~0_combout\ = (\CNT_0|tmp_cnt_p01s\(2) & (\CNT_0|tmp_cnt_p01s\(3))) # (!\CNT_0|tmp_cnt_p01s\(2) & (\CNT_0|tmp_cnt_p01s\(1) & ((\CNT_0|tmp_cnt_p01s\(3)) # (!\CNT_0|tmp_cnt_p01s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(2),
	datab => \CNT_0|tmp_cnt_p01s\(3),
	datac => \CNT_0|tmp_cnt_p01s\(1),
	datad => \CNT_0|tmp_cnt_p01s\(0),
	combout => \SEG_DRV_P01S|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y7_N28
\SEG_DRV_P01S|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P01S|Mux3~0_combout\ = (\CNT_0|tmp_cnt_p01s\(1) & ((\CNT_0|tmp_cnt_p01s\(3)) # ((\CNT_0|tmp_cnt_p01s\(2) & \CNT_0|tmp_cnt_p01s\(0))))) # (!\CNT_0|tmp_cnt_p01s\(1) & ((\CNT_0|tmp_cnt_p01s\(2)) # ((!\CNT_0|tmp_cnt_p01s\(3) & 
-- \CNT_0|tmp_cnt_p01s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(2),
	datab => \CNT_0|tmp_cnt_p01s\(3),
	datac => \CNT_0|tmp_cnt_p01s\(1),
	datad => \CNT_0|tmp_cnt_p01s\(0),
	combout => \SEG_DRV_P01S|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y7_N6
\SEG_DRV_P01S|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P01S|Mux2~0_combout\ = (\CNT_0|tmp_cnt_p01s\(2) & ((\CNT_0|tmp_cnt_p01s\(3)) # (\CNT_0|tmp_cnt_p01s\(1) $ (!\CNT_0|tmp_cnt_p01s\(0))))) # (!\CNT_0|tmp_cnt_p01s\(2) & ((\CNT_0|tmp_cnt_p01s\(0)) # ((\CNT_0|tmp_cnt_p01s\(3) & 
-- \CNT_0|tmp_cnt_p01s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(2),
	datab => \CNT_0|tmp_cnt_p01s\(3),
	datac => \CNT_0|tmp_cnt_p01s\(1),
	datad => \CNT_0|tmp_cnt_p01s\(0),
	combout => \SEG_DRV_P01S|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y7_N4
\SEG_DRV_P01S|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P01S|Mux1~0_combout\ = (\CNT_0|tmp_cnt_p01s\(2) & ((\CNT_0|tmp_cnt_p01s\(3)) # ((\CNT_0|tmp_cnt_p01s\(1) & \CNT_0|tmp_cnt_p01s\(0))))) # (!\CNT_0|tmp_cnt_p01s\(2) & ((\CNT_0|tmp_cnt_p01s\(1)) # ((!\CNT_0|tmp_cnt_p01s\(3) & 
-- \CNT_0|tmp_cnt_p01s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(2),
	datab => \CNT_0|tmp_cnt_p01s\(3),
	datac => \CNT_0|tmp_cnt_p01s\(1),
	datad => \CNT_0|tmp_cnt_p01s\(0),
	combout => \SEG_DRV_P01S|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y7_N14
\SEG_DRV_P01S|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P01S|Mux0~0_combout\ = (\CNT_0|tmp_cnt_p01s\(2) & (!\CNT_0|tmp_cnt_p01s\(3) & ((!\CNT_0|tmp_cnt_p01s\(0)) # (!\CNT_0|tmp_cnt_p01s\(1))))) # (!\CNT_0|tmp_cnt_p01s\(2) & (\CNT_0|tmp_cnt_p01s\(3) $ ((\CNT_0|tmp_cnt_p01s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(2),
	datab => \CNT_0|tmp_cnt_p01s\(3),
	datac => \CNT_0|tmp_cnt_p01s\(1),
	datad => \CNT_0|tmp_cnt_p01s\(0),
	combout => \SEG_DRV_P01S|Mux0~0_combout\);

ww_SEG_OUT_10S(0) <= \SEG_OUT_10S[0]~output_o\;

ww_SEG_OUT_10S(1) <= \SEG_OUT_10S[1]~output_o\;

ww_SEG_OUT_10S(2) <= \SEG_OUT_10S[2]~output_o\;

ww_SEG_OUT_10S(3) <= \SEG_OUT_10S[3]~output_o\;

ww_SEG_OUT_10S(4) <= \SEG_OUT_10S[4]~output_o\;

ww_SEG_OUT_10S(5) <= \SEG_OUT_10S[5]~output_o\;

ww_SEG_OUT_10S(6) <= \SEG_OUT_10S[6]~output_o\;

ww_SEG_OUT_1S(0) <= \SEG_OUT_1S[0]~output_o\;

ww_SEG_OUT_1S(1) <= \SEG_OUT_1S[1]~output_o\;

ww_SEG_OUT_1S(2) <= \SEG_OUT_1S[2]~output_o\;

ww_SEG_OUT_1S(3) <= \SEG_OUT_1S[3]~output_o\;

ww_SEG_OUT_1S(4) <= \SEG_OUT_1S[4]~output_o\;

ww_SEG_OUT_1S(5) <= \SEG_OUT_1S[5]~output_o\;

ww_SEG_OUT_1S(6) <= \SEG_OUT_1S[6]~output_o\;

ww_SEG_OUT_P1S(0) <= \SEG_OUT_P1S[0]~output_o\;

ww_SEG_OUT_P1S(1) <= \SEG_OUT_P1S[1]~output_o\;

ww_SEG_OUT_P1S(2) <= \SEG_OUT_P1S[2]~output_o\;

ww_SEG_OUT_P1S(3) <= \SEG_OUT_P1S[3]~output_o\;

ww_SEG_OUT_P1S(4) <= \SEG_OUT_P1S[4]~output_o\;

ww_SEG_OUT_P1S(5) <= \SEG_OUT_P1S[5]~output_o\;

ww_SEG_OUT_P1S(6) <= \SEG_OUT_P1S[6]~output_o\;

ww_SEG_OUT_P01S(0) <= \SEG_OUT_P01S[0]~output_o\;

ww_SEG_OUT_P01S(1) <= \SEG_OUT_P01S[1]~output_o\;

ww_SEG_OUT_P01S(2) <= \SEG_OUT_P01S[2]~output_o\;

ww_SEG_OUT_P01S(3) <= \SEG_OUT_P01S[3]~output_o\;

ww_SEG_OUT_P01S(4) <= \SEG_OUT_P01S[4]~output_o\;

ww_SEG_OUT_P01S(5) <= \SEG_OUT_P01S[5]~output_o\;

ww_SEG_OUT_P01S(6) <= \SEG_OUT_P01S[6]~output_o\;
END structure;


