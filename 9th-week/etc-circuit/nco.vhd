library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity nco is
port(
    CLK_IN  :   in std_logic;
    RST     :   in std_logic;
    N       :   in std_logic_vector(15 downto 0);
    CLK_OUT :   out std_logic;
    
);
end nco;

architecture behave of nco is
signal nco_register : std_logic_vector(15 downto 0);
signal nco_register_1delay : std_logic;
begin

    
    process(CLK_IN,RST)
    begin
        if RST = '0' then
            nco_register <= (others => '0');
        elsif CLK_IN = '1' and CLK_IN'event then 
            nc```o_register <= nco_register + N;
        end if;
    end process;

    CLK_OUT <= nco_register(15);
    
    
    
    --듀티비 낮추기
    --FF에 통과시켜서 그거랑 원본이랑  NAND 취하기
    process(CLK_IN,RST)
    begin
        if RST = '0' then
            nco_register_1delay <= '0';
        elsif CLK_IN = '1' and CLK_IN'event then 
            nco_register_1delay <= nco_register(15);
        end if;
    end process;

    --1
    CLK_OUT <= '1'  when (nco_register(15) = '1' and nco_register_1delay = '0') 
                    else '0';
    
    --2
    process(CLK_IN,RST)
    begin
        if RST = '0' then
            CLK_OUT <= '0';
        elsif CLK_IN = '1' and CLK_IN'event then 
            CLK_OUT <= nco_register(15) and not(nco_register_15_1delay); 
        end if;
    end process;