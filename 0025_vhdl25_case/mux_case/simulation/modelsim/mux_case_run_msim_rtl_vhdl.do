transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Cursos_youtube/VHDL/codes/Workspace/video_aulas_vhdl/0025_vhdl25_case/mux_case.vhd}

vcom -93 -work work {D:/Cursos_youtube/VHDL/codes/Workspace/video_aulas_vhdl/0025_vhdl25_case/mux_case_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  mux_case_tb

add wave *
view structure
view signals
run 5 us
