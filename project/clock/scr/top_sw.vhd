Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity top_sw is
    port(   
        CLK          : in  std_logic;
        RST          : in  std_logic;
        SW1_IN       : in  std_logic;
        SW2_IN       : in  std_logic;
        SW3_IN       : in  std_logic;
        ADJUST_LONG  : out std_logic;
        UP_LONG      : out std_logic;
        UP_SHORT     : out std_logic;
        MODE         : out std_logic
    );
end top_sw;

architecture BEHAVE of top_sw is

    component sw_input_adj_long is
        port(   
            CLK         : in  std_logic;
            RST         : in  std_logic;
            SW_IN       : in  std_logic;
            SW_CLR      : out std_logic
        );
    end component;
    component sw_input_up_long is
        port(   
            CLK         : in  std_logic;
            RST         : in  std_logic;
            SW_IN       : in  std_logic;
            SW_CLR      : out std_logic
        );
    end component;
    component sw_input is
        port(   
            CLK         : in  std_logic;
            RST         : in  std_logic;
            SW_IN       : in  std_logic;
            SW_CLR      : out std_logic
        );
    end component;

begin

    sw_input_adj_long_0 : sw_input_adj_long
    port map(    
        CLK        => CLK,
        RST        => RST,
        SW_IN      => SW3_IN,
        SW_CLR     => ADJUST_LONG
    );

    sw_input_up_long_0 : sw_input_up_long
    port map(    
        CLK        => CLK,
        RST        => RST,
        SW_IN      => SW1_IN,
        SW_CLR     => UP_LONG
    );

    sw_input_up: sw_input
    port map(    
        CLK        => CLK,
        RST        => RST,
        SW_IN      => SW1_IN,
        SW_CLR     => UP_SHORT
    );
    
    sw_input_mode: sw_input
    port map(    
        CLK        => CLK,
        RST        => RST,
        SW_IN      => SW2_IN,
        SW_CLR     => MODE
    );

     
    

end BEHAVE;
