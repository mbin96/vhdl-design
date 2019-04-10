library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY test is    

    port(  
        A   : in std_logic_vector (3 downto 0);     
        B   : in std_logic;                         
        C   : in std_logic;                       
        D   : in std_logic;
        SEL : in std_logic_vector (1 downto 0);
        Y   : out std_logic
    );

end test;

architecture behave OF test is          
begin                                  
    
    process(A, B, C, D, SEL)        
    begin  

        if (SEL = "00") then    
            Y <= A;
        elsif (SEL = "01") then
            Y <= B;
        elsif (SEL = "10") then
            Y <= C;
        else                   
            Y <= D;            
        end if;      

    end process;

END behave; 