library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mem_test is
    port(
        CLK     : in  std_logic;
        RST     : in  std_logic;
        --CS      : in  std_logic;
        WR      : in  std_logic;
        RD      : in  std_logic;
        ADDR    : in  std_logic_vector(9 downto 0);    
        DIN     : in  std_logic_vector(7 downto 0);
        DOUT    : out std_logic_vector(7 downto 0)    
    );
end mem_test;


architecture BEHAVE of mem_test is
    type mem_1k is  
    array (0 to 1023) of 
    std_logic_vector(7 downto 0);
    --메모리가 그냥잡히진 않고 시그널로 래치를 통해 넘어가게 선언해야 잡힘
    signal mem_array :mem_1k;

    signal s_wr : std_logic;
    signal s_rd : std_logic;
    signal s_din : std_logic;
    signal s_addr : std_logic_vector(9 downto 0);

    
begin
    --memory fitting
    
    --FF 거친 입력
    process(CLK)
    begin   
        if CLK = '1' and CLK'event then
           s_wr <= WR; --FF을 거쳐서 해줌
           s_rd <= RD;
           s_addr <= ADDR;
           s_din <= DIN;
           end if;
    end process;

    -- write
	process(CLK)
	begin
		if CLK = '1' and CLK'event then
			if s_wr = '0' then
				mem_array(conv_integer(s_addr)) <= s_din;
			end if;
		end if;
	end process;

    --FF거친 출력		
	process(CLK, RST)
	begin
		if RST = '0' then
			DOUT <= (others => '0');
		elsif CLK = '1' and CLK'event then
			if s_rd = '0' then
				DOUT <= mem_array(conv_integer(s_addr));
			else
				DOUT <= (others => '0');	
			end if;
		end if;
	end process;

end BEHAVE;


