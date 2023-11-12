onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Test_BRAM0_opt

do {wave.do}

view wave
view structure
view signals

do {Test_BRAM0.udo}

run -all

quit -force
