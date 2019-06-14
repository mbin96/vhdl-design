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

-- DATE "05/24/2019 11:31:44"

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

ENTITY 	stop_watch_top IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	START_SW : IN std_logic;
	STOP_SW : IN std_logic;
	SEG_OUT_10S : BUFFER std_logic_vector(6 DOWNTO 0);
	SEG_OUT_1S : BUFFER std_logic_vector(6 DOWNTO 0);
	SEG_OUT_P1S : BUFFER std_logic_vector(6 DOWNTO 0);
	SEG_OUT_P01S : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END stop_watch_top;

-- Design Ports Information
-- SEG_OUT_10S[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_10S[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_10S[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_10S[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_10S[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_10S[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_10S[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_1S[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_1S[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_1S[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_1S[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_1S[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_1S[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_1S[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P1S[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P1S[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P1S[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P1S[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P1S[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P1S[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P1S[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P01S[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P01S[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P01S[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P01S[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P01S[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P01S[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_OUT_P01S[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- START_SW	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STOP_SW	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \STOP_SW~input_o\ : std_logic;
SIGNAL \SW_INPUT_STOP|sw_in_1d~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \SW_INPUT_STOP|sw_in_1d~q\ : std_logic;
SIGNAL \SW_INPUT_STOP|sw_cnt[0]~1_combout\ : std_logic;
SIGNAL \SW_INPUT_STOP|sw_cnt[2]~0_combout\ : std_logic;
SIGNAL \SW_INPUT_STOP|sw_cnt[1]~2_combout\ : std_logic;
SIGNAL \SW_INPUT_STOP|Equal0~0_combout\ : std_logic;
SIGNAL \SW_INPUT_STOP|SW_CLR~q\ : std_logic;
SIGNAL \START_SW~input_o\ : std_logic;
SIGNAL \SW_INPUT_START|sw_in_1d~0_combout\ : std_logic;
SIGNAL \SW_INPUT_START|sw_in_1d~q\ : std_logic;
SIGNAL \SW_INPUT_START|sw_cnt[2]~0_combout\ : std_logic;
SIGNAL \SW_INPUT_START|sw_cnt[0]~1_combout\ : std_logic;
SIGNAL \SW_INPUT_START|sw_cnt[1]~2_combout\ : std_logic;
SIGNAL \SW_INPUT_START|Equal0~0_combout\ : std_logic;
SIGNAL \SW_INPUT_START|SW_CLR~q\ : std_logic;
SIGNAL \STATE_M_0|Mux0~0_combout\ : std_logic;
SIGNAL \STATE_M_0|Mux1~1_combout\ : std_logic;
SIGNAL \STATE_M_0|Mux1~0_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[13]~16_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[0]_OTERM1\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[0]~15\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[1]~17_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[1]_OTERM27\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[1]~18\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[2]~19_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[2]_OTERM25\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[2]~20\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[3]~21_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[3]_OTERM23\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[3]~22\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[4]~23_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[4]_OTERM21\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[4]~24\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[5]~25_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[5]_OTERM19\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[5]~26\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[6]~27_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[6]_OTERM17\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[6]~28\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[7]~29_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[7]_OTERM15\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[7]~30\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[8]~31_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[8]_OTERM13\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[8]~32\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[9]~33_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[9]_OTERM11\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[9]~34\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[10]~35_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[10]_OTERM9\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[10]~36\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[11]~37_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[11]_OTERM7\ : std_logic;
SIGNAL \CNT_0|Equal2~2_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[11]~38\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[12]~39_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[12]_OTERM5\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[12]~40\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[13]~41_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[13]_OTERM3\ : std_logic;
SIGNAL \CNT_0|Equal2~3_combout\ : std_logic;
SIGNAL \CNT_0|Equal2~1_combout\ : std_logic;
SIGNAL \CNT_0|Equal2~0_combout\ : std_logic;
SIGNAL \CNT_0|Equal2~4_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p01s[3]~0_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p01s[0]_OTERM33\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p01s[2]_OTERM55~feeder_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p01s[2]_OTERM55\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p01s[2]_OTERM57~feeder_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p01s[2]_OTERM57\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p01s[2]_OTERM59\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p01s[2]_OTERM61\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p01s[2]~2_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p01s~3_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p01s[3]_OTERM29\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p01s~1_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p01s[1]_OTERM31\ : std_logic;
SIGNAL \CNT_0|Equal3~0_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p1s[3]~0_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p1s[0]_OTERM39\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p1s[2]_OTERM69\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p1s[2]_OTERM63\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p1s[2]_OTERM67\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p1s[2]_OTERM65\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p1s[2]~2_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p1s~3_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p1s[3]_OTERM35\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p1s~1_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p1s[1]_OTERM37\ : std_logic;
SIGNAL \CNT_0|Equal0~0_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_1s[3]~0_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_1s[0]_OTERM45\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_1s[2]_OTERM49~feeder_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_1s[2]_OTERM49\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_1s[2]_OTERM47~feeder_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_1s[2]_OTERM47\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_1s[2]_OTERM51\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_1s[2]_OTERM53\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_1s[2]~2_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_1s~3_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_1s[3]_OTERM41\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_1s~1_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_1s[1]_OTERM43\ : std_logic;
SIGNAL \SEG_DRV_1S|Mux6~0_combout\ : std_logic;
SIGNAL \SEG_DRV_1S|Mux5~0_combout\ : std_logic;
SIGNAL \SEG_DRV_1S|Mux4~0_combout\ : std_logic;
SIGNAL \SEG_DRV_1S|Mux3~0_combout\ : std_logic;
SIGNAL \SEG_DRV_1S|Mux2~0_combout\ : std_logic;
SIGNAL \SEG_DRV_1S|Mux1~0_combout\ : std_logic;
SIGNAL \SEG_DRV_1S|Mux0~0_wirecell_combout\ : std_logic;
SIGNAL \SEG_DRV_P1S|Mux6~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P1S|Mux5~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P1S|Mux4~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P1S|Mux3~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P1S|Mux2~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P1S|Mux1~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P1S|Mux0~0_wirecell_combout\ : std_logic;
SIGNAL \SEG_DRV_P01S|Mux6~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P01S|Mux5~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P01S|Mux4~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P01S|Mux3~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P01S|Mux2~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P01S|Mux1~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P01S|Mux0~0_wirecell_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \STATE_M_0|tmp_state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CNT_0|tmp_cnt_1s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW_INPUT_STOP|sw_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \CNT_0|tmp_cnt_p1s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CNT_0|tmp_cnt_p01s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW_INPUT_START|sw_cnt\ : std_logic_vector(2 DOWNTO 0);

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

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y25_N16
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

-- Location: IOOBUF_X115_Y29_N2
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

-- Location: IOOBUF_X100_Y0_N2
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

-- Location: IOOBUF_X111_Y0_N2
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

-- Location: IOOBUF_X105_Y0_N23
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

-- Location: IOOBUF_X105_Y0_N9
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

-- Location: IOOBUF_X105_Y0_N2
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

-- Location: IOOBUF_X115_Y17_N9
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

-- Location: IOOBUF_X115_Y16_N2
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

-- Location: IOOBUF_X115_Y19_N9
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

-- Location: IOOBUF_X115_Y19_N2
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

-- Location: IOOBUF_X115_Y18_N2
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

-- Location: IOOBUF_X115_Y20_N2
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

-- Location: IOOBUF_X115_Y21_N16
\SEG_OUT_1S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG_DRV_1S|Mux0~0_wirecell_combout\,
	devoe => ww_devoe,
	o => \SEG_OUT_1S[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
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

-- Location: IOOBUF_X115_Y30_N9
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

-- Location: IOOBUF_X115_Y25_N23
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

-- Location: IOOBUF_X115_Y30_N2
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

-- Location: IOOBUF_X115_Y20_N9
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

-- Location: IOOBUF_X115_Y22_N2
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

-- Location: IOOBUF_X115_Y28_N9
\SEG_OUT_P1S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG_DRV_P1S|Mux0~0_wirecell_combout\,
	devoe => ww_devoe,
	o => \SEG_OUT_P1S[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
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

-- Location: IOOBUF_X107_Y73_N23
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

-- Location: IOOBUF_X67_Y73_N23
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

-- Location: IOOBUF_X115_Y50_N2
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

-- Location: IOOBUF_X115_Y54_N16
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

-- Location: IOOBUF_X115_Y67_N16
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

-- Location: IOOBUF_X115_Y69_N2
\SEG_OUT_P01S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG_DRV_P01S|Mux0~0_wirecell_combout\,
	devoe => ww_devoe,
	o => \SEG_OUT_P01S[6]~output_o\);

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

-- Location: IOIBUF_X115_Y42_N15
\STOP_SW~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STOP_SW,
	o => \STOP_SW~input_o\);

-- Location: LCCOMB_X114_Y35_N6
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

-- Location: IOIBUF_X115_Y40_N8
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: FF_X114_Y35_N7
\SW_INPUT_STOP|sw_in_1d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SW_INPUT_STOP|sw_in_1d~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SW_INPUT_STOP|sw_in_1d~q\);

-- Location: LCCOMB_X113_Y35_N18
\SW_INPUT_STOP|sw_cnt[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW_INPUT_STOP|sw_cnt[0]~1_combout\ = (\SW_INPUT_STOP|sw_in_1d~q\ & (((!\SW_INPUT_STOP|sw_cnt\(1) & \SW_INPUT_STOP|sw_cnt\(2))) # (!\SW_INPUT_STOP|sw_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_STOP|sw_cnt\(1),
	datab => \SW_INPUT_STOP|sw_cnt\(2),
	datac => \SW_INPUT_STOP|sw_cnt\(0),
	datad => \SW_INPUT_STOP|sw_in_1d~q\,
	combout => \SW_INPUT_STOP|sw_cnt[0]~1_combout\);

-- Location: FF_X113_Y35_N19
\SW_INPUT_STOP|sw_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SW_INPUT_STOP|sw_cnt[0]~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SW_INPUT_STOP|sw_cnt\(0));

-- Location: LCCOMB_X113_Y35_N4
\SW_INPUT_STOP|sw_cnt[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW_INPUT_STOP|sw_cnt[2]~0_combout\ = (\SW_INPUT_STOP|sw_in_1d~q\ & (\SW_INPUT_STOP|sw_cnt\(2) $ (((\SW_INPUT_STOP|sw_cnt\(1) & \SW_INPUT_STOP|sw_cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_STOP|sw_cnt\(1),
	datab => \SW_INPUT_STOP|sw_cnt\(0),
	datac => \SW_INPUT_STOP|sw_cnt\(2),
	datad => \SW_INPUT_STOP|sw_in_1d~q\,
	combout => \SW_INPUT_STOP|sw_cnt[2]~0_combout\);

-- Location: FF_X113_Y35_N5
\SW_INPUT_STOP|sw_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SW_INPUT_STOP|sw_cnt[2]~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SW_INPUT_STOP|sw_cnt\(2));

-- Location: LCCOMB_X113_Y35_N12
\SW_INPUT_STOP|sw_cnt[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW_INPUT_STOP|sw_cnt[1]~2_combout\ = (\SW_INPUT_STOP|sw_in_1d~q\ & ((\SW_INPUT_STOP|sw_cnt\(1) & ((!\SW_INPUT_STOP|sw_cnt\(0)))) # (!\SW_INPUT_STOP|sw_cnt\(1) & (!\SW_INPUT_STOP|sw_cnt\(2) & \SW_INPUT_STOP|sw_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_STOP|sw_in_1d~q\,
	datab => \SW_INPUT_STOP|sw_cnt\(2),
	datac => \SW_INPUT_STOP|sw_cnt\(1),
	datad => \SW_INPUT_STOP|sw_cnt\(0),
	combout => \SW_INPUT_STOP|sw_cnt[1]~2_combout\);

-- Location: FF_X113_Y35_N13
\SW_INPUT_STOP|sw_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SW_INPUT_STOP|sw_cnt[1]~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SW_INPUT_STOP|sw_cnt\(1));

-- Location: LCCOMB_X113_Y35_N10
\SW_INPUT_STOP|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW_INPUT_STOP|Equal0~0_combout\ = (!\SW_INPUT_STOP|sw_cnt\(1) & (\SW_INPUT_STOP|sw_cnt\(2) & \SW_INPUT_STOP|sw_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_STOP|sw_cnt\(1),
	datac => \SW_INPUT_STOP|sw_cnt\(2),
	datad => \SW_INPUT_STOP|sw_cnt\(0),
	combout => \SW_INPUT_STOP|Equal0~0_combout\);

-- Location: FF_X113_Y35_N11
\SW_INPUT_STOP|SW_CLR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SW_INPUT_STOP|Equal0~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SW_INPUT_STOP|SW_CLR~q\);

-- Location: IOIBUF_X115_Y53_N15
\START_SW~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_START_SW,
	o => \START_SW~input_o\);

-- Location: LCCOMB_X114_Y36_N12
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

-- Location: FF_X114_Y36_N13
\SW_INPUT_START|sw_in_1d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SW_INPUT_START|sw_in_1d~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SW_INPUT_START|sw_in_1d~q\);

-- Location: LCCOMB_X114_Y36_N18
\SW_INPUT_START|sw_cnt[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW_INPUT_START|sw_cnt[2]~0_combout\ = (\SW_INPUT_START|sw_in_1d~q\ & (\SW_INPUT_START|sw_cnt\(2) $ (((\SW_INPUT_START|sw_cnt\(1) & \SW_INPUT_START|sw_cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_START|sw_cnt\(1),
	datab => \SW_INPUT_START|sw_cnt\(0),
	datac => \SW_INPUT_START|sw_cnt\(2),
	datad => \SW_INPUT_START|sw_in_1d~q\,
	combout => \SW_INPUT_START|sw_cnt[2]~0_combout\);

-- Location: FF_X114_Y36_N19
\SW_INPUT_START|sw_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SW_INPUT_START|sw_cnt[2]~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SW_INPUT_START|sw_cnt\(2));

-- Location: LCCOMB_X114_Y36_N4
\SW_INPUT_START|sw_cnt[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW_INPUT_START|sw_cnt[0]~1_combout\ = (\SW_INPUT_START|sw_in_1d~q\ & (((!\SW_INPUT_START|sw_cnt\(1) & \SW_INPUT_START|sw_cnt\(2))) # (!\SW_INPUT_START|sw_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_START|sw_cnt\(1),
	datab => \SW_INPUT_START|sw_cnt\(2),
	datac => \SW_INPUT_START|sw_cnt\(0),
	datad => \SW_INPUT_START|sw_in_1d~q\,
	combout => \SW_INPUT_START|sw_cnt[0]~1_combout\);

-- Location: FF_X114_Y36_N5
\SW_INPUT_START|sw_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SW_INPUT_START|sw_cnt[0]~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SW_INPUT_START|sw_cnt\(0));

-- Location: LCCOMB_X114_Y36_N10
\SW_INPUT_START|sw_cnt[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW_INPUT_START|sw_cnt[1]~2_combout\ = (\SW_INPUT_START|sw_in_1d~q\ & ((\SW_INPUT_START|sw_cnt\(0) & (!\SW_INPUT_START|sw_cnt\(1) & !\SW_INPUT_START|sw_cnt\(2))) # (!\SW_INPUT_START|sw_cnt\(0) & (\SW_INPUT_START|sw_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_START|sw_in_1d~q\,
	datab => \SW_INPUT_START|sw_cnt\(0),
	datac => \SW_INPUT_START|sw_cnt\(1),
	datad => \SW_INPUT_START|sw_cnt\(2),
	combout => \SW_INPUT_START|sw_cnt[1]~2_combout\);

-- Location: FF_X114_Y36_N11
\SW_INPUT_START|sw_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SW_INPUT_START|sw_cnt[1]~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SW_INPUT_START|sw_cnt\(1));

-- Location: LCCOMB_X114_Y36_N30
\SW_INPUT_START|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW_INPUT_START|Equal0~0_combout\ = (!\SW_INPUT_START|sw_cnt\(1) & (\SW_INPUT_START|sw_cnt\(0) & \SW_INPUT_START|sw_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_START|sw_cnt\(1),
	datac => \SW_INPUT_START|sw_cnt\(0),
	datad => \SW_INPUT_START|sw_cnt\(2),
	combout => \SW_INPUT_START|Equal0~0_combout\);

-- Location: FF_X114_Y36_N31
\SW_INPUT_START|SW_CLR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SW_INPUT_START|Equal0~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SW_INPUT_START|SW_CLR~q\);

-- Location: LCCOMB_X113_Y35_N2
\STATE_M_0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE_M_0|Mux0~0_combout\ = (\STATE_M_0|tmp_state\(0) & (\SW_INPUT_STOP|SW_CLR~q\ & (!\STATE_M_0|tmp_state\(1)))) # (!\STATE_M_0|tmp_state\(0) & (((\STATE_M_0|tmp_state\(1) & !\SW_INPUT_START|SW_CLR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_STOP|SW_CLR~q\,
	datab => \STATE_M_0|tmp_state\(0),
	datac => \STATE_M_0|tmp_state\(1),
	datad => \SW_INPUT_START|SW_CLR~q\,
	combout => \STATE_M_0|Mux0~0_combout\);

-- Location: FF_X113_Y35_N3
\STATE_M_0|tmp_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \STATE_M_0|Mux0~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE_M_0|tmp_state\(1));

-- Location: LCCOMB_X113_Y35_N20
\STATE_M_0|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE_M_0|Mux1~1_combout\ = (\STATE_M_0|tmp_state\(0) & (!\SW_INPUT_STOP|SW_CLR~q\ & (!\STATE_M_0|tmp_state\(1)))) # (!\STATE_M_0|tmp_state\(0) & (((\SW_INPUT_START|SW_CLR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_STOP|SW_CLR~q\,
	datab => \STATE_M_0|tmp_state\(1),
	datac => \STATE_M_0|tmp_state\(0),
	datad => \SW_INPUT_START|SW_CLR~q\,
	combout => \STATE_M_0|Mux1~1_combout\);

-- Location: FF_X113_Y35_N21
\STATE_M_0|tmp_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \STATE_M_0|Mux1~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE_M_0|tmp_state\(0));

-- Location: LCCOMB_X113_Y35_N22
\STATE_M_0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE_M_0|Mux1~0_combout\ = (\STATE_M_0|tmp_state\(0) & !\STATE_M_0|tmp_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STATE_M_0|tmp_state\(0),
	datad => \STATE_M_0|tmp_state\(1),
	combout => \STATE_M_0|Mux1~0_combout\);

-- Location: LCCOMB_X109_Y35_N28
\CNT_0|tmp_cnt[13]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[13]~16_combout\ = ((\STATE_M_0|tmp_state\(1)) # (!\CNT_0|Equal2~4_combout\)) # (!\STATE_M_0|tmp_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE_M_0|tmp_state\(0),
	datac => \STATE_M_0|tmp_state\(1),
	datad => \CNT_0|Equal2~4_combout\,
	combout => \CNT_0|tmp_cnt[13]~16_combout\);

-- Location: LCCOMB_X108_Y35_N30
\CNT_0|tmp_cnt[0]_NEW0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[0]_OTERM1\ = (!\CNT_0|tmp_cnt\(0) & !\CNT_0|tmp_cnt[13]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt\(0),
	datad => \CNT_0|tmp_cnt[13]~16_combout\,
	combout => \CNT_0|tmp_cnt[0]_OTERM1\);

-- Location: FF_X108_Y35_N31
\CNT_0|tmp_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[0]_OTERM1\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(0));

-- Location: LCCOMB_X108_Y35_N0
\CNT_0|tmp_cnt[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[0]~15\ = CARRY(\CNT_0|tmp_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt\(0),
	datad => VCC,
	cout => \CNT_0|tmp_cnt[0]~15\);

-- Location: LCCOMB_X108_Y35_N2
\CNT_0|tmp_cnt[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[1]~17_combout\ = (\CNT_0|tmp_cnt\(1) & (!\CNT_0|tmp_cnt[0]~15\)) # (!\CNT_0|tmp_cnt\(1) & ((\CNT_0|tmp_cnt[0]~15\) # (GND)))
-- \CNT_0|tmp_cnt[1]~18\ = CARRY((!\CNT_0|tmp_cnt[0]~15\) # (!\CNT_0|tmp_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt\(1),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[0]~15\,
	combout => \CNT_0|tmp_cnt[1]~17_combout\,
	cout => \CNT_0|tmp_cnt[1]~18\);

-- Location: LCCOMB_X108_Y35_N28
\CNT_0|tmp_cnt[1]_NEW26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[1]_OTERM27\ = (\CNT_0|tmp_cnt[1]~17_combout\ & !\CNT_0|tmp_cnt[13]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt[1]~17_combout\,
	datad => \CNT_0|tmp_cnt[13]~16_combout\,
	combout => \CNT_0|tmp_cnt[1]_OTERM27\);

-- Location: FF_X108_Y35_N29
\CNT_0|tmp_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[1]_OTERM27\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(1));

-- Location: LCCOMB_X108_Y35_N4
\CNT_0|tmp_cnt[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[2]~19_combout\ = (\CNT_0|tmp_cnt\(2) & (\CNT_0|tmp_cnt[1]~18\ $ (GND))) # (!\CNT_0|tmp_cnt\(2) & (!\CNT_0|tmp_cnt[1]~18\ & VCC))
-- \CNT_0|tmp_cnt[2]~20\ = CARRY((\CNT_0|tmp_cnt\(2) & !\CNT_0|tmp_cnt[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt\(2),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[1]~18\,
	combout => \CNT_0|tmp_cnt[2]~19_combout\,
	cout => \CNT_0|tmp_cnt[2]~20\);

-- Location: LCCOMB_X109_Y35_N8
\CNT_0|tmp_cnt[2]_NEW24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[2]_OTERM25\ = (\CNT_0|tmp_cnt[2]~19_combout\ & !\CNT_0|tmp_cnt[13]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt[2]~19_combout\,
	datad => \CNT_0|tmp_cnt[13]~16_combout\,
	combout => \CNT_0|tmp_cnt[2]_OTERM25\);

-- Location: FF_X109_Y35_N9
\CNT_0|tmp_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[2]_OTERM25\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(2));

-- Location: LCCOMB_X108_Y35_N6
\CNT_0|tmp_cnt[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[3]~21_combout\ = (\CNT_0|tmp_cnt\(3) & (!\CNT_0|tmp_cnt[2]~20\)) # (!\CNT_0|tmp_cnt\(3) & ((\CNT_0|tmp_cnt[2]~20\) # (GND)))
-- \CNT_0|tmp_cnt[3]~22\ = CARRY((!\CNT_0|tmp_cnt[2]~20\) # (!\CNT_0|tmp_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt\(3),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[2]~20\,
	combout => \CNT_0|tmp_cnt[3]~21_combout\,
	cout => \CNT_0|tmp_cnt[3]~22\);

-- Location: LCCOMB_X109_Y35_N12
\CNT_0|tmp_cnt[3]_NEW22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[3]_OTERM23\ = (\CNT_0|tmp_cnt[3]~21_combout\ & !\CNT_0|tmp_cnt[13]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt[3]~21_combout\,
	datad => \CNT_0|tmp_cnt[13]~16_combout\,
	combout => \CNT_0|tmp_cnt[3]_OTERM23\);

-- Location: FF_X109_Y35_N13
\CNT_0|tmp_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[3]_OTERM23\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(3));

-- Location: LCCOMB_X108_Y35_N8
\CNT_0|tmp_cnt[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[4]~23_combout\ = (\CNT_0|tmp_cnt\(4) & (\CNT_0|tmp_cnt[3]~22\ $ (GND))) # (!\CNT_0|tmp_cnt\(4) & (!\CNT_0|tmp_cnt[3]~22\ & VCC))
-- \CNT_0|tmp_cnt[4]~24\ = CARRY((\CNT_0|tmp_cnt\(4) & !\CNT_0|tmp_cnt[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt\(4),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[3]~22\,
	combout => \CNT_0|tmp_cnt[4]~23_combout\,
	cout => \CNT_0|tmp_cnt[4]~24\);

-- Location: LCCOMB_X107_Y35_N24
\CNT_0|tmp_cnt[4]_NEW20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[4]_OTERM21\ = (\CNT_0|tmp_cnt[4]~23_combout\ & !\CNT_0|tmp_cnt[13]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt[4]~23_combout\,
	datad => \CNT_0|tmp_cnt[13]~16_combout\,
	combout => \CNT_0|tmp_cnt[4]_OTERM21\);

-- Location: FF_X107_Y35_N25
\CNT_0|tmp_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[4]_OTERM21\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(4));

-- Location: LCCOMB_X108_Y35_N10
\CNT_0|tmp_cnt[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[5]~25_combout\ = (\CNT_0|tmp_cnt\(5) & (!\CNT_0|tmp_cnt[4]~24\)) # (!\CNT_0|tmp_cnt\(5) & ((\CNT_0|tmp_cnt[4]~24\) # (GND)))
-- \CNT_0|tmp_cnt[5]~26\ = CARRY((!\CNT_0|tmp_cnt[4]~24\) # (!\CNT_0|tmp_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt\(5),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[4]~24\,
	combout => \CNT_0|tmp_cnt[5]~25_combout\,
	cout => \CNT_0|tmp_cnt[5]~26\);

-- Location: LCCOMB_X107_Y35_N22
\CNT_0|tmp_cnt[5]_NEW18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[5]_OTERM19\ = (\CNT_0|tmp_cnt[5]~25_combout\ & !\CNT_0|tmp_cnt[13]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt[5]~25_combout\,
	datad => \CNT_0|tmp_cnt[13]~16_combout\,
	combout => \CNT_0|tmp_cnt[5]_OTERM19\);

-- Location: FF_X107_Y35_N23
\CNT_0|tmp_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[5]_OTERM19\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(5));

-- Location: LCCOMB_X108_Y35_N12
\CNT_0|tmp_cnt[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[6]~27_combout\ = (\CNT_0|tmp_cnt\(6) & (\CNT_0|tmp_cnt[5]~26\ $ (GND))) # (!\CNT_0|tmp_cnt\(6) & (!\CNT_0|tmp_cnt[5]~26\ & VCC))
-- \CNT_0|tmp_cnt[6]~28\ = CARRY((\CNT_0|tmp_cnt\(6) & !\CNT_0|tmp_cnt[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt\(6),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[5]~26\,
	combout => \CNT_0|tmp_cnt[6]~27_combout\,
	cout => \CNT_0|tmp_cnt[6]~28\);

-- Location: LCCOMB_X107_Y35_N18
\CNT_0|tmp_cnt[6]_NEW16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[6]_OTERM17\ = (\CNT_0|tmp_cnt[6]~27_combout\ & !\CNT_0|tmp_cnt[13]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt[6]~27_combout\,
	datad => \CNT_0|tmp_cnt[13]~16_combout\,
	combout => \CNT_0|tmp_cnt[6]_OTERM17\);

-- Location: FF_X107_Y35_N19
\CNT_0|tmp_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[6]_OTERM17\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(6));

-- Location: LCCOMB_X108_Y35_N14
\CNT_0|tmp_cnt[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[7]~29_combout\ = (\CNT_0|tmp_cnt\(7) & (!\CNT_0|tmp_cnt[6]~28\)) # (!\CNT_0|tmp_cnt\(7) & ((\CNT_0|tmp_cnt[6]~28\) # (GND)))
-- \CNT_0|tmp_cnt[7]~30\ = CARRY((!\CNT_0|tmp_cnt[6]~28\) # (!\CNT_0|tmp_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt\(7),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[6]~28\,
	combout => \CNT_0|tmp_cnt[7]~29_combout\,
	cout => \CNT_0|tmp_cnt[7]~30\);

-- Location: LCCOMB_X107_Y35_N30
\CNT_0|tmp_cnt[7]_NEW14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[7]_OTERM15\ = (\CNT_0|tmp_cnt[7]~29_combout\ & !\CNT_0|tmp_cnt[13]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt[7]~29_combout\,
	datad => \CNT_0|tmp_cnt[13]~16_combout\,
	combout => \CNT_0|tmp_cnt[7]_OTERM15\);

-- Location: FF_X107_Y35_N31
\CNT_0|tmp_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[7]_OTERM15\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(7));

-- Location: LCCOMB_X108_Y35_N16
\CNT_0|tmp_cnt[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[8]~31_combout\ = (\CNT_0|tmp_cnt\(8) & (\CNT_0|tmp_cnt[7]~30\ $ (GND))) # (!\CNT_0|tmp_cnt\(8) & (!\CNT_0|tmp_cnt[7]~30\ & VCC))
-- \CNT_0|tmp_cnt[8]~32\ = CARRY((\CNT_0|tmp_cnt\(8) & !\CNT_0|tmp_cnt[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt\(8),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[7]~30\,
	combout => \CNT_0|tmp_cnt[8]~31_combout\,
	cout => \CNT_0|tmp_cnt[8]~32\);

-- Location: LCCOMB_X109_Y35_N4
\CNT_0|tmp_cnt[8]_NEW12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[8]_OTERM13\ = (\CNT_0|tmp_cnt[8]~31_combout\ & !\CNT_0|tmp_cnt[13]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt[8]~31_combout\,
	datad => \CNT_0|tmp_cnt[13]~16_combout\,
	combout => \CNT_0|tmp_cnt[8]_OTERM13\);

-- Location: FF_X109_Y35_N5
\CNT_0|tmp_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[8]_OTERM13\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(8));

-- Location: LCCOMB_X108_Y35_N18
\CNT_0|tmp_cnt[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[9]~33_combout\ = (\CNT_0|tmp_cnt\(9) & (!\CNT_0|tmp_cnt[8]~32\)) # (!\CNT_0|tmp_cnt\(9) & ((\CNT_0|tmp_cnt[8]~32\) # (GND)))
-- \CNT_0|tmp_cnt[9]~34\ = CARRY((!\CNT_0|tmp_cnt[8]~32\) # (!\CNT_0|tmp_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt\(9),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[8]~32\,
	combout => \CNT_0|tmp_cnt[9]~33_combout\,
	cout => \CNT_0|tmp_cnt[9]~34\);

-- Location: LCCOMB_X109_Y35_N10
\CNT_0|tmp_cnt[9]_NEW10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[9]_OTERM11\ = (\CNT_0|tmp_cnt[9]~33_combout\ & !\CNT_0|tmp_cnt[13]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt[9]~33_combout\,
	datad => \CNT_0|tmp_cnt[13]~16_combout\,
	combout => \CNT_0|tmp_cnt[9]_OTERM11\);

-- Location: FF_X109_Y35_N11
\CNT_0|tmp_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[9]_OTERM11\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(9));

-- Location: LCCOMB_X108_Y35_N20
\CNT_0|tmp_cnt[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[10]~35_combout\ = (\CNT_0|tmp_cnt\(10) & (\CNT_0|tmp_cnt[9]~34\ $ (GND))) # (!\CNT_0|tmp_cnt\(10) & (!\CNT_0|tmp_cnt[9]~34\ & VCC))
-- \CNT_0|tmp_cnt[10]~36\ = CARRY((\CNT_0|tmp_cnt\(10) & !\CNT_0|tmp_cnt[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt\(10),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[9]~34\,
	combout => \CNT_0|tmp_cnt[10]~35_combout\,
	cout => \CNT_0|tmp_cnt[10]~36\);

-- Location: LCCOMB_X109_Y35_N30
\CNT_0|tmp_cnt[10]_NEW8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[10]_OTERM9\ = (!\CNT_0|tmp_cnt[13]~16_combout\ & \CNT_0|tmp_cnt[10]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt[13]~16_combout\,
	datad => \CNT_0|tmp_cnt[10]~35_combout\,
	combout => \CNT_0|tmp_cnt[10]_OTERM9\);

-- Location: FF_X109_Y35_N31
\CNT_0|tmp_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[10]_OTERM9\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(10));

-- Location: LCCOMB_X108_Y35_N22
\CNT_0|tmp_cnt[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[11]~37_combout\ = (\CNT_0|tmp_cnt\(11) & (!\CNT_0|tmp_cnt[10]~36\)) # (!\CNT_0|tmp_cnt\(11) & ((\CNT_0|tmp_cnt[10]~36\) # (GND)))
-- \CNT_0|tmp_cnt[11]~38\ = CARRY((!\CNT_0|tmp_cnt[10]~36\) # (!\CNT_0|tmp_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt\(11),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[10]~36\,
	combout => \CNT_0|tmp_cnt[11]~37_combout\,
	cout => \CNT_0|tmp_cnt[11]~38\);

-- Location: LCCOMB_X109_Y35_N22
\CNT_0|tmp_cnt[11]_NEW6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[11]_OTERM7\ = (!\CNT_0|tmp_cnt[13]~16_combout\ & \CNT_0|tmp_cnt[11]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt[13]~16_combout\,
	datad => \CNT_0|tmp_cnt[11]~37_combout\,
	combout => \CNT_0|tmp_cnt[11]_OTERM7\);

-- Location: FF_X109_Y35_N23
\CNT_0|tmp_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[11]_OTERM7\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(11));

-- Location: LCCOMB_X109_Y35_N16
\CNT_0|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|Equal2~2_combout\ = (\CNT_0|tmp_cnt\(11)) # (((!\CNT_0|tmp_cnt\(9)) # (!\CNT_0|tmp_cnt\(10))) # (!\CNT_0|tmp_cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt\(11),
	datab => \CNT_0|tmp_cnt\(8),
	datac => \CNT_0|tmp_cnt\(10),
	datad => \CNT_0|tmp_cnt\(9),
	combout => \CNT_0|Equal2~2_combout\);

-- Location: LCCOMB_X108_Y35_N24
\CNT_0|tmp_cnt[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[12]~39_combout\ = (\CNT_0|tmp_cnt\(12) & (\CNT_0|tmp_cnt[11]~38\ $ (GND))) # (!\CNT_0|tmp_cnt\(12) & (!\CNT_0|tmp_cnt[11]~38\ & VCC))
-- \CNT_0|tmp_cnt[12]~40\ = CARRY((\CNT_0|tmp_cnt\(12) & !\CNT_0|tmp_cnt[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt\(12),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[11]~38\,
	combout => \CNT_0|tmp_cnt[12]~39_combout\,
	cout => \CNT_0|tmp_cnt[12]~40\);

-- Location: LCCOMB_X109_Y35_N26
\CNT_0|tmp_cnt[12]_NEW4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[12]_OTERM5\ = (\CNT_0|tmp_cnt[12]~39_combout\ & !\CNT_0|tmp_cnt[13]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt[12]~39_combout\,
	datad => \CNT_0|tmp_cnt[13]~16_combout\,
	combout => \CNT_0|tmp_cnt[12]_OTERM5\);

-- Location: FF_X109_Y35_N27
\CNT_0|tmp_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[12]_OTERM5\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(12));

-- Location: LCCOMB_X108_Y35_N26
\CNT_0|tmp_cnt[13]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[13]~41_combout\ = \CNT_0|tmp_cnt[12]~40\ $ (\CNT_0|tmp_cnt\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CNT_0|tmp_cnt\(13),
	cin => \CNT_0|tmp_cnt[12]~40\,
	combout => \CNT_0|tmp_cnt[13]~41_combout\);

-- Location: LCCOMB_X109_Y35_N24
\CNT_0|tmp_cnt[13]_NEW2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[13]_OTERM3\ = (\CNT_0|tmp_cnt[13]~41_combout\ & !\CNT_0|tmp_cnt[13]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt[13]~41_combout\,
	datad => \CNT_0|tmp_cnt[13]~16_combout\,
	combout => \CNT_0|tmp_cnt[13]_OTERM3\);

-- Location: FF_X109_Y35_N25
\CNT_0|tmp_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt[13]_OTERM3\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt\(13));

-- Location: LCCOMB_X109_Y35_N6
\CNT_0|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|Equal2~3_combout\ = (\CNT_0|tmp_cnt\(12)) # (!\CNT_0|tmp_cnt\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt\(12),
	datad => \CNT_0|tmp_cnt\(13),
	combout => \CNT_0|Equal2~3_combout\);

-- Location: LCCOMB_X107_Y35_N16
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

-- Location: LCCOMB_X109_Y35_N14
\CNT_0|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|Equal2~0_combout\ = (((!\CNT_0|tmp_cnt\(0)) # (!\CNT_0|tmp_cnt\(2))) # (!\CNT_0|tmp_cnt\(1))) # (!\CNT_0|tmp_cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt\(3),
	datab => \CNT_0|tmp_cnt\(1),
	datac => \CNT_0|tmp_cnt\(2),
	datad => \CNT_0|tmp_cnt\(0),
	combout => \CNT_0|Equal2~0_combout\);

-- Location: LCCOMB_X110_Y35_N18
\CNT_0|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|Equal2~4_combout\ = (\CNT_0|Equal2~2_combout\) # ((\CNT_0|Equal2~3_combout\) # ((\CNT_0|Equal2~1_combout\) # (\CNT_0|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|Equal2~2_combout\,
	datab => \CNT_0|Equal2~3_combout\,
	datac => \CNT_0|Equal2~1_combout\,
	datad => \CNT_0|Equal2~0_combout\,
	combout => \CNT_0|Equal2~4_combout\);

-- Location: LCCOMB_X110_Y35_N24
\CNT_0|tmp_cnt_p01s[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p01s[3]~0_combout\ = (!\STATE_M_0|tmp_state\(1) & (\STATE_M_0|tmp_state\(0) & !\CNT_0|Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STATE_M_0|tmp_state\(1),
	datac => \STATE_M_0|tmp_state\(0),
	datad => \CNT_0|Equal2~4_combout\,
	combout => \CNT_0|tmp_cnt_p01s[3]~0_combout\);

-- Location: LCCOMB_X110_Y35_N30
\CNT_0|tmp_cnt_p01s[0]_NEW32\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p01s[0]_OTERM33\ = \CNT_0|tmp_cnt_p01s\(0) $ (\CNT_0|tmp_cnt_p01s[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt_p01s\(0),
	datad => \CNT_0|tmp_cnt_p01s[3]~0_combout\,
	combout => \CNT_0|tmp_cnt_p01s[0]_OTERM33\);

-- Location: FF_X110_Y35_N31
\CNT_0|tmp_cnt_p01s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_p01s[0]_OTERM33\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_p01s\(0));

-- Location: LCCOMB_X111_Y35_N12
\CNT_0|tmp_cnt_p01s[2]_OTERM55~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p01s[2]_OTERM55~feeder_combout\ = \CNT_0|tmp_cnt_p01s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CNT_0|tmp_cnt_p01s\(0),
	combout => \CNT_0|tmp_cnt_p01s[2]_OTERM55~feeder_combout\);

-- Location: FF_X111_Y35_N13
\CNT_0|tmp_cnt_p01s[2]_NEW_REG54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_p01s[2]_OTERM55~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_p01s[2]_OTERM55\);

-- Location: LCCOMB_X111_Y35_N16
\CNT_0|tmp_cnt_p01s[2]_OTERM57~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p01s[2]_OTERM57~feeder_combout\ = \CNT_0|tmp_cnt_p01s\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt_p01s\(1),
	combout => \CNT_0|tmp_cnt_p01s[2]_OTERM57~feeder_combout\);

-- Location: FF_X111_Y35_N17
\CNT_0|tmp_cnt_p01s[2]_NEW_REG56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_p01s[2]_OTERM57~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_p01s[2]_OTERM57\);

-- Location: FF_X111_Y35_N5
\CNT_0|tmp_cnt_p01s[2]_NEW_REG58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_p01s[2]~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_p01s[2]_OTERM59\);

-- Location: FF_X110_Y35_N25
\CNT_0|tmp_cnt_p01s[2]_NEW_REG60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_p01s[3]~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_p01s[2]_OTERM61\);

-- Location: LCCOMB_X111_Y35_N4
\CNT_0|tmp_cnt_p01s[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p01s[2]~2_combout\ = \CNT_0|tmp_cnt_p01s[2]_OTERM59\ $ (((\CNT_0|tmp_cnt_p01s[2]_OTERM55\ & (\CNT_0|tmp_cnt_p01s[2]_OTERM57\ & \CNT_0|tmp_cnt_p01s[2]_OTERM61\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s[2]_OTERM55\,
	datab => \CNT_0|tmp_cnt_p01s[2]_OTERM57\,
	datac => \CNT_0|tmp_cnt_p01s[2]_OTERM59\,
	datad => \CNT_0|tmp_cnt_p01s[2]_OTERM61\,
	combout => \CNT_0|tmp_cnt_p01s[2]~2_combout\);

-- Location: LCCOMB_X111_Y35_N24
\CNT_0|tmp_cnt_p01s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p01s~3_combout\ = (\CNT_0|tmp_cnt_p01s\(3) & ((\CNT_0|tmp_cnt_p01s[2]~2_combout\ $ (\CNT_0|tmp_cnt_p01s\(1))) # (!\CNT_0|tmp_cnt_p01s\(0)))) # (!\CNT_0|tmp_cnt_p01s\(3) & (\CNT_0|tmp_cnt_p01s[2]~2_combout\ & (\CNT_0|tmp_cnt_p01s\(1) & 
-- \CNT_0|tmp_cnt_p01s\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(3),
	datab => \CNT_0|tmp_cnt_p01s[2]~2_combout\,
	datac => \CNT_0|tmp_cnt_p01s\(1),
	datad => \CNT_0|tmp_cnt_p01s\(0),
	combout => \CNT_0|tmp_cnt_p01s~3_combout\);

-- Location: LCCOMB_X110_Y35_N8
\CNT_0|tmp_cnt_p01s[3]_NEW28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p01s[3]_OTERM29\ = (\CNT_0|tmp_cnt_p01s[3]~0_combout\ & (\CNT_0|tmp_cnt_p01s~3_combout\)) # (!\CNT_0|tmp_cnt_p01s[3]~0_combout\ & ((\CNT_0|tmp_cnt_p01s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt_p01s~3_combout\,
	datac => \CNT_0|tmp_cnt_p01s\(3),
	datad => \CNT_0|tmp_cnt_p01s[3]~0_combout\,
	combout => \CNT_0|tmp_cnt_p01s[3]_OTERM29\);

-- Location: FF_X110_Y35_N9
\CNT_0|tmp_cnt_p01s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_p01s[3]_OTERM29\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_p01s\(3));

-- Location: LCCOMB_X111_Y35_N18
\CNT_0|tmp_cnt_p01s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p01s~1_combout\ = (\CNT_0|tmp_cnt_p01s\(1) & (((!\CNT_0|tmp_cnt_p01s\(0))))) # (!\CNT_0|tmp_cnt_p01s\(1) & (\CNT_0|tmp_cnt_p01s\(0) & ((\CNT_0|tmp_cnt_p01s[2]~2_combout\) # (!\CNT_0|tmp_cnt_p01s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(3),
	datab => \CNT_0|tmp_cnt_p01s[2]~2_combout\,
	datac => \CNT_0|tmp_cnt_p01s\(1),
	datad => \CNT_0|tmp_cnt_p01s\(0),
	combout => \CNT_0|tmp_cnt_p01s~1_combout\);

-- Location: LCCOMB_X110_Y35_N0
\CNT_0|tmp_cnt_p01s[1]_NEW30\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p01s[1]_OTERM31\ = (\CNT_0|tmp_cnt_p01s[3]~0_combout\ & (\CNT_0|tmp_cnt_p01s~1_combout\)) # (!\CNT_0|tmp_cnt_p01s[3]~0_combout\ & ((\CNT_0|tmp_cnt_p01s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt_p01s~1_combout\,
	datac => \CNT_0|tmp_cnt_p01s\(1),
	datad => \CNT_0|tmp_cnt_p01s[3]~0_combout\,
	combout => \CNT_0|tmp_cnt_p01s[1]_OTERM31\);

-- Location: FF_X110_Y35_N1
\CNT_0|tmp_cnt_p01s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_p01s[1]_OTERM31\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_p01s\(1));

-- Location: LCCOMB_X110_Y35_N4
\CNT_0|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|Equal3~0_combout\ = (\CNT_0|tmp_cnt_p01s\(0) & (!\CNT_0|tmp_cnt_p01s\(1) & (\CNT_0|tmp_cnt_p01s\(3) & !\CNT_0|tmp_cnt_p01s[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(0),
	datab => \CNT_0|tmp_cnt_p01s\(1),
	datac => \CNT_0|tmp_cnt_p01s\(3),
	datad => \CNT_0|tmp_cnt_p01s[2]~2_combout\,
	combout => \CNT_0|Equal3~0_combout\);

-- Location: LCCOMB_X110_Y35_N20
\CNT_0|tmp_cnt_p1s[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p1s[3]~0_combout\ = (\STATE_M_0|tmp_state\(0) & (!\STATE_M_0|tmp_state\(1) & (\CNT_0|Equal3~0_combout\ & !\CNT_0|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE_M_0|tmp_state\(0),
	datab => \STATE_M_0|tmp_state\(1),
	datac => \CNT_0|Equal3~0_combout\,
	datad => \CNT_0|Equal2~4_combout\,
	combout => \CNT_0|tmp_cnt_p1s[3]~0_combout\);

-- Location: LCCOMB_X110_Y35_N14
\CNT_0|tmp_cnt_p1s[0]_NEW38\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p1s[0]_OTERM39\ = \CNT_0|tmp_cnt_p1s\(0) $ (\CNT_0|tmp_cnt_p1s[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt_p1s\(0),
	datad => \CNT_0|tmp_cnt_p1s[3]~0_combout\,
	combout => \CNT_0|tmp_cnt_p1s[0]_OTERM39\);

-- Location: FF_X110_Y35_N15
\CNT_0|tmp_cnt_p1s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_p1s[0]_OTERM39\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_p1s\(0));

-- Location: FF_X110_Y35_N21
\CNT_0|tmp_cnt_p1s[2]_NEW_REG68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_p1s[3]~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_p1s[2]_OTERM69\);

-- Location: FF_X110_Y35_N27
\CNT_0|tmp_cnt_p1s[2]_NEW_REG62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \CNT_0|tmp_cnt_p1s\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_p1s[2]_OTERM63\);

-- Location: FF_X110_Y35_N3
\CNT_0|tmp_cnt_p1s[2]_NEW_REG66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_p1s[2]~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_p1s[2]_OTERM67\);

-- Location: FF_X110_Y35_N23
\CNT_0|tmp_cnt_p1s[2]_NEW_REG64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \CNT_0|tmp_cnt_p1s\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_p1s[2]_OTERM65\);

-- Location: LCCOMB_X110_Y35_N2
\CNT_0|tmp_cnt_p1s[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p1s[2]~2_combout\ = \CNT_0|tmp_cnt_p1s[2]_OTERM67\ $ (((\CNT_0|tmp_cnt_p1s[2]_OTERM69\ & (\CNT_0|tmp_cnt_p1s[2]_OTERM63\ & \CNT_0|tmp_cnt_p1s[2]_OTERM65\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s[2]_OTERM69\,
	datab => \CNT_0|tmp_cnt_p1s[2]_OTERM63\,
	datac => \CNT_0|tmp_cnt_p1s[2]_OTERM67\,
	datad => \CNT_0|tmp_cnt_p1s[2]_OTERM65\,
	combout => \CNT_0|tmp_cnt_p1s[2]~2_combout\);

-- Location: LCCOMB_X109_Y35_N2
\CNT_0|tmp_cnt_p1s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p1s~3_combout\ = (\CNT_0|tmp_cnt_p1s\(1) & (\CNT_0|tmp_cnt_p1s\(3) $ (((\CNT_0|tmp_cnt_p1s\(0) & \CNT_0|tmp_cnt_p1s[2]~2_combout\))))) # (!\CNT_0|tmp_cnt_p1s\(1) & (\CNT_0|tmp_cnt_p1s\(3) & ((\CNT_0|tmp_cnt_p1s[2]~2_combout\) # 
-- (!\CNT_0|tmp_cnt_p1s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(1),
	datab => \CNT_0|tmp_cnt_p1s\(0),
	datac => \CNT_0|tmp_cnt_p1s\(3),
	datad => \CNT_0|tmp_cnt_p1s[2]~2_combout\,
	combout => \CNT_0|tmp_cnt_p1s~3_combout\);

-- Location: LCCOMB_X110_Y35_N16
\CNT_0|tmp_cnt_p1s[3]_NEW34\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p1s[3]_OTERM35\ = (\CNT_0|tmp_cnt_p1s[3]~0_combout\ & ((\CNT_0|tmp_cnt_p1s~3_combout\))) # (!\CNT_0|tmp_cnt_p1s[3]~0_combout\ & (\CNT_0|tmp_cnt_p1s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt_p1s[3]~0_combout\,
	datac => \CNT_0|tmp_cnt_p1s\(3),
	datad => \CNT_0|tmp_cnt_p1s~3_combout\,
	combout => \CNT_0|tmp_cnt_p1s[3]_OTERM35\);

-- Location: FF_X110_Y35_N17
\CNT_0|tmp_cnt_p1s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_p1s[3]_OTERM35\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_p1s\(3));

-- Location: LCCOMB_X110_Y35_N22
\CNT_0|tmp_cnt_p1s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p1s~1_combout\ = (\CNT_0|tmp_cnt_p1s\(0) & (!\CNT_0|tmp_cnt_p1s\(1) & ((\CNT_0|tmp_cnt_p1s[2]~2_combout\) # (!\CNT_0|tmp_cnt_p1s\(3))))) # (!\CNT_0|tmp_cnt_p1s\(0) & (((\CNT_0|tmp_cnt_p1s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(0),
	datab => \CNT_0|tmp_cnt_p1s\(3),
	datac => \CNT_0|tmp_cnt_p1s\(1),
	datad => \CNT_0|tmp_cnt_p1s[2]~2_combout\,
	combout => \CNT_0|tmp_cnt_p1s~1_combout\);

-- Location: LCCOMB_X110_Y35_N6
\CNT_0|tmp_cnt_p1s[1]_NEW36\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p1s[1]_OTERM37\ = (\CNT_0|tmp_cnt_p1s[3]~0_combout\ & (\CNT_0|tmp_cnt_p1s~1_combout\)) # (!\CNT_0|tmp_cnt_p1s[3]~0_combout\ & ((\CNT_0|tmp_cnt_p1s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s~1_combout\,
	datac => \CNT_0|tmp_cnt_p1s\(1),
	datad => \CNT_0|tmp_cnt_p1s[3]~0_combout\,
	combout => \CNT_0|tmp_cnt_p1s[1]_OTERM37\);

-- Location: FF_X110_Y35_N7
\CNT_0|tmp_cnt_p1s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_p1s[1]_OTERM37\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_p1s\(1));

-- Location: LCCOMB_X110_Y35_N26
\CNT_0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|Equal0~0_combout\ = (!\CNT_0|tmp_cnt_p1s\(1) & (\CNT_0|tmp_cnt_p1s\(3) & (\CNT_0|tmp_cnt_p1s\(0) & !\CNT_0|tmp_cnt_p1s[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(1),
	datab => \CNT_0|tmp_cnt_p1s\(3),
	datac => \CNT_0|tmp_cnt_p1s\(0),
	datad => \CNT_0|tmp_cnt_p1s[2]~2_combout\,
	combout => \CNT_0|Equal0~0_combout\);

-- Location: LCCOMB_X110_Y35_N12
\CNT_0|tmp_cnt_1s[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_1s[3]~0_combout\ = (\STATE_M_0|Mux1~0_combout\ & (\CNT_0|Equal3~0_combout\ & (\CNT_0|Equal0~0_combout\ & !\CNT_0|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE_M_0|Mux1~0_combout\,
	datab => \CNT_0|Equal3~0_combout\,
	datac => \CNT_0|Equal0~0_combout\,
	datad => \CNT_0|Equal2~4_combout\,
	combout => \CNT_0|tmp_cnt_1s[3]~0_combout\);

-- Location: LCCOMB_X110_Y35_N28
\CNT_0|tmp_cnt_1s[0]_NEW44\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_1s[0]_OTERM45\ = \CNT_0|tmp_cnt_1s\(0) $ (\CNT_0|tmp_cnt_1s[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt_1s\(0),
	datad => \CNT_0|tmp_cnt_1s[3]~0_combout\,
	combout => \CNT_0|tmp_cnt_1s[0]_OTERM45\);

-- Location: FF_X110_Y35_N29
\CNT_0|tmp_cnt_1s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_1s[0]_OTERM45\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_1s\(0));

-- Location: LCCOMB_X114_Y35_N22
\CNT_0|tmp_cnt_1s[2]_OTERM49~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_1s[2]_OTERM49~feeder_combout\ = \CNT_0|tmp_cnt_1s\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CNT_0|tmp_cnt_1s\(1),
	combout => \CNT_0|tmp_cnt_1s[2]_OTERM49~feeder_combout\);

-- Location: FF_X114_Y35_N23
\CNT_0|tmp_cnt_1s[2]_NEW_REG48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_1s[2]_OTERM49~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_1s[2]_OTERM49\);

-- Location: LCCOMB_X114_Y35_N24
\CNT_0|tmp_cnt_1s[2]_OTERM47~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_1s[2]_OTERM47~feeder_combout\ = \CNT_0|tmp_cnt_1s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt_1s\(0),
	combout => \CNT_0|tmp_cnt_1s[2]_OTERM47~feeder_combout\);

-- Location: FF_X114_Y35_N25
\CNT_0|tmp_cnt_1s[2]_NEW_REG46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_1s[2]_OTERM47~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_1s[2]_OTERM47\);

-- Location: FF_X114_Y35_N19
\CNT_0|tmp_cnt_1s[2]_NEW_REG50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_1s[2]~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_1s[2]_OTERM51\);

-- Location: FF_X110_Y35_N13
\CNT_0|tmp_cnt_1s[2]_NEW_REG52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_1s[3]~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_1s[2]_OTERM53\);

-- Location: LCCOMB_X114_Y35_N18
\CNT_0|tmp_cnt_1s[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_1s[2]~2_combout\ = \CNT_0|tmp_cnt_1s[2]_OTERM51\ $ (((\CNT_0|tmp_cnt_1s[2]_OTERM49\ & (\CNT_0|tmp_cnt_1s[2]_OTERM47\ & \CNT_0|tmp_cnt_1s[2]_OTERM53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s[2]_OTERM49\,
	datab => \CNT_0|tmp_cnt_1s[2]_OTERM47\,
	datac => \CNT_0|tmp_cnt_1s[2]_OTERM51\,
	datad => \CNT_0|tmp_cnt_1s[2]_OTERM53\,
	combout => \CNT_0|tmp_cnt_1s[2]~2_combout\);

-- Location: LCCOMB_X114_Y35_N16
\CNT_0|tmp_cnt_1s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_1s~3_combout\ = (\CNT_0|tmp_cnt_1s\(1) & (\CNT_0|tmp_cnt_1s\(3) $ (((\CNT_0|tmp_cnt_1s\(0) & \CNT_0|tmp_cnt_1s[2]~2_combout\))))) # (!\CNT_0|tmp_cnt_1s\(1) & (\CNT_0|tmp_cnt_1s\(3) & ((\CNT_0|tmp_cnt_1s[2]~2_combout\) # 
-- (!\CNT_0|tmp_cnt_1s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(1),
	datab => \CNT_0|tmp_cnt_1s\(3),
	datac => \CNT_0|tmp_cnt_1s\(0),
	datad => \CNT_0|tmp_cnt_1s[2]~2_combout\,
	combout => \CNT_0|tmp_cnt_1s~3_combout\);

-- Location: LCCOMB_X114_Y35_N20
\CNT_0|tmp_cnt_1s[3]_NEW40\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_1s[3]_OTERM41\ = (\CNT_0|tmp_cnt_1s[3]~0_combout\ & (\CNT_0|tmp_cnt_1s~3_combout\)) # (!\CNT_0|tmp_cnt_1s[3]~0_combout\ & ((\CNT_0|tmp_cnt_1s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt_1s~3_combout\,
	datac => \CNT_0|tmp_cnt_1s\(3),
	datad => \CNT_0|tmp_cnt_1s[3]~0_combout\,
	combout => \CNT_0|tmp_cnt_1s[3]_OTERM41\);

-- Location: FF_X114_Y35_N21
\CNT_0|tmp_cnt_1s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_1s[3]_OTERM41\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_1s\(3));

-- Location: LCCOMB_X114_Y35_N2
\CNT_0|tmp_cnt_1s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_1s~1_combout\ = (\CNT_0|tmp_cnt_1s\(1) & (((!\CNT_0|tmp_cnt_1s\(0))))) # (!\CNT_0|tmp_cnt_1s\(1) & (\CNT_0|tmp_cnt_1s\(0) & ((\CNT_0|tmp_cnt_1s[2]~2_combout\) # (!\CNT_0|tmp_cnt_1s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(1),
	datab => \CNT_0|tmp_cnt_1s\(3),
	datac => \CNT_0|tmp_cnt_1s\(0),
	datad => \CNT_0|tmp_cnt_1s[2]~2_combout\,
	combout => \CNT_0|tmp_cnt_1s~1_combout\);

-- Location: LCCOMB_X114_Y35_N12
\CNT_0|tmp_cnt_1s[1]_NEW42\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_1s[1]_OTERM43\ = (\CNT_0|tmp_cnt_1s[3]~0_combout\ & (\CNT_0|tmp_cnt_1s~1_combout\)) # (!\CNT_0|tmp_cnt_1s[3]~0_combout\ & ((\CNT_0|tmp_cnt_1s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt_1s~1_combout\,
	datac => \CNT_0|tmp_cnt_1s\(1),
	datad => \CNT_0|tmp_cnt_1s[3]~0_combout\,
	combout => \CNT_0|tmp_cnt_1s[1]_OTERM43\);

-- Location: FF_X114_Y35_N13
\CNT_0|tmp_cnt_1s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CNT_0|tmp_cnt_1s[1]_OTERM43\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT_0|tmp_cnt_1s\(1));

-- Location: LCCOMB_X114_Y35_N4
\SEG_DRV_1S|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_1S|Mux6~0_combout\ = (\CNT_0|tmp_cnt_1s\(1) & (\CNT_0|tmp_cnt_1s\(3))) # (!\CNT_0|tmp_cnt_1s\(1) & (\CNT_0|tmp_cnt_1s[2]~2_combout\ $ (((!\CNT_0|tmp_cnt_1s\(3) & \CNT_0|tmp_cnt_1s\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(1),
	datab => \CNT_0|tmp_cnt_1s\(3),
	datac => \CNT_0|tmp_cnt_1s\(0),
	datad => \CNT_0|tmp_cnt_1s[2]~2_combout\,
	combout => \SEG_DRV_1S|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y35_N28
\SEG_DRV_1S|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_1S|Mux5~0_combout\ = (\CNT_0|tmp_cnt_1s\(3) & ((\CNT_0|tmp_cnt_1s\(1)) # ((\CNT_0|tmp_cnt_1s[2]~2_combout\)))) # (!\CNT_0|tmp_cnt_1s\(3) & (\CNT_0|tmp_cnt_1s[2]~2_combout\ & (\CNT_0|tmp_cnt_1s\(1) $ (\CNT_0|tmp_cnt_1s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(1),
	datab => \CNT_0|tmp_cnt_1s\(3),
	datac => \CNT_0|tmp_cnt_1s\(0),
	datad => \CNT_0|tmp_cnt_1s[2]~2_combout\,
	combout => \SEG_DRV_1S|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y35_N26
\SEG_DRV_1S|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_1S|Mux4~0_combout\ = (\CNT_0|tmp_cnt_1s[2]~2_combout\ & (((\CNT_0|tmp_cnt_1s\(3))))) # (!\CNT_0|tmp_cnt_1s[2]~2_combout\ & (\CNT_0|tmp_cnt_1s\(1) & ((\CNT_0|tmp_cnt_1s\(3)) # (!\CNT_0|tmp_cnt_1s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(1),
	datab => \CNT_0|tmp_cnt_1s\(3),
	datac => \CNT_0|tmp_cnt_1s\(0),
	datad => \CNT_0|tmp_cnt_1s[2]~2_combout\,
	combout => \SEG_DRV_1S|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y35_N14
\SEG_DRV_1S|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_1S|Mux3~0_combout\ = (\CNT_0|tmp_cnt_1s\(1) & ((\CNT_0|tmp_cnt_1s\(3)) # ((\CNT_0|tmp_cnt_1s\(0) & \CNT_0|tmp_cnt_1s[2]~2_combout\)))) # (!\CNT_0|tmp_cnt_1s\(1) & ((\CNT_0|tmp_cnt_1s[2]~2_combout\) # ((!\CNT_0|tmp_cnt_1s\(3) & 
-- \CNT_0|tmp_cnt_1s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(1),
	datab => \CNT_0|tmp_cnt_1s\(3),
	datac => \CNT_0|tmp_cnt_1s\(0),
	datad => \CNT_0|tmp_cnt_1s[2]~2_combout\,
	combout => \SEG_DRV_1S|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y35_N30
\SEG_DRV_1S|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_1S|Mux2~0_combout\ = (\CNT_0|tmp_cnt_1s\(1) & ((\CNT_0|tmp_cnt_1s\(3)) # ((\CNT_0|tmp_cnt_1s\(0))))) # (!\CNT_0|tmp_cnt_1s\(1) & ((\CNT_0|tmp_cnt_1s\(0) & ((\CNT_0|tmp_cnt_1s\(3)) # (!\CNT_0|tmp_cnt_1s[2]~2_combout\))) # (!\CNT_0|tmp_cnt_1s\(0) & 
-- ((\CNT_0|tmp_cnt_1s[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(1),
	datab => \CNT_0|tmp_cnt_1s\(3),
	datac => \CNT_0|tmp_cnt_1s\(0),
	datad => \CNT_0|tmp_cnt_1s[2]~2_combout\,
	combout => \SEG_DRV_1S|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y35_N10
\SEG_DRV_1S|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_1S|Mux1~0_combout\ = (\CNT_0|tmp_cnt_1s\(0) & ((\CNT_0|tmp_cnt_1s\(1)) # (\CNT_0|tmp_cnt_1s\(3) $ (!\CNT_0|tmp_cnt_1s[2]~2_combout\)))) # (!\CNT_0|tmp_cnt_1s\(0) & ((\CNT_0|tmp_cnt_1s[2]~2_combout\ & ((\CNT_0|tmp_cnt_1s\(3)))) # 
-- (!\CNT_0|tmp_cnt_1s[2]~2_combout\ & (\CNT_0|tmp_cnt_1s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(1),
	datab => \CNT_0|tmp_cnt_1s\(3),
	datac => \CNT_0|tmp_cnt_1s\(0),
	datad => \CNT_0|tmp_cnt_1s[2]~2_combout\,
	combout => \SEG_DRV_1S|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y35_N8
\SEG_DRV_1S|Mux0~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_1S|Mux0~0_wirecell_combout\ = (\CNT_0|tmp_cnt_1s\(1) & ((\CNT_0|tmp_cnt_1s\(3)) # ((\CNT_0|tmp_cnt_1s\(0) & \CNT_0|tmp_cnt_1s[2]~2_combout\)))) # (!\CNT_0|tmp_cnt_1s\(1) & (\CNT_0|tmp_cnt_1s\(3) $ (((!\CNT_0|tmp_cnt_1s[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(1),
	datab => \CNT_0|tmp_cnt_1s\(3),
	datac => \CNT_0|tmp_cnt_1s\(0),
	datad => \CNT_0|tmp_cnt_1s[2]~2_combout\,
	combout => \SEG_DRV_1S|Mux0~0_wirecell_combout\);

-- Location: LCCOMB_X111_Y35_N20
\SEG_DRV_P1S|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P1S|Mux6~0_combout\ = (\CNT_0|tmp_cnt_p1s\(1) & (((\CNT_0|tmp_cnt_p1s\(3))))) # (!\CNT_0|tmp_cnt_p1s\(1) & (\CNT_0|tmp_cnt_p1s[2]~2_combout\ $ (((!\CNT_0|tmp_cnt_p1s\(3) & \CNT_0|tmp_cnt_p1s\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s[2]~2_combout\,
	datab => \CNT_0|tmp_cnt_p1s\(3),
	datac => \CNT_0|tmp_cnt_p1s\(1),
	datad => \CNT_0|tmp_cnt_p1s\(0),
	combout => \SEG_DRV_P1S|Mux6~0_combout\);

-- Location: LCCOMB_X111_Y35_N26
\SEG_DRV_P1S|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P1S|Mux5~0_combout\ = (\CNT_0|tmp_cnt_p1s[2]~2_combout\ & ((\CNT_0|tmp_cnt_p1s\(3)) # (\CNT_0|tmp_cnt_p1s\(1) $ (\CNT_0|tmp_cnt_p1s\(0))))) # (!\CNT_0|tmp_cnt_p1s[2]~2_combout\ & (\CNT_0|tmp_cnt_p1s\(3) & (\CNT_0|tmp_cnt_p1s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s[2]~2_combout\,
	datab => \CNT_0|tmp_cnt_p1s\(3),
	datac => \CNT_0|tmp_cnt_p1s\(1),
	datad => \CNT_0|tmp_cnt_p1s\(0),
	combout => \SEG_DRV_P1S|Mux5~0_combout\);

-- Location: LCCOMB_X111_Y35_N28
\SEG_DRV_P1S|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P1S|Mux4~0_combout\ = (\CNT_0|tmp_cnt_p1s[2]~2_combout\ & (\CNT_0|tmp_cnt_p1s\(3))) # (!\CNT_0|tmp_cnt_p1s[2]~2_combout\ & (\CNT_0|tmp_cnt_p1s\(1) & ((\CNT_0|tmp_cnt_p1s\(3)) # (!\CNT_0|tmp_cnt_p1s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s[2]~2_combout\,
	datab => \CNT_0|tmp_cnt_p1s\(3),
	datac => \CNT_0|tmp_cnt_p1s\(1),
	datad => \CNT_0|tmp_cnt_p1s\(0),
	combout => \SEG_DRV_P1S|Mux4~0_combout\);

-- Location: LCCOMB_X111_Y35_N30
\SEG_DRV_P1S|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P1S|Mux3~0_combout\ = (\CNT_0|tmp_cnt_p1s\(1) & ((\CNT_0|tmp_cnt_p1s\(3)) # ((\CNT_0|tmp_cnt_p1s[2]~2_combout\ & \CNT_0|tmp_cnt_p1s\(0))))) # (!\CNT_0|tmp_cnt_p1s\(1) & ((\CNT_0|tmp_cnt_p1s[2]~2_combout\) # ((!\CNT_0|tmp_cnt_p1s\(3) & 
-- \CNT_0|tmp_cnt_p1s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s[2]~2_combout\,
	datab => \CNT_0|tmp_cnt_p1s\(3),
	datac => \CNT_0|tmp_cnt_p1s\(1),
	datad => \CNT_0|tmp_cnt_p1s\(0),
	combout => \SEG_DRV_P1S|Mux3~0_combout\);

-- Location: LCCOMB_X109_Y35_N20
\SEG_DRV_P1S|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P1S|Mux2~0_combout\ = (\CNT_0|tmp_cnt_p1s\(3) & ((\CNT_0|tmp_cnt_p1s\(1)) # ((\CNT_0|tmp_cnt_p1s\(0)) # (\CNT_0|tmp_cnt_p1s[2]~2_combout\)))) # (!\CNT_0|tmp_cnt_p1s\(3) & (\CNT_0|tmp_cnt_p1s\(0) $ (((!\CNT_0|tmp_cnt_p1s\(1) & 
-- \CNT_0|tmp_cnt_p1s[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(3),
	datab => \CNT_0|tmp_cnt_p1s\(1),
	datac => \CNT_0|tmp_cnt_p1s\(0),
	datad => \CNT_0|tmp_cnt_p1s[2]~2_combout\,
	combout => \SEG_DRV_P1S|Mux2~0_combout\);

-- Location: LCCOMB_X109_Y35_N18
\SEG_DRV_P1S|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P1S|Mux1~0_combout\ = (\CNT_0|tmp_cnt_p1s\(0) & ((\CNT_0|tmp_cnt_p1s\(1)) # (\CNT_0|tmp_cnt_p1s\(3) $ (!\CNT_0|tmp_cnt_p1s[2]~2_combout\)))) # (!\CNT_0|tmp_cnt_p1s\(0) & ((\CNT_0|tmp_cnt_p1s[2]~2_combout\ & (\CNT_0|tmp_cnt_p1s\(3))) # 
-- (!\CNT_0|tmp_cnt_p1s[2]~2_combout\ & ((\CNT_0|tmp_cnt_p1s\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(3),
	datab => \CNT_0|tmp_cnt_p1s\(1),
	datac => \CNT_0|tmp_cnt_p1s\(0),
	datad => \CNT_0|tmp_cnt_p1s[2]~2_combout\,
	combout => \SEG_DRV_P1S|Mux1~0_combout\);

-- Location: LCCOMB_X111_Y35_N10
\SEG_DRV_P1S|Mux0~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P1S|Mux0~0_wirecell_combout\ = (\CNT_0|tmp_cnt_p1s[2]~2_combout\ & ((\CNT_0|tmp_cnt_p1s\(3)) # ((\CNT_0|tmp_cnt_p1s\(1) & \CNT_0|tmp_cnt_p1s\(0))))) # (!\CNT_0|tmp_cnt_p1s[2]~2_combout\ & (\CNT_0|tmp_cnt_p1s\(3) $ ((!\CNT_0|tmp_cnt_p1s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s[2]~2_combout\,
	datab => \CNT_0|tmp_cnt_p1s\(3),
	datac => \CNT_0|tmp_cnt_p1s\(1),
	datad => \CNT_0|tmp_cnt_p1s\(0),
	combout => \SEG_DRV_P1S|Mux0~0_wirecell_combout\);

-- Location: LCCOMB_X111_Y35_N8
\SEG_DRV_P01S|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P01S|Mux6~0_combout\ = (\CNT_0|tmp_cnt_p01s\(1) & (((\CNT_0|tmp_cnt_p01s\(3))))) # (!\CNT_0|tmp_cnt_p01s\(1) & (\CNT_0|tmp_cnt_p01s[2]~2_combout\ $ (((\CNT_0|tmp_cnt_p01s\(0) & !\CNT_0|tmp_cnt_p01s\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(1),
	datab => \CNT_0|tmp_cnt_p01s\(0),
	datac => \CNT_0|tmp_cnt_p01s[2]~2_combout\,
	datad => \CNT_0|tmp_cnt_p01s\(3),
	combout => \SEG_DRV_P01S|Mux6~0_combout\);

-- Location: LCCOMB_X111_Y35_N14
\SEG_DRV_P01S|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P01S|Mux5~0_combout\ = (\CNT_0|tmp_cnt_p01s[2]~2_combout\ & ((\CNT_0|tmp_cnt_p01s\(3)) # (\CNT_0|tmp_cnt_p01s\(1) $ (\CNT_0|tmp_cnt_p01s\(0))))) # (!\CNT_0|tmp_cnt_p01s[2]~2_combout\ & (\CNT_0|tmp_cnt_p01s\(1) & ((\CNT_0|tmp_cnt_p01s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(1),
	datab => \CNT_0|tmp_cnt_p01s\(0),
	datac => \CNT_0|tmp_cnt_p01s[2]~2_combout\,
	datad => \CNT_0|tmp_cnt_p01s\(3),
	combout => \SEG_DRV_P01S|Mux5~0_combout\);

-- Location: LCCOMB_X110_Y35_N10
\SEG_DRV_P01S|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P01S|Mux4~0_combout\ = (\CNT_0|tmp_cnt_p01s[2]~2_combout\ & (\CNT_0|tmp_cnt_p01s\(3))) # (!\CNT_0|tmp_cnt_p01s[2]~2_combout\ & (\CNT_0|tmp_cnt_p01s\(1) & ((\CNT_0|tmp_cnt_p01s\(3)) # (!\CNT_0|tmp_cnt_p01s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s[2]~2_combout\,
	datab => \CNT_0|tmp_cnt_p01s\(3),
	datac => \CNT_0|tmp_cnt_p01s\(0),
	datad => \CNT_0|tmp_cnt_p01s\(1),
	combout => \SEG_DRV_P01S|Mux4~0_combout\);

-- Location: LCCOMB_X111_Y35_N0
\SEG_DRV_P01S|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P01S|Mux3~0_combout\ = (\CNT_0|tmp_cnt_p01s\(1) & ((\CNT_0|tmp_cnt_p01s\(3)) # ((\CNT_0|tmp_cnt_p01s\(0) & \CNT_0|tmp_cnt_p01s[2]~2_combout\)))) # (!\CNT_0|tmp_cnt_p01s\(1) & ((\CNT_0|tmp_cnt_p01s[2]~2_combout\) # ((\CNT_0|tmp_cnt_p01s\(0) & 
-- !\CNT_0|tmp_cnt_p01s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(1),
	datab => \CNT_0|tmp_cnt_p01s\(0),
	datac => \CNT_0|tmp_cnt_p01s[2]~2_combout\,
	datad => \CNT_0|tmp_cnt_p01s\(3),
	combout => \SEG_DRV_P01S|Mux3~0_combout\);

-- Location: LCCOMB_X111_Y35_N2
\SEG_DRV_P01S|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P01S|Mux2~0_combout\ = (\CNT_0|tmp_cnt_p01s\(1) & ((\CNT_0|tmp_cnt_p01s\(0)) # ((\CNT_0|tmp_cnt_p01s\(3))))) # (!\CNT_0|tmp_cnt_p01s\(1) & ((\CNT_0|tmp_cnt_p01s\(0) & ((\CNT_0|tmp_cnt_p01s\(3)) # (!\CNT_0|tmp_cnt_p01s[2]~2_combout\))) # 
-- (!\CNT_0|tmp_cnt_p01s\(0) & (\CNT_0|tmp_cnt_p01s[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(1),
	datab => \CNT_0|tmp_cnt_p01s\(0),
	datac => \CNT_0|tmp_cnt_p01s[2]~2_combout\,
	datad => \CNT_0|tmp_cnt_p01s\(3),
	combout => \SEG_DRV_P01S|Mux2~0_combout\);

-- Location: LCCOMB_X111_Y35_N22
\SEG_DRV_P01S|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P01S|Mux1~0_combout\ = (\CNT_0|tmp_cnt_p01s\(0) & ((\CNT_0|tmp_cnt_p01s\(1)) # (\CNT_0|tmp_cnt_p01s[2]~2_combout\ $ (!\CNT_0|tmp_cnt_p01s\(3))))) # (!\CNT_0|tmp_cnt_p01s\(0) & ((\CNT_0|tmp_cnt_p01s[2]~2_combout\ & ((\CNT_0|tmp_cnt_p01s\(3)))) # 
-- (!\CNT_0|tmp_cnt_p01s[2]~2_combout\ & (\CNT_0|tmp_cnt_p01s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(1),
	datab => \CNT_0|tmp_cnt_p01s\(0),
	datac => \CNT_0|tmp_cnt_p01s[2]~2_combout\,
	datad => \CNT_0|tmp_cnt_p01s\(3),
	combout => \SEG_DRV_P01S|Mux1~0_combout\);

-- Location: LCCOMB_X111_Y35_N6
\SEG_DRV_P01S|Mux0~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG_DRV_P01S|Mux0~0_wirecell_combout\ = (\CNT_0|tmp_cnt_p01s\(1) & ((\CNT_0|tmp_cnt_p01s\(3)) # ((\CNT_0|tmp_cnt_p01s\(0) & \CNT_0|tmp_cnt_p01s[2]~2_combout\)))) # (!\CNT_0|tmp_cnt_p01s\(1) & ((\CNT_0|tmp_cnt_p01s[2]~2_combout\ $ 
-- (!\CNT_0|tmp_cnt_p01s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(1),
	datab => \CNT_0|tmp_cnt_p01s\(0),
	datac => \CNT_0|tmp_cnt_p01s[2]~2_combout\,
	datad => \CNT_0|tmp_cnt_p01s\(3),
	combout => \SEG_DRV_P01S|Mux0~0_wirecell_combout\);

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


