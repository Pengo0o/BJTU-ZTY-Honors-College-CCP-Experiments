onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib width8_addr14_opt

do {wave.do}

view wave
view structure
view signals

do {width8_addr14.udo}

run -all

quit -force
