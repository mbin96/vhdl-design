Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


port(	SW1 : in std_logic; --start/stop/up/snooze
		SW2 : in std_logic; --mode
		SW3 : in std_logic;	--adjust
		SW0 : in std_logic; --reset
		TOGGLE_SW0 : in std_logic;
		CLK : in std_logic;
		-------------
		FND0 : out std_logic_vector(6 downto 0);--01S
		FND1 : out std_logic_vector(6 downto 0);--10S
		FND2 : out std_logic_vector(6 downto 0);--01M
		FND3 : out std_logic_vector(6 downto 0);--10M
		FND4 : out std_logic_vector(6 downto 0);--01H
		FND5 : out std_logic_vector(6 downto 0);--10H
		FND6 : out std_logic_vector(6 downto 0);--st1
		FND7 : out std_logic_vector(6 downto 0);--st0
		LEDG8 : out std_logic;
		LEDR : out std_logic_vector(17 downto 0));

end main_top;


architecture STRUCT of main_top is

component clk_div is

port(
	CLK      	:   in std_logic;
	RST         :   in std_logic;
	CLK_100HZ   :   out std_logic
);
end component;


component top_sw is

port(   CLK          : in  std_logic;
        RST          : in  std_logic;
        SW1_IN       : in  std_logic;
        SW2_IN       : in  std_logic;
        SW3_IN       : in  std_logic;
        ADJUST_LONG  : out std_logic;
        UP_LONG      : out std_logic;
        UP_SHORT     : out std_logic;
        MODE         : out std_logic);
        
		
end component;

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
	CURRENT_STATE   : out std_logic_vector (1 downto 0));
end component;


component clock is

    port(
        RST             : in  std_logic;
        CLK             : in  std_logic;
        C_ADJUST_LONG   : in  std_logic;
        C_UP_LONG       : in  std_logic;
        C_UP_SHORT      : in  std_logic;
        C_MODE          : in  std_logic;
        --time output
        C_TIME_10H      : out std_logic_vector (3 downto 0); 
        C_TIME_01H      : out std_logic_vector (3 downto 0);
        C_TIME_10M      : out std_logic_vector (3 downto 0);
        C_TIME_01M      : out std_logic_vector (3 downto 0);
        C_TIME_10S      : out std_logic_vector (3 downto 0);
        C_TIME_01S      : out std_logic_vector (3 downto 0);
        C_LED           : out std_logic;
        --adjust enabled signal for mode sw
        C_EN_ADJUST     : out std_logic
    );
end component;

component alarm is

port(	CLK         	: in  std_logic;            		   -- 100Hz
		RST         	: in  std_logic;            		   -- /RST SW;
		SNOOZE      	: in  std_logic;            		   -- /SNOOZE P/SW
		C_TIME_10H		: in  std_logic_vector(3 downto 0);
		C_TIME_01H		: in  std_logic_vector(3 downto 0);
		C_TIME_10M		: in  std_logic_vector(3 downto 0);
		C_TIME_01M		: in  std_logic_vector(3 downto 0);
		ALARM_TOGGLE	: in  std_logic;
		A_UP_SHORT	    : in  std_logic;
		A_UP_LONG		: in  std_logic;
		A_ADJUST_LONG	: in  std_logic;
		A_MODE			: in  std_logic;
		EN_ADJUST 		: out std_logic;
		A_TIME_10H		: out std_logic_vector(3 downto 0);
		A_TIME_01H		: out std_logic_vector(3 downto 0);
		A_TIME_10M		: out std_logic_vector(3 downto 0);
		A_TIME_01M		: out std_logic_vector(3 downto 0);
		A_TIME_10S		: out std_logic_vector(3 downto 0);
		A_TIME_01S		: out std_logic_vector(3 downto 0);
		LEDR			: out std_logic_vector(17 downto 0)
		);
		
end component;

component stopwatch_top is
port(	CLK				: in std_logic;						-- 1MHz
		RST				: in std_logic;
		SW_STARTSTOP	: in std_logic;
		SW_ADJUST_0		: in std_logic;
		S_LED	 		: out std_logic;
		S_TIME_10M		: out std_logic_vector(3 downto 0);
		S_TIME_01M		: out std_logic_vector(3 downto 0);
		S_TIME_10S		: out std_logic_vector(3 downto 0);
		S_TIME_01S		: out std_logic_vector(3 downto 0);
		S_TIME_P1S		: out std_logic_vector(3 downto 0);
		S_TIME_P01S 	: out std_logic_vector(3 downto 0));
end component;

component FND_mux is

port(	A_TIME_10H		: in std_logic_vector(3 downto 0);
		A_TIME_1H		: in std_logic_vector(3 downto 0);
		A_TIME_10M		: in std_logic_vector(3 downto 0);
		A_TIME_1M		: in std_logic_vector(3 downto 0);
		A_TIME_10S		: in std_logic_vector(3 downto 0);
		A_TIME_1S		: in std_logic_vector(3 downto 0);
		C_TIME_10H		: in std_logic_vector(3 downto 0);
		C_TIME_1H		: in std_logic_vector(3 downto 0);
		C_TIME_10M		: in std_logic_vector(3 downto 0);
		C_TIME_1M		: in std_logic_vector(3 downto 0);
		C_TIME_10S		: in std_logic_vector(3 downto 0);
		C_TIME_1S		: in std_logic_vector(3 downto 0);
		S_TIME_10M		: in std_logic_vector(3 downto 0);
		S_TIME_01M		: in std_logic_vector(3 downto 0);
		S_TIME_10S		: in std_logic_vector(3 downto 0);
		S_TIME_01S		: in std_logic_vector(3 downto 0);
		S_TIME_P1S		: in std_logic_vector(3 downto 0);
		S_TIME_P01S		: in std_logic_vector(3 downto 0);
		CURRENT_STATE	: in std_logic_vector(1 downto 0);
		TIME_10H		: out std_logic_vector(3 downto 0);
		TIME_1H			: out std_logic_vector(3 downto 0);
		TIME_10M		: out std_logic_vector(3 downto 0);
		TIME_1M			: out std_logic_vector(3 downto 0);
		TIME_10S		: out std_logic_vector(3 downto 0);
		TIME_1S			: out std_logic_vector(3 downto 0));
end component;

component FND_DRIVER is
port (	CURRENT_STATE 	: in std_logic_vector(1 downto 0);
		TIME_10H		: in std_logic_vector(3 downto 0);
		TIME_01H		: in std_logic_vector(3 downto 0);
		TIME_10M		: in std_logic_vector(3 downto 0);
		TIME_01M		: in std_logic_vector(3 downto 0);
		TIME_10S		: in std_logic_vector(3 downto 0);
		TIME_01S		: in std_logic_vector(3 downto 0);
		FND_10H			: out std_logic_vector(6 downto 0);
		FND_01H			: out std_logic_vector(6 downto 0);
		FND_10M			: out std_logic_vector(6 downto 0);
		FND_01M			: out std_logic_vector(6 downto 0);
		FND_10S			: out std_logic_vector(6 downto 0);
		FND_01S			: out std_logic_vector(6 downto 0);
		FND_ST1			: out std_logic_vector(6 downto 0);
		FND_ST0			: out std_logic_vector(6 downto 0));
end component;

signal	CLK_50MHz		: std_logic;
signal	CLK_100Hz    	: std_logic;
signal	RST          	: std_logic;
---------------------------------
signal	SW1_IN       	: std_logic;
signal	SW2_IN       	: std_logic;
signal	SW3_IN       	: std_logic;
signal	ADJUST_LONG  	: std_logic;
signal	UP_LONG      	: std_logic;
signal	UP_SHORT     	: std_logic;
signal	MODE         	: std_logic;
signal	EN_ADJUST 		: std_logic;

----------------------------------
signal	C_ADJUST_LONG   : std_logic;
signal	C_UP_LONG       : std_logic;
signal	C_UP_SHORT      : std_logic;
signal	C_MODE          : std_logic;
	--time output
signal	C_TIME_10H      : std_logic_vector (3 downto 0); 
signal	C_TIME_01H      : std_logic_vector (3 downto 0);
signal	C_TIME_10M      : std_logic_vector (3 downto 0);
signal	C_TIME_01M      : std_logic_vector (3 downto 0);
signal	C_TIME_10S      : std_logic_vector (3 downto 0);
signal	C_TIME_01S      : std_logic_vector (3 downto 0);
signal	C_LED           : std_logic;
	--adjust enabled signal for mode sw
signal	C_EN_ADJUST     : std_logic;

-------------------------------------------------

signal	SNOOZE      	: std_logic;            		   -- /SNOOZE P/SW
signal	ALARM_TOGGLE	: std_logic;
signal	A_UP_SHORT	    : std_logic;
signal	A_UP_LONG		: std_logic;
signal	A_ADJUST_LONG	: std_logic;
signal	A_MODE			: std_logic;
signal	A_EN_ADJUST 	: std_logic;
signal	A_TIME_10H		: std_logic_vector(3 downto 0);
signal	A_TIME_01H		: std_logic_vector(3 downto 0);
signal	A_TIME_10M		: std_logic_vector(3 downto 0);
signal	A_TIME_01M		: std_logic_vector(3 downto 0);
signal	A_TIME_10S		: std_logic_vector(3 downto 0);
signal	A_TIME_01S		: std_logic_vector(3 downto 0);
------------------------------------------------------

signal	S_UP_SHORT	: std_logic;
signal	S_ADJUST_LONG		: std_logic;
signal	S_LED	 		: std_logic;
signal	S_TIME_10M		: std_logic_vector(3 downto 0);
signal	S_TIME_01M		: std_logic_vector(3 downto 0);
signal	S_TIME_10S		: std_logic_vector(3 downto 0);
signal	S_TIME_01S		: std_logic_vector(3 downto 0);
signal	S_TIME_P1S		: std_logic_vector(3 downto 0);
signal	S_TIME_P01S 	: std_logic_vector(3 downto 0);

---------------------------------------------------------
signal	CURRENT_STATE	: std_logic_vector(1 downto 0);
signal	TIME_10H		: std_logic_vector(3 downto 0);
signal	TIME_01H			: std_logic_vector(3 downto 0);
signal	TIME_10M		: std_logic_vector(3 downto 0);
signal	TIME_01M			: std_logic_vector(3 downto 0);
signal	TIME_10S		: std_logic_vector(3 downto 0);
signal	TIME_01S			: std_logic_vector(3 downto 0);

------------------------------------------------------

begin
 

CLK_50MHz 	<= CLK;
SW1_IN 		<= SW1; --start/stop/up/snooze
SW2_IN		<= SW2;	--mode
SW3_IN		<= SW3; --adjust
RST         <= SW0;	--reset
EN_ADJUST	<= (A_EN_ADJUST or C_EN_ADJUST);

clk_div_0 : clk_div
port map(	CLK      	=> CLK_50MHz,
            RST      	=> RST,
            CLK_100HZ	=> CLK_100Hz);
			
			
top_sw_0 : top_sw
port map(   CLK          => CLK_50MHz,         
			RST          => RST,         
			SW1_IN       => SW1_IN,      
			SW2_IN       => SW2_IN,     
			SW3_IN       => SW3_IN,      
			ADJUST_LONG  => ADJUST_LONG, 
			UP_LONG      => UP_LONG,     
			UP_SHORT     => UP_SHORT,    
			MODE         => MODE);
			
state_0 : state
port map(	RST         => RST,
			CLK             => CLK_100Hz,
			ADJUST_LONG     => ADJUST_LONG,
			UP_SHORT        => UP_SHORT,
			UP_LONG         => UP_LONG,
			MODE            => MODE,
			EN_ADJUST       => EN_ADJUST,
			C_ADJUST_LONG   => C_ADJUST_LONG,
			C_UP_SHORT      => C_UP_SHORT,
			C_UP_LONG       => C_UP_LONG,   
			C_MODE          => C_MODE,       
			A_ADJUST_LONG   => A_ADJUST_LONG,
			A_UP_SHORT      => A_UP_SHORT,   
			A_UP_LONG       => A_UP_LONG,   
			A_MODE          => A_MODE,       
			S_ADJUST_LONG   => S_ADJUST_LONG,
			S_UP_SHORT      => S_UP_SHORT,   
			CURRENT_STATE   => CURRENT_STATE);

clock_0 : clock
 port map(	RST           	=>  RST,            
			CLK           	=>  CLK_100Hz,           
			C_ADJUST_LONG 	=>  C_ADJUST_LONG,  
			C_UP_LONG     	=>  C_UP_LONG,      
			C_UP_SHORT    	=>  C_UP_SHORT,     
			C_MODE        	=>  C_MODE,         
			C_TIME_10H    	=>  C_TIME_10H,     
			C_TIME_01H    	=>  C_TIME_01H,    
			C_TIME_10M    	=>  C_TIME_10M,     
			C_TIME_01M    	=>  C_TIME_01M,     
			C_TIME_10S    	=>  C_TIME_10S,     
			C_TIME_01S    	=>  C_TIME_01S,     
			C_LED         	=>  C_LED,          
			C_EN_ADJUST   	=>  C_EN_ADJUST);   

alarm_0 : alarm
port map(	CLK         	=> CLK_100Hz,         		   -- 100Hz
			RST         	=> RST,         		   -- /RST SW;
			SNOOZE      	=> A_UP_SHORT,      		   -- /SNOOZE P/SW
			C_TIME_10H		=> C_TIME_10H,			
			C_TIME_01H		=> C_TIME_01H,			
			C_TIME_10M		=> C_TIME_10M,			
			C_TIME_01M		=> C_TIME_01M,			
			ALARM_TOGGLE	=> TOGGLE_SW0,		
			A_UP_SHORT	    => A_UP_SHORT,	    	
			A_UP_LONG		=> A_UP_LONG,			
			A_ADJUST_LONG	=> A_ADJUST_LONG,		
			A_MODE			=> A_MODE,				
			EN_ADJUST 		=> A_EN_ADJUST, 			
			A_TIME_10H		=> A_TIME_10H,			
			A_TIME_01H		=> A_TIME_01H,			
			A_TIME_10M		=> A_TIME_10M,			
			A_TIME_01M		=> A_TIME_01M,			
			LEDR			=> LEDR);

stopwatch_top_0 : stopwatch_top
port map(	CLK				=> CLK_100Hz,			
			RST				=> RST,	
			SW_STARTSTOP	=> S_UP_SHORT,
			SW_ADJUST_0		=> S_ADJUST_LONG,
			S_LED	 		=> S_LED,
			S_TIME_10M		=> S_TIME_10M,	
			S_TIME_01M		=> S_TIME_01M,	
			S_TIME_10S		=> S_TIME_10S,	
			S_TIME_01S		=> S_TIME_01S,	
			S_TIME_P1S		=> S_TIME_P1S,	
			S_TIME_P01S 	=> S_TIME_P01S);
			
FND_mux_0 : FND_mux
port map(	A_TIME_10H		=> A_TIME_10H,		
			A_TIME_1H		=> A_TIME_01H,		
			A_TIME_10M		=> A_TIME_10M,		
			A_TIME_1M		=> A_TIME_01M,		
			A_TIME_10S		=> A_TIME_10S,		
			A_TIME_1S		=> A_TIME_01S,		
			C_TIME_10H		=> C_TIME_10H,		
			C_TIME_1H		=> C_TIME_01H,		
			C_TIME_10M		=> C_TIME_10M,		
			C_TIME_1M		=> C_TIME_01M,		
			C_TIME_10S		=> C_TIME_10S,		
			C_TIME_1S		=> C_TIME_01S,		
			S_TIME_10M		=> S_TIME_10M,		
			S_TIME_01M		=> S_TIME_01M,		
			S_TIME_10S		=> S_TIME_10S,		
			S_TIME_01S		=> S_TIME_01S,		
			S_TIME_P1S		=> S_TIME_P1S,		
			S_TIME_P01S		=> S_TIME_P01S,		
			CURRENT_STATE	=> CURRENT_STATE,	
			TIME_10H		=> TIME_10H,		
			TIME_1H			=> TIME_01H,			
			TIME_10M		=> TIME_10M,		
			TIME_1M			=> TIME_01M,			
			TIME_10S		=> TIME_10S,		
			TIME_1S			=> TIME_01S);			

FND_DRIVER_0 : FND_DRIVER
port map(	CURRENT_STATE 	=> CURRENT_STATE,	
			TIME_10H		=> TIME_10H,		
			TIME_01H		=> TIME_01H,		
			TIME_10M		=> TIME_10M,		
			TIME_01M		=> TIME_01M,		
			TIME_10S		=> TIME_10S,		
			TIME_01S		=> TIME_01S,		
			FND_10H			=> FND5,			
			FND_01H			=> FND4,			
			FND_10M			=> FND3,			
			FND_01M			=> FND2,			
			FND_10S			=> FND1,			
			FND_01S			=> FND0,			
			FND_ST1			=> FND7,			
			FND_ST0			=> FND6);

process(CLK)
begin
	if(CURRENT_STATE = 00) then
		LEDG8 <= C_LED;
	elsif(CURRENT_STATE = 10) then
		LEDG8 <= S_LED;
	else
		LEDG8 <= '0';
	end if;
end process;

end STRUCT;