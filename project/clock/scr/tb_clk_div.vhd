Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tb_clk_div is
end tb_clk_div;

architecture TB of tb_clk_div is

    component clk_div is
        port(
            CLK     : in std_logic;
            RST         : in std_logic;
            CLK_100HZ   : out std_logic
        );
    end component;
    signal RST             : std_logic;
    signal CLK             : std_logic := '0';
    
begin

    clk_div_0 : clk_div
    port map(
        RST     => RST ,
        CLK     => CLK 
    );

    RST <= 	
        '0',
	    '1' after 200 ns;

    process
	begin
		CLK <= not(CLK);
		wait for 10 ns;
	end process;

end TB;


