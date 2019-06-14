Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity sync_adder is
    port(
        CLK : in std_logic;
        RST : in std_logic;
        EN  : in std_logic;
        A   : in std_logic_vector (15 downto 0);
        B   : in std_logic_vector (15 downto 0);
        EN_OUT  : out std_logic
        SUM : out std_logic_vector (16 downto 0)
    );
end sync_adder;

architecture BEHAVE of sync_adder is
signal s_a : std_logic_vector(15 downto 0);
signal s_b : std_logic_vector(15 downto 0);
signal s_en : std_logic;
begin
    process (CLK , RST)
    begin   
        if RST = '0' then
            s_a <= (others => '0');
            s_b <= (others => '0');
        els if CLK = '1' and CLK'event then
            s_a <= A;
            s_b <= B;
        end if;
    end process;

     process (CLK , RST)
    begin   
        if RST = '0' then
            SUM  <= (others => '0');
        elsif CLK = '1' and CLK'event then
            if s_en = '1' then
                SUM <= ('0' & s_a) + ('0' & s_b);
            else 
                SUM <= (others => '0');
            end if;
        end if;
    end process;

    process (CLK, RST )
    begin if RST = '0' then 
            s_en <= '0' 
            EN_OUT <= '0'
        elsif CLK '1' and CLK'event then
            s_en <= EN;
            EN_OUT <= s_en;
        end if;
    end process;
end BEHAVE;


