library ieee;
use ieee.std_logic_1164.all;

package funcion_rom is
	function positive_edge (signal mux :std_logic_vector(4 downto 0)) return integer;
end funcion_rom;


package body funcion_rom is
	function positive_edge(signal mux: std_logic_vector(4 downto 0))
		return integer is
	variable result: integer range 0 to 4;
	begin
		 case mux is
		when "00000" =>
			return 0;
		when "00001" =>
			return 1;
		when "00100" =>
			return 2;
		when "01100" =>
			return 3;
		when "10000" =>
			return 4;
		when others =>
			return 0;
	end case;
	
		--return pago'event and pago="00000";
	end positive_edge;
end funcion_rom;