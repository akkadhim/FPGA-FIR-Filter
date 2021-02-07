transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/MSc/Reconfigurable Hardware Design/FPGA Lab projects/FIR Filter/firfilter.vhd}

vcom -93 -work work {D:/MSc/Reconfigurable Hardware Design/FPGA Lab projects/FIR Filter/simulation/modelsim/firfilter.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  firfilter_vhd_tst

add wave *
view structure
view signals
run -all
