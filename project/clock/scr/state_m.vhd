Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity state_m is
port(	CLK			: in std_logic;
		RST			: in std_logic;	
		SW  		: in std_logic;
		STATE		: out std_logic_vector(1 downto 0)
);
end state_m;

architecture BEHAVE of state_m is
signal tmp_state	: std_logic_vector(1 downto 0);
constant IDLE		: std_logic_vector(1 downto 0) := "00";
constant RUN		: std_logic_vector(1 downto 0) := "01";
constant PAUSE		: std_logic_vector(1 downto 0) := "10";
begin

	process(CLK)
	begin
		if RST = '0' then
			tmp_state <= IDLE;
		elsif CLK = '1' and CLK'event then
			case tmp_state is
			when IDLE =>
				if SW = '0' then
					tmp_state <= RUN;
				end if;
			when RUN =>
				if SW = '0' then
					tmp_state <= PAUSE;
				end if;
			when PAUSE =>
				if SW = '0' then
					tmp_state <= RUN;
				end if;
			when others =>
				tmp_state <= IDLE;
			end case;
		end if;
	end process;

	STATE <= tmp_state;

end BEHAVE;
