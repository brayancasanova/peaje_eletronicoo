library verilog;
use verilog.vl_types.all;
entity peaje_eletronico is
    port(
        front_sensor    : in     vl_logic;
        back_sensor     : in     vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        pagar_dinero    : in     vl_logic_vector(4 downto 0);
        semaforo_entrada_verde: out    vl_logic;
        semaforo_entrada_rojo: out    vl_logic;
        semaforo_salida_verde: out    vl_logic;
        semaforo_salida_rojo: out    vl_logic;
        talanquera_entrada: out    vl_logic;
        talanquera_salida: out    vl_logic;
        alarma_ruido    : out    vl_logic;
        recibo          : out    vl_logic;
        bcd_out1        : out    vl_logic_vector(6 downto 0);
        bcd_out2        : out    vl_logic_vector(6 downto 0);
        bcd_out3        : out    vl_logic_vector(6 downto 0);
        bcd_out         : out    vl_logic_vector(6 downto 0);
        bcd_salida1     : out    vl_logic_vector(6 downto 0);
        bcd_salida2     : out    vl_logic_vector(6 downto 0)
    );
end peaje_eletronico;
