vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/microblaze_v10_0_1
vlib riviera/lmb_v10_v3_0_9
vlib riviera/lmb_bram_if_cntlr_v4_0_10
vlib riviera/blk_mem_gen_v8_3_5
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/mdm_v3_2_8
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_10
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_uartlite_v2_0_15

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap microblaze_v10_0_1 riviera/microblaze_v10_0_1
vmap lmb_v10_v3_0_9 riviera/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_10 riviera/lmb_bram_if_cntlr_v4_0_10
vmap blk_mem_gen_v8_3_5 riviera/blk_mem_gen_v8_3_5
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_8 riviera/mdm_v3_2_8
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_10 riviera/proc_sys_reset_v5_0_10
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_15 riviera/axi_uartlite_v2_0_15

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/100a" "+incdir+../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/100a" \
"C:/ToolSoftWare/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/ToolSoftWare/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/ToolSoftWare/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v10_0_1 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/18bd/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_microblaze_0_1/sim/Prj1Hello_microblaze_0_1.vhd" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/162e/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_dlmb_v10_1/sim/Prj1Hello_dlmb_v10_1.vhd" \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_ilmb_v10_1/sim/Prj1Hello_ilmb_v10_1.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_10 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/f4d9/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_dlmb_bram_if_cntlr_1/sim/Prj1Hello_dlmb_bram_if_cntlr_1.vhd" \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_ilmb_bram_if_cntlr_1/sim/Prj1Hello_ilmb_bram_if_cntlr_1.vhd" \

vlog -work blk_mem_gen_v8_3_5  -v2k5 "+incdir+../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/100a" "+incdir+../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/100a" \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/6273/simulation/blk_mem_gen_v8_3.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/100a" "+incdir+../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/100a" \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_lmb_bram_1/sim/Prj1Hello_lmb_bram_1.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_8 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/71de/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_mdm_1_1/sim/Prj1Hello_mdm_1_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/100a" "+incdir+../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/100a" \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_clk_wiz_1_1/Prj1Hello_clk_wiz_1_1_clk_wiz.v" \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_clk_wiz_1_1/Prj1Hello_clk_wiz_1_1.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_10 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_rst_clk_wiz_1_100M_1/sim/Prj1Hello_rst_clk_wiz_1_100M_1.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_15 -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/2479/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_axi_uartlite_0_0/sim/Prj1Hello_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/100a" "+incdir+../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ipshared/100a" \
"../../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/hdl/Prj1Hello.v" \

vlog -work xil_defaultlib "glbl.v"

