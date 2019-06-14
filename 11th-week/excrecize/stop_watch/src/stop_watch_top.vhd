Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity stop_watch_top is
port(	CLK				: in std_logic;						-- 1MHz
		RST				: in std_logic;
		START_SW		: in std_logic;
		STOP_SW			: in std_logic;
		SEG_OUT_10S		: out std_logic_vector(6 downto 0);
		SEG_OUT_1S		: out std_logic_vector(6 downto 0);
		SEG_OUT_P1S		: out std_logic_vector(6 downto 0);
		SEG_OUT_P01S	: out std_logic_vector(6 downto 0));
end stop_watch_top;

architecture STRUCT of stop_watch_top is

component sw_input is
port(	CLK		: in std_logic;
		RST		: in std_logic;
		SW_IN	: in std_logic;
		SW_CLR	: out std_logic);
end component;

signal start_sw_clr	: std_logic;
signal stop_sw_clr	: std_logic;

component state_m is
port(	CLK			: in std_logic;
		RST			: in std_logic;
		START_SW	: in std_logic;
		STOP_SW		: in std_logic;
		STATE		: out std_logic_vector(1 downto 0)
);
end component;

signal state : std_logic_vector(1 downto 0);

component cnt is
port(	CLK			: in std_logic;						-- 1MHz
		RST			: in std_logic;
		STATE		: in std_logic_vector(1 downto 0);
		CNT_10S		: out std_logic_vector(3 downto 0);
		CNT_1S		: out std_logic_vector(3 downto 0);
		CNT_P1S		: out std_logic_vector(3 downto 0);
		CNT_P01S	: out std_logic_vector(3 downto 0)
);
end component;

signal cnt_10s	: std_logic_vector(3 downto 0);
signal cnt_1s	: std_logic_vector(3 downto 0);
signal cnt_p1s	: std_logic_vector(3 downto 0);
signal cnt_p01s	: std_logic_vector(3 downto 0);

component seg_drv is
port(	CNT_IN	: in std_logic_vector(3 downto 0);
		SEG_OUT	: out std_logic_vector(6 downto 0));
end component;

begin

SW_INPUT_START : sw_input
port map(	CLK		=> CLK,
			RST		=> RST,
			SW_IN	=> START_SW,
			SW_CLR	=> start_sw_clr);

SW_INPUT_STOP : sw_input
port map(	CLK		=> CLK,
			RST		=> RST,
			SW_IN	=> STOP_SW,
			SW_CLR	=> stop_sw_clr);

STATE_M_0 : state_m
port map(	CLK			=> CLK,
			RST			=> RST,
			START_SW	=> start_sw_clr,
			STOP_SW		=> stop_sw_clr,
			STATE		=> state);

CNT_0 : cnt
port map(	CLK			=> CLK,
			RST			=> RST,
			STATE		=> state,
			CNT_10S		=> cnt_10s,
			CNT_1S		=> cnt_1s,
			CNT_P1S		=> cnt_p1s,
			CNT_P01S	=> cnt_p01s);

SEG_DRV_10S	: seg_drv
port map(	CNT_IN		=> cnt_10s,
			SEG_OUT		=> SEG_OUT_10S);

SEG_DRV_1S	: seg_drv
port map(	CNT_IN		=> cnt_1s,
			SEG_OUT		=> SEG_OUT_1S);
			
SEG_DRV_P1S	: seg_drv
port map(	CNT_IN		=> cnt_p1s,
			SEG_OUT		=> SEG_OUT_P1S);
			
SEG_DRV_P01S	: seg_drv
port map(	CNT_IN		=> cnt_p01s,
			SEG_OUT		=> SEG_OUT_P01S);			

end STRUCT;









