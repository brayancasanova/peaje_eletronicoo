library ieee;
use ieee.std_logic_1164.all;

entity MUX is
	port (codigo0 : in std_logic;
			codigo1 : in std_logic;
			codigo2 : in std_logic;
			codigo3 : in std_logic;
			codigo4 : in std_logic;
			control : in std_logic_vector(2 downto 0);
			salida : out std_logic);
end entity;

architecture architecture_MUX of MUX is

begin

sentencia_case :process(codigo0,codigo1,codigo2,codigo3,codigo4,control)
begin
	case control is
		when "000" =>
			salida <= codigo0;
		when "001" =>
			salida <= codigo1;
		when "010" =>
			salida <= codigo2;
		when "011" =>
			salida <= codigo3;
		when "100" =>
			salida <= codigo4;
		when others =>
			salida <=codigo0;
	end case;

end process sentencia_case;
end architecture_MUX;
