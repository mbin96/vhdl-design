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
signal nextState        :std_logic_vector (1 downto 0);
signal currentState     :std_logic_vector (1 downto 0);
begin
    --state logic부분
    process (X,Y,currentState)  --리셋 쓰면 안됨
    begin
        --케이스문으로 만든다.
        case currentState is
        when "00" =>            --다이어그램 참조 조건 만족 안되는경우엔 변화지 않는 값을 줘야한다.
            if X = '1' then
                nextState <= "01";
            else
                nextState <= "00"; --변하지않는값(nextState <= currentState 해도 되긴함)
            end if;
        when "01" =>
            if X = '0' and Y = '1' then
                nextState <= "00";
            elsif X = '0' and Y = '0' then
                nextState <= "11";
            elsif X = '1' and Y = '1' then
                nextState <= "10";
            else
                nextState <= "01";
            end if;
        when "10" =>
            if Y '1' then
                nextState <= "11";
            else 
            nextState < = "10";
            end if;
        when others =>      --"11"일때
            if X = '0' and Y = '0' then 
                nextState <= "00";
            else
                nextState <= "11";
            end if;
        --when "11" => 하고서
        --when others =>
        --        nextState <= "00"; 
        --이렇게 짜는경우엔 조금더 안정적이된다
        end case;
    end process;





    process (CLK, RST )
    begin 
    if RST = '0' then   
        currentState <= "00";
    elsif CLK = '1' and CLK'event then
        currentState < = nextState;
    end if;

    end process;
