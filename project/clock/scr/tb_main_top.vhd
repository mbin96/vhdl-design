Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tb_main_top is
end tb_main_top;

architecture TB of tb_main_top is

component main_top is
port(	SW1 			: in std_logic; --start/stop/up/snooze
		SW2 			: in std_logic; --mode
		SW3 			: in std_logic;	--adjust
		SW0 			: in std_logic; --reset
		TOGGLE_SW0 		: in std_logic;
		CLK 			: in std_logic;
		FND0			: out std_logic_vector(6 downto 0);--01S
		FND1 			: out std_logic_vector(6 downto 0);--10S
		FND2 			: out std_logic_vector(6 downto 0);--01M
		FND3 			: out std_logic_vector(6 downto 0);--10M
		FND4 			: out std_logic_vector(6 downto 0);--01H
		FND5 			: out std_logic_vector(6 downto 0);--10H
		FND6 			: out std_logic_vector(6 downto 0);--st1
		FND7 			: out std_logic_vector(6 downto 0);--st0
		LEDG8 			: out std_logic;
		LEDR 			: out std_logic_vector(17 downto 0));
end component;
signal	SW1 		: std_logic := '1'; --start/stop/up/snooze	
signal	SW2 		: std_logic := '1'; --mode	
signal	SW3 		: std_logic := '1';	--adjust	
signal	SW0 		: std_logic := '1'; --reset	
signal	TOGGLE_SW0 	: std_logic := '1';
signal	FND0 		: std_logic_vector(6 downto 0);--01S	
signal	FND1 		: std_logic_vector(6 downto 0);--10S	
signal	FND2 		: std_logic_vector(6 downto 0);--01M	
signal	FND3 		: std_logic_vector(6 downto 0);--10M	
signal	FND4 		: std_logic_vector(6 downto 0);--01H	
signal	FND5 		: std_logic_vector(6 downto 0);--10H	
signal	FND6 		: std_logic_vector(6 downto 0);--st1	
signal	FND7 		: std_logic_vector(6 downto 0);--st0	
signal	LEDG8 		: std_logic;	
signal	LEDR 		: std_logic_vector(17 downto 0);	
signal  CLK         : std_logic := '0';
    
begin

    main_top_0 : main_top
 port map(	SW1 		=> SW1, 		
			SW2 		=> SW2, 		
			SW3 		=> SW3, 		
			SW0 		=> SW0 ,		
			TOGGLE_SW0 	=> TOGGLE_SW0, 	
			CLK 		=> CLK, 		
			------------=> 		
			FND0 		=> FND0, 		
			FND1 		=> FND1, 		
			FND2 		=> FND2, 		
			FND3 		=> FND3, 		
			FND4 		=> FND4, 		
			FND5 		=> FND5, 		
			FND6 		=> FND6, 		
			FND7 		=> FND7, 		
			LEDG8 		=> LEDG8, 
			LEDR 		=> LEDR );
    SW0 <= 	
        '0',
	    '1' after 200 ns;
	
	SW2 <= '0' after 100 ms, '1' after 300 ms,'0' after 500 ms, '1' after 700 ms;
	
	SW1 <= '0' after 800 ms, '1' after 1000 ms,'0' after 2000 ms, '1' after 2200 ms;
	
    process
	begin
		CLK <= not(CLK);
		wait for 10 ns;
	end process;

end TB;


