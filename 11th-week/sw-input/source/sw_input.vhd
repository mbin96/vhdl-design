Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity sw_input is
port(	CLK		: in std_logic;
		RST		: in std_logic;
		SW_IN	: in std_logic;
		SW_CLR	: out std_logic);
end sw_input;

architecture BEHAVE of sw_input is
signal sw_in_1d	: std_logic;
signal sw_cnt	: std_logic_vector(2 downto 0);

begin

	process(CLK, RST)
	begin
		if RST = '0' then
			sw_in_1d <= '1';
		elsif CLK = '1' and CLK'event then
			sw_in_1d <= SW_IN;
		end if;
	end process;
	
	process(CLK, RST)
	begin
		if RST = '0' then
			sw_cnt <= (others => '0');
		elsif CLK = '1' and CLK'event then
			if sw_in_1d = '1' then
				sw_cnt <= (others => '0');
			else
				if sw_cnt /= "101" then
					sw_cnt <= sw_cnt + 1;
				end if;
			end if;
		end if;
	end process;
	
--	SW_CLR <= '0' when sw_cnt = "101" else '1';

	process(CLK, RST)
	begin
		if RST = '0' then
			SW_CLR <= '1';
		elsif CLK = '1' and CLK'event then
			if sw_cnt = "101" then
				SW_CLR <= '0';
			else
				SW_CLR <= '1';
			end if;
		end if;
	end process;

end BEHAVE;
