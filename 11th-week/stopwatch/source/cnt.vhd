library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity  cnt is
    port(
        CLK : in std_logic; --1Mhz
        RST : in std_logic;
        STATE : in std_logic_vector(1 downto 0);
        CNT10s : out std_logic_vector(1 downto 0);
        CNT1s : out std_logic_vector(1 downto 0);
        CNTp1s : out std_logic_vector(1 downto 0);
        CNTp01s : out std_logic_vector(1 downto 0);
       
        
    );

end cnt;

architecture behave of cnt10 is
signal  tmpCNT     : std_logic_vector(13 downto 0); --0~9999 카운트
constant LIMIT      : std_logic_vector(13 downto 0) := "10011100001111";
--CNT
signal tmpCNT10s    : std_logic_vector(3 downto 0);
signal tmpCNT1s    : std_logic_vector(3 downto 0);
signal tmpCNTp1s    : std_logic_vector(3 downto 0);
signal tmpCNTp01s    : std_logic_vector(3 downto 0);


constant IDLE		: std_logic_vector(1 downto 0) := "00";
constant RUN		: std_logic_vector(1 downto 0) := "01";
constant PAUSE		: std_logic_vector(1 downto 0) := "10";

begin
    process (RST, CLK)
    begin

        if RST = '0' then  
            tmpCNT <= (others => '0');
        elsif CLK = '1' and CLK'event then
            if STATE = RUN then --9면 0xA가 아니라 0으로
                if tmpCNT = LIMIT then
                    tmpCNT <= (others => '0');
                else
                    tmp_cnt <= tmpCNT +1;
                end if;
            else
                tmpCNT <= (others => '0');
            end if;
        end if;
    end process;

    --1/100s counter
    process (RST, CLK)
    begin

        if RST = '0' then  
            tmpCNTp01s <= (others => '0');
        elsif CLK = '1' and CLK'event then
            if STATE = RUN then --9면 0xA가 아니라 0으로
                if tmpCNT = LIMIT then
                    if tmpCNTp10s = "1001" then
                        tmpCNTp10s <= "0000";
                    else
                        tmpCNTp10s <= tmpCNTp10s + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;
            
                        --1/10s counter
    process (RST, CLK)
    begin

        if RST = '0' then  
            tmpCNTp1s <= (others => '0');
        elsif CLK = '1' and CLK'event then
            if STATE = RUN then --9면 0xA가 아니라 0으로
                if tmpCNT = LIMIT and tmpCNTp01s = "1001" then
                    if tmpCNTp1s = "1001" then
                        tmpCNTp1s <= "0000";
                    else
                        tmpCNTp1s <= tmpCNTp1s + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;
            

    -- 1s counter
    process (RST, CLK)
    begin

        if RST = '0' then  
        tmpCNT1s <= (others => '0');
        elsif CLK = '1' and CLK'event then
            if STATE = RUN then --9면 0xA가 아니라 0으로
                if (tmpCNT = LIMIT and tmpCNTp01s = "1001" and tmpCNTp1s = "1001") then
                    if tmpCNT1s = "1001" then
                        tmpCNT1s <= "0000";
                    else
                        tmpCNT1s <= tmpCNT1s + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;
    
    process (RST, CLK)
    begin

        if RST = '0' then  
            tmpCNT10s <= (others => '0');
        elsif CLK = '1' and CLK'event then
            if STATE = RUN then --9면 0xA가 아니라 0으로
                if (tmpCNT = LIMIT and tmpCNTp01s = "1001" and tmpCNTp1s = "1001" and tmpCNT1s = "1001") then
                    if tmpCNT10s = "1001" then
                        tmpCNT10s <= "0000";
                    else
                        tmpCNT10s <= tmpCNT10s + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;
            
            
CNT10s  <= tmpCNT10s;   
CNT1s  <= tmpCNT1s;   
CNTp1s  <= tmpCNTp1s;   
CNTp01s  <= tmpCNTp01s;               
            
 
end behave;