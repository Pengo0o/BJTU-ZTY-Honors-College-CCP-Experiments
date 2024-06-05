onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib width8_addra14_opt

do {wave.do}

view wave
view structure
view signals

do {width8_addra14.udo}

run -all

quit -force
