library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsignd.all;

entity  d_latch is
    port(
        D   : in std_logic;
        EN  : in std_logic;
        Q   : out std_logic;
        nQ  : out std_logic;
        SET : in std_logic;
        RST : in std_logic
    );

end d_latch;

architecture behave of d_latch is
begin

    process (EN, D, RST)--출력에 영향을 줄것같은것 다 적기
    begin
        if RST = '0' then
            Q <= '0';
        elsif EN = '1' then
            Q   <= D;
        else NULL;
        end if;
        nQ <= not(Q);
    end process;

    nQ <= not(Q);

    --------------------잘못된 코딩-----------------------------
    process (EN, D, RST)
    begin
        if RST = '0' then
            Q <= '0';
            nQ <= '1';
        elsif EN = '1' then
            Q   <= D;
            nq <= not(D);
        else NULL;
        end if;
    end process;
------------------------------------------------------------------

end behave