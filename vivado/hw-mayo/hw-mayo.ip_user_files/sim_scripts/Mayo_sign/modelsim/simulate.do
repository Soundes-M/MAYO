onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xilinx_vip -L xpm -L xlconstant_v1_1_7 -L xil_defaultlib -L xlconcat_v2_1_4 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.Mayo_sign xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {Mayo_sign.udo}

run -all

quit -force