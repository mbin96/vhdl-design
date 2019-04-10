library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity test is

    port(
        A   : in std_logic_vector (3 downto 0);
        B   : in std_logic_vector (3 downto 0);
        C   : in std_logic_vector (3 downto 0);
        D   : in std_logic_vector (3 downto 0);
        SEL : in std_logic_vector (3 downto 0);
        Y   : in std_logic_vector (3 downto 0)
    );
    
end test;

architecture behave of test is
begin
    
    with SEL select
        Y   <=  A   when "00",
                B   when "01",
                C   when "10",
                D   when others;

end behave;
