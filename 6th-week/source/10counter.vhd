library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsignd.all;

entity  cnt16 is
    port(
        CLK : in std_logic;
        RST : in std_logic;
        CNT : out std_logic_vector(3 downto 0)
    );

end cnt16;

architecture behave of cnt16 is
signal tempCNT : std_logic;
begin
    process (RST, CLK)
    begin

        if RST = '0' then  
            tempCNT <= "0000"; --tempCNT <= (others => '0')도 사용가능
        elsif CLK = '1' anf CLK'event then
            if tempCNT = "1001" then --9면 0xA가 아니라 0으로
                tempCNT <= (others => '0');
            else 
                tempCNT <= tempCNT + 1;
            end if;
        end if;

    end process;

    CNT <= tempCNT; -- temp signal만들어서 해야함

end behave