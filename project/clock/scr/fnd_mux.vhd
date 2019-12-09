Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity FND_mux is
port(	A_TIME_10H		: in std_logic_vector(3 downto 0);
		A_TIME_1H		: in std_logic_vector(3 downto 0);
		A_TIME_10M		: in std_logic_vector(3 downto 0);
		A_TIME_1M		: in std_logic_vector(3 downto 0);
		A_TIME_10S		: in std_logic_vector(3 downto 0);
		A_TIME_1S		: in std_logic_vector(3 downto 0);
		C_TIME_10H		: in std_logic_vector(3 downto 0);
		C_TIME_1H		: in std_logic_vector(3 downto 0);
		C_TIME_10M		: in std_logic_vector(3 downto 0);
		C_TIME_1M		: in std_logic_vector(3 downto 0);
		C_TIME_10S		: in std_logic_vector(3 downto 0);
		C_TIME_1S		: in std_logic_vector(3 downto 0);
		S_TIME_10M		: in std_logic_vector(3 downto 0);
		S_TIME_01M		: in std_logic_vector(3 downto 0);
		S_TIME_10S		: in std_logic_vector(3 downto 0);
		S_TIME_01S		: in std_logic_vector(3 downto 0);
		S_TIME_P1S		: in std_logic_vector(3 downto 0);
		S_TIME_P01S		: in std_logic_vector(3 downto 0);
		CURRENT_STATE	: in std_logic_vector(1 downto 0);
		TIME_10H		: out std_logic_vector(3 downto 0);
		TIME_1H			: out std_logic_vector(3 downto 0);
		TIME_10M		: out std_logic_vector(3 downto 0);
		TIME_1M			: out std_logic_vector(3 downto 0);
		TIME_10S		: out std_logic_vector(3 downto 0);
		TIME_1S			: out std_logic_vector(3 downto 0)
);
end FND_mux;

architecture BEHAVE of FND_mux is

constant clock_S : std_logic_vector(1 downto 0) := "00";
constant alarm_s : std_logic_vector(1 downto 0) := "01";
constant stopwatch_s : std_logic_vector(1 downto 0) := "10";

begin
	process(C_TIME_1S,A_TIME_1S,S_TIME_P01S, CURRENT_STATE)
	begin
		case CURRENT_STATE is
		when clock_S =>
			TIME_10H	<= C_TIME_10H;
			TIME_1H		<= C_TIME_1H;
			TIME_10M	<= C_TIME_10M;			
			TIME_1M		<= C_TIME_1M;		
			TIME_10S	<= C_TIME_10S;			
			TIME_1S		<= C_TIME_1S;
		when alarm_s =>
			TIME_10H	<= A_TIME_10H;
			TIME_1H		<= A_TIME_1H;
			TIME_10M	<= A_TIME_10M;			
			TIME_1M		<= A_TIME_1M;		
			TIME_10S	<= A_TIME_10S;			
			TIME_1S		<= A_TIME_1S;
		when stopwatch_s =>
			TIME_10H	<= S_TIME_10M;
			TIME_1H		<= S_TIME_01M;
			TIME_10M	<= S_TIME_10S;			
			TIME_1M		<= S_TIME_01S;		
			TIME_10S	<= S_TIME_P1S;			
			TIME_1S		<= S_TIME_P01S;
		when others =>
			TIME_10H	<= C_TIME_10H;
			TIME_1H		<= C_TIME_1H;
			TIME_10M	<= C_TIME_10M;			
			TIME_1M		<= C_TIME_1M;		
			TIME_10S	<= C_TIME_10S;			
			TIME_1S		<= C_TIME_1S;
		end case;
	end process;
			
end BEHAVE;