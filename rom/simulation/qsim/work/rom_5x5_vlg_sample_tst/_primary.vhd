library verilog;
use verilog.vl_types.all;
entity rom_5x5_vlg_sample_tst is
    port(
        address         : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end rom_5x5_vlg_sample_tst;
