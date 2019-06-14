Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tb_stop_watch_top is
end tb_stop_watch_top;

architecture TB of tb_stop_watch_top is

component stop_watch_top is
port(	CLK				: in std_logic;						-- 1MHz
		RST				: in std_logic;
		START_SW		: in std_logic;
		STOP_SW			: in std_logic;
		SEG_OUT_10S		: out std_logic_vector(6 downto 0);
		SEG_OUT_1S		: out std_logic_vector(6 downto 0);
		SEG_OUT_P1S		: out std_logic_vector(6 downto 0);
		SEG_OUT_P01S	: out std_logic_vector(6 downto 0));
end component;

signal CLK				: std_logic := '0';						-- 1MHz
signal RST				: std_logic;
signal START_SW			: std_logic;
signal STOP_SW			: std_logic;
signal SEG_OUT_10S		: std_logic_vector(6 downto 0);
signal SEG_OUT_1S		: std_logic_vector(6 downto 0);
signal SEG_OUT_P1S		: std_logic_vector(6 downto 0);
signal SEG_OUT_P01S		: std_logic_vector(6 downto 0);

begin

stop_watch_top_0 : stop_watch_top
port map(	CLK				=> CLK				,
			RST				=> RST				,
			START_SW		=> START_SW			,	
			STOP_SW			=> STOP_SW			,
			SEG_OUT_10S		=> SEG_OUT_10S		,
			SEG_OUT_1S		=> SEG_OUT_1S		,
			SEG_OUT_P1S		=> SEG_OUT_P1S		,
			SEG_OUT_P01S	=> SEG_OUT_P01S		);

	RST <= 	'0',
			'1' after 200 ns;
			
	process
	begin
		CLK <= not(CLK);
		wait for 500 ns;
	end process;

	START_SW <=	'1',
				'0' after 5000 ns,
				'1' after 7000 ns,
				'0' after 10000 ns,
				'1' after 14000 ns,
				'0' after 20000 ns,
				'1' after 100000 ns;
	
	STOP_SW	<= 	'1',
				'0' after 1000000 ns,
				'1' after 1001000 ns;

end TB;


