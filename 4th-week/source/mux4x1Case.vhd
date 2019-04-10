library IEEE;
use ieee.std_logic_1164.all;
use ieee.std.logic-unsigned.all;

ENTITY test is
    port(   
    A   : in std_logic_vector (3 downto 0);
    B   : in std_logic_vector (3 downto 0);
    C   : in std_logic_vector (3 downto 0);
    D   : in std_logic_vector (3 downto 0);
    SEL : in std_logic_vector (3 downto 0);
    Y   : in std_logic_vector (3 downto 0)
    );
end test;

architecture behave OF text is

begin
    process(A, B, C, D, SEL)
    begin
        case SEL is
            when "00" =>    
                Y <= A;
            when "01" =>    
                Y <= B;
            when "10" =>    
                Y <= C;
            when others =>  
                Y <= D;
        end case;
    end process;
end behave;
