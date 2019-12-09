Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tb_state is
end tb_state;

architecture TB of tb_state is
    component state is
        port(
            RST             : in  std_logic;
            CLK             : in  std_logic;
            ADJUST_LONG     : in  std_logic;
            UP_SHORT        : in  std_logic;
            UP_LONG         : in  std_logic;
            MODE            : in  std_logic;
            EN_ADJUST       : in  std_logic;
            C_ADJUST_LONG   : out std_logic;
            C_UP_SHORT      : out std_logic;
            C_UP_LONG       : out std_logic;
            C_MODE          : out std_logic;
            A_ADJUST_LONG   : out std_logic;
            A_UP_SHORT      : out std_logic;
            A_UP_LONG       : out std_logic;
            A_MODE          : out std_logic;
            S_ADJUST_LONG   : out std_logic;
            S_UP_SHORT      : out std_logic;
            CURRENT_STATE   : out std_logic_vector (1 downto 0)
        );
    end component;

signal RST          : std_logic;
signal CLK          : std_logic := '1';
signal ADJUST_LONG  : std_logic;
signal UP_SHORT     : std_logic;
signal UP_LONG      : std_logic;
signal MODE         : std_logic;
signal EN_ADJUST    : std_logic;

begin
    state_0 : state
    port map(
        RST          => RST         ,
        CLK          => CLK         ,
        ADJUST_LONG  => ADJUST_LONG ,
        UP_SHORT     => UP_SHORT    ,
        UP_LONG      => UP_LONG     ,
        MODE         => MODE        ,
        EN_ADJUST    => EN_ADJUST   
    );

    RST <= '0', '1' after 200 ns;

    process        -- CLK : 10MHz
    begin
        CLK <= not(CLK);
        wait for 100 ns;
    end process;

    ADJUST_LONG <=  '1', 
        '0' after 1050 ns,
        '1' after 1250 ns,
        '0' after 10050 ns,
        '1' after 10250 ns
        ;
    UP_SHORT     <=  '1', 
        '0' after 2050 ns,
        '1' after 2250 ns,
        '0' after 11050 ns,
        '1' after 11250 ns
        ;
    UP_LONG      <=  '1', 
        '0' after 3050 ns,
        '1' after 3250 ns,
        '0' after 12050 ns,
        '1' after 12250 ns
        ;
    MODE         <=  '1', 
        '0' after 1750 ns,
        '1' after 1950 ns,
        '0' after 2450 ns,
        '1' after 2650 ns,
        '0' after 10050 ns,
        '1' after 10250 ns,
        '0' after 11050 ns,
        '1' after 11250 ns,
        '0' after 15050 ns,
        '1' after 15250 ns
        ;
    EN_ADJUST    <=  '0', 
        '1' after 9000 ns,
        '0' after 13000 ns
        ;

end TB;

