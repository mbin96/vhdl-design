library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity data_bus is
    port(
        CLK     : in  std_logic;
        RST     : in  std_logic;
        CS      : in  std_logic;
        ADDR    : in  std_logic_vector(3 downto 0);    
        DIN     : in  std_logic_vector(7 downto 0);
        DOUT    : out std_logic_vector(7 downto 0)    
    );
end data_bus;
architecture BEHAVE of data_bus is
    signal R0 : std_logic_vector(7 downto 0);
    signal R1 : std_logic_vector(7 downto 0);
    signal R2 : std_logic_vector(7 downto 0);
    signal R3 : std_logic_vector(7 downto 0);
    signal R4 : std_logic_vector(7 downto 0);
    signal R5 : std_logic_vector(7 downto 0);
    signal R6 : std_logic_vector(7 downto 0);
    signal R7 : std_logic_vector(7 downto 0);

    signal en : std_logic_vector(7 downto 0);  
begin

    process(CLK,RST)
        if(RST =0) then
            R0 <= (others => '0');
            R1 <= (others => '0');
            R2 <= (others => '0');
            R3 <= (others => '0');
            R4 <= (others => '0');
            R5 <= (others => '0');
            R6 <= (others => '0');
            R7 <= (others => '0');
        elsif CLK = '1' and CLK'event then

       
       
       
       
       
       
       
       
       
        end if;

    end process;

    process(ADDR)
    begin
        case ADDR is 
        when "000" => en <= "00000001";        
        when "001" => en <= "00000010";
        when "010" => en <= "00000100";
        when "011" => en <= "00001000";
        when "100" => en <= "00010000";
        when "101" => en <= "00100000";
        when "110" => en <= "01000000";
        when "111" => en <= "10000000";
        end case;
    end process;

    DOUT <= R0 when en(0) = '1' else (others => 'Z');
    DOUT <= R1 when en(1) = '1' else (others => 'Z');    
    DOUT <= R2 when en(2) = '1' else (others => 'Z');
    DOUT <= R3 when en(3) = '1' else (others => 'Z');
    DOUT <= R4 when en(4) = '1' else (others => 'Z');
    DOUT <= R5 when en(5) = '1' else (others => 'Z');    
    DOUT <= R6 when en(6) = '1' else (others => 'Z');    
    DOUT <= R7 when en(7) = '1' else (others => 'Z');    
    --tristate buffer
    
    Y <= A when en = '1' else 'Z';




