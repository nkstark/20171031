onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+MAIN_CLK -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.MAIN_CLK xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {MAIN_CLK.udo}

run -all

endsim

quit -force
