entity SensorModule is
    Port (
        SensorInput : in  std_logic;  -- Entrada del sensor
        DataOut     : out std_logic   -- Salida de datos
    );
end entity SensorModule;

architecture Behavioral of SensorModule is
begin
    process(SensorInput)
    begin
        if SensorInput = '1' then
            DataOut <= '1';  -- Sensor detectado
        else
            DataOut <= '0';  -- Sensor no detectado
        end if;
    end process;
end architecture Behavioral;
