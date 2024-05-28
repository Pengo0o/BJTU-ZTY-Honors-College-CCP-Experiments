onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+width8_addr14 -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.width8_addr14 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {width8_addr14.udo}

run -all

endsim

quit -force
