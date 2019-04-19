library IEEE;
use ieee.std_logic_1164;

use ieee.std_logic_unsigned;


ENTITY TOP is
port(   TOP_IN1     : in std_logic;
        TOP_IN2     : in std_logic;
        TOP_IN3     : in std_logic;

        TOP_out1     : out std_logic;
        TOP_out2     : out std_logic;
        TOP_out3     : out std_logic;
        TOP_out4     : out std_logic;
    );
end TOP;


architecture STRUCT of TOP is
    --signal constant 선언;
    
SIGNAL net1 :std_logic;
SIGNAL net2 :std_logic;
    --두개 이상의 회로를 연결 하기 위한 컴포넌트 선언
    --ETITY 하는거랑 똑같이 하면 된다.
    component A is
    port(   A_IN1   : in std_logic;
            A_IN2   : in std_logic;
            A_IN3   : in std_logic;
            A_OUT1   : out std_logic;
            A_OUT2   : out std_logic;
            A_OUT3   : out std_logic;
        );
    end component;

    component B is
    port(   B_IN1   : in std_logic;
            B_IN2   : in std_logic;
            B_IN3   : in std_logic;
            B_OUT1   : out std_logic;
            B_OUT2   : out std_logic;
        );
    end component;

begin

A_0 : A     -- 레퍼런스네임 : 컴포넌트네임  앞에 꺼에 컴포넌트를 붙임
port map(--컴포넌트의 포트 => 탑의 포트 또는 시그널
            A_IN1   => TOP_IN1, -- 어디로 연결할지 쓰는것
            A_IN2   => TOP_IN2,
            A_IN3   => net2,
            A_OUT1  => open,
            A_OUT2  => TOP_OUT4,
            A_OUT3  => net1
--포트를 연결해주는역활
);

B_0 : B --앞에 꺼에 컴포넌트를 붙임
port map(   B_IN1   => TOP_IN3,
            B_IN2   => TOP_IN2,
            B_IN3   => net1,
            B_OUT1  => TOP_OUT1,
            B_OUT2  => net2
);
TOP_OUT2 <= net2;

end STRUCT;        