Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity shift_reg is
    port(
        CLK :   in std_logic;
        RST :   in std_logic;
        SW  :   in std_logic;
        LED :   out std_logic_vector(7 downto 0)
    );
end shift_reg;

architecture BEHAVE of shift_reg is
    signal sw_1d    :std_logic;
    signal sw_2d    :std_logic;
    signal sw_catch :std_logic;
    signal tmp_led  :std_logic_vector(7 downto 0);
begin
    process(CLK,RST)
    begin 
        if RST = '0' then
            sw_1d <= '1';
            sw_2d <= '1';
        elsif CLK = '1' and CLK'event then
            sw_1d <= SW;
            sw_2d <= sw_1d;
        end if;
    end process;

    sw_catch <= '0' when (sw_1d = '0' and sw_2d = '1') else '1';

    process(CLK,RST)
    begin 
        if RST = '0' then
            tmp_led <= "00000001";
        elsif CLK = '1' and CLK'event then
            if sw_catch = '0' then
                tmp_led <= tmp_led(6 downto 0) & tmp_led(7); -- led 를 순차적으로 
            end if;
        end if;
    end process;

end BEHAVE;
