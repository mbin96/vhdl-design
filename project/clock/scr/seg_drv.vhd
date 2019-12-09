Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity seg_drv is
port(	CNT_IN	: in std_logic_vector(3 downto 0);
		SEG_OUT	: out std_logic_vector(6 downto 0));
end seg_drv;

architecture BEHAVE of seg_drv is
begin

	process(CNT_IN)
	begin
		case CNT_IN is
		when "0000" => SEG_OUT <= "1000000";
		when "0001" => SEG_OUT <= "1111001";
		when "0010" => SEG_OUT <= "0100100";
		when "0011" => SEG_OUT <= "0110000";
		when "0100" => SEG_OUT <= "0011001";
		when "0101" => SEG_OUT <= "0010010";
		when "0110" => SEG_OUT <= "0000010";
		when "0111" => SEG_OUT <= "1111000";
		when "1000" => SEG_OUT <= "0000000";
		when "1001" => SEG_OUT <= "0010000";
		when "1010" => SEG_OUT <= "0001000";--A
		when "1011" => SEG_OUT <= "0100111";--C
		when "1100" => SEG_OUT <= "0000111";--T
		when "1101" => SEG_OUT <= "1000111";--L
		when others => SEG_OUT <= "0111111";
		end case;
	end process;

end BEHAVE;
