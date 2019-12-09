
Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tb_alarm is
end tb_alarm;

architecture TB of tb_alarm is

component alarm is
port(   
		CLK         	: in std_logic;               -- 50MHz
		RST         	: in std_logic;               -- /RST SW;
		C_TIME_10H		: in std_logic_vector(3 downto 0);
		C_TIME_01H		: in std_logic_vector(3 downto 0);
		C_TIME_10M		: in std_logic_vector(3 downto 0);
		C_TIME_01M		: in std_logic_vector(3 downto 0);
		ALARM_TOGGLE	: in std_logic;
		A_UP_SHORT	    : in  std_logic;
		A_UP_LONG		: in  std_logic;
		A_ADJUST_LONG	: in  std_logic;
		A_MODE			: in  std_logic;
		EN_ADJUST 		: out std_logic;
		A_TIME_10H		: out std_logic_vector(3 downto 0);
		A_TIME_01H		: out std_logic_vector(3 downto 0);
		A_TIME_10M		: out std_logic_vector(3 downto 0);
		A_TIME_01M		: out std_logic_vector(3 downto 0);
		A_TIME_10S		: out std_logic_vector(3 downto 0);
		A_TIME_01S		: out std_logic_vector(3 downto 0);
		LEDR			: out std_logic_vector(17 downto 0)
);
end component alarm;


signal CLK          : std_logic := '0';
signal RST          : std_logic;
signal C_TIME_10M		: std_logic_vector(3 downto 0);
signal C_TIME_10H		: std_logic_vector(3 downto 0);
signal C_TIME_01H		: std_logic_vector(3 downto 0);
signal C_TIME_01M		: std_logic_vector(3 downto 0);
signal ALARM_TOGGLE	: std_logic;
signal A_UP_SHORT	    	: std_logic;
signal A_UP_LONG	: std_logic;
signal A_ADJUST_LONG		: std_logic;
signal A_MODE				: std_logic;
signal EN_ADJUST 	: std_logic;
signal A_TIME_10H		: std_logic_vector(3 downto 0);
signal A_TIME_01H		: std_logic_vector(3 downto 0);
signal A_TIME_10M		: std_logic_vector(3 downto 0);
signal A_TIME_01M		: std_logic_vector(3 downto 0);
signal LEDR				: std_logic_vector(17 downto 0);

begin

alarm_0 : alarm
port map(   CLK     		 => CLK,
            RST    		 => RST,
				C_TIME_10H	 => C_TIME_10H,
				C_TIME_01H 	 => C_TIME_01H,
				C_TIME_10M   => C_TIME_10M,
				C_TIME_01M   => C_TIME_01M,					
				ALARM_TOGGLE => ALARM_TOGGLE,
				A_UP_SHORT  	 => A_UP_SHORT,
				A_UP_LONG  	 => A_UP_LONG,
				A_ADJUST_LONG	 =>A_ADJUST_LONG,
				A_MODE			 => A_MODE,
				EN_ADJUST	=> EN_ADJUST,
				A_TIME_10H	 =>A_TIME_10H,
				A_TIME_01H   =>A_TIME_01H,
				A_TIME_10M	 =>A_TIME_10M,
				A_TIME_01M	 =>A_TIME_01M,
				LEDR			 =>LEDR
				);
   process
   begin
      CLK <= not CLK;
      wait for 100 ns;
   end process;
   
   RST    <=  '0',
	 '1' after 100 ns;   

	A_UP_LONG <= '1',
	'0' after 1000 ns;
	
	A_UP_SHORT<= '1',
		'0' after 101 ns,
		'1' after 300 ns, 
		'0' after 530 ns,
		'1' after 1000 ns,
		'0' after 23000 ns,
		'1' after 23200 ns;
		
	A_ADJUST_LONG <= '1',
		'0' after 99 ns,
		'1' after 250 ns;
	A_MODE <=  '1',
		'0' after 150 ns,
		'1' after 221 ns,
		'0' after 950 ns,
		'1' after 1001 ns;

	ALARM_TOGGLE <= '1';


	C_TIME_10H <= "0001";
	C_TIME_10M <= "0000";
	C_TIME_01H <= "1001";
	C_TIME_01M <= "0010";
					  
end TB;