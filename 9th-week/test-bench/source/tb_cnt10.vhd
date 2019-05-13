library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tb_cnt10 is
end tb_cnt10;

architecture TB of tb_cnt10 is
component cnt10 is
    port ( 
        RST : in std_logic;
        CLK : in std_logic;
        CNT : out std_logic_vector(3 downto 0)
    );
end component;

signal RST : std_logic;
signal CLK : std_logic := '0'; --주의 !! 초기값 지정은 시뮬레이션에서만 가능
signal CNT : std_logic_vector(3 downto 0); 
begin

cnt10_0:cnt10
port map(
    RST => RST,
    CLK => CLK,
    CNT => CNT
);
--after는 파형을 만들때 사용한다.
--처음에 0 이였다가 100ns 이후에 1로됨
RST <= '0', '1' after 100 ns, '0' after 500ns, '1' after 700ns;     -- after은 모델심에서 시뮬레이트 할때만 사용

--클록만들기
--한주기가 100ns인 클락 생성
--듀티 비가 50인 클락
    process
    begin
        CLK <= not (CLK);
        wait for 50ns;
    end process;

end TB;






