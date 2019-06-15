Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity clock is
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
end clock;

architecture BEHAVE of clock is
    
    --state constant define
    constant LIMIT_0          : std_logic_vector (18 downto 0):= "1111010000100011111";
    constant LIMIT            : std_logic_vector (6 downto 0) := "1100011";
    constant STATE_RUN        : std_logic_vector (1 downto 0) := "00";
    constant STATE_ADJUST_01H : std_logic_vector (1 downto 0) := "01";
    constant STATE_ADJUST_01M : std_logic_vector (1 downto 0) := "10";
    constant STATE_ADJUST_01S : std_logic_vector (1 downto 0) := "11";
    --signal define
    signal state  : std_logic_vector (1 downto 0);
    signal tmp_cnt_0 : std_logic_vector(18 downto 0);
    signal tmp_cnt      : std_logic_vector (6 downto 0);
    signal tmp_time_01s : std_logic_vector (3 downto 0);
    signal tmp_time_10s : std_logic_vector (3 downto 0);
    signal tmp_time_01m : std_logic_vector (3 downto 0);
    signal tmp_time_10m : std_logic_vector (3 downto 0);
    signal tmp_time_01h : std_logic_vector (3 downto 0);
    signal tmp_time_10h : std_logic_vector (3 downto 0);
    --if input is long up button, num increase at 200ms.
    --tmp_cnt_long_press is 200ms count signal
    signal tmp_cnt_long_press : std_logic_vector (4 downto 0);
begin

    --state machine
    process(CLK, RST,C_ADJUST_LONG,C_MODE)
    begin
        if RST = '0' then
            --init state and output
            state <= STATE_RUN;
            C_EN_ADJUST <= '0';
            C_LED <= '0';
        elsif CLK = '1' and CLK'event then
            --in run state
            if state = STATE_RUN then
                --enable adjust state
                if (C_ADJUST_LONG = '1' and C_ADJUST_LONG'event) then
                    state <= STATE_ADJUST_01H;
                    C_EN_ADJUST <= '1';
                else
                    --blink led
                    if tmp_cnt = "0110010" then
                        C_LED <= '1';
                    elsif tmp_cnt = "0000000" then
                        C_LED <= '0';
                    end if;
                end if;
            --in Adjust state
            else
                -- return to run state
                if (C_ADJUST_LONG = '1' and C_ADJUST_LONG'event) then
                    C_EN_ADJUST <= '0';
                    state <= STATE_RUN;
                --adjust_x state switch by mode button
                elsif (C_MODE = '1' and C_MODE'event) then
                    if state = STATE_ADJUST_01S then
                        state <= STATE_ADJUST_01H;
                    else
                        state <= state + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;


    --50mhz -> 100hz
    process(CLK, RST)
	begin
		if RST = '0' then
			tmp_cnt_0 <= (others => '0');
		elsif CLK = '1' and CLK'event then
				if tmp_cnt_0 = LIMIT_0 then
					tmp_cnt_0 <= (others => '0');
				else
					tmp_cnt_0 <= tmp_cnt_0 + 1;
				end if;
		end if;
	end process;

    
    --10ms -> 1s
    process(CLK, RST)
    begin
        if RST = '0' then
            tmp_cnt <= (others => '0');
        elsif CLK = '1' and CLK'event then
            if tmp_cnt_0 = LIMIT_0 then
                if tmp_cnt = LIMIT then --100
                    tmp_cnt <= (others => '0');
                else
                    tmp_cnt <= tmp_cnt + 1;
                end if;
            end if;
        end if;
    end process;
    
    --long press counter
    --count 200ms
    process(CLK, RST)
    begin
        if RST = '0' then
            tmp_cnt_long_press <= "00000";
        elsif CLK = '1' and CLK'event then
            if tmp_cnt_long_press = "10100" then --20
                tmp_cnt_long_press <= (others => '0');
            else
                tmp_cnt_long_press <= tmp_cnt_long_press + 1;
            end if;
        end if;
    end process;

    --01sec counter
    process(CLK, RST)
    begin
        if RST = '0' then
            tmp_time_01s <= "0000";
        elsif (CLK = '1' and CLK'event) then
            --when adjust, init sec
            if state = STATE_ADJUST_01S then
                if (C_UP_SHORT = '0' or C_UP_LONG = '0') then
                    tmp_time_01s <= "0000";
                end if;
            --when running
            elsif (state = STATE_RUN) then
                if  (tmp_cnt = LIMIT and tmp_cnt_0 = LIMIT_0)  then
                    if (tmp_time_01s = "1001") then
                        tmp_time_01s <= "0000";
                    else
                        tmp_time_01s <= tmp_time_01s + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;

    --10sec counter
    process(CLK, RST)
    begin
        if RST = '0' then
            tmp_time_10s <= "0000";
        elsif (CLK = '1' and CLK'event) then
             --when adjust, init sec
            if state = STATE_ADJUST_01S then
                if (C_UP_SHORT = '0' or C_UP_LONG = '0') then
                    tmp_time_10s <= "0000";
                end if;
            elsif (state = STATE_RUN) then
                --init 10s when 01s = 9 and baseclock = 99
                if (tmp_time_01s = "1001" and tmp_cnt = LIMIT and tmp_cnt_0 = LIMIT_0) then
                    if (tmp_time_10s = "0101") then
                        tmp_time_10s <= "0000";
                    --count 10s when 01s=9 and falling edge
                    else 
                        tmp_time_10s <= tmp_time_10s + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;

    
    --01min counter
    process(CLK, RST, C_UP_SHORT)
    begin
        if RST = '0' then
            tmp_time_01m <= "0000";
        elsif (CLK = '1' and CLK'event) then
            --when adjust, count by button
            if state = STATE_ADJUST_01M then
                --increase per 200ms
                if (tmp_cnt_long_press = "00000" and C_UP_LONG = '0') then
                    if (tmp_time_01m = "1001") then
                        tmp_time_01m <= "0000";
                    else
                        tmp_time_01m <= tmp_time_01m + 1;
                    end if;
                --short press
                elsif (C_UP_SHORT = '1' and C_UP_SHORT'event) then
                    if (tmp_time_01m = "1001") then
                        tmp_time_01m <= "0000";
                    else
                        tmp_time_01m <= tmp_time_01m + 1;
                    end if;
                end if;
            --when running
            elsif (state = STATE_RUN) then
                if (tmp_time_10s = "0101" and tmp_time_01s = "1001" and tmp_cnt = LIMIT and tmp_cnt_0 = LIMIT_0)  then
                    if (tmp_time_01m = "1001") then
                        tmp_time_01m <= "0000";
                    else
                        tmp_time_01m <= tmp_time_01m + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;

    --10min counter
    process(CLK, RST, C_UP_SHORT)
    begin
        if (RST = '0') then
            tmp_time_10m <= "0000";
        elsif (CLK = '1' and CLK'event) then
            if state = STATE_ADJUST_01M then
                --long press
                if (tmp_cnt_long_press = "00000" and C_UP_LONG = '0') then
                    if (tmp_time_01m = "1001") then
                        if (tmp_time_10m = "0101") then
                            tmp_time_10m <= "0000";
                        else
                            tmp_time_10m <= tmp_time_10m + 1;
                        end if;
                    end if;
                --short press
                elsif (C_UP_SHORT = '1' and C_UP_SHORT'event) then
                    if (tmp_time_01m = "1001") then
                        if (tmp_time_10m = "0101") then
                            tmp_time_10m <= "0000";
                        else
                            tmp_time_10m <= tmp_time_10m + 1;
                        end if;
                    end if;
                end if;
            elsif (state = STATE_RUN) then
                --init 10s when 01s = 9 and baseclock = 9
                if (tmp_time_01m = "1001" and tmp_time_10s = "0101" and tmp_time_01s = "1001" and tmp_cnt = LIMIT and tmp_cnt_0 = LIMIT_0) then
                    if (tmp_time_10m = "0101") then
                        tmp_time_10m <= "0000";
                    --count 10s when 01s=9 and falling edge
                    else 
                        tmp_time_10m <= tmp_time_10m + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;




    --01h counter
    process(CLK, RST,C_UP_SHORT)
    begin
        if RST = '0' then
            tmp_time_01h <= "0010";
        elsif (CLK = '1' and CLK'event) then
            --when adjust, count by button
            if state = STATE_ADJUST_01H then
                --long press
                if (tmp_cnt_long_press = "00000" and C_UP_LONG = '0') then
                    if (tmp_time_01h = "1001") then
                        tmp_time_01h <= "0000";
                    elsif (tmp_time_01h = "0011" and tmp_time_10h = "0010") then
                        tmp_time_01h <= "0000";
                    else
                        tmp_time_01h <= tmp_time_01h + 1;
                    end if;
                --short press
                elsif (C_UP_SHORT = '1' and C_UP_SHORT'event) then
                    if (tmp_time_01h = "1001") then
                        tmp_time_01h <= "0000";
                    elsif (tmp_time_01h = "0011" and tmp_time_10h = "0010") then
                        tmp_time_01h <= "0000";
                    else
                        tmp_time_01h <= tmp_time_01h + 1;
                    end if;
                end if;
            --when running
            elsif (state = STATE_RUN) then
                if (tmp_time_01h = "0011" and tmp_time_10h = "0010" 
                    and tmp_time_10m = "0101" and tmp_time_01m = "1001" 
                    and tmp_time_10s = "0101" and tmp_time_01s = "1001" 
                    and tmp_cnt = LIMIT and tmp_cnt_0 = LIMIT_0) then
                    tmp_time_01h <= "0000";
                elsif (tmp_time_01m = "1001" and tmp_time_10m = "0101" 
                    and tmp_time_10s = "0101" and tmp_time_01s = "1001" 
                    and tmp_cnt = LIMIT and tmp_cnt_0 = LIMIT_0)  then
                    if (tmp_time_01h = "1001") then
                        tmp_time_01h <= "0000";
                    else
                        tmp_time_01h <= tmp_time_01h + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;

    --10h counter
    process(CLK, RST,C_UP_SHORT)
    begin
        if (RST = '0') then
            tmp_time_10h <= "0001";
        elsif (CLK = '1' and CLK'event) then
            --when adjust
            if state = STATE_ADJUST_01H then
                -- long press
                if (tmp_cnt_long_press = "00000" and C_UP_LONG = '0') then
                    if (tmp_time_01h = "1001") then
                        tmp_time_10h <= tmp_time_10h + 1;
                    elsif (tmp_time_01h = "0011" and tmp_time_10h = "0010") then
                            tmp_time_10h <= "0000";
                    end if;
                --short press
                elsif (C_UP_SHORT = '1' and C_UP_SHORT'event) then
                    if (tmp_time_01h = "1001") then
                        tmp_time_10h <= tmp_time_10h + 1;
                    elsif (tmp_time_01h = "0011" and tmp_time_10h = "0010") then
                            tmp_time_10h <= "0000";
                    end if;
                end if;
            elsif (state = STATE_RUN) then
                --init 10s when 01s = 9 and baseclock = 9
                if (tmp_time_01h = "1001" and tmp_time_10m = "0101" 
                    and tmp_time_01m = "1001" and tmp_time_10s = "0101" 
                    and tmp_time_01s = "1001" and tmp_cnt = LIMIT
                    and tmp_cnt_0 = LIMIT_0) then
                    tmp_time_10h <= tmp_time_10h + 1;
                elsif (tmp_time_01h = "0011" and tmp_time_10h = "0010" 
                    and tmp_time_10m = "0101" and tmp_time_01m = "1001" 
                    and tmp_time_10s = "0101" and tmp_time_01s = "1001" 
                    and tmp_cnt = LIMIT and tmp_cnt_0 = LIMIT_0) then
                    tmp_time_10h <= "0000";
                end if;
            end if;
        end if;
    end process;

    --out signal
    C_TIME_01S <= tmp_time_01s;
    C_TIME_10S <= tmp_time_10s;
    C_TIME_01M <= tmp_time_01m;
    C_TIME_10M <= tmp_time_10m;
    C_TIME_01H <= tmp_time_01h;
    C_TIME_10H <= tmp_time_10h;

end BEHAVE;
