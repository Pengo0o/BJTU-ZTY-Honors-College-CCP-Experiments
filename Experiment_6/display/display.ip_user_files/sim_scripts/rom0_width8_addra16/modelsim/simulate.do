onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.rom0_width8_addra16 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {rom0_width8_addra16.udo}

run -all

quit -force
