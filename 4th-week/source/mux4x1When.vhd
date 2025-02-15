library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity test is

    port(
        A   : in std_logic_vector (3 downto 0);
        B   : in std_logic_vector (3 downto 0);
        C   : in std_logic_vector (3 downto 0);
        D   : in std_logic_vector (3 downto 0);
        SEL : in std_logic_vector (1 downto 0);
        Y   : in std_logic_vector (3 downto 0)
    );

end test;

architecture mux4x1When of test is
begin
    
    Y   <=  A when sel = "00" else
            B when SEL = "01" else
            C when SEL = "10" else
            D;

end mux4x1When;