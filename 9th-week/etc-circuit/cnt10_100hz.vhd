library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity  cnt10 is
    port(
        CLK : in std_logic;
        RST : in std_logic;
        CNT : out std_logic_vector(3 downto 0)
    );

end cnt10;

architecture behave of cnt10 is
signal tempCNT : std_logic_vector(3 downto 0);
signal clk_div_cnt : std_logic_vector(13 downto 0);
constant LIMIT : std_logic_vector(13 downto 0) := "10011100001111"; --9999
begin

    --10000을 세는 카운터 만들기
    process (RST, CLK)
    begin

        if RST = '0' then  
            clk_div_cnt <= (others => '0'); --tempCNT <= (others => '0')도 사용가능
        elsif CLK = '1' and CLK'event then
            if clk_div_cnt = "LIMIT" then --
                clk_div_cnt <= (others => '0');
            else 
                clk_div_cnt <= clk_div_cnt + 1;
            end if;
        end if;

    end process;

    --10000을 세고 다 세면 cnt 증가시키는 카운터 만들기
    process (RST, CLK)
    begin

        if RST = '0' then  
        tmp_cnt <= (others => '0'); --tempCNT <= (others => '0')도 사용가능
        elsif CLK = '1' and CLK'event then
            if clk_div_cnt = "LIMIT" then --9면 0xA가 아니라 0으로
                if tmp_cnt = "1001" then
                    tmp_cnt <= (others => '0');
                else
                    tmp_cnt <= tmp_cnt + 1;
                end if;
            
            end if;
        end if;

    end process;

    --10000을 세고 다   세면 cnt 증가시키는 카운터 만들기
    process (RST, CLK)
    begin

        if RST = '0' then  
        tmp_cnt <= (others => '0'); --tempCNT <= (others => '0')도 사용가능
        elsif CLK = '1' and CLK'event then
            if clk_div_cnt = "LIMIT" then --9면 0xA가 아니라 0으로
                if tmp_cnt = "1001" then
                    tmp_cnt <= (others => '0');
                else
                    tmp_cnt <= tmp_cnt + 1;
                end if;
            
            end if;
        end if;

    end process;

    CNT <= tempCNT; 

end behave;