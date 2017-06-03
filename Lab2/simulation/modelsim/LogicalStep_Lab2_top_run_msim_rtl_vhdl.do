transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {N:/VHDL/Lab2/adder_8bit.vhd}
vcom -93 -work work {N:/VHDL/Lab2/two_one_mux.vhd}
vcom -93 -work work {N:/VHDL/Lab2/SevenSegment.vhd}
vcom -93 -work work {N:/VHDL/Lab2/segment7_mux.vhd}
vcom -93 -work work {N:/VHDL/Lab2/LogicalStep_Lab2_top.vhd}
vcom -93 -work work {N:/VHDL/Lab2/logic_proccessor.vhd}

