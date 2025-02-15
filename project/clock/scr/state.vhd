Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity state is
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
end state;

architecture BEHAVE of state is
constant STATE_CLOCK     : std_logic_vector (1 downto 0) := "00";
constant STATE_ALARM     : std_logic_vector (1 downto 0) := "01";
constant STATE_STOPWATCH : std_logic_vector (1 downto 0) := "10";
signal state : std_logic_vector (1 downto 0);
begin

    --change state
    process(CLK, RST)
    begin
        if RST = '0' then
            state <= STATE_CLOCK;
        elsif (CLK = '1' and CLK'event) then
            if (EN_ADJUST = '0') then
                if (MODE = '0') then
                    if state = STATE_STOPWATCH then
                        state <= STATE_CLOCK;
                    else
                        state <= state + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;

    --bottonMUX
    process(CLK, RST)
    begin
        if RST = '0' then
            --init switch input
            C_ADJUST_LONG <= '1';
            C_UP_SHORT    <= '1';
            C_UP_LONG     <= '1';
            C_MODE        <= '1';
            A_ADJUST_LONG <= '1';
            A_UP_SHORT    <= '1';
            A_UP_LONG     <= '1';
            A_MODE        <= '1';
            S_ADJUST_LONG <= '1';
            S_UP_SHORT    <= '1';
        elsif (CLK = '1' and CLK'event) then
            if state = STATE_CLOCK then
                C_ADJUST_LONG   <= ADJUST_LONG ;
                C_UP_SHORT      <= UP_SHORT    ;
                C_UP_LONG       <= UP_LONG     ;
                
                --enable MODE sw when EN_ADJUST = '0'
                if (EN_ADJUST = '1') then
                    C_MODE <= MODE;
                else
                    C_MODE <= '1';
                end if;
            elsif state = STATE_ALARM then
                A_ADJUST_LONG   <= ADJUST_LONG ;
                A_UP_SHORT      <= UP_SHORT    ;
                A_UP_LONG       <= UP_LONG     ;
                
                --enable MODE sw when EN_ADJUST = '0'
                if (EN_ADJUST = '1') then
                    A_MODE <= MODE;
                else
                    A_MODE <= '1';
                end if;
            elsif state = STATE_STOPWATCH then
                S_ADJUST_LONG   <= ADJUST_LONG ;
                S_UP_SHORT      <= UP_SHORT    ;
                
                --enable MODE sw when EN_ADJUST = '0'
                
            end if;
        end if;
    end process;

    CURRENT_STATE <= state;


end BEHAVE;
