library verilog;
use verilog.vl_types.all;
entity rom_5x5 is
    port(
        address         : in     vl_logic_vector(4 downto 0);
        data_out        : out    vl_logic_vector(4 downto 0)
    );
end rom_5x5;
