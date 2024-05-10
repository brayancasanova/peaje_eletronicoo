library IEEE;
use IEEE.std_logic_1164.all;

entity Divisor_frecuencia is
    port
    (
        -- Entrada
        clk     : in  std_logic;     
        
        -- Salida
        out1    : buffer std_logic;
        out2    : buffer std_logic 
    );
end Divisor_frecuencia;

architecture arch_Divisor_frecuencia of Divisor_frecuencia is

    signal count1 : integer range 0 to 49999999;  -- Contador para dividir la frecuencia a la mitad
    signal count2 : integer range 0 to 24999999;  -- Contador para dividir la frecuencia a 1 Hz
	
begin

    DIVIDIR: process(clk) is
    begin     
        if (clk'event and clk = '1') then 
            count1 <= count1 + 1;
            count2 <= count2 + 1;
            
            if (count1 = 50000000) then  -- Dividir la frecuencia a la mitad (50 MHz a 25 MHz)
                out1 <= not out1;
                count1 <= 0;
            end if;
            
            if (count2 = 25000000) then  -- Dividir la frecuencia a 1 Hz (25 MHz a 1 Hz)
                out2 <= not out2;
                count2 <= 0;
            end if;
        end if;
    end process;
end arch_Divisor_frecuencia;