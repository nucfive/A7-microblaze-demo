onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+Prj1Hello -L xil_defaultlib -L xpm -L microblaze_v10_0_1 -L lmb_v10_v3_0_9 -L lmb_bram_if_cntlr_v4_0_10 -L blk_mem_gen_v8_3_5 -L axi_lite_ipif_v3_0_4 -L mdm_v3_2_8 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_10 -L lib_pkg_v1_0_2 -L lib_srl_fifo_v1_0_2 -L axi_uartlite_v2_0_15 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Prj1Hello xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {Prj1Hello.udo}

run -all

endsim

quit -force
