Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity stopwatchTop is
port(	CLK			: in std_logic;
        RST		    : in std_logic;
        START_SW    : in std_logic;
        STOP_SW    : in std_logic;
        SEG_OUT_10S :   out std_logic_vector(6 downto 0);
        SEG_OUT_1S :   out std_logic_vector(6 downto 0);
        SEG_OUT_p1S :   out std_logic_vector(6 downto 0);
        SEG_OUT_p01S :   out std_logic_vector(6 downto 0)
    );
end stopwatchTop;





architecture BEHAVE of stopwatchTop is

signal start_sw_clr
component sw_input is
    port(	CLK		: in std_logic;
            RST		: in std_logic;
            SW_IN	: in std_logic;
            SW_CLR	: out std_logic
        );
    end component;


signal state : std_logic_vector (1 downto 0);
component state_m is
    port(	CLK			: in std_logic;
            RST			: in std_logic;
            START_SW	: in std_logic;
            STOP_SW		: in std_logic;
            STATE		: out std_logic_vector(1 downto 0)
    );
end component;


component segDrv is
    port(	
        CNT_IN			: in std_logic_vector(3 downto 0);
            SEG_OUT		: out std_logic(6 downto 0)
        
        );
end component;

signal cnt_10s : std_logic_vector(3 downto 0);
signal cnt_1s : std_logic_vector(3 downto 0);
signal cnt_p1s : std_logic_vector(3 downto 0);
signal cnt_p01s : std_logic_vector(3 downto 0);
component  cnt is
    port(
        CLK : in std_logic; --1Mhz
        RST : in std_logic;
        STATE : in std_logic_vector(1 downto 0);
        CNT10s : out std_logic_vector(1 downto 0);
        CNT1s : out std_logic_vector(1 downto 0);
        CNTp1s : out std_logic_vector(1 downto 0);
        CNTp01s : out std_logic_vector(1 downto 0);
    );
end component;




begin
    
    --ㄴ쟛초
    SW_INPUT_START : sw_input
    port map(
        CLK => CLK,
        RST => RST,
        SW_IN => START_SW,
        SW_CLT => start_sw_clr;
    );
    SW_INPUT_STOP : sw_input
    port map(
        CLK => CLK,
        RST => RST,
        SW_IN => STOP_SW,
        SW_CLT => stop_sw_clr
    );

    STATE_M_0 : state_m
    port map(
        CLK => CLK,
        RST => RST,
        START_SW => start_sw_clr,
        STOP_SW => stop_sw_clr,
        STATE => state
    );

    CNT_0 : cnt
    port map(
        CLK => CLK,
        RST => RST,
        cnt_10s => CNT10s,
        cnt_1s  => CNT1s,
        cnt_p1s => CNTp1s,
        cnt_p01s => CNTp01s,
    );

    SEG_DRV_10S : seg_drv
    portmap(
        CNT_IN => cnt 10s,
        SEG_OUT => SEG_OUT_10S
    );
    SEG_OUT_1S : seg_drv
    portmap(
        CNT_IN => cnt 10s,
        SEG_OUT => SEG_OUT_1S
    );
    SEG_DRV_P1S : seg_drv
    portmap(
        CNT_IN => cnt 10s,
        SEG_OUT => SEG_DRV_P1S
    );
    SEG_DRV_P01S : seg_drv
    portmap(
        CNT_IN => cnt 10s,
        SEG_OUT => SEG_DRV_P01S
    );








end BEHAVE;
