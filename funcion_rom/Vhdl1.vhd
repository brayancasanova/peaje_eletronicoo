library ieee;
use ieee.std_logic_1164.all;

package my_package is
	function positive_edge (signal pago :std_logic_vector(4 downto 0)) return boolean;
end my_package;


package body my_package is
	function positive_edge(signal pago: std_logic_vector(4 downto 0))
		return boolean is
	begin
		 case pago is
        when "00000" =>
            return false;
        when "00010" | "00100" | "01000" =>
            return true;
        when others =>
            return false;
		  end case;
	
		--return pago'event and pago="00000";
	end positive_edge;
end my_package;--para rom