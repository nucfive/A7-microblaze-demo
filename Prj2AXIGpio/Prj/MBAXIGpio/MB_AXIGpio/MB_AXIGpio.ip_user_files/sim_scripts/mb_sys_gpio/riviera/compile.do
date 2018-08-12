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
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_13
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_uartlite_v2_0_15
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_11
vlib riviera/fifo_generator_v13_1_3
vlib riviera/axi_data_fifo_v2_1_10
vlib riviera/axi_crossbar_v2_1_12

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
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_13 riviera/axi_gpio_v2_0_13
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_15 riviera/axi_uartlite_v2_0_15
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_11 riviera/axi_register_slice_v2_1_11
vmap fifo_generator_v13_1_3 riviera/fifo_generator_v13_1_3
vmap axi_data_fifo_v2_1_10 riviera/axi_data_fifo_v2_1_10
vmap axi_crossbar_v2_1_12 riviera/axi_crossbar_v2_1_12

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/100a" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/100a" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl" \
"C:/ToolSoftWare/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/ToolSoftWare/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/ToolSoftWare/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v10_0_1 -93 \
"../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/18bd/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_sys_gpio/ip/mb_sys_gpio_microblaze_0_0/sim/mb_sys_gpio_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/162e/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_sys_gpio/ip/mb_sys_gpio_dlmb_v10_0/sim/mb_sys_gpio_dlmb_v10_0.vhd" \
"../../../bd/mb_sys_gpio/ip/mb_sys_gpio_ilmb_v10_0/sim/mb_sys_gpio_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_10 -93 \
"../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/f4d9/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_sys_gpio/ip/mb_sys_gpio_dlmb_bram_if_cntlr_0/sim/mb_sys_gpio_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/mb_sys_gpio/ip/mb_sys_gpio_ilmb_bram_if_cntlr_0/sim/mb_sys_gpio_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_3_5  -v2k5 "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/100a" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/100a" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl" \
"../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/6273/simulation/blk_mem_gen_v8_3.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/100a" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/100a" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl" \
"../../../bd/mb_sys_gpio/ip/mb_sys_gpio_lmb_bram_0/sim/mb_sys_gpio_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_8 -93 \
"../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/71de/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_sys_gpio/ip/mb_sys_gpio_mdm_1_0/sim/mb_sys_gpio_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/100a" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/100a" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl" \
"../../../bd/mb_sys_gpio/ip/mb_sys_gpio_clk_wiz_1_0/mb_sys_gpio_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/mb_sys_gpio/ip/mb_sys_gpio_clk_wiz_1_0/mb_sys_gpio_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_10 -93 \
"../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_sys_gpio/ip/mb_sys_gpio_rst_clk_wiz_1_100M_0/sim/mb_sys_gpio_rst_clk_wiz_1_100M_0.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/e956/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_13 -93 \
"../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/4f16/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_sys_gpio/ip/mb_sys_gpio_axi_gpio_0_0/sim/mb_sys_gpio_axi_gpio_0_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_15 -93 \
"../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/2479/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_sys_gpio/ip/mb_sys_gpio_axi_uartlite_0_0/sim/mb_sys_gpio_axi_uartlite_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/100a" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/100a" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl" \
"../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/100a" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/100a" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl" \
"../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_11  -v2k5 "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/100a" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/100a" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl" \
"../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_3  -v2k5 "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/100a" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/100a" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl" \
"../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_3 -93 \
"../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_3  -v2k5 "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/100a" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/100a" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl" \
"../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_10  -v2k5 "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/100a" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/100a" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl" \
"../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_12  -v2k5 "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/100a" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/100a" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl" \
"../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/896d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/100a" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/100a" "+incdir+../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl" \
"../../../bd/mb_sys_gpio/ip/mb_sys_gpio_xbar_0/sim/mb_sys_gpio_xbar_0.v" \
"../../../bd/mb_sys_gpio/hdl/mb_sys_gpio.v" \

vlog -work xil_defaultlib "glbl.v"

