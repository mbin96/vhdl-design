Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity FND_DRIVER is


port(	CURRENT_STATE : in std_logic_vector (1 downto 0);
		TIME_10H	: in std_logic_vector(3 downto 0);
		TIME_01H	: in std_logic_vector(3 downto 0);
		TIME_10M	: in std_logic_vector(3 downto 0);
		TIME_01M	: in std_logic_vector(3 downto 0);
		TIME_10S	: in std_logic_vector(3 downto 0);
		TIME_01S	: in std_logic_vector(3 downto 0);
		FND_10H		: out std_logic_vector(6 downto 0);
		FND_01H		: out std_logic_vector(6 downto 0);
		FND_10M		: out std_logic_vector(6 downto 0);
		FND_01M		: out std_logic_vector(6 downto 0);
		FND_10S		: out std_logic_vector(6 downto 0);
		FND_01S		: out std_logic_vector(6 downto 0);
		FND_ST1		: out std_logic_vector(6 downto 0);
		FND_ST0		: out std_logic_vector(6 downto 0));
		
end FND_DRIVER;

architecture BEHAVE of FND_DRIVER is

component seg_drv is
port(	CNT_IN	: in std_logic_vector(3 downto 0);
		SEG_OUT	: out std_logic_vector(6 downto 0));
end component;


signal tmp_state1 : std_logic_vector(3 downto 0);
signal tmp_state0 : std_logic_vector(3 downto 0);

begin

SEG_DRV_10H	: seg_drv
port map(	CNT_IN		=> TIME_10H,
			SEG_OUT		=> FND_10H);

SEG_DRV_01H	: seg_drv
port map(	CNT_IN		=> TIME_01H,
			SEG_OUT		=> FND_01H);
			
SEG_DRV_10M	: seg_drv
port map(	CNT_IN		=> TIME_10M,
			SEG_OUT		=> FND_10M);

SEG_DRV_01M	: seg_drv
port map(	CNT_IN		=> TIME_01M,
			SEG_OUT		=> FND_01M);
			
SEG_DRV_10S	: seg_drv
port map(	CNT_IN		=> TIME_10S,
			SEG_OUT		=> FND_10S);

SEG_DRV_01S	: seg_drv
port map(	CNT_IN		=> TIME_01S,
			SEG_OUT		=> FND_01S);			
		

with CURRENT_STATE select
	tmp_state1 	<= "1011" when "00",
				"1010" when "01",
				"0101" when "10",
				"1111" when others;


with CURRENT_STATE select
	tmp_state0 	<= "1101" when "00",
				"1101" when "01",
				"1100" when "10",
				"1111" when others;

SEG_DRV_ST1 : seg_drv
port map(	CNT_IN		=> tmp_state1,
			SEG_OUT		=> FND_ST1);	

SEG_DRV_ST0 : seg_drv
port map(	CNT_IN		=> tmp_state0,
			SEG_OUT		=> FND_ST0);	


end BEHAVE;