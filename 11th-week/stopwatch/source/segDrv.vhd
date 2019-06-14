Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity segDrv is
port(	CNT_IN			: in std_logic_vector(3 downto 0);
		SEG_OUT		: out std_logic(6 downto 0)
	
    );
end segDrv;

architecture BEHAVE of segDrv is

begin
    --7segment print
    --진리표 알아서 채우세요
    --gfedcba순
    --when 0, led turn on
	process(CNT_IN)
	begin
        case CNT_IN is
            when "0000"=> SEGOUT <= "1000000";          --0
            when "0001"=> SEGOUT <= "1111001";          --1
            when "0010"=> SEGOUT <= "0100100";
            when "0011"=> SEGOUT <= "0110000";
            when "0100"=> SEGOUT <= "0011001";
            when "0101"=> SEGOUT <= "0000010";
            when "0111"=> SEGOUT <= "1111000";
            when "1000"=> SEGOUT <= "0000000";
            when "1001"=> SEGOUT <= "0010000";          --9
	end process;



end BEHAVE;
