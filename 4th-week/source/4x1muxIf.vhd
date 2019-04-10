------------------------------
library IEEE;
use ieee.std_logic_1164.all;
use ieee.std.logic-unsigned.all;


ENTITY test is                      --ENTITY <<entityName>> IS 
    port (  A : in std_logic_vector (3 downto 0);     --A, B : in std logic; 해도 되지만,
            B : in std_logic;                         --회로선이 많아질수록 더 가독성이 나빠진다.
            C : in std_logic;                        --회로선이 많아지면 인풋 아웃풋 보다는 기능성으로 묶어쓰곤함.
            D : in std_logic;
            SEL : in std_logic_vector (1 downto 0);
            Y : out std_logic;
        );
end test;

architecture behave OF test is          --ARCHITECTURE--architecture_name--OF entity_name IS
        --일반적 아키텍처 네임 behave, struct, TB(테스트 벤치)
begin                                   --일반적으로전혀 의미없다.
    
    process(A,B,C,D,SEL)        --우선순위에 따라서 실행됨
    begin                       --순차문은 조합회로도 만들고 순차문도 만듬
        if (SEL = "00") then    
            Y <= A;
        elsif (SEL = "01") then
            Y <= B;
        elsif (SEL = "10") then
            Y <= C;
        else                    --만약 else가 생략되는경우 대부분의경우 else NULL; 로 실행한다.
            Y <= D;             --NULL의 의미는 이전상태를 유지한다는 의미
        end if;                 --그러면 NULL을 유지하기위해 래치가 생김
    end process;


    --case로

    process(A,B,C,D,SEL)
    begin
        case SEL is
            when "00" =>
                Y <= A;
            when "01" =>
                Y <= B;
            when "10" =>
                Y <= C;
            when others =>          --if문과 똑같이 안됨
                Y <= D;
        end case;
    end process;
    


END behave; 