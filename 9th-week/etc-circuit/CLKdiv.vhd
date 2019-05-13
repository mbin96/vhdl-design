library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity CLKdiv is
port(
    CLK_IN  :   in std_logic;
    RST     :   in std_logic;
    CLK_2   :   out std_logic;
    CLK_4   :   out std_logic;
    CLK_8   :   out std_logic;
    CLK_5   :   out std_logic
);
end CLKdiv;

architecture behave of CLKdiv is
signal s_clk_2  : std_logic;
signal s_clk_4  : std_logic;
signal s_clk_8  : std_logic;
signal tmpCnt : std_logic_vector(2 downto 0);

begin

    --CLK_2 만들기
    process(CLK_IN,RST)
    begin
        if RST = '0' then
            s_clk_2 <= '0';
        elsif CLK_IN = '1' and CLK_IN'event then
            s_clk_2 <= not(s_clk_2);
        end if;
    end process
    CLK_2 <= s_clk_2;
    --clk_2 끝
    --CLK_4 만들기
    process(CLK_IN,RST)
    begin
        if RST = '0' then
            s_clk_4 <= '0';
        elsif s_clk_2 = '1' and s_clk_2'event then
            s_clk_4 <= not(s_clk_4);
        end if;
    end process
    CLK_4 <= s_clk_4;
    --clk_2 끝


    --5분주 글리치 있다
    process(CLK_IN,RST)
    begin
        if RST = '0' then
            tmpCnt <= "000";
        elsif CLK_IN = '1' and CLK_IN'event then
            if tmpCnt = "100"then
                tmpCnt <= "000";
            else
                tmpCnt <= tmpCnt + 1;
            end if;
        end if;
    end process;

    CLK_5 <= '0' when (tmpCnt = "000" or tmpCnt = "001") else '1';

    --5분주 글리치 없게 만들기
    --if 안에 두면 랫치를 통과하기때문에 글리치가 사라진다
    process(CLK_IN,RST)
    begin
        if RST = '0' then
            CLK_5 <= '0';
        elsif CLK_IN = '1' and CLK_IN'event then
            if (tmpCnt = "000" or tmpCnt = "001") then
                CLK_5 <= '0';
            else
                CLK_5 <= '1';
            end if;
        end if;
    end process;

