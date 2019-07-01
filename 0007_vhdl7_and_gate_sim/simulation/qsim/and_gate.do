onerror {exit -code 1}
vlib work
vcom -work work and_gate.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.and_gate_vhd_vec_tst
vcd file -direction and_gate.msim.vcd
vcd add -internal and_gate_vhd_vec_tst/*
vcd add -internal and_gate_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
