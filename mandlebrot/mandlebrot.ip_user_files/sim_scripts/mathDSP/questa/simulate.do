onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mathDSP_opt

do {wave.do}

view wave
view structure
view signals

do {mathDSP.udo}

run -all

quit -force
