onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Mayo_sign_with_zynq_opt

do {wave.do}

view wave
view structure
view signals

do {Mayo_sign_with_zynq.udo}

run -all

quit -force
