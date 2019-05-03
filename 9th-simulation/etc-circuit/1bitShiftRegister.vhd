library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsignd.all;

entity  shiftReg is
    port(
        CLK     : in std_logic;
        RST     : in std_logic;
        DATA    : in std_logic_vector(7 downto 0);
        LD      : in std_logic;
        DIRECTION   :in std_logic;
        SHIFT_DATA  : out std_logic_vector(7 downto 0)
    );

end shiftReg;

architecture behave of shiftReg is
signal tempShiftReg : std_logic;
begin
    process (RST, CLK)
    begin

        if RST = '0' then  
            tempShiftReg <= (others => '0')
        elsif CLK = '1' anf CLK'event then
            if LD = '1' then
                tempShiftReg <= DATA;
            else 
                if DIRECTION = '0' then --shift right
                    --가장 깔끔한 방법
                    tmpShiftReg <= '0' & tmpShiftReg (7 downto 1);
                    
                    --풀어쓰는방법
                    tmpShiftReg(7) <= '0';
                    tmpShiftReg(6) <= tmpShiftReg(7);
                    ...
                    
                    --루프로 하기
                    tmpShiftReg(7) <= '0';
                    for i=0 to 6 loop
                        tmpShiftReg(i) <= tmpShiftReg(i+1);
                    end loop
                        
                else                    --shift left
                    tmpShiftReg <= tmpShiftReg (6 downto 0) & '0';
                end if;
            end if;
        end if;

    end process;

end behave;