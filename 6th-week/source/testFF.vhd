library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsignd.all;

entity  test_FF is
    port(
        A   : in std_logic;
        Y   : out std_logic;
        RST : in std_logic;
        CLK : in std_logic
    );

end test_FF;

architecture behave of d_FF is
signal b : std_logic;
begin
    process (RST, CLK)
    begin

        if RST = '0' then
            Y <= '0';
            b <= '0';
        --상승엣지
        elsif CLK = '1' and CLK'event then --if rising_edge(CLK) then 써도 된다.
            b <= A; --플립플롭 b 생김
            Y <= b; --플립플롭 y 생김. 총 두개생김
        end if;--else NULL;생략됨
    end process;

    nQ <= not(Q); -- temp signal만들어서 해야함

end behave