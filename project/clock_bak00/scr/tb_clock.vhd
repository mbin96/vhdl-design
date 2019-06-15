Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tb_clock is
end tb_clock;

architecture TB of tb_clock is

    component clock is
        port(
            RST             : in  std_logic;
            CLK             : in  std_logic;
            C_ADJUST_LONG   : in  std_logic;
            C_UP_SHORT      : in  std_logic;
            C_UP_LONG       : in  std_logic;
            C_MODE          : in  std_logic;
            C_TIME_10H      : out std_logic_vector (3 downto 0); 
            C_TIME_01H      : out std_logic_vector (3 downto 0);
            C_TIME_10M      : out std_logic_vector (3 downto 0);
            C_TIME_01M      : out std_logic_vector (3 downto 0);
            C_TIME_10S      : out std_logic_vector (3 downto 0);
            C_TIME_01S      : out std_logic_vector (3 downto 0);
            C_LED           : out std_logic;
            C_EN_ADJUST     : out std_logic
        );
    end component;

    signal RST             : std_logic;
    signal CLK             : std_logic := '0';
    signal C_ADJUST_LONG   : std_logic := '0';
    signal C_UP_SHORT      : std_logic := '0';
    signal C_UP_LONG       : std_logic := '0';
    signal C_MODE          : std_logic := '0';
    signal C_TIME_10H      : std_logic_vector (3 downto 0); 
    signal C_TIME_01H      : std_logic_vector (3 downto 0);
    signal C_TIME_10M      : std_logic_vector (3 downto 0);
    signal C_TIME_01M      : std_logic_vector (3 downto 0);
    signal C_TIME_10S      : std_logic_vector (3 downto 0);
    signal C_TIME_01S      : std_logic_vector (3 downto 0);
    signal C_LED           : std_logic ;
    signal C_EN_ADJUST     : std_logic ;

begin

    clock_0 : clock
    port map(
        RST             => RST            ,
        CLK             => CLK            ,  
        C_ADJUST_LONG   => C_ADJUST_LONG  ,  
        C_UP_SHORT      => C_UP_SHORT     ,  
        C_UP_LONG       => C_UP_LONG      ,  
        C_MODE          => C_MODE         ,  
        C_TIME_10H      => C_TIME_10H     ,  
        C_TIME_01H      => C_TIME_01H     ,  
        C_TIME_10M      => C_TIME_10M     ,  
        C_TIME_01M      => C_TIME_01M     ,  
        C_TIME_10S      => C_TIME_10S     ,  
        C_TIME_01S      => C_TIME_01S     ,  
        C_LED           => C_LED          ,  
        C_EN_ADJUST     => C_EN_ADJUST     

    );
    RST <= 	'0',
	    '1' after 200 ns;
    process
	begin
		CLK <= not(CLK);
		wait for 1 ns;
	end process;

    -- C_ADJUST_LONG <= '1', 
    --     '0' after 10050  ns,
    --     '1' after 10250  ns,
    --     '0' after 150050  ns,
    --     '1' after 150250  ns;
    -- C_UP_SHORT <= '1', 
    --     '0' after 10350  ns, 
    --     '1' after 10550  ns,
    --     '0' after 130950 ns,
    --     '1' after 131150 ns;
    -- C_UP_LONG <= '1',
    --     '0' after 20050 ns,
    --     '1' after 130050 ns;
    -- C_MODE <= '1',
    --     '0' after 130550 ns,
    --     '1' after 130750 ns,
    --     '0' after 140550 ns,
    --     '1' after 140750 ns,
    --     '0' after 141550 ns,
    --     '1' after 141750 ns,
    --     '0' after 142550 ns,
    --     '1' after 142750 ns;
end TB;


