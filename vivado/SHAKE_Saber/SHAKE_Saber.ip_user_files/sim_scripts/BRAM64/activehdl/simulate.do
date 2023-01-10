onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+BRAM64 -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.BRAM64 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {BRAM64.udo}

run -all

endsim

quit -force
