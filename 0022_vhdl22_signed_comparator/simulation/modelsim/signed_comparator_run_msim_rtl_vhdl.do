transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Cursos_youtube/VHDL/codes/Workspace/video_aulas_vhdl/0022_vhdl22_signed_comparator/signed_comparator.vhd}

vcom -93 -work work {D:/Cursos_youtube/VHDL/codes/Workspace/video_aulas_vhdl/0022_vhdl22_signed_comparator/signed_comparator_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  signed_comparator_tb

add wave *
view structure
view signals
run 30 us
