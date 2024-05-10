library IEEE;
use ieee.std_logic_1164.all;

entity Systemx_peaje is
end entity;

architecture Systemx_Systemx_peaje_arch of Systemx_peaje is

component peaje_eletronico is
port (front_sensor: in std_logic;
		back_sensor: in std_logic;
		reset: in std_logic;
		clk: in std_logic;
		pagar_dinero: in std_logic_vector(4 downto 0);
		
		semaforo_entrada_verde: out std_logic;
		semaforo_entrada_rojo: out std_logic;
		semaforo_salida_verde: out std_logic;
		semaforo_salida_rojo: out std_logic;
		talanquera_entrada: out std_logic;
		talanquera_salida: out std_logic;
		alarma_ruido: out std_logic;
		recibo: out std_logic;
		bcd_out1:out std_logic_vector(6 downto 0);
		bcd_out2:out std_logic_vector(6 downto 0);
		bcd_out3:out std_logic_vector(6 downto 0);
		bcd_out:out std_logic_vector(6 downto 0));
		
end component;


signal A_TB,B_TB,C_TB,D_TB :std_logic;
signal E_TB :std_logic_vector(4 downto 0);
signal F_TB	,G_TB,H_TB,I_TB,J_TB,K_TB,L_TB,M_TB :std_logic;
SIGnal N_TB,O_TB,P_TB,Q_TB: std_logic_vector(6 downto 0);
begin 

DUT1 : peaje_eletronico port map (front_sensor => A_TB,
								 back_sensor => B_TB,
								 reset=>  C_TB,
								 clk => D_TB,
								 pagar_dinero => E_TB,
								 
								 semaforo_entrada_verde => F_TB,
								 semaforo_entrada_rojo => G_TB,
								 semaforo_salida_verde => H_TB,
								 semaforo_salida_rojo => I_TB,
								 talanquera_entrada => J_TB,
								 talanquera_salida => K_TB,
								 alarma_ruido => L_TB,
								 recibo => M_TB,
								 bcd_out => N_TB,
								 bcd_out1 => O_TB,
								 bcd_out2 => P_TB,
								 bcd_out3 => Q_TB);

STIMULUS : process
begin

	C_TB <= '1' ; wait for 30ns;			
	C_TB <= '0' ; wait for 30ns; 
	A_TB <= '1' ; wait for 30ns;
	E_TB <= "00100";wait for 30ns;
	A_TB <= '1' ; wait for 30ns;
	A_TB <= '0' ; wait for 30ns;
	B_TB <= '0' ; wait for 30ns;
	B_TB <= '1' ; wait for 30ns;
	B_TB <= '0' ; wait for 30ns;
	
end process;

clk :process
begin
	D_TB <= '0' ; wait for 10ns;
	D_TB <= '1' ; wait for 10ns;
end process;

end architecture;