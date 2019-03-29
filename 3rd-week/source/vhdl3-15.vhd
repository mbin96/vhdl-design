------------------------------
library IEEE;
use ieee.std_logic_1164.all;
use ieee.std.logic-unsigned.all;


ENTITY test is                      --ENTITY <<entityName>> IS 
    port (  A : in std_logic_vector (3 downto 0);     --A, B : in std logic; 해도 되지만,
            B : in std_logic;                         --회로선이 많아질수록 더 가독성이 나빠진다.
            X : out std_logic;                        --회로선이 많아지면 인풋 아웃풋 보다는 기능성으로 묶어쓰곤함.
            Y : out std_logic;
            Z : out std_logic;
        );
end test;

architecture behave OF test is          --ARCHITECTURE--architecture_name--OF entity_name IS
    signal constant component --선언    --일반적 아키텍처 네임 behave, struct, TB(테스트 벤치)
begin                                   --일반적으로전혀 의미없다.
    
    X   <= not(A and B) or not(c);           -- <= == link. c처럼 순서를 생각할 필요는 없다.
    Y   <= "0000";

    y(3 downto 2) <= "00";
    y(1 downto 0) <= "11";

    y(3) <= '0';
    y(2) <= '1';
    Y(1 downto 0) <= "00";
    Z <= X + Y;                   --4비트 4비트를 더함 > 캐리를 감안하면 Z는 5비트가 되어야 함(나중에 배움)
    Z <= X * Y;                   --4비트*4비트는 8비트에 저장해야하는데

    Y <= sll X 1 ; --11ㅣ트 왼쪽 ㅅ시프트
    Y <= X(6 downto 0) & '0'; --위코드랑 같은것

    
    Y <= X rol 1;
    Y <= X(6 downto 0) & X(7);

    Y <= X rol 2;
    Y <= X(5 downto 0) & X(7 downto 6);

    Y <= srl X 1 ; --1비트 오른쪽 ㅅ시프트
    Y <= '0' & X(6 downto 0); --위코드랑 같은것

    Y <= X ror 2;
    Y <= X(1 downto 0) & X(7 downto 2) ;

    Y <= X sla 1; --arismetic 쉬프트
    Y <= X(7) & X(5 downto 0) & X(6); --부호값인 7번째 비트는 남기고 6번째비트부터 쉬프트


END behave; 