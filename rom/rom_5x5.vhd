library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom_5x5 is
	port (address: in std_logic_vector(3  downto 0);
			data_out: out std_logic_vector(4 downto 0));
end entity;

architecture rom_5x5_asymc_arch of rom_5x5 is
	type ROM_type is array (0 to 4) of std_logic_vector (4 downto 0);
	constant ROM : ROM_type := (0 => "00000",
										 1 => "00100",
										 2 => "01000",
										 3 => "00010",
										 4 => "11111");
										
begin 
 data_out <= ROM( to_integer(unsigned(address)));
 end architecture;
									