library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bcd_g is
    port (IA : in std_logic ;
	 ABCDEFG: out std_logic_vector (6 downto 0));
end entity;

Architecture DECO of bcd_g is

     signal recibo : std_logic;
	  
begin
    recibo<= IA;
	 with (recibo) select
	 ABCDEFG<= "0000100" when '1',
				  "1111111" when others;
end DECO;