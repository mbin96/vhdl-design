library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mem_test is
    port(
        CLK     : in  std_logic;
        RST     : in  std_logic;
        CS      : in  std_logic;
        WR      : in  std_logic;
        RD      : in  std_logic;
        ADDR    : in  std_logic_vector(9 downto 0);    
        DIN     : in  std_logic_vector(7 downto 0);
        DOUT    : out std_logic_vector(7 downto 0)    
    );
end mem_test;

architecture BEHAVE of mem_test is
--46p 사용자 정의 열거형 
--array 하기
--type <<data_type(name)>> is
--array <<array_range>> of -- 어레이의 폭 지정
--<<array's_datatype>>; --어레이를 어떤 타입으로 만들지
    type mem_1k is  
    array (0 to 1023) of 
    std_logic_vector(7 downto 0);
    --메모리가 잡히진 않고 시그널로 선언해야 잡힘
    signal mem_array :mem_1k;
    
begin
    --FPGA를 굉장히 많이 쓰는 방법
        --토탈 메모리 비트를 사용
        --방법 1: 쿼터스 메가 위자드 플러그인 메니저
        --RAM:2PORT MENAGER
        --폴더를 하나 만들어서 VHDL아웃풋
        --howmany 8bit word of mem - 1024
        --t싱긍 클럭
        --enable 
        --read output -latch
        --출력파일 아무거나
        --단점 유연도 떨어짐
    process(CLK)
    begin   
        if CLK = '1' and CLK'event then
            if CS = '0' and WR ='0' then
                mem_array(conv_integer(ADDR)) <= DIN; --conv_intager 2진신호를 10진수로 바꿔준다!
            end if;
        end if;
    end process;

    process(CLK, RST)
    begin 
        if RST = '0' then
            DOUT <= (others => '0');
        elsif CLK = '1' and CLK'event then
            if CS = '0' and RD ='0' then
                DOUT <= mem_array(conv_integer(ADDR));
            else
                DOUT <= (others => '0');
            end if;
        end if;
    end process;

end BEHAVE;

