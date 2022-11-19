onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+Mayo_keygen_no_zynq -L xilinx_vip -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L xlconstant_v1_1_7 -L fifo_generator_v13_2_5 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Mayo_keygen_no_zynq xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {Mayo_keygen_no_zynq.udo}

run -all

endsim

quit -force
