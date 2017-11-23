transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/takkato/Quartus/JogoConversorHexadecimal/decod7seg.vhd}
vcom -93 -work work {/home/takkato/Quartus/JogoConversorHexadecimal/ROM3.vhd}
vcom -93 -work work {/home/takkato/Quartus/JogoConversorHexadecimal/ROM2.vhd}
vcom -93 -work work {/home/takkato/Quartus/JogoConversorHexadecimal/ROM0.vhd}
vcom -93 -work work {/home/takkato/Quartus/JogoConversorHexadecimal/ButtonSync.vhd}
vcom -93 -work work {/home/takkato/Quartus/JogoConversorHexadecimal/ROM1.vhd}
vcom -93 -work work {/home/takkato/Quartus/JogoConversorHexadecimal/ClockChanger.vhd}
vcom -93 -work work {/home/takkato/Quartus/JogoConversorHexadecimal/Datapath.vhd}
vcom -93 -work work {/home/takkato/Quartus/JogoConversorHexadecimal/Control.vhd}
vcom -93 -work work {/home/takkato/Quartus/JogoConversorHexadecimal/HexToBinGame.vhd}

