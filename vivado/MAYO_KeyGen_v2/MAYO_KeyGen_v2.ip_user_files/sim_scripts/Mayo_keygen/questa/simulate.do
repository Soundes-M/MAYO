onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Mayo_keygen_opt

do {wave.do}

view wave
view structure
view signals

do {Mayo_keygen.udo}

run -all

quit -force
