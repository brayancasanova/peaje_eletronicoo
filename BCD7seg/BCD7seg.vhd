library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BCD7Seg is

	port
	(
		-- Input ports
		IA,IB, IC, ID : in STD_LOGIC;
		-- Output ports
		F : out std_logic_vector (6 downto 0)
		
	);
end BCD7Seg;

architecture BCD7Seg_Arch of BCD7Seg is

	signal ABCD : std_logic_vector(3 downto 0);

begin

	ABCD <= IA & IB & IC & ID;

	with (ABCD) select
		F <= "0000001" when "0000",
			  "1001111" when "0001",
			  "0010010" when "0010",
			  "0000110" when "0011",
			  "1001100" when "0100",
			  "0100100" when "0101",
			  "1100000" when "0110",
			  "0001111" when "0111",
			  "0000000" when "1000",
			  "0001100" when "1001",
			  "1111110" when "1010",--signo en display
			  "1111111" when others; 
	
end BCD7Seg_Arch;
