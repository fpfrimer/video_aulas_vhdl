transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Cursos_youtube/VHDL/codes/Workspace/video_aulas_vhdl/vhdl6_quartus_prime/and_gate.vhd}
