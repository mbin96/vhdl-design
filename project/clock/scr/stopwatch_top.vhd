Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity stopwatch_top is
port(	CLK				: in std_logic;						-- 1MHz
		RST				: in std_logic;
		SW_STARTSTOP	: in std_logic;
		SW_ADJUST_0		: in std_logic;
		S_LED	 		: out std_logic;
		S_TIME_10M	: out std_logic_vector(3 downto 0);
		S_TIME_01M	: out std_logic_vector(3 downto 0);
		S_TIME_10S	: out std_logic_vector(3 downto 0);
		S_TIME_01S	: out std_logic_vector(3 downto 0);
		S_TIME_P1S	: out std_logic_vector(3 downto 0);
		S_TIME_P01S : out std_logic_vector(3 downto 0));
end stopwatch_top;

architecture STRUCT of stopwatch_top is



component state_m is
port(	CLK			: in std_logic;
		RST			: in std_logic;
		SW			: in std_logic;
		STATE		: out std_logic_vector(1 downto 0)
);
end component;

signal state : std_logic_vector(1 downto 0);
signal tmp_led : std_logic ;

component stopwatch is
port(	CLK			: in std_logic;						-- 1MHz
		RST			: in std_logic;
		STATE		: in std_logic_vector(1 downto 0);
		CNT_10M		: out std_logic_vector(3 downto 0);
		CNT_1M		: out std_logic_vector(3 downto 0);
		CNT_10S		: out std_logic_vector(3 downto 0);
		CNT_1S		: out std_logic_vector(3 downto 0);
		CNT_P1S		: out std_logic_vector(3 downto 0);
		CNT_P01S	: out std_logic_vector(3 downto 0)
	);
end component;


signal cnt_p01s	: std_logic_vector(3 downto 0);
signal cnt_p1s	: std_logic_vector(3 downto 0);
signal cnt_10m	: std_logic_vector(3 downto 0);
signal cnt_1m	: std_logic_vector(3 downto 0);
signal cnt_10s	: std_logic_vector(3 downto 0);
signal cnt_1s	: std_logic_vector(3 downto 0);

signal rst_ad : std_logic;

begin
rst_ad <= RST and SW_ADJUST_0;


STATE_M_0 : state_m
port map(	CLK			=> CLK,
			RST			=> rst_ad,
			SW 			=> SW_STARTSTOP,
			STATE		=> state);

CNT_0 : stopwatch
port map(	CLK			=> CLK,
			RST			=> rst_ad,
			STATE		=> state,
			CNT_10M		=> cnt_10m,
			CNT_1M		=> cnt_1m,
			CNT_10S		=> cnt_10s,
			CNT_1S		=> cnt_1s,
			CNT_P01S		=> cnt_p01s,
			CNT_P1S		=> cnt_p1s
		);

process(CLK, RST)
   begin
			if RST = '0' then
            tmp_led <= '0';
			elsif (state = "01") then
				if ((cnt_p1s = "0101" or cnt_p1s = "0110" or cnt_p1s = "0111" or cnt_p1s = "1000" or cnt_p1s = "1001")and cnt_p01s = "0000") then
					tmp_led <= '1';
				elsif ((cnt_p1s = "0000" or cnt_p1s = "0001" or cnt_p1s = "0010" or cnt_p1s = "0011" or cnt_p1s = "0100") and cnt_p01s = "0000") then
					tmp_led <= '0';
         end if;
      end if;
end process;   	
			


S_TIME_10M	<= cnt_10m;	
S_TIME_01M	<= cnt_1m;
S_TIME_10S	<= cnt_10s;
S_TIME_01S	<= cnt_1s;	
S_TIME_P01S <= cnt_p01s;	
S_TIME_P1S	<= cnt_p1s;	
S_LED   	<= tmp_led;

end STRUCT;









