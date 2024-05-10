onerror {exit -code 1}
vlib work
vlog -work work rom_5x5.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.rom_5x5_vlg_vec_tst -voptargs="+acc"
vcd file -direction rom_5x5.msim.vcd
vcd add -internal rom_5x5_vlg_vec_tst/*
vcd add -internal rom_5x5_vlg_vec_tst/i1/*
run -all
quit -f
