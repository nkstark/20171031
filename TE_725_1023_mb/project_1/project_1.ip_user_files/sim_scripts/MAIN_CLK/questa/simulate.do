onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib MAIN_CLK_opt

do {wave.do}

view wave
view structure
view signals

do {MAIN_CLK.udo}

run -all

quit -force
