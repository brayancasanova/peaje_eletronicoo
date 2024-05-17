library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Conversor is

	port
	(
		-- Input ports
		Sum_Con : in integer range 0 to 31;

		-- Output ports
		Dec : out integer range 0 to 9;
		Uni : out integer range 0 to 9
	);
end Conversor;

architecture arch_Conversor of Conversor is

begin

	Dec <= Sum_Con / 10;
	Uni <= Sum_Con mod 10;

end arch_Conversor;