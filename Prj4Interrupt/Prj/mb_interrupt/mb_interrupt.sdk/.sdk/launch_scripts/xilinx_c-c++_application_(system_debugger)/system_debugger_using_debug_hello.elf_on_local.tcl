connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys4DDR 210292645550A"} -index 0
loadhw C:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.sdk/mb_interrupt_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys4DDR 210292645550A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys4DDR 210292645550A"} -index 0
dow C:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.sdk/hello/Debug/hello.elf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys4DDR 210292645550A"} -index 0
con