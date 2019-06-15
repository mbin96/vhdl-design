Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tb_top_sw is
end tb_top_sw;

architecture TB of tb_top_sw is

    component top_sw is
        port(   
            CLK          : in  std_logic;
            RST          : in  std_logic;
            SW1_IN       : in  std_logic;
            SW2_IN       : in  std_logic;
            SW3_IN       : in  std_logic;
            ADJUST_LONG  : out std_logic;
            ADJUST_SHORT : out std_logic;
            UP_LONG      : out std_logic;
            UP_SHORT     : out std_logic;
            MODE         : out std_logic
        );
    end component;

    signal CLK          : std_logic := '0';
    signal RST          : std_logic;
    signal SW1_IN       : std_logic;
    signal SW2_IN       : std_logic;
    signal SW3_IN       : std_logic;
    signal ADJUST_LONG  : std_logic;
    signal ADJUST_SHORT : std_logic;
    signal UP_LONG      : std_logic;
    signal UP_SHORT     : std_logic;
    signal MODE         : std_logic;
   
begin

    top_sw_0 : top_sw
    port map(   

        CLK          => CLK         ,
        RST          => RST         ,
        SW1_IN       => SW1_IN      ,
        SW2_IN       => SW2_IN      ,
        SW3_IN       => SW3_IN      ,
        ADJUST_LONG  => ADJUST_LONG ,
        ADJUST_SHORT => ADJUST_SHORT,
        UP_LONG      => UP_LONG     ,
        UP_SHORT     => UP_SHORT    ,
        MODE         => MODE        
    );
    
    RST <= '0', '1' after 200 ns;

    process        -- CLK : 10MHz
    begin
        CLK <= not(CLK);
        wait for 10 ns;
    end process;
    
    SW1_IN <=    
        '1',
        --garbage input
        '0' after 500 ns,
        '1' after 700 ns,
        '0' after 1000 ns,
        '1' after 1400 ns,
        --1st short input
        '0' after 2000 ns,
        '1' after 10000 ns,
        --2nd short input
        '0' after 30 ms,
        '1' after 45 ms,
        '0' after 45100 us,
        '1' after 45150 us,
        '0' after 45200 us,
        '1' after 45210 us,
        --long input
        '0' after 50 ms,
        '1' after 2200 ms; 
    SW2_IN <=    
        '1',
        '0' after 500 ns,
        '1' after 700 ns,
        '0' after 1000 ns,
        '1' after 1400 ns,
        '0' after 2000 ns,
        '1' after 10000 ns,
        '0' after 30 ms,
        '1' after 45 ms,
        '0' after 45100 us,
        '1' after 45150 us,
        '0' after 45200 us,
        '1' after 45210 us,
        '0' after 50 ms,
        '1' after 2200 ms; 
    SW3_IN <=    
        '1',
        '0' after 500 ns,
        '1' after 700 ns,
        '0' after 1000 ns,
        '1' after 1400 ns,
        '0' after 2000 ns,
        '1' after 10000 ns,
        '0' after 30 ms,
        '1' after 45 ms,
        '0' after 45100 us,
        '1' after 45150 us,
        '0' after 45200 us,
        '1' after 45210 us,
        '0' after 50 ms,
        '1' after 2200 ms; 

end TB;
