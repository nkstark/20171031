onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.MAIN_CLK xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {MAIN_CLK.udo}

run -all

quit -force
