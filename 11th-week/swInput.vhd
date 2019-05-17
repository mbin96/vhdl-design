library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tb_cnt10 is
    port (
        RST : in std_logic;
        CLK : in std_logic;
        SW : out std_logic_vector(3 downto 0)
    );
end tb_cnt10;

architecture TB of tb_cnt10 is


signal swIn1d : std_logic;
signal CLK : std_logic := '0'; --주의 !! 초기값 지정은 시뮬레이션에서만 가능
signal CNT : std_logic_vector(3 downto 0); 
begin

process(CLK,RST)
begin
    if(RST = '0') then
        swCnt <= (others => '0');
    elsif CLK = '1' and CLK'event then
        if swIn1d = '1' then
            swCnt <= (others=>'0');
        else
            if swCnt /= "101" then
                sw_Cnt <=

end TB;






