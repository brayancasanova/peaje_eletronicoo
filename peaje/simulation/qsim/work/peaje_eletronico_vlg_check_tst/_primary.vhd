library verilog;
use verilog.vl_types.all;
entity peaje_eletronico_vlg_check_tst is
    port(
        alarma_ruido    : in     vl_logic;
        bcd_out         : in     vl_logic_vector(6 downto 0);
        bcd_out1        : in     vl_logic_vector(6 downto 0);
        bcd_out2        : in     vl_logic_vector(6 downto 0);
        bcd_out3        : in     vl_logic_vector(6 downto 0);
        bcd_salida1     : in     vl_logic_vector(6 downto 0);
        bcd_salida2     : in     vl_logic_vector(6 downto 0);
        recibo          : in     vl_logic;
        semaforo_entrada_rojo: in     vl_logic;
        semaforo_entrada_verde: in     vl_logic;
        semaforo_salida_rojo: in     vl_logic;
        semaforo_salida_verde: in     vl_logic;
        talanquera_entrada: in     vl_logic;
        talanquera_salida: in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end peaje_eletronico_vlg_check_tst;
