onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib rom1_width8_addra16_opt

do {wave.do}

view wave
view structure
view signals

do {rom1_width8_addra16.udo}

run -all

quit -force
