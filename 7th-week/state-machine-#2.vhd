--스테이트머신을 잘 짜야 한다.
--고퀄리티에 깔끔한 회로가 나온다.
--state코드 #1
--state logic과 state register를 완전히 분리하여 코딩한다.

library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity stateMachine is
    port(   CLK     : in std_logic;
            RST     : in std_logic;
            x       : in std_logic;
            Y       : in std_logic;
            state   : out std_logic_vector


    );
end stateMachine;

architecture BEHAVE of stateMachine is
    --2번째 방법
    --tmp 스테이트만 열심히 만든다.
--플립ㅍ츨롭
signal tmpState        :std_logic_vector (1 downto 0);
constant STATE0        :std_logic_vector (1 downto 0) := "00";
constant STATE1        :std_logic_vector (1 downto 0) := "01";
constant STATE2        :std_logic_vector (1 downto 0) := "10";
constant STATE3        :std_logic_vector (1 downto 0) := "11";

begin
    
    process (CLK, RST) --CLK에서만 보니까 x y 안봐도됨
    begin 
    
    if RST = '0' then   
        tmpState <= "00"; 
    
    elsif CLK = '1' and CLK'event then
        case tmpState is -- Q값(currentState)
        when "STATE0" =>            --다이어그램 참조 조건 만족 안되는경우엔 변화지 않는 값을 줘야한다.
            if X = '1' then
                tmpState <= "STATE1";--nextState
            --플립플롭이니까 이거 안쓰고 else가 NULL이 되어도 된다.
            --else
            --    tmpState <= "00"; 
            end if;
        when "01" =>
            if X = '0' and Y = '1' then
                tmpState <= "00";
            elsif X = '0' and Y = '0' then
                tmpState <= "11";
            elsif X = '1' and Y = '1' then
                tmpState <= "10";
            end if;
        when "10" =>
            if Y '1' then
                tmpState <= "11";
            
            end if;
        when others =>      --"11"일때
            if X = '0' and Y = '0' then 
            tmpState <= "00";
            end if;
        end case;
    end process;
    
    STATE = tmpState;

end BEHAVE;




