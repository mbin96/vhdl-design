Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
	    
	
entity alarm is
port(	CLK         	: in  std_logic;            		   -- 100Hz
		RST         	: in  std_logic;            		   -- /RST SW;
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
end alarm;

architecture BEHAVE of alarm is

constant SHOW_ALARM 		: std_logic_vector(2 downto 0) := "000";
constant SET_MODE_01M		: std_logic_vector(2 downto 0) := "001";
constant SET_MODE_01H		: std_logic_vector(2 downto 0) := "010";
constant ALARM_MODE		: std_logic_vector(2 downto 0) := "011";
constant SNOOZE_MODE		: std_logic_vector(2 downto 0) := "100"; 
constant LIMIT 					: std_logic_vector(3 downto 0) := "1010"; -- 10
constant SN_TIME				: std_logic_vector(15 downto 0) := "0001011101110000"; -- 6000
signal tmp_led        : std_logic_vector(17 downto 0);
signal tmp_set_10H	: std_logic_vector(3 downto 0);
signal tmp_set_01H	: std_logic_vector(3 downto 0);
signal tmp_set_01M	: std_logic_vector(3 downto 0);
signal tmp_set_10M	: std_logic_vector(3 downto 0);
signal mode_tmp 	: std_logic_vector(2 downto 0) ;
signal tmp_cnt		: std_logic_vector(3 downto 0);  -- TIME_UP_LONG counter
signal tmp_cnt2		: std_logic_vector(15 downto 0); -- SN_TIME counter
signal en_tmp : std_logic;
begin	
    process(CLK, RST)  -- SN_TIME counter
	begin
	    if(RST = '0') then
			tmp_cnt2 <=(others=>'0');
		elsif CLK='1' and CLK'event then
			if mode_tmp =SNOOZE_MODE then
				tmp_cnt2 <= tmp_cnt2+1;
			else 
				tmp_cnt2<= (others=>'0');
		  end if;
		end if;			
		end process;
		
	process(CLK, RST) -- TIME_UP_LONG counter
	begin
		if RST = '0' then
			tmp_cnt<=(others=>'0');
		elsif CLK='1' and CLK'event then
			if A_UP_LONG = '0' then
				if (tmp_cnt = LIMIT) then
					tmp_cnt <= (others=>'0');
				else
					tmp_cnt <= tmp_cnt +1;
				end if;
			end if;
		end if;
	end process;
	
	process(CLK,RST) -- mode change
	begin
		if RST = '0' then
			mode_tmp <= SHOW_ALARM;
			en_tmp<='0';
		elsif (CLK='1' and CLK'event) then
		if((tmp_cnt2 = SN_TIME)) then
				mode_tmp <=ALARM_MODE;
				end if;

		if((C_TIME_01H =tmp_set_01H)and(C_TIME_10H =tmp_set_10H)and(C_TIME_01M =tmp_set_01M)and(C_TIME_10M =tmp_set_10M)) then
				if((mode_tmp/= ALARM_MODE)) then
					if((ALARM_TOGGLE = '1')and (mode_tmp /= SNOOZE_MODE)) then
						mode_tmp<= ALARM_MODE;
						end if;
					end if;
				end if;
		if((mode_tmp=ALARM_MODE)) then
				if((A_UP_SHORT ='0')) then
					mode_tmp <=SNOOZE_MODE;							
				elsif(ALARM_TOGGLE = '0') then
					mode_tmp <= SHOW_ALARM;
				end if;
		end if;	
		
		if (mode_tmp = SHOW_ALARM or mode_tmp = SNOOZE_MODE) then
			if (A_ADJUST_LONG ='0') then
					mode_tmp<=SET_MODE_01M;
					en_tmp <= '1';
			end if;
			else 
				if ((mode_tmp = SET_MODE_01H)or(mode_tmp = SET_MODE_01M)) then
					if (A_MODE ='0') then
						if mode_tmp = SET_MODE_01M then
							mode_tmp <= SET_MODE_01H;
						elsif mode_tmp=set_MODE_01H then
							mode_tmp <= SET_MODE_01M;
						end if;
					elsif(A_ADJUST_LONG = '0') then
						en_tmp<='0';
						mode_tmp<=SHOW_ALARM;
					end if;
				end if;
			end if;
		end if;
end process;

EN_ADJUST <=en_tmp;
				
	process(CLK, RST) -- TIME_01M
	begin
		if RST = '0' then
			tmp_set_01M <= (others => '0');
			tmp_set_10M <= (others => '0');
		elsif CLK = '1' and CLK'event then
				if (mode_tmp = SET_MODE_01M) then
					if ((A_UP_SHORT = '0')or(A_UP_LONG = '0'and tmp_cnt=LIMIT)) then
						if tmp_set_01M = "1001" then
							if tmp_set_10M = "0101" then
								tmp_set_01M <=(others => '0');
								tmp_set_10M <=(others => '0');
							else	
								tmp_set_10M <= tmp_set_10M+1;
								tmp_set_01M <= (others=>'0');
								end if;
						else
							tmp_set_01M <= tmp_set_01M+1;
						end if;
					end if;
				end if;
		end if;
	end process;

	process(CLK, RST) --TIME_10H
	begin
		if RST = '0' then
			tmp_set_01H <= "0010";
			tmp_set_10H <= "0001";
		elsif CLK = '1' and CLK'event then
				if (mode_tmp = SET_MODE_01H) then
					if ((A_UP_SHORT ='0')or((A_UP_LONG = '0') and (tmp_cnt=LIMIT))) then
						if tmp_set_01H = "0011" then
							if tmp_set_10H = "0010" then
								tmp_set_10H<= (others =>'0');
								tmp_set_01H<= (others =>'0');
							else 
								tmp_set_01H <= tmp_set_01H+1;
							end if;
						elsif tmp_set_01H = "1001" then
								if tmp_set_10H <= "0001" then
									tmp_set_10H <= tmp_set_10H+1;
									tmp_set_01H <= (others => '0');
								end if;
						else
								tmp_set_01H <= tmp_set_01H + 1;

						end if;
					end if;
				end if;
		end if;
	end process;


	
	A_TIME_10H		<= tmp_set_10H;
	A_TIME_01H		<= tmp_set_01H;
	A_TIME_10M		<= tmp_set_10M;
	A_TIME_01M		<= tmp_set_01M;
	A_TIME_10S		<= "1110";
	A_TIME_01S		<= "1110";
	
	
 process(CLK, RST) -- ALARM
   begin
       if RST = '0' then
				tmp_led <= "000000000000000000";
	   elsif CLK = '1' and CLK'event then
				if(mode_tmp = ALARM_MODE) then				
					if (tmp_led = "100000000000000000" or tmp_led = "000000000000000000") then
						tmp_led <= "000000000000000001";
					else
						tmp_led <= (tmp_led+tmp_led);
					end if;
				elsif(mode_tmp = SNOOZE_MODE) then
					tmp_led <= (others=>'0');
					if tmp_cnt2 =SN_TIME then
						tmp_led <= "000000000000000001";
					end if;
				else
					tmp_led <= "000000000000000000";
				end if;
	   end if;
   end process;
   

   
	LEDR      <= tmp_led;

end BEHAVE;
