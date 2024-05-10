library ieee;
use ieee.std_logic_1164.all;
use work.my_package.all;
use work.funcion_rom.all;

entity peaje_eletronico is
port (front_sensor: in std_logic  ;
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
		
end peaje_eletronico;


 


architecture descripcion of peaje_eletronico is
	type estado is
		(inicial,detectado_entrada,detectado_salida,pagar,correcto,intento1,intento2,alarma);
			
			signal presente:estado:=inicial;
			
			signal clk1,clk2 :std_logic;
			signal cuenta: integer range 0 to 63;
			
			signal recibir :std_logic_vector(6 downto 0);
			signal cable : std_logic;
			signal cable1 : std_logic;
			signal cable2 : std_logic;
			signal cable3 : std_logic;
			signal stalanquera_salida : std_logic;
			signal stalanquera_entrada  :std_logic;
			signal sfront_sensor : std_logic;
			signal sback_sensor : std_logic;
	

	
		 	
component Divisor_frecuencia is
    port
    (
        -- Entrada
        clk     : in  std_logic;     
        
        -- Salida
        out1    : buffer std_logic;
        out2    : buffer std_logic 
    );
end component;

component bcd is
    port (IA : in std_logic ;
	 ABCDEFG: out std_logic_vector (6 downto 0));
end component;

component bcd_a is
    port (IA : in std_logic ;
	 ABCDEFG: out std_logic_vector (6 downto 0));
end component;

component bcd_g is
    port (IA : in std_logic ;
	 ABCDEFG: out std_logic_vector (6 downto 0));
end component;
component PWM is
	generic( Max: natural := 500000);
	Port ( clk :  in  STD_LOGIC;--reloj de 50MHz
					selector :  in  STD_LOGIC;--selecciona las 4 posiciones
					PWM :  out  STD_LOGIC);--terminal donde sale la señal de PWM
end component;

component MUX is
	port (codigo0 : in std_logic;
			codigo1 : in std_logic;
			codigo2 : in std_logic;
			codigo3 : in std_logic;
			codigo4 : in std_logic;
			control : in std_logic_vector(2 downto 0);
			salida : out std_logic);
end component;

component rom_5x5 is
	port (address: in std_logic_vector(3 downto 0);
			data_out: out std_logic_vector(4 downto 0));
end component;

component counter is

port (clk,rst:in std_logic;
		count: out std_logic_vector (3 downto 0));
end component;

component bcd_o is
    port (IA : in std_logic ;
	 ABCDEFG: out std_logic_vector (6 downto 0));
end component;


		begin
	U1 : bcd port map (IA => cable,ABCDEFG =>bcd_out); 
	U2 : bcd_a port map (IA => cable1,ABCDEFG =>bcd_out1);
	U3 : bcd_g port map (IA => cable2,ABCDEFG =>bcd_out2);
	U4 : bcd_o port map (IA => cable3,ABCDEFG =>bcd_out3);
	U5 : PWM port map (clk =>clk, selector => stalanquera_entrada, PWM =>talanquera_entrada);
	U6 : PWM port map (clk =>clk, selector => stalanquera_salida, PWM =>talanquera_salida);
	divisor : divisor_frecuencia port map (clk,clk1,clk2);
	
	
    -- Proceso para negar la señal de entrada
    proceso_negacion: process(front_sensor)
    begin
        sfront_sensor <= not front_sensor;
    end process proceso_negacion;
	 
	  -- Proceso para negar la señal de entrada
    proceso_negacion2: process(back_sensor)
    begin
        sback_sensor <= not back_sensor;
    end process proceso_negacion2;
	
		--lo primero en definir es la maquina de estados:
		maquina:
		process(sfront_sensor,back_sensor,reset,clk)
		VARIABLE spago : boolean;
		begin
			if reset= '1' then
			presente<=inicial;
		elsif clk ='1' and clk'event then
			case presente is
				when inicial =>
					if sfront_sensor='1' and sback_sensor='0' then
						presente<=detectado_entrada;
					else
						presente<=inicial;
					end if;
				when detectado_entrada=>
					if sfront_sensor='1' and sback_sensor='0' then
						presente<=pagar;
					else
						presente<=detectado_entrada;
					end if;
				when pagar=>
					spago :=positive_edge(pagar_dinero);
					if spago = true then
						presente<=correcto;

					else
						presente<=intento1;

					end if;
				when intento1=>
					spago :=positive_edge(pagar_dinero);
					if spago = false then
						presente<=intento2;
					else
						presente<=correcto;
						
					end if;
				when intento2=>
					spago :=positive_edge(pagar_dinero);
						if spago = false then
							presente<=alarma;
						else
							presente<=correcto;
						end if;
				when alarma=>
						presente<=inicial;
				when correcto =>
					if sfront_sensor='0' and sback_sensor ='1' then
						presente<=detectado_salida;
					else
						presente<=correcto;
					end if;
				when detectado_salida=>
					if sfront_sensor='1' and sback_sensor='1' then
						presente<=inicial;
					else
						presente<=detectado_salida;
					end if;
				when others => presente <= inicial;
				end case;
			end if;
		end process maquina;
	salida:
	process(presente)--no depende de las entradas
	begin
	
	--'1' talanquera abierta
	--'0' talanquera cerrada
	--'1' led encendido
	--'0' led apagado
			case presente is
				when inicial=>
					semaforo_entrada_verde<='1';
					semaforo_entrada_rojo<='0';
					semaforo_salida_verde<='0';
					semaforo_salida_rojo<='1';
					stalanquera_entrada<= '1'; --talanquera_entrada abierta
					stalanquera_salida<='0';
					alarma_ruido<='0';---alarma inactivada
					recibo<='0';
					cable<='0';
					cable1<='0';
					cable2<='0';
					cable3<='0'; 
					
				when detectado_entrada=>
					semaforo_entrada_verde<='0';
					semaforo_entrada_rojo<='1';
					semaforo_salida_verde<='0';
					semaforo_salida_rojo<='1';
					stalanquera_entrada<='0'; --talanquera_entrada cerrada
					stalanquera_salida<='0';
					alarma_ruido<='0';---alarma inactivada
					recibo<='0';--sin recibo
					cable<='0';
					cable1<='0';
					cable2<='0';
					cable3<='0';
					
				when pagar=>
					semaforo_entrada_verde<='0';
					semaforo_entrada_rojo<='1';
					semaforo_salida_verde<='0';
					semaforo_salida_rojo<='1';
					stalanquera_entrada<='0';
					stalanquera_salida<='0';
					alarma_ruido<='0';---alarma inactivada
					recibo<='0';
					cable<='0';
					cable1<='0';
					cable2<='0';
					cable3<='0';
					
				when correcto=>
					semaforo_entrada_verde<='0';
					semaforo_entrada_rojo<='1';
					semaforo_salida_verde<=clk2;
					semaforo_salida_rojo<='0';
					stalanquera_entrada<='0';
					stalanquera_salida<='1';
					alarma_ruido<='0';---alarma inactivada
					recibo<='1';
					cable<='1';
					cable1<='1';
					cable2<='1';
					cable3<='1';
					
				when detectado_salida=>
					semaforo_entrada_verde<='1';
					semaforo_entrada_rojo<='0';
					semaforo_salida_verde<='0';
					semaforo_salida_rojo<='1';
					stalanquera_entrada<='1';
					stalanquera_salida<='0';
					alarma_ruido<='0';---alarma inactivada
					recibo<='0';
					cable<='0';
					cable1<='0';
					cable2<='0';
					cable3<='0';
					
				when intento1=>
					semaforo_entrada_verde<='0';
					semaforo_entrada_rojo<='1';
					semaforo_salida_verde<='0';
					semaforo_salida_rojo<='1';
					stalanquera_entrada<='0';
					stalanquera_salida<='0';
					alarma_ruido<='1';
					recibo<='0';
					cable<='0';
					cable1<='0';
					cable2<='0';
					cable3<='0';
					
				when intento2=>
					semaforo_entrada_verde<='0';
					semaforo_entrada_rojo<='1';
					semaforo_salida_verde<='0';
					semaforo_salida_rojo<='1';
					stalanquera_entrada<='0';
					stalanquera_salida<='0';
					alarma_ruido<='0';---alarma inactivada
					recibo<='0';
					cable<='0';
					cable1<='0';
					cable2<='0';
					cable3<='0';
					
				when alarma=>
					semaforo_entrada_verde<='0';
					semaforo_entrada_rojo<='1';
					semaforo_salida_verde<='0';
					semaforo_salida_rojo<='1';
					stalanquera_entrada<='0';
					stalanquera_entrada<='0';
					alarma_ruido<='0';---alarma activada
					recibo<='0';
					cable<='0';
					cable1<='0';
					cable2<='0';
					cable3<='0';
					
				end case;
			end process salida;
	
	
end descripcion;
	