library verilog;
use verilog.vl_types.all;
entity rom_5x5_vlg_check_tst is
    port(
        data_out        : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end rom_5x5_vlg_check_tst;
