library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity clk_div is
    port(
        CLK      :   in std_logic;
        RST         :   in std_logic;
        CLK_100HZ   :   out std_logic
    );
end clk_div;

architecture behave of clk_div is
signal tmp_clk_100hz : std_logic;
signal tmp_cnt : std_logic_vector(21 downto 0);

begin
    --CLK_2 만들기
    process(CLK,RST)
    begin
        if RST = '0' then
            tmp_clk_100hz <= '0';
			tmp_cnt<= (others => '0');
        elsif CLK = '1' and CLK'event then
            if tmp_cnt = "111101000010001111" then
                tmp_clk_100hz <= not(tmp_clk_100hz);
                tmp_cnt <= (others => '0');
            else
                tmp_cnt <= tmp_cnt + 1;
            end if;
        end if;
    end process;

    CLK_100HZ <= tmp_clk_100hz;
end behave;