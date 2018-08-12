onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Prj1Hello_opt

do {wave.do}

view wave
view structure
view signals

do {Prj1Hello.udo}

run -all

quit -force
