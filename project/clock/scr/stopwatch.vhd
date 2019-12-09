Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity stopwatch is
port(	CLK			: in std_logic;						-- 1MHz
		RST			: in std_logic;
		STATE		: in std_logic_vector(1 downto 0);
		CNT_10M		: out std_logic_vector(3 downto 0);
		CNT_1M		: out std_logic_vector(3 downto 0);
		CNT_10S		: out std_logic_vector(3 downto 0);
		CNT_1S		: out std_logic_vector(3 downto 0);
		CNT_P1S		: out std_logic_vector(3 downto 0);
		CNT_P01S	: out std_logic_vector(3 downto 0));


end stopwatch;


architecture BEHAVE of stopwatch is

constant IDLE		: std_logic_vector(1 downto 0) := "00";
constant RUN		: std_logic_vector(1 downto 0) := "01";
constant PAUSE		: std_logic_vector(1 downto 0) := "10";

signal tmp_cnt_p01s	: std_logic_vector(3 downto 0);
signal tmp_cnt_p1s	: std_logic_vector(3 downto 0);
signal tmp_cnt_10m	: std_logic_vector(3 downto 0);
signal tmp_cnt_1m	: std_logic_vector(3 downto 0);
signal tmp_cnt_10s	: std_logic_vector(3 downto 0);
signal tmp_cnt_1s	: std_logic_vector(3 downto 0);

begin

	
	-- 1/100 sec cnt
	process(CLK, RST)
	begin
		if RST = '0' then
			tmp_cnt_p01s <= (others => '0');
		elsif CLK = '1' and CLK'event then
			if STATE = RUN then
				
					if tmp_cnt_p01s = "1001" then
						tmp_cnt_p01s <= "0000";
					else
						tmp_cnt_p01s <= tmp_cnt_p01s + 1;
					end if;
				
			end if;
		end if;
	end process;
		
	-- 1/10 sec cnt
	process(CLK, RST)
	begin
		if RST = '0' then
			tmp_cnt_p1s <= (others => '0');
		elsif CLK = '1' and CLK'event then
			if STATE = RUN then
				if (tmp_cnt_p01s = "1001") then
					if tmp_cnt_p1s = "1001" then
						tmp_cnt_p1s <= "0000";
					else
						tmp_cnt_p1s <= tmp_cnt_p1s + 1;
					end if;
				end if;
			end if;
		end if;
	end process;
	
	process(CLK, RST)
	begin
		if RST = '0' then
			tmp_cnt_1s <= (others => '0');
		elsif CLK = '1' and CLK'event then
			if STATE = RUN then
				if (tmp_cnt_p01s = "1001" and tmp_cnt_p1s = "1001") then
					if tmp_cnt_1s = "1001" then
						tmp_cnt_1s <= "0000";
					else
						tmp_cnt_1s <= tmp_cnt_1s + 1;
					end if;
				end if;
			end if;
		end if;
	end process;
			
	-- 10 sec cnt
	process(CLK, RST)
	begin
		if RST = '0' then
			tmp_cnt_10s <= (others => '0');
		elsif CLK = '1' and CLK'event then
			if STATE = RUN then
				if (tmp_cnt_p01s = "1001" and tmp_cnt_p1s = "1001" and tmp_cnt_1s = "1001" ) then
					if tmp_cnt_10s = "0101" then
						tmp_cnt_10s <= "0000";
					else
						tmp_cnt_10s <= tmp_cnt_10s + 1;
					end if;
				end if;
			end if;
		end if;
	end process;
	-- 1 min cnt
	process(CLK, RST)
	begin
		if RST = '0' then
			tmp_cnt_1m <= (others => '0');
		elsif CLK = '1' and CLK'event then
			if STATE = RUN then
				if (tmp_cnt_p01s = "1001" and tmp_cnt_p1s = "1001" and tmp_cnt_1s = "1001" and tmp_cnt_10s = "0101") then
					if tmp_cnt_1m = "1001" then
						tmp_cnt_1m <= "0000";
					else
						tmp_cnt_1m <= tmp_cnt_1m + 1;
					end if;
				end if;
			end if;
		end if;
	end process;
	-- 10 min cnt
	process(CLK, RST)
	begin
		if RST = '0' then
			tmp_cnt_10m <= (others => '0');
		elsif CLK = '1' and CLK'event then
			if STATE = RUN then
				if (tmp_cnt_p01s = "1001" and tmp_cnt_p1s = "1001" and tmp_cnt_1s = "1001" and tmp_cnt_10s = "0101" and tmp_cnt_1m = "1001") then
					if tmp_cnt_10m = "1001" then
						tmp_cnt_10m <= "0000";
					else
						tmp_cnt_10m <= tmp_cnt_10m + 1;
					end if;
				end if;
			end if;
		end if;
	end process;
	
	
	CNT_P01S	<= tmp_cnt_p01s;
	CNT_P1S	 	<= tmp_cnt_p1s;
	CNT_10M		<= tmp_cnt_10m;
	CNT_1M	 	<= tmp_cnt_1m;
	CNT_10S		<= tmp_cnt_10s;
	CNT_1S		<= tmp_cnt_1s;
end BEHAVE;
	