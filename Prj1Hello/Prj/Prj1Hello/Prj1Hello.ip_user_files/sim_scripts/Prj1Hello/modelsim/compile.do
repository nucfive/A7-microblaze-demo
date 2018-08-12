vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/microblaze_v10_0_1
vlib msim/lmb_v10_v3_0_9
vlib msim/lmb_bram_if_cntlr_v4_0_10
vlib msim/blk_mem_gen_v8_3_5
vlib msim/axi_lite_ipif_v3_0_4
vlib msim/mdm_v3_2_8
vlib msim/lib_cdc_v1_0_2
vlib msim/proc_sys_reset_v5_0_10
vlib msim/lib_pkg_v1_0_2
vlib msim/lib_srl_fifo_v1_0_2
vlib msim/axi_uartlite_v2_0_15

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap microblaze_v10_0_1 msim/microblaze_v10_0_1
vmap lmb_v10_v3_0_9 msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_10 msim/lmb_bram_if_cntlr_v4_0_10
vmap blk_mem_gen_v8_3_5 msim/blk_mem_gen_v8_3_5
vmap axi_lite_ipif_v3_0_4 msim/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_8 msim/mdm_v3_2_8
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_10 msim/proc_sys_reset_v5_0_10
vmap lib_pkg_v1_0_2 msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_15 msim/axi_uartlite_v2_0_15

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/100a" "+incdir+../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/100a" \
"C:/ToolSoftWare/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/ToolSoftWare/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/ToolSoftWare/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v10_0_1 -64 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/18bd/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_microblaze_0_1/sim/Prj1Hello_microblaze_0_1.vhd" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/162e/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_dlmb_v10_1/sim/Prj1Hello_dlmb_v10_1.vhd" \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_ilmb_v10_1/sim/Prj1Hello_ilmb_v10_1.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_10 -64 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/f4d9/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_dlmb_bram_if_cntlr_1/sim/Prj1Hello_dlmb_bram_if_cntlr_1.vhd" \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_ilmb_bram_if_cntlr_1/sim/Prj1Hello_ilmb_bram_if_cntlr_1.vhd" \

vlog -work blk_mem_gen_v8_3_5 -64 -incr "+incdir+../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/100a" "+incdir+../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/100a" \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/6273/simulation/blk_mem_gen_v8_3.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/100a" "+incdir+../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/100a" \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_lmb_bram_1/sim/Prj1Hello_lmb_bram_1.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_8 -64 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/71de/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_mdm_1_1/sim/Prj1Hello_mdm_1_1.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/100a" "+incdir+../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/100a" \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_clk_wiz_1_1/Prj1Hello_clk_wiz_1_1_clk_wiz.v" \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_clk_wiz_1_1/Prj1Hello_clk_wiz_1_1.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_10 -64 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_rst_clk_wiz_1_100M_1/sim/Prj1Hello_rst_clk_wiz_1_100M_1.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_15 -64 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/2479/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_axi_uartlite_0_0/sim/Prj1Hello_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/100a" "+incdir+../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/100a" \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/hdl/Prj1Hello.v" \

vlog -work xil_defaultlib "glbl.v"

