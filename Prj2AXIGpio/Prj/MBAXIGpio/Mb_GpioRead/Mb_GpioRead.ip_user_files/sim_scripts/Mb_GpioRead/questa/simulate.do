onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Mb_GpioRead_opt

do {wave.do}

view wave
view structure
view signals

do {Mb_GpioRead.udo}

run -all

quit -force
