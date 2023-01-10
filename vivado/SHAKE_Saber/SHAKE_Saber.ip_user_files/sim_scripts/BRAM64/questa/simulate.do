onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib BRAM64_opt

do {wave.do}

view wave
view structure
view signals

do {BRAM64.udo}

run -all

quit -force
