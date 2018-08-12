-makelib ies/xil_defaultlib -sv \
  "C:/ToolSoftWare/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/ToolSoftWare/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies/xpm \
  "C:/ToolSoftWare/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/microblaze_v10_0_1 \
  "../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/18bd/hdl/microblaze_v10_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/mb_sys_gpio/ip/mb_sys_gpio_microblaze_0_0/sim/mb_sys_gpio_microblaze_0_0.vhd" \
-endlib
-makelib ies/lmb_v10_v3_0_9 \
  "../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/162e/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/mb_sys_gpio/ip/mb_sys_gpio_dlmb_v10_0/sim/mb_sys_gpio_dlmb_v10_0.vhd" \
  "../../../bd/mb_sys_gpio/ip/mb_sys_gpio_ilmb_v10_0/sim/mb_sys_gpio_ilmb_v10_0.vhd" \
-endlib
-makelib ies/lmb_bram_if_cntlr_v4_0_10 \
  "../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/f4d9/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/mb_sys_gpio/ip/mb_sys_gpio_dlmb_bram_if_cntlr_0/sim/mb_sys_gpio_dlmb_bram_if_cntlr_0.vhd" \
  "../../../bd/mb_sys_gpio/ip/mb_sys_gpio_ilmb_bram_if_cntlr_0/sim/mb_sys_gpio_ilmb_bram_if_cntlr_0.vhd" \
-endlib
-makelib ies/blk_mem_gen_v8_3_5 \
  "../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/6273/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/mb_sys_gpio/ip/mb_sys_gpio_lmb_bram_0/sim/mb_sys_gpio_lmb_bram_0.v" \
-endlib
-makelib ies/axi_lite_ipif_v3_0_4 \
  "../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies/mdm_v3_2_8 \
  "../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/71de/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/mb_sys_gpio/ip/mb_sys_gpio_mdm_1_0/sim/mb_sys_gpio_mdm_1_0.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/mb_sys_gpio/ip/mb_sys_gpio_clk_wiz_1_0/mb_sys_gpio_clk_wiz_1_0_clk_wiz.v" \
  "../../../bd/mb_sys_gpio/ip/mb_sys_gpio_clk_wiz_1_0/mb_sys_gpio_clk_wiz_1_0.v" \
-endlib
-makelib ies/lib_cdc_v1_0_2 \
  "../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies/proc_sys_reset_v5_0_10 \
  "../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/mb_sys_gpio/ip/mb_sys_gpio_rst_clk_wiz_1_100M_0/sim/mb_sys_gpio_rst_clk_wiz_1_100M_0.vhd" \
-endlib
-makelib ies/interrupt_control_v3_1_4 \
  "../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/e956/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies/axi_gpio_v2_0_13 \
  "../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/4f16/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/mb_sys_gpio/ip/mb_sys_gpio_axi_gpio_0_0/sim/mb_sys_gpio_axi_gpio_0_0.vhd" \
-endlib
-makelib ies/lib_pkg_v1_0_2 \
  "../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies/lib_srl_fifo_v1_0_2 \
  "../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies/axi_uartlite_v2_0_15 \
  "../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/2479/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/mb_sys_gpio/ip/mb_sys_gpio_axi_uartlite_0_0/sim/mb_sys_gpio_axi_uartlite_0_0.vhd" \
-endlib
-makelib ies/generic_baseblocks_v2_1_0 \
  "../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_infrastructure_v1_1_0 \
  "../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies/axi_register_slice_v2_1_11 \
  "../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \
-endlib
-makelib ies/axi_data_fifo_v2_1_10 \
  "../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_crossbar_v2_1_12 \
  "../../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ipshared/896d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/mb_sys_gpio/ip/mb_sys_gpio_xbar_0/sim/mb_sys_gpio_xbar_0.v" \
  "../../../bd/mb_sys_gpio/hdl/mb_sys_gpio.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

