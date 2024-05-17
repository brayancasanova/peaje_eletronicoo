library verilog;
use verilog.vl_types.all;
entity peaje_eletronico_vlg_sample_tst is
    port(
        back_sensor     : in     vl_logic;
        clk             : in     vl_logic;
        front_sensor    : in     vl_logic;
        pagar_dinero    : in     vl_logic_vector(4 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end peaje_eletronico_vlg_sample_tst;
