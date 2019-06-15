Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tb_sw_input is
end tb_sw_input;

architecture TB of tb_sw_input is

component sw_input is
port(	CLK		: in std_logic;
		RST		: in std_logic;
		SW_IN	: in std_logic;
		SW_CLR	: out std_logic);
end component;

signal CLK		: std_logic := '0';
signal RST		: std_logic;
signal SW_IN	: std_logic;
signal SW_CLR	: std_logic;

begin

sw_input_0 : sw_input
port map(	CLK		=> CLK,
			RST		=> RST,
			SW_IN	=> SW_IN,
			SW_CLR	=> SW_CLR);
			
	RST <= '0', '1' after 200 ns;

	process		-- CLK : 10MHz
	begin
		CLK <= not(CLK);
		wait for 10 ns;
	end process;
	
	SW_IN <=	
		'1',
		'0' after 500 ns,
		'1' after 700 ns,
		'0' after 1000 ns,
		'1' after 1400 ns,
		'0' after 2000 ns,
		'1' after 10000 ns,
		'0' after 30 ms,
		'1' after 45 ms,
		'0' after 45100 us,
		'1' after 45150 us,
		'0' after 45200 us,
		'1' after 45210 us;
end TB;
