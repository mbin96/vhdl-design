library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity  state_m is
    port(
        CLK : in std_logic;
        RST : in std_logic;
        SATET_SW
        STOP_SW
        STATE: out std_logic_vector(1 downto 0)
    );

end state_m;

architecture behave of state_m is
signal tmpState : std_logic_vector(1 downto 0);
constant IDLE : std_logic_vector(1 downto 0) := "00";
constant RUN : std_logic_vector(1 downto 0) := "01";
constant PAUSE : std_logic_vector(1 downto 0) := "10";
begin
    process (RST, CLK)
    begin

        if RST = '0' then  
        tmpState <= IDLE; --tempCNT <= (others => '0')도 사용가능
        elsif CLK = '1' and CLK'event then
            case tmpState is
                when IDEL =>
                if START_SW = '0' then
                    tmp_state <= RUN;
                end if;

                when RUN =>
                if STOP_SW = '0' then
                    tmp_state <= PAUSE;
                end if;
                
                when PAUSE =>
                if START_SW = '0' then
                    tmp_state <= RUN;
                end if;
                when others =>
            end case;
            
        end if;

    end process;
STATE <= tmp_state;

end behave;