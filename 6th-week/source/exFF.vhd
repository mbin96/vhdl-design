library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsignd.all;

entity  d_FF is
    port(
        D   : in std_logic;
        CLK : in std_logic;
        Q   : out std_logic;
        nQ  : out std_logic;
        SET : in std_logic;
        RST : in std_logic
    );

end d_FF;

architecture behave of d_FF is
begin

    process (RST, CLK)
    --FF은 클릭이 변할때에만 값이 변하므로 CLK만 상승엣지임을 확인하면 다른신호는 확인하지 않아도 괜찮다.
    --D값은 없어도 된다. D값은 홀드타임이 있어야함.
    begin

        --if SET = '0' then
            --Q <= '1';
        if RST = '0' then
            Q <= '0';
        --상승엣지
        elsif CLK = '1' and CLK'event then --if rising_edge(CLK) then 써도 된다.
            Q <= D;

        --하강엣지
        --if CLK = '0' and CLK'event then --if falling_edge(CLK) then 써도 된다.

        end if;--else NULL;생략됨
    end process;

    nQ <= not(Q); -- temp signal만들어서 해야함

end behave