library ieee;
use ieee.std_logic_1164.all;

entity forpara_rom is
	port (codigo : in std_logic_vector(4 downto 0);
			salida : out std_logic_vector(4 downto 0));
end entity;

architecture architecture_forpara_rom of forpara_rom is

begin

sentencia_for :process(codigo)
begin
	for i in 0 to 4 loop
		

end process sentencia_for;
end architecture_forpara_rom;
