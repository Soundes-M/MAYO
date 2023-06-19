onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+Mayo_sign -L xilinx_vip -L xpm -L xlconstant_v1_1_7 -L xil_defaultlib -L fifo_generator_v13_2_5 -L xlconcat_v2_1_4 -L blk_mem_gen_v8_4_4 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Mayo_sign xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {Mayo_sign.udo}

run -all

endsim

quit -force
