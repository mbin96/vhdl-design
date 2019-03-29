


--mux4by1
--sel 00 면 Y <= a 01 y <= b...
---------------------------------------
library IEEE;
use ieee.std_logic_1164.all;
use ieee.std.logic_unsigned.all;


ENTITY test is                      --ENTITY <<entityName>> IS 
    port (  A : in std_logic_vector (3 downto 0);     --A, B : in std logic; 해도 되지만,
            B : in std_logic;                         --회로선이 많아질수록 더 가독성이 나빠진다.
            C : out std_logic;                        --회로선이 많아지면 인풋 아웃풋 보다는 기능성으로 묶어쓰곤함.
            D : out std_logic;
            SEL : in std_logic_velctor (1 downto 0);
            Y : out std_logic;
        );
end test;

architecture behave OF test is          --ARCHITECTURE--architecture_name--OF entity_name IS
    signal constant component --선언    --일반적 아키텍처 네임 behave, struct, TB(테스트 벤치)
begin   

    Y   <=  A   when (SEL = "00") else  --먼저나온문이 우선순위를 가짐. 조건이 충족되면 whenElse를 나간다.
            B   when (SEL = "01") else  --SEL외에 다른 신호를 여러개 써도 된다.
            C   when (SEL = "10") else
            D;

    with SEL select
    Y   <=  A when "00",                --하나의 SEL신호만 가지고 하는것
            B when "01",                --순서를 바꿔도 같다
            C when "10",                --잘 안씀
            D when OTHERS;



end behave;


    -------------------2*4 decoder
entity decoder2x4 is

port( I : in std_logic_vector(1 downto 0);
        Y : in std_logic_vector(3 downto 0)
);
end decoder2x4

architecture behave OF decoder2x4 is          --ARCHITECTURE--architecture_name--OF entity_name IS
    signal constant component --선언    --일반적 아키텍처 네임 behave, struct, TB(테스트 벤치)
begin   
    Y   <=  "0001"  when (I="00") else
            "0010"  when (I="01") else
            "0100"  when (I="10") else
            "1000";

end behave;
    ----------------------