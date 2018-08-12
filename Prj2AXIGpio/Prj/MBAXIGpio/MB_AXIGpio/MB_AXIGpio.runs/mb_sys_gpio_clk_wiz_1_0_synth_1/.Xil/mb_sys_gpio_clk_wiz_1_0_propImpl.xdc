set_property SRC_FILE_INFO {cfile:c:/Prj/xilinxPrj/MicroblazePrj/Prj2AXIGpio/Prj/MBAXIGpio/MB_AXIGpio/MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ip/mb_sys_gpio_clk_wiz_1_0/mb_sys_gpio_clk_wiz_1_0.xdc rfile:../../../MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ip/mb_sys_gpio_clk_wiz_1_0/mb_sys_gpio_clk_wiz_1_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
