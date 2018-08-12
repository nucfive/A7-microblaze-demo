onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mb_sys_gpio_opt

do {wave.do}

view wave
view structure
view signals

do {mb_sys_gpio.udo}

run -all

quit -force
