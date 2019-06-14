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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/17/2019 11:33:13"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
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
-- SEG_OUT_10S[0]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_10S[1]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_10S[2]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_10S[3]	=>  Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_10S[4]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_10S[5]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_10S[6]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_1S[0]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_1S[1]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_1S[2]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_1S[3]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_1S[4]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_1S[5]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_1S[6]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_P1S[0]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_P1S[1]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_P1S[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_P1S[3]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_P1S[4]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_P1S[5]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_P1S[6]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_P01S[0]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_P01S[1]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_P01S[2]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_P01S[3]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_P01S[4]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_P01S[5]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG_OUT_P01S[6]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RST	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- START_SW	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- STOP_SW	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CNT_0|tmp_cnt[4]~24_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[6]~28_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[10]~36_combout\ : std_logic;
SIGNAL \CNT_0|Equal2~1_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_1s[2]~2_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p1s[2]~3_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p01s[2]~3_combout\ : std_logic;
SIGNAL \SW_INPUT_START|SW_CLR~regout\ : std_logic;
SIGNAL \SW_INPUT_START|Equal0~0_combout\ : std_logic;
SIGNAL \SW_INPUT_START|sw_in_1d~regout\ : std_logic;
SIGNAL \SW_INPUT_START|sw_cnt[2]~0_combout\ : std_logic;
SIGNAL \SW_INPUT_START|sw_cnt[0]~1_combout\ : std_logic;
SIGNAL \SW_INPUT_START|sw_cnt[1]~2_combout\ : std_logic;
SIGNAL \SW_INPUT_STOP|sw_in_1d~regout\ : std_logic;
SIGNAL \SW_INPUT_START|sw_in_1d~0_combout\ : std_logic;
SIGNAL \SW_INPUT_STOP|sw_in_1d~0_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \START_SW~combout\ : std_logic;
SIGNAL \STOP_SW~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \SW_INPUT_STOP|sw_cnt[2]~0_combout\ : std_logic;
SIGNAL \RST~combout\ : std_logic;
SIGNAL \RST~clkctrl_outclk\ : std_logic;
SIGNAL \SW_INPUT_STOP|sw_cnt[0]~1_combout\ : std_logic;
SIGNAL \SW_INPUT_STOP|sw_cnt[1]~2_combout\ : std_logic;
SIGNAL \SW_INPUT_STOP|Equal0~0_combout\ : std_logic;
SIGNAL \SW_INPUT_STOP|SW_CLR~regout\ : std_logic;
SIGNAL \STATE_M_0|tmp_state[1]~2_combout\ : std_logic;
SIGNAL \STATE_M_0|tmp_state[0]~1_combout\ : std_logic;
SIGNAL \STATE_M_0|tmp_state[1]~0_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[0]~16_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[13]~44_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[0]~17\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[1]~19\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[2]~20_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[2]~21\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[3]~23\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[4]~25\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[5]~26_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[5]~27\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[6]~29\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[7]~30_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[7]~31\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[8]~33\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[9]~34_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[9]~35\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[10]~37\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[11]~38_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[8]~32_combout\ : std_logic;
SIGNAL \CNT_0|Equal2~2_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[11]~39\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[12]~40_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[12]~41\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[13]~42_combout\ : std_logic;
SIGNAL \CNT_0|Equal2~3_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[3]~22_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt[1]~18_combout\ : std_logic;
SIGNAL \CNT_0|Equal2~0_combout\ : std_logic;
SIGNAL \CNT_0|Equal2~4_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_1s[2]~3_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_1s[0]~5_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p1s[0]~7_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p01s[2]~4_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p01s[0]~7_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p01s[3]~6_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p01s~5_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p01s~2_combout\ : std_logic;
SIGNAL \CNT_0|Equal3~0_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p1s[3]~6_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p1s~5_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p1s[2]~4_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_p1s~2_combout\ : std_logic;
SIGNAL \CNT_0|Equal0~0_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_1s[3]~0_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_1s~4_combout\ : std_logic;
SIGNAL \CNT_0|tmp_cnt_1s~1_combout\ : std_logic;
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
SIGNAL \SW_INPUT_STOP|sw_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SW_INPUT_START|sw_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \STATE_M_0|tmp_state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CNT_0|tmp_cnt_p1s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CNT_0|tmp_cnt_p01s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CNT_0|tmp_cnt_1s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CNT_0|tmp_cnt\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \ALT_INV_RST~clkctrl_outclk\ : std_logic;
SIGNAL \SEG_DRV_P01S|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SEG_DRV_P1S|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SEG_DRV_1S|ALT_INV_Mux0~0_combout\ : std_logic;

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

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\RST~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RST~combout\);
\ALT_INV_RST~clkctrl_outclk\ <= NOT \RST~clkctrl_outclk\;
\SEG_DRV_P01S|ALT_INV_Mux0~0_combout\ <= NOT \SEG_DRV_P01S|Mux0~0_combout\;
\SEG_DRV_P1S|ALT_INV_Mux0~0_combout\ <= NOT \SEG_DRV_P1S|Mux0~0_combout\;
\SEG_DRV_1S|ALT_INV_Mux0~0_combout\ <= NOT \SEG_DRV_1S|Mux0~0_combout\;

-- Location: LCFF_X3_Y32_N13
\CNT_0|tmp_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT_0|tmp_cnt[4]~24_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt\(4));

-- Location: LCFF_X3_Y32_N17
\CNT_0|tmp_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT_0|tmp_cnt[6]~28_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt\(6));

-- Location: LCFF_X3_Y32_N25
\CNT_0|tmp_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT_0|tmp_cnt[10]~36_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt\(10));

-- Location: LCCOMB_X3_Y32_N12
\CNT_0|tmp_cnt[4]~24\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X3_Y32_N16
\CNT_0|tmp_cnt[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[6]~28_combout\ = (\CNT_0|tmp_cnt\(6) & (\CNT_0|tmp_cnt[5]~27\ $ (GND))) # (!\CNT_0|tmp_cnt\(6) & (!\CNT_0|tmp_cnt[5]~27\ & VCC))
-- \CNT_0|tmp_cnt[6]~29\ = CARRY((\CNT_0|tmp_cnt\(6) & !\CNT_0|tmp_cnt[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt\(6),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[5]~27\,
	combout => \CNT_0|tmp_cnt[6]~28_combout\,
	cout => \CNT_0|tmp_cnt[6]~29\);

-- Location: LCCOMB_X3_Y32_N24
\CNT_0|tmp_cnt[10]~36\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X2_Y32_N20
\CNT_0|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|Equal2~1_combout\ = (\CNT_0|tmp_cnt\(6)) # ((\CNT_0|tmp_cnt\(5)) # ((\CNT_0|tmp_cnt\(4)) # (\CNT_0|tmp_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt\(6),
	datab => \CNT_0|tmp_cnt\(5),
	datac => \CNT_0|tmp_cnt\(4),
	datad => \CNT_0|tmp_cnt\(7),
	combout => \CNT_0|Equal2~1_combout\);

-- Location: LCCOMB_X2_Y32_N28
\CNT_0|tmp_cnt_1s[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_1s[2]~2_combout\ = (((!\CNT_0|Equal3~0_combout\) # (!\CNT_0|Equal0~0_combout\)) # (!\CNT_0|tmp_cnt_1s\(0))) # (!\CNT_0|tmp_cnt_1s\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(1),
	datab => \CNT_0|tmp_cnt_1s\(0),
	datac => \CNT_0|Equal0~0_combout\,
	datad => \CNT_0|Equal3~0_combout\,
	combout => \CNT_0|tmp_cnt_1s[2]~2_combout\);

-- Location: LCCOMB_X2_Y32_N8
\CNT_0|tmp_cnt_p1s[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p1s[2]~3_combout\ = ((!\CNT_0|Equal3~0_combout\) # (!\CNT_0|tmp_cnt_p1s\(1))) # (!\CNT_0|tmp_cnt_p1s\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt_p1s\(0),
	datac => \CNT_0|tmp_cnt_p1s\(1),
	datad => \CNT_0|Equal3~0_combout\,
	combout => \CNT_0|tmp_cnt_p1s[2]~3_combout\);

-- Location: LCCOMB_X1_Y32_N8
\CNT_0|tmp_cnt_p01s[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p01s[2]~3_combout\ = (!\CNT_0|tmp_cnt_p01s\(1)) # (!\CNT_0|tmp_cnt_p01s\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt_p01s\(0),
	datad => \CNT_0|tmp_cnt_p01s\(1),
	combout => \CNT_0|tmp_cnt_p01s[2]~3_combout\);

-- Location: LCFF_X5_Y32_N5
\SW_INPUT_START|SW_CLR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \SW_INPUT_START|Equal0~0_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SW_INPUT_START|SW_CLR~regout\);

-- Location: LCFF_X5_Y32_N13
\SW_INPUT_START|sw_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \SW_INPUT_START|sw_cnt[2]~0_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SW_INPUT_START|sw_cnt\(2));

-- Location: LCFF_X5_Y32_N19
\SW_INPUT_START|sw_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \SW_INPUT_START|sw_cnt[0]~1_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SW_INPUT_START|sw_cnt\(0));

-- Location: LCFF_X5_Y32_N25
\SW_INPUT_START|sw_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \SW_INPUT_START|sw_cnt[1]~2_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SW_INPUT_START|sw_cnt\(1));

-- Location: LCCOMB_X5_Y32_N4
\SW_INPUT_START|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SW_INPUT_START|Equal0~0_combout\ = (\SW_INPUT_START|sw_cnt\(0) & (!\SW_INPUT_START|sw_cnt\(1) & \SW_INPUT_START|sw_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW_INPUT_START|sw_cnt\(0),
	datac => \SW_INPUT_START|sw_cnt\(1),
	datad => \SW_INPUT_START|sw_cnt\(2),
	combout => \SW_INPUT_START|Equal0~0_combout\);

-- Location: LCFF_X5_Y32_N29
\SW_INPUT_START|sw_in_1d\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \SW_INPUT_START|sw_in_1d~0_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SW_INPUT_START|sw_in_1d~regout\);

-- Location: LCCOMB_X5_Y32_N12
\SW_INPUT_START|sw_cnt[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SW_INPUT_START|sw_cnt[2]~0_combout\ = (\SW_INPUT_START|sw_in_1d~regout\ & (\SW_INPUT_START|sw_cnt\(2) $ (((\SW_INPUT_START|sw_cnt\(1) & \SW_INPUT_START|sw_cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_START|sw_cnt\(1),
	datab => \SW_INPUT_START|sw_cnt\(0),
	datac => \SW_INPUT_START|sw_cnt\(2),
	datad => \SW_INPUT_START|sw_in_1d~regout\,
	combout => \SW_INPUT_START|sw_cnt[2]~0_combout\);

-- Location: LCCOMB_X5_Y32_N18
\SW_INPUT_START|sw_cnt[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SW_INPUT_START|sw_cnt[0]~1_combout\ = (\SW_INPUT_START|sw_in_1d~regout\ & (((!\SW_INPUT_START|sw_cnt\(1) & \SW_INPUT_START|sw_cnt\(2))) # (!\SW_INPUT_START|sw_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_START|sw_cnt\(1),
	datab => \SW_INPUT_START|sw_in_1d~regout\,
	datac => \SW_INPUT_START|sw_cnt\(0),
	datad => \SW_INPUT_START|sw_cnt\(2),
	combout => \SW_INPUT_START|sw_cnt[0]~1_combout\);

-- Location: LCCOMB_X5_Y32_N24
\SW_INPUT_START|sw_cnt[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SW_INPUT_START|sw_cnt[1]~2_combout\ = (\SW_INPUT_START|sw_in_1d~regout\ & ((\SW_INPUT_START|sw_cnt\(0) & (!\SW_INPUT_START|sw_cnt\(2) & !\SW_INPUT_START|sw_cnt\(1))) # (!\SW_INPUT_START|sw_cnt\(0) & ((\SW_INPUT_START|sw_cnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_START|sw_cnt\(2),
	datab => \SW_INPUT_START|sw_cnt\(0),
	datac => \SW_INPUT_START|sw_cnt\(1),
	datad => \SW_INPUT_START|sw_in_1d~regout\,
	combout => \SW_INPUT_START|sw_cnt[1]~2_combout\);

-- Location: LCFF_X5_Y32_N7
\SW_INPUT_STOP|sw_in_1d\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \SW_INPUT_STOP|sw_in_1d~0_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SW_INPUT_STOP|sw_in_1d~regout\);

-- Location: LCCOMB_X5_Y32_N28
\SW_INPUT_START|sw_in_1d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SW_INPUT_START|sw_in_1d~0_combout\ = !\START_SW~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \START_SW~combout\,
	combout => \SW_INPUT_START|sw_in_1d~0_combout\);

-- Location: LCCOMB_X5_Y32_N6
\SW_INPUT_STOP|sw_in_1d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SW_INPUT_STOP|sw_in_1d~0_combout\ = !\STOP_SW~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STOP_SW~combout\,
	combout => \SW_INPUT_STOP|sw_in_1d~0_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
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
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\START_SW~I\ : cycloneii_io
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
	padio => ww_START_SW,
	combout => \START_SW~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\STOP_SW~I\ : cycloneii_io
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
	padio => ww_STOP_SW,
	combout => \STOP_SW~combout\);

-- Location: CLKCTRL_G3
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: LCCOMB_X5_Y32_N10
\SW_INPUT_STOP|sw_cnt[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SW_INPUT_STOP|sw_cnt[2]~0_combout\ = (\SW_INPUT_STOP|sw_in_1d~regout\ & (\SW_INPUT_STOP|sw_cnt\(2) $ (((\SW_INPUT_STOP|sw_cnt\(1) & \SW_INPUT_STOP|sw_cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_STOP|sw_in_1d~regout\,
	datab => \SW_INPUT_STOP|sw_cnt\(1),
	datac => \SW_INPUT_STOP|sw_cnt\(2),
	datad => \SW_INPUT_STOP|sw_cnt\(0),
	combout => \SW_INPUT_STOP|sw_cnt[2]~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RST~I\ : cycloneii_io
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
	padio => ww_RST,
	combout => \RST~combout\);

-- Location: CLKCTRL_G1
\RST~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~clkctrl_outclk\);

-- Location: LCFF_X5_Y32_N11
\SW_INPUT_STOP|sw_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \SW_INPUT_STOP|sw_cnt[2]~0_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SW_INPUT_STOP|sw_cnt\(2));

-- Location: LCCOMB_X5_Y32_N0
\SW_INPUT_STOP|sw_cnt[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SW_INPUT_STOP|sw_cnt[0]~1_combout\ = (\SW_INPUT_STOP|sw_in_1d~regout\ & (((!\SW_INPUT_STOP|sw_cnt\(1) & \SW_INPUT_STOP|sw_cnt\(2))) # (!\SW_INPUT_STOP|sw_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_STOP|sw_in_1d~regout\,
	datab => \SW_INPUT_STOP|sw_cnt\(1),
	datac => \SW_INPUT_STOP|sw_cnt\(0),
	datad => \SW_INPUT_STOP|sw_cnt\(2),
	combout => \SW_INPUT_STOP|sw_cnt[0]~1_combout\);

-- Location: LCFF_X5_Y32_N1
\SW_INPUT_STOP|sw_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \SW_INPUT_STOP|sw_cnt[0]~1_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SW_INPUT_STOP|sw_cnt\(0));

-- Location: LCCOMB_X5_Y32_N26
\SW_INPUT_STOP|sw_cnt[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SW_INPUT_STOP|sw_cnt[1]~2_combout\ = (\SW_INPUT_STOP|sw_in_1d~regout\ & ((\SW_INPUT_STOP|sw_cnt\(0) & (!\SW_INPUT_STOP|sw_cnt\(1) & !\SW_INPUT_STOP|sw_cnt\(2))) # (!\SW_INPUT_STOP|sw_cnt\(0) & (\SW_INPUT_STOP|sw_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_STOP|sw_in_1d~regout\,
	datab => \SW_INPUT_STOP|sw_cnt\(0),
	datac => \SW_INPUT_STOP|sw_cnt\(1),
	datad => \SW_INPUT_STOP|sw_cnt\(2),
	combout => \SW_INPUT_STOP|sw_cnt[1]~2_combout\);

-- Location: LCFF_X5_Y32_N27
\SW_INPUT_STOP|sw_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \SW_INPUT_STOP|sw_cnt[1]~2_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SW_INPUT_STOP|sw_cnt\(1));

-- Location: LCCOMB_X5_Y32_N2
\SW_INPUT_STOP|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SW_INPUT_STOP|Equal0~0_combout\ = (\SW_INPUT_STOP|sw_cnt\(2) & (!\SW_INPUT_STOP|sw_cnt\(1) & \SW_INPUT_STOP|sw_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_STOP|sw_cnt\(2),
	datab => \SW_INPUT_STOP|sw_cnt\(1),
	datad => \SW_INPUT_STOP|sw_cnt\(0),
	combout => \SW_INPUT_STOP|Equal0~0_combout\);

-- Location: LCFF_X5_Y32_N3
\SW_INPUT_STOP|SW_CLR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \SW_INPUT_STOP|Equal0~0_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SW_INPUT_STOP|SW_CLR~regout\);

-- Location: LCCOMB_X1_Y32_N0
\STATE_M_0|tmp_state[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STATE_M_0|tmp_state[1]~2_combout\ = (\STATE_M_0|tmp_state\(0) & (((\SW_INPUT_STOP|SW_CLR~regout\ & !\STATE_M_0|tmp_state\(1))))) # (!\STATE_M_0|tmp_state\(0) & (!\SW_INPUT_START|SW_CLR~regout\ & ((\STATE_M_0|tmp_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_START|SW_CLR~regout\,
	datab => \STATE_M_0|tmp_state\(0),
	datac => \SW_INPUT_STOP|SW_CLR~regout\,
	datad => \STATE_M_0|tmp_state\(1),
	combout => \STATE_M_0|tmp_state[1]~2_combout\);

-- Location: LCFF_X2_Y32_N15
\STATE_M_0|tmp_state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \STATE_M_0|tmp_state[1]~2_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STATE_M_0|tmp_state\(1));

-- Location: LCCOMB_X1_Y32_N6
\STATE_M_0|tmp_state[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STATE_M_0|tmp_state[0]~1_combout\ = (\STATE_M_0|tmp_state\(0) & (((!\SW_INPUT_STOP|SW_CLR~regout\ & !\STATE_M_0|tmp_state\(1))))) # (!\STATE_M_0|tmp_state\(0) & (\SW_INPUT_START|SW_CLR~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_INPUT_START|SW_CLR~regout\,
	datab => \STATE_M_0|tmp_state\(0),
	datac => \SW_INPUT_STOP|SW_CLR~regout\,
	datad => \STATE_M_0|tmp_state\(1),
	combout => \STATE_M_0|tmp_state[0]~1_combout\);

-- Location: LCFF_X2_Y32_N25
\STATE_M_0|tmp_state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \STATE_M_0|tmp_state[0]~1_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STATE_M_0|tmp_state\(0));

-- Location: LCCOMB_X2_Y32_N0
\STATE_M_0|tmp_state[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STATE_M_0|tmp_state[1]~0_combout\ = (\STATE_M_0|tmp_state\(0) & !\STATE_M_0|tmp_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \STATE_M_0|tmp_state\(0),
	datad => \STATE_M_0|tmp_state\(1),
	combout => \STATE_M_0|tmp_state[1]~0_combout\);

-- Location: LCCOMB_X3_Y32_N4
\CNT_0|tmp_cnt[0]~16\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X2_Y32_N24
\CNT_0|tmp_cnt[13]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[13]~44_combout\ = (\STATE_M_0|tmp_state\(1)) # ((!\CNT_0|Equal2~4_combout\) # (!\STATE_M_0|tmp_state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE_M_0|tmp_state\(1),
	datac => \STATE_M_0|tmp_state\(0),
	datad => \CNT_0|Equal2~4_combout\,
	combout => \CNT_0|tmp_cnt[13]~44_combout\);

-- Location: LCFF_X3_Y32_N5
\CNT_0|tmp_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT_0|tmp_cnt[0]~16_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt\(0));

-- Location: LCCOMB_X3_Y32_N6
\CNT_0|tmp_cnt[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[1]~18_combout\ = (\CNT_0|tmp_cnt\(1) & (!\CNT_0|tmp_cnt[0]~17\)) # (!\CNT_0|tmp_cnt\(1) & ((\CNT_0|tmp_cnt[0]~17\) # (GND)))
-- \CNT_0|tmp_cnt[1]~19\ = CARRY((!\CNT_0|tmp_cnt[0]~17\) # (!\CNT_0|tmp_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt\(1),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[0]~17\,
	combout => \CNT_0|tmp_cnt[1]~18_combout\,
	cout => \CNT_0|tmp_cnt[1]~19\);

-- Location: LCCOMB_X3_Y32_N8
\CNT_0|tmp_cnt[2]~20\ : cycloneii_lcell_comb
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

-- Location: LCFF_X3_Y32_N9
\CNT_0|tmp_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT_0|tmp_cnt[2]~20_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt\(2));

-- Location: LCCOMB_X3_Y32_N10
\CNT_0|tmp_cnt[3]~22\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X3_Y32_N14
\CNT_0|tmp_cnt[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[5]~26_combout\ = (\CNT_0|tmp_cnt\(5) & (!\CNT_0|tmp_cnt[4]~25\)) # (!\CNT_0|tmp_cnt\(5) & ((\CNT_0|tmp_cnt[4]~25\) # (GND)))
-- \CNT_0|tmp_cnt[5]~27\ = CARRY((!\CNT_0|tmp_cnt[4]~25\) # (!\CNT_0|tmp_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt\(5),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[4]~25\,
	combout => \CNT_0|tmp_cnt[5]~26_combout\,
	cout => \CNT_0|tmp_cnt[5]~27\);

-- Location: LCFF_X3_Y32_N15
\CNT_0|tmp_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT_0|tmp_cnt[5]~26_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt\(5));

-- Location: LCCOMB_X3_Y32_N18
\CNT_0|tmp_cnt[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[7]~30_combout\ = (\CNT_0|tmp_cnt\(7) & (!\CNT_0|tmp_cnt[6]~29\)) # (!\CNT_0|tmp_cnt\(7) & ((\CNT_0|tmp_cnt[6]~29\) # (GND)))
-- \CNT_0|tmp_cnt[7]~31\ = CARRY((!\CNT_0|tmp_cnt[6]~29\) # (!\CNT_0|tmp_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt\(7),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[6]~29\,
	combout => \CNT_0|tmp_cnt[7]~30_combout\,
	cout => \CNT_0|tmp_cnt[7]~31\);

-- Location: LCFF_X3_Y32_N19
\CNT_0|tmp_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT_0|tmp_cnt[7]~30_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt\(7));

-- Location: LCCOMB_X3_Y32_N20
\CNT_0|tmp_cnt[8]~32\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X3_Y32_N22
\CNT_0|tmp_cnt[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[9]~34_combout\ = (\CNT_0|tmp_cnt\(9) & (!\CNT_0|tmp_cnt[8]~33\)) # (!\CNT_0|tmp_cnt\(9) & ((\CNT_0|tmp_cnt[8]~33\) # (GND)))
-- \CNT_0|tmp_cnt[9]~35\ = CARRY((!\CNT_0|tmp_cnt[8]~33\) # (!\CNT_0|tmp_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt\(9),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[8]~33\,
	combout => \CNT_0|tmp_cnt[9]~34_combout\,
	cout => \CNT_0|tmp_cnt[9]~35\);

-- Location: LCFF_X3_Y32_N23
\CNT_0|tmp_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT_0|tmp_cnt[9]~34_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt\(9));

-- Location: LCCOMB_X3_Y32_N26
\CNT_0|tmp_cnt[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[11]~38_combout\ = (\CNT_0|tmp_cnt\(11) & (!\CNT_0|tmp_cnt[10]~37\)) # (!\CNT_0|tmp_cnt\(11) & ((\CNT_0|tmp_cnt[10]~37\) # (GND)))
-- \CNT_0|tmp_cnt[11]~39\ = CARRY((!\CNT_0|tmp_cnt[10]~37\) # (!\CNT_0|tmp_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt\(11),
	datad => VCC,
	cin => \CNT_0|tmp_cnt[10]~37\,
	combout => \CNT_0|tmp_cnt[11]~38_combout\,
	cout => \CNT_0|tmp_cnt[11]~39\);

-- Location: LCFF_X3_Y32_N27
\CNT_0|tmp_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT_0|tmp_cnt[11]~38_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt\(11));

-- Location: LCFF_X3_Y32_N21
\CNT_0|tmp_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT_0|tmp_cnt[8]~32_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt\(8));

-- Location: LCCOMB_X3_Y32_N0
\CNT_0|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|Equal2~2_combout\ = ((\CNT_0|tmp_cnt\(11)) # ((!\CNT_0|tmp_cnt\(9)) # (!\CNT_0|tmp_cnt\(8)))) # (!\CNT_0|tmp_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt\(10),
	datab => \CNT_0|tmp_cnt\(11),
	datac => \CNT_0|tmp_cnt\(8),
	datad => \CNT_0|tmp_cnt\(9),
	combout => \CNT_0|Equal2~2_combout\);

-- Location: LCCOMB_X3_Y32_N28
\CNT_0|tmp_cnt[12]~40\ : cycloneii_lcell_comb
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

-- Location: LCFF_X3_Y32_N29
\CNT_0|tmp_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT_0|tmp_cnt[12]~40_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt\(12));

-- Location: LCCOMB_X3_Y32_N30
\CNT_0|tmp_cnt[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt[13]~42_combout\ = \CNT_0|tmp_cnt[12]~41\ $ (\CNT_0|tmp_cnt\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CNT_0|tmp_cnt\(13),
	cin => \CNT_0|tmp_cnt[12]~41\,
	combout => \CNT_0|tmp_cnt[13]~42_combout\);

-- Location: LCFF_X3_Y32_N31
\CNT_0|tmp_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT_0|tmp_cnt[13]~42_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt\(13));

-- Location: LCCOMB_X2_Y32_N14
\CNT_0|Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|Equal2~3_combout\ = (\CNT_0|tmp_cnt\(12)) # (!\CNT_0|tmp_cnt\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CNT_0|tmp_cnt\(12),
	datad => \CNT_0|tmp_cnt\(13),
	combout => \CNT_0|Equal2~3_combout\);

-- Location: LCFF_X3_Y32_N11
\CNT_0|tmp_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT_0|tmp_cnt[3]~22_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt\(3));

-- Location: LCFF_X3_Y32_N7
\CNT_0|tmp_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT_0|tmp_cnt[1]~18_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	sclr => \CNT_0|tmp_cnt[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt\(1));

-- Location: LCCOMB_X2_Y32_N10
\CNT_0|Equal2~0\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X2_Y32_N18
\CNT_0|Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|Equal2~4_combout\ = (\CNT_0|Equal2~1_combout\) # ((\CNT_0|Equal2~2_combout\) # ((\CNT_0|Equal2~3_combout\) # (\CNT_0|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|Equal2~1_combout\,
	datab => \CNT_0|Equal2~2_combout\,
	datac => \CNT_0|Equal2~3_combout\,
	datad => \CNT_0|Equal2~0_combout\,
	combout => \CNT_0|Equal2~4_combout\);

-- Location: LCCOMB_X2_Y32_N12
\CNT_0|tmp_cnt_1s[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_1s[2]~3_combout\ = \CNT_0|tmp_cnt_1s\(2) $ (((!\CNT_0|tmp_cnt_1s[2]~2_combout\ & (\STATE_M_0|tmp_state[1]~0_combout\ & !\CNT_0|Equal2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s[2]~2_combout\,
	datab => \STATE_M_0|tmp_state[1]~0_combout\,
	datac => \CNT_0|tmp_cnt_1s\(2),
	datad => \CNT_0|Equal2~4_combout\,
	combout => \CNT_0|tmp_cnt_1s[2]~3_combout\);

-- Location: LCFF_X2_Y32_N13
\CNT_0|tmp_cnt_1s[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT_0|tmp_cnt_1s[2]~3_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt_1s\(2));

-- Location: LCCOMB_X4_Y32_N28
\CNT_0|tmp_cnt_1s[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_1s[0]~5_combout\ = !\CNT_0|tmp_cnt_1s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt_1s\(0),
	combout => \CNT_0|tmp_cnt_1s[0]~5_combout\);

-- Location: LCCOMB_X1_Y32_N30
\CNT_0|tmp_cnt_p1s[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p1s[0]~7_combout\ = !\CNT_0|tmp_cnt_p1s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CNT_0|tmp_cnt_p1s\(0),
	combout => \CNT_0|tmp_cnt_p1s[0]~7_combout\);

-- Location: LCCOMB_X2_Y32_N2
\CNT_0|tmp_cnt_p01s[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p01s[2]~4_combout\ = \CNT_0|tmp_cnt_p01s\(2) $ (((!\CNT_0|tmp_cnt_p01s[2]~3_combout\ & (!\CNT_0|Equal2~4_combout\ & \STATE_M_0|tmp_state[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s[2]~3_combout\,
	datab => \CNT_0|Equal2~4_combout\,
	datac => \CNT_0|tmp_cnt_p01s\(2),
	datad => \STATE_M_0|tmp_state[1]~0_combout\,
	combout => \CNT_0|tmp_cnt_p01s[2]~4_combout\);

-- Location: LCFF_X2_Y32_N3
\CNT_0|tmp_cnt_p01s[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT_0|tmp_cnt_p01s[2]~4_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt_p01s\(2));

-- Location: LCCOMB_X1_Y32_N20
\CNT_0|tmp_cnt_p01s[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p01s[0]~7_combout\ = !\CNT_0|tmp_cnt_p01s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_0|tmp_cnt_p01s\(0),
	combout => \CNT_0|tmp_cnt_p01s[0]~7_combout\);

-- Location: LCCOMB_X2_Y32_N22
\CNT_0|tmp_cnt_p01s[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p01s[3]~6_combout\ = (!\STATE_M_0|tmp_state\(1) & (\STATE_M_0|tmp_state\(0) & !\CNT_0|Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE_M_0|tmp_state\(1),
	datab => \STATE_M_0|tmp_state\(0),
	datad => \CNT_0|Equal2~4_combout\,
	combout => \CNT_0|tmp_cnt_p01s[3]~6_combout\);

-- Location: LCFF_X1_Y32_N21
\CNT_0|tmp_cnt_p01s[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT_0|tmp_cnt_p01s[0]~7_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	ena => \CNT_0|tmp_cnt_p01s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt_p01s\(0));

-- Location: LCCOMB_X1_Y32_N4
\CNT_0|tmp_cnt_p01s~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p01s~5_combout\ = (\CNT_0|tmp_cnt_p01s\(1) & (\CNT_0|tmp_cnt_p01s\(3) $ (((\CNT_0|tmp_cnt_p01s\(0) & \CNT_0|tmp_cnt_p01s\(2)))))) # (!\CNT_0|tmp_cnt_p01s\(1) & (\CNT_0|tmp_cnt_p01s\(3) & ((\CNT_0|tmp_cnt_p01s\(2)) # 
-- (!\CNT_0|tmp_cnt_p01s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(1),
	datab => \CNT_0|tmp_cnt_p01s\(0),
	datac => \CNT_0|tmp_cnt_p01s\(3),
	datad => \CNT_0|tmp_cnt_p01s\(2),
	combout => \CNT_0|tmp_cnt_p01s~5_combout\);

-- Location: LCFF_X1_Y32_N5
\CNT_0|tmp_cnt_p01s[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT_0|tmp_cnt_p01s~5_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	ena => \CNT_0|tmp_cnt_p01s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt_p01s\(3));

-- Location: LCCOMB_X1_Y32_N10
\CNT_0|tmp_cnt_p01s~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p01s~2_combout\ = (\CNT_0|tmp_cnt_p01s\(0) & (!\CNT_0|tmp_cnt_p01s\(1) & ((\CNT_0|tmp_cnt_p01s\(2)) # (!\CNT_0|tmp_cnt_p01s\(3))))) # (!\CNT_0|tmp_cnt_p01s\(0) & (((\CNT_0|tmp_cnt_p01s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(0),
	datab => \CNT_0|tmp_cnt_p01s\(3),
	datac => \CNT_0|tmp_cnt_p01s\(1),
	datad => \CNT_0|tmp_cnt_p01s\(2),
	combout => \CNT_0|tmp_cnt_p01s~2_combout\);

-- Location: LCFF_X1_Y32_N11
\CNT_0|tmp_cnt_p01s[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT_0|tmp_cnt_p01s~2_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	ena => \CNT_0|tmp_cnt_p01s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt_p01s\(1));

-- Location: LCCOMB_X2_Y32_N30
\CNT_0|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|Equal3~0_combout\ = (\CNT_0|tmp_cnt_p01s\(0) & (!\CNT_0|tmp_cnt_p01s\(2) & (\CNT_0|tmp_cnt_p01s\(3) & !\CNT_0|tmp_cnt_p01s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(0),
	datab => \CNT_0|tmp_cnt_p01s\(2),
	datac => \CNT_0|tmp_cnt_p01s\(3),
	datad => \CNT_0|tmp_cnt_p01s\(1),
	combout => \CNT_0|Equal3~0_combout\);

-- Location: LCCOMB_X2_Y32_N26
\CNT_0|tmp_cnt_p1s[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p1s[3]~6_combout\ = (!\STATE_M_0|tmp_state\(1) & (\CNT_0|Equal3~0_combout\ & (\STATE_M_0|tmp_state\(0) & !\CNT_0|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE_M_0|tmp_state\(1),
	datab => \CNT_0|Equal3~0_combout\,
	datac => \STATE_M_0|tmp_state\(0),
	datad => \CNT_0|Equal2~4_combout\,
	combout => \CNT_0|tmp_cnt_p1s[3]~6_combout\);

-- Location: LCFF_X2_Y32_N23
\CNT_0|tmp_cnt_p1s[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \CNT_0|tmp_cnt_p1s[0]~7_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	sload => VCC,
	ena => \CNT_0|tmp_cnt_p1s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt_p1s\(0));

-- Location: LCCOMB_X2_Y32_N4
\CNT_0|tmp_cnt_p1s~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p1s~5_combout\ = (\CNT_0|tmp_cnt_p1s\(2) & (\CNT_0|tmp_cnt_p1s\(3) $ (((\CNT_0|tmp_cnt_p1s\(1) & \CNT_0|tmp_cnt_p1s\(0)))))) # (!\CNT_0|tmp_cnt_p1s\(2) & (\CNT_0|tmp_cnt_p1s\(3) & ((\CNT_0|tmp_cnt_p1s\(1)) # (!\CNT_0|tmp_cnt_p1s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(2),
	datab => \CNT_0|tmp_cnt_p1s\(1),
	datac => \CNT_0|tmp_cnt_p1s\(3),
	datad => \CNT_0|tmp_cnt_p1s\(0),
	combout => \CNT_0|tmp_cnt_p1s~5_combout\);

-- Location: LCFF_X2_Y32_N5
\CNT_0|tmp_cnt_p1s[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT_0|tmp_cnt_p1s~5_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	ena => \CNT_0|tmp_cnt_p1s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt_p1s\(3));

-- Location: LCCOMB_X2_Y32_N6
\CNT_0|tmp_cnt_p1s[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p1s[2]~4_combout\ = \CNT_0|tmp_cnt_p1s\(2) $ (((!\CNT_0|tmp_cnt_p1s[2]~3_combout\ & (\STATE_M_0|tmp_state[1]~0_combout\ & !\CNT_0|Equal2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s[2]~3_combout\,
	datab => \STATE_M_0|tmp_state[1]~0_combout\,
	datac => \CNT_0|tmp_cnt_p1s\(2),
	datad => \CNT_0|Equal2~4_combout\,
	combout => \CNT_0|tmp_cnt_p1s[2]~4_combout\);

-- Location: LCFF_X2_Y32_N7
\CNT_0|tmp_cnt_p1s[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT_0|tmp_cnt_p1s[2]~4_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt_p1s\(2));

-- Location: LCCOMB_X1_Y33_N18
\CNT_0|tmp_cnt_p1s~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_p1s~2_combout\ = (\CNT_0|tmp_cnt_p1s\(0) & (!\CNT_0|tmp_cnt_p1s\(1) & ((\CNT_0|tmp_cnt_p1s\(2)) # (!\CNT_0|tmp_cnt_p1s\(3))))) # (!\CNT_0|tmp_cnt_p1s\(0) & (((\CNT_0|tmp_cnt_p1s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(0),
	datab => \CNT_0|tmp_cnt_p1s\(3),
	datac => \CNT_0|tmp_cnt_p1s\(1),
	datad => \CNT_0|tmp_cnt_p1s\(2),
	combout => \CNT_0|tmp_cnt_p1s~2_combout\);

-- Location: LCFF_X2_Y32_N9
\CNT_0|tmp_cnt_p1s[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \CNT_0|tmp_cnt_p1s~2_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	sload => VCC,
	ena => \CNT_0|tmp_cnt_p1s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt_p1s\(1));

-- Location: LCCOMB_X2_Y32_N16
\CNT_0|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|Equal0~0_combout\ = (!\CNT_0|tmp_cnt_p1s\(2) & (!\CNT_0|tmp_cnt_p1s\(1) & (\CNT_0|tmp_cnt_p1s\(3) & \CNT_0|tmp_cnt_p1s\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(2),
	datab => \CNT_0|tmp_cnt_p1s\(1),
	datac => \CNT_0|tmp_cnt_p1s\(3),
	datad => \CNT_0|tmp_cnt_p1s\(0),
	combout => \CNT_0|Equal0~0_combout\);

-- Location: LCCOMB_X3_Y32_N2
\CNT_0|tmp_cnt_1s[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_1s[3]~0_combout\ = (\STATE_M_0|tmp_state[1]~0_combout\ & (\CNT_0|Equal0~0_combout\ & (\CNT_0|Equal3~0_combout\ & !\CNT_0|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE_M_0|tmp_state[1]~0_combout\,
	datab => \CNT_0|Equal0~0_combout\,
	datac => \CNT_0|Equal3~0_combout\,
	datad => \CNT_0|Equal2~4_combout\,
	combout => \CNT_0|tmp_cnt_1s[3]~0_combout\);

-- Location: LCFF_X4_Y32_N29
\CNT_0|tmp_cnt_1s[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT_0|tmp_cnt_1s[0]~5_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	ena => \CNT_0|tmp_cnt_1s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt_1s\(0));

-- Location: LCCOMB_X4_Y32_N12
\CNT_0|tmp_cnt_1s~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_1s~4_combout\ = (\CNT_0|tmp_cnt_1s\(1) & (\CNT_0|tmp_cnt_1s\(3) $ (((\CNT_0|tmp_cnt_1s\(2) & \CNT_0|tmp_cnt_1s\(0)))))) # (!\CNT_0|tmp_cnt_1s\(1) & (\CNT_0|tmp_cnt_1s\(3) & ((\CNT_0|tmp_cnt_1s\(2)) # (!\CNT_0|tmp_cnt_1s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(1),
	datab => \CNT_0|tmp_cnt_1s\(2),
	datac => \CNT_0|tmp_cnt_1s\(3),
	datad => \CNT_0|tmp_cnt_1s\(0),
	combout => \CNT_0|tmp_cnt_1s~4_combout\);

-- Location: LCFF_X4_Y32_N13
\CNT_0|tmp_cnt_1s[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT_0|tmp_cnt_1s~4_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	ena => \CNT_0|tmp_cnt_1s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt_1s\(3));

-- Location: LCCOMB_X4_Y32_N18
\CNT_0|tmp_cnt_1s~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_0|tmp_cnt_1s~1_combout\ = (\CNT_0|tmp_cnt_1s\(1) & (((!\CNT_0|tmp_cnt_1s\(0))))) # (!\CNT_0|tmp_cnt_1s\(1) & (\CNT_0|tmp_cnt_1s\(0) & ((\CNT_0|tmp_cnt_1s\(2)) # (!\CNT_0|tmp_cnt_1s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(3),
	datab => \CNT_0|tmp_cnt_1s\(2),
	datac => \CNT_0|tmp_cnt_1s\(1),
	datad => \CNT_0|tmp_cnt_1s\(0),
	combout => \CNT_0|tmp_cnt_1s~1_combout\);

-- Location: LCFF_X4_Y32_N19
\CNT_0|tmp_cnt_1s[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT_0|tmp_cnt_1s~1_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	ena => \CNT_0|tmp_cnt_1s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_0|tmp_cnt_1s\(1));

-- Location: LCCOMB_X4_Y32_N2
\SEG_DRV_1S|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_DRV_1S|Mux6~0_combout\ = (\CNT_0|tmp_cnt_1s\(1) & (\CNT_0|tmp_cnt_1s\(3))) # (!\CNT_0|tmp_cnt_1s\(1) & (\CNT_0|tmp_cnt_1s\(2) $ (((!\CNT_0|tmp_cnt_1s\(3) & \CNT_0|tmp_cnt_1s\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(3),
	datab => \CNT_0|tmp_cnt_1s\(2),
	datac => \CNT_0|tmp_cnt_1s\(1),
	datad => \CNT_0|tmp_cnt_1s\(0),
	combout => \SEG_DRV_1S|Mux6~0_combout\);

-- Location: LCCOMB_X4_Y32_N20
\SEG_DRV_1S|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_DRV_1S|Mux5~0_combout\ = (\CNT_0|tmp_cnt_1s\(3) & ((\CNT_0|tmp_cnt_1s\(2)) # ((\CNT_0|tmp_cnt_1s\(1))))) # (!\CNT_0|tmp_cnt_1s\(3) & (\CNT_0|tmp_cnt_1s\(2) & (\CNT_0|tmp_cnt_1s\(1) $ (\CNT_0|tmp_cnt_1s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(3),
	datab => \CNT_0|tmp_cnt_1s\(2),
	datac => \CNT_0|tmp_cnt_1s\(1),
	datad => \CNT_0|tmp_cnt_1s\(0),
	combout => \SEG_DRV_1S|Mux5~0_combout\);

-- Location: LCCOMB_X4_Y32_N26
\SEG_DRV_1S|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_DRV_1S|Mux4~0_combout\ = (\CNT_0|tmp_cnt_1s\(2) & (\CNT_0|tmp_cnt_1s\(3))) # (!\CNT_0|tmp_cnt_1s\(2) & (\CNT_0|tmp_cnt_1s\(1) & ((\CNT_0|tmp_cnt_1s\(3)) # (!\CNT_0|tmp_cnt_1s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(3),
	datab => \CNT_0|tmp_cnt_1s\(2),
	datac => \CNT_0|tmp_cnt_1s\(1),
	datad => \CNT_0|tmp_cnt_1s\(0),
	combout => \SEG_DRV_1S|Mux4~0_combout\);

-- Location: LCCOMB_X4_Y32_N16
\SEG_DRV_1S|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_DRV_1S|Mux3~0_combout\ = (\CNT_0|tmp_cnt_1s\(1) & ((\CNT_0|tmp_cnt_1s\(3)) # ((\CNT_0|tmp_cnt_1s\(2) & \CNT_0|tmp_cnt_1s\(0))))) # (!\CNT_0|tmp_cnt_1s\(1) & ((\CNT_0|tmp_cnt_1s\(2)) # ((!\CNT_0|tmp_cnt_1s\(3) & \CNT_0|tmp_cnt_1s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(3),
	datab => \CNT_0|tmp_cnt_1s\(2),
	datac => \CNT_0|tmp_cnt_1s\(1),
	datad => \CNT_0|tmp_cnt_1s\(0),
	combout => \SEG_DRV_1S|Mux3~0_combout\);

-- Location: LCCOMB_X4_Y32_N22
\SEG_DRV_1S|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_DRV_1S|Mux2~0_combout\ = (\CNT_0|tmp_cnt_1s\(3) & ((\CNT_0|tmp_cnt_1s\(2)) # ((\CNT_0|tmp_cnt_1s\(1)) # (\CNT_0|tmp_cnt_1s\(0))))) # (!\CNT_0|tmp_cnt_1s\(3) & (\CNT_0|tmp_cnt_1s\(0) $ (((\CNT_0|tmp_cnt_1s\(2) & !\CNT_0|tmp_cnt_1s\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(3),
	datab => \CNT_0|tmp_cnt_1s\(2),
	datac => \CNT_0|tmp_cnt_1s\(1),
	datad => \CNT_0|tmp_cnt_1s\(0),
	combout => \SEG_DRV_1S|Mux2~0_combout\);

-- Location: LCCOMB_X4_Y32_N0
\SEG_DRV_1S|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_DRV_1S|Mux1~0_combout\ = (\CNT_0|tmp_cnt_1s\(2) & ((\CNT_0|tmp_cnt_1s\(3)) # ((\CNT_0|tmp_cnt_1s\(1) & \CNT_0|tmp_cnt_1s\(0))))) # (!\CNT_0|tmp_cnt_1s\(2) & ((\CNT_0|tmp_cnt_1s\(1)) # ((!\CNT_0|tmp_cnt_1s\(3) & \CNT_0|tmp_cnt_1s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(3),
	datab => \CNT_0|tmp_cnt_1s\(2),
	datac => \CNT_0|tmp_cnt_1s\(1),
	datad => \CNT_0|tmp_cnt_1s\(0),
	combout => \SEG_DRV_1S|Mux1~0_combout\);

-- Location: LCCOMB_X4_Y32_N10
\SEG_DRV_1S|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_DRV_1S|Mux0~0_combout\ = (\CNT_0|tmp_cnt_1s\(2) & (!\CNT_0|tmp_cnt_1s\(3) & ((!\CNT_0|tmp_cnt_1s\(0)) # (!\CNT_0|tmp_cnt_1s\(1))))) # (!\CNT_0|tmp_cnt_1s\(2) & (\CNT_0|tmp_cnt_1s\(3) $ ((\CNT_0|tmp_cnt_1s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_1s\(3),
	datab => \CNT_0|tmp_cnt_1s\(2),
	datac => \CNT_0|tmp_cnt_1s\(1),
	datad => \CNT_0|tmp_cnt_1s\(0),
	combout => \SEG_DRV_1S|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y33_N20
\SEG_DRV_P1S|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_DRV_P1S|Mux6~0_combout\ = (\CNT_0|tmp_cnt_p1s\(1) & (((\CNT_0|tmp_cnt_p1s\(3))))) # (!\CNT_0|tmp_cnt_p1s\(1) & (\CNT_0|tmp_cnt_p1s\(2) $ (((\CNT_0|tmp_cnt_p1s\(0) & !\CNT_0|tmp_cnt_p1s\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(1),
	datab => \CNT_0|tmp_cnt_p1s\(0),
	datac => \CNT_0|tmp_cnt_p1s\(3),
	datad => \CNT_0|tmp_cnt_p1s\(2),
	combout => \SEG_DRV_P1S|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y33_N30
\SEG_DRV_P1S|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_DRV_P1S|Mux5~0_combout\ = (\CNT_0|tmp_cnt_p1s\(3) & ((\CNT_0|tmp_cnt_p1s\(1)) # ((\CNT_0|tmp_cnt_p1s\(2))))) # (!\CNT_0|tmp_cnt_p1s\(3) & (\CNT_0|tmp_cnt_p1s\(2) & (\CNT_0|tmp_cnt_p1s\(1) $ (\CNT_0|tmp_cnt_p1s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(1),
	datab => \CNT_0|tmp_cnt_p1s\(0),
	datac => \CNT_0|tmp_cnt_p1s\(3),
	datad => \CNT_0|tmp_cnt_p1s\(2),
	combout => \SEG_DRV_P1S|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y33_N12
\SEG_DRV_P1S|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_DRV_P1S|Mux4~0_combout\ = (\CNT_0|tmp_cnt_p1s\(2) & (((\CNT_0|tmp_cnt_p1s\(3))))) # (!\CNT_0|tmp_cnt_p1s\(2) & (\CNT_0|tmp_cnt_p1s\(1) & ((\CNT_0|tmp_cnt_p1s\(3)) # (!\CNT_0|tmp_cnt_p1s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(1),
	datab => \CNT_0|tmp_cnt_p1s\(0),
	datac => \CNT_0|tmp_cnt_p1s\(3),
	datad => \CNT_0|tmp_cnt_p1s\(2),
	combout => \SEG_DRV_P1S|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y33_N6
\SEG_DRV_P1S|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_DRV_P1S|Mux3~0_combout\ = (\CNT_0|tmp_cnt_p1s\(1) & ((\CNT_0|tmp_cnt_p1s\(3)) # ((\CNT_0|tmp_cnt_p1s\(0) & \CNT_0|tmp_cnt_p1s\(2))))) # (!\CNT_0|tmp_cnt_p1s\(1) & ((\CNT_0|tmp_cnt_p1s\(2)) # ((\CNT_0|tmp_cnt_p1s\(0) & !\CNT_0|tmp_cnt_p1s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(1),
	datab => \CNT_0|tmp_cnt_p1s\(0),
	datac => \CNT_0|tmp_cnt_p1s\(3),
	datad => \CNT_0|tmp_cnt_p1s\(2),
	combout => \SEG_DRV_P1S|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y33_N28
\SEG_DRV_P1S|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_DRV_P1S|Mux2~0_combout\ = (\CNT_0|tmp_cnt_p1s\(1) & ((\CNT_0|tmp_cnt_p1s\(0)) # ((\CNT_0|tmp_cnt_p1s\(3))))) # (!\CNT_0|tmp_cnt_p1s\(1) & ((\CNT_0|tmp_cnt_p1s\(0) & ((\CNT_0|tmp_cnt_p1s\(3)) # (!\CNT_0|tmp_cnt_p1s\(2)))) # (!\CNT_0|tmp_cnt_p1s\(0) & 
-- ((\CNT_0|tmp_cnt_p1s\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(1),
	datab => \CNT_0|tmp_cnt_p1s\(0),
	datac => \CNT_0|tmp_cnt_p1s\(3),
	datad => \CNT_0|tmp_cnt_p1s\(2),
	combout => \SEG_DRV_P1S|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y33_N14
\SEG_DRV_P1S|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_DRV_P1S|Mux1~0_combout\ = (\CNT_0|tmp_cnt_p1s\(0) & ((\CNT_0|tmp_cnt_p1s\(1)) # (\CNT_0|tmp_cnt_p1s\(3) $ (!\CNT_0|tmp_cnt_p1s\(2))))) # (!\CNT_0|tmp_cnt_p1s\(0) & ((\CNT_0|tmp_cnt_p1s\(2) & ((\CNT_0|tmp_cnt_p1s\(3)))) # (!\CNT_0|tmp_cnt_p1s\(2) & 
-- (\CNT_0|tmp_cnt_p1s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(1),
	datab => \CNT_0|tmp_cnt_p1s\(0),
	datac => \CNT_0|tmp_cnt_p1s\(3),
	datad => \CNT_0|tmp_cnt_p1s\(2),
	combout => \SEG_DRV_P1S|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y33_N0
\SEG_DRV_P1S|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_DRV_P1S|Mux0~0_combout\ = (\CNT_0|tmp_cnt_p1s\(1) & (!\CNT_0|tmp_cnt_p1s\(3) & ((!\CNT_0|tmp_cnt_p1s\(2)) # (!\CNT_0|tmp_cnt_p1s\(0))))) # (!\CNT_0|tmp_cnt_p1s\(1) & ((\CNT_0|tmp_cnt_p1s\(3) $ (\CNT_0|tmp_cnt_p1s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p1s\(1),
	datab => \CNT_0|tmp_cnt_p1s\(0),
	datac => \CNT_0|tmp_cnt_p1s\(3),
	datad => \CNT_0|tmp_cnt_p1s\(2),
	combout => \SEG_DRV_P1S|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y32_N18
\SEG_DRV_P01S|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_DRV_P01S|Mux6~0_combout\ = (\CNT_0|tmp_cnt_p01s\(1) & (\CNT_0|tmp_cnt_p01s\(3))) # (!\CNT_0|tmp_cnt_p01s\(1) & (\CNT_0|tmp_cnt_p01s\(2) $ (((!\CNT_0|tmp_cnt_p01s\(3) & \CNT_0|tmp_cnt_p01s\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(1),
	datab => \CNT_0|tmp_cnt_p01s\(3),
	datac => \CNT_0|tmp_cnt_p01s\(0),
	datad => \CNT_0|tmp_cnt_p01s\(2),
	combout => \SEG_DRV_P01S|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y32_N28
\SEG_DRV_P01S|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_DRV_P01S|Mux5~0_combout\ = (\CNT_0|tmp_cnt_p01s\(3) & ((\CNT_0|tmp_cnt_p01s\(1)) # ((\CNT_0|tmp_cnt_p01s\(2))))) # (!\CNT_0|tmp_cnt_p01s\(3) & (\CNT_0|tmp_cnt_p01s\(2) & (\CNT_0|tmp_cnt_p01s\(1) $ (\CNT_0|tmp_cnt_p01s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(1),
	datab => \CNT_0|tmp_cnt_p01s\(3),
	datac => \CNT_0|tmp_cnt_p01s\(0),
	datad => \CNT_0|tmp_cnt_p01s\(2),
	combout => \SEG_DRV_P01S|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y32_N26
\SEG_DRV_P01S|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_DRV_P01S|Mux4~0_combout\ = (\CNT_0|tmp_cnt_p01s\(2) & (((\CNT_0|tmp_cnt_p01s\(3))))) # (!\CNT_0|tmp_cnt_p01s\(2) & (\CNT_0|tmp_cnt_p01s\(1) & ((\CNT_0|tmp_cnt_p01s\(3)) # (!\CNT_0|tmp_cnt_p01s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(1),
	datab => \CNT_0|tmp_cnt_p01s\(3),
	datac => \CNT_0|tmp_cnt_p01s\(0),
	datad => \CNT_0|tmp_cnt_p01s\(2),
	combout => \SEG_DRV_P01S|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y32_N24
\SEG_DRV_P01S|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_DRV_P01S|Mux3~0_combout\ = (\CNT_0|tmp_cnt_p01s\(1) & ((\CNT_0|tmp_cnt_p01s\(3)) # ((\CNT_0|tmp_cnt_p01s\(0) & \CNT_0|tmp_cnt_p01s\(2))))) # (!\CNT_0|tmp_cnt_p01s\(1) & ((\CNT_0|tmp_cnt_p01s\(2)) # ((!\CNT_0|tmp_cnt_p01s\(3) & 
-- \CNT_0|tmp_cnt_p01s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(1),
	datab => \CNT_0|tmp_cnt_p01s\(3),
	datac => \CNT_0|tmp_cnt_p01s\(0),
	datad => \CNT_0|tmp_cnt_p01s\(2),
	combout => \SEG_DRV_P01S|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y32_N14
\SEG_DRV_P01S|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_DRV_P01S|Mux2~0_combout\ = (\CNT_0|tmp_cnt_p01s\(1) & ((\CNT_0|tmp_cnt_p01s\(3)) # ((\CNT_0|tmp_cnt_p01s\(0))))) # (!\CNT_0|tmp_cnt_p01s\(1) & ((\CNT_0|tmp_cnt_p01s\(0) & ((\CNT_0|tmp_cnt_p01s\(3)) # (!\CNT_0|tmp_cnt_p01s\(2)))) # 
-- (!\CNT_0|tmp_cnt_p01s\(0) & ((\CNT_0|tmp_cnt_p01s\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(1),
	datab => \CNT_0|tmp_cnt_p01s\(3),
	datac => \CNT_0|tmp_cnt_p01s\(0),
	datad => \CNT_0|tmp_cnt_p01s\(2),
	combout => \SEG_DRV_P01S|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y32_N12
\SEG_DRV_P01S|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_DRV_P01S|Mux1~0_combout\ = (\CNT_0|tmp_cnt_p01s\(0) & ((\CNT_0|tmp_cnt_p01s\(1)) # (\CNT_0|tmp_cnt_p01s\(3) $ (!\CNT_0|tmp_cnt_p01s\(2))))) # (!\CNT_0|tmp_cnt_p01s\(0) & ((\CNT_0|tmp_cnt_p01s\(2) & ((\CNT_0|tmp_cnt_p01s\(3)))) # 
-- (!\CNT_0|tmp_cnt_p01s\(2) & (\CNT_0|tmp_cnt_p01s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(1),
	datab => \CNT_0|tmp_cnt_p01s\(3),
	datac => \CNT_0|tmp_cnt_p01s\(0),
	datad => \CNT_0|tmp_cnt_p01s\(2),
	combout => \SEG_DRV_P01S|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y32_N2
\SEG_DRV_P01S|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_DRV_P01S|Mux0~0_combout\ = (\CNT_0|tmp_cnt_p01s\(1) & (!\CNT_0|tmp_cnt_p01s\(3) & ((!\CNT_0|tmp_cnt_p01s\(2)) # (!\CNT_0|tmp_cnt_p01s\(0))))) # (!\CNT_0|tmp_cnt_p01s\(1) & (\CNT_0|tmp_cnt_p01s\(3) $ (((\CNT_0|tmp_cnt_p01s\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_0|tmp_cnt_p01s\(1),
	datab => \CNT_0|tmp_cnt_p01s\(3),
	datac => \CNT_0|tmp_cnt_p01s\(0),
	datad => \CNT_0|tmp_cnt_p01s\(2),
	combout => \SEG_DRV_P01S|Mux0~0_combout\);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_10S[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_10S(0));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_10S[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_10S(1));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_10S[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_10S(2));

-- Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_10S[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_10S(3));

-- Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_10S[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_10S(4));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_10S[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_10S(5));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_10S[6]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_10S(6));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_1S[0]~I\ : cycloneii_io
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
	datain => \SEG_DRV_1S|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_1S(0));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_1S[1]~I\ : cycloneii_io
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
	datain => \SEG_DRV_1S|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_1S(1));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_1S[2]~I\ : cycloneii_io
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
	datain => \SEG_DRV_1S|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_1S(2));

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_1S[3]~I\ : cycloneii_io
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
	datain => \SEG_DRV_1S|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_1S(3));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_1S[4]~I\ : cycloneii_io
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
	datain => \SEG_DRV_1S|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_1S(4));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_1S[5]~I\ : cycloneii_io
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
	datain => \SEG_DRV_1S|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_1S(5));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_1S[6]~I\ : cycloneii_io
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
	datain => \SEG_DRV_1S|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_1S(6));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_P1S[0]~I\ : cycloneii_io
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
	datain => \SEG_DRV_P1S|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_P1S(0));

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_P1S[1]~I\ : cycloneii_io
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
	datain => \SEG_DRV_P1S|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_P1S(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_P1S[2]~I\ : cycloneii_io
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
	datain => \SEG_DRV_P1S|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_P1S(2));

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_P1S[3]~I\ : cycloneii_io
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
	datain => \SEG_DRV_P1S|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_P1S(3));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_P1S[4]~I\ : cycloneii_io
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
	datain => \SEG_DRV_P1S|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_P1S(4));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_P1S[5]~I\ : cycloneii_io
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
	datain => \SEG_DRV_P1S|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_P1S(5));

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_P1S[6]~I\ : cycloneii_io
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
	datain => \SEG_DRV_P1S|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_P1S(6));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_P01S[0]~I\ : cycloneii_io
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
	datain => \SEG_DRV_P01S|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_P01S(0));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_P01S[1]~I\ : cycloneii_io
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
	datain => \SEG_DRV_P01S|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_P01S(1));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_P01S[2]~I\ : cycloneii_io
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
	datain => \SEG_DRV_P01S|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_P01S(2));

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_P01S[3]~I\ : cycloneii_io
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
	datain => \SEG_DRV_P01S|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_P01S(3));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_P01S[4]~I\ : cycloneii_io
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
	datain => \SEG_DRV_P01S|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_P01S(4));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_P01S[5]~I\ : cycloneii_io
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
	datain => \SEG_DRV_P01S|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_P01S(5));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG_OUT_P01S[6]~I\ : cycloneii_io
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
	datain => \SEG_DRV_P01S|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG_OUT_P01S(6));
END structure;


