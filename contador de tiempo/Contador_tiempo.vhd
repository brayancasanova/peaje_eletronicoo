library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Usamos numeric_std en lugar de std_logic_arith y std_logic_unsigned

entity Contador_tiempo is
	port
	(
		-- Input ports
		CLK	    : in  std_logic;
		enable	 : in  std_logic;
		reset     : in  std_logic;

		-- Output ports
		count	: out  std_logic_vector(2 downto 0);
		minsal: out  std_logic
	);
end Contador_tiempo;


architecture arch_Contador_tiempo of Contador_tiempo is

    signal cnt : integer range 0 to 31;
	 signal stop : std_logic:='0';

begin

   pSeq : process (CLK, enable) is
   begin
		if rising_edge(CLK) then
			if (reset = '1')then
				if enable = '1' then
					if cnt = 4 then
						cnt <= 0;
						minsal <= '1';						  
					else
						cnt <= cnt + 1;
						if (cnt = 1) then
							minsal <= '0';
						end if;
					end if;
				else
					minsal <= '0';
				end if;
			end if;
		end if;
   end process pSeq;

   count  <= std_logic_vector(to_unsigned(cnt, 3));

end arch_Contador_tiempo;