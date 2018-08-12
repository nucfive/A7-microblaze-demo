set_property SRC_FILE_INFO {cfile:c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_clk_wiz_1_1/Prj1Hello_clk_wiz_1_1.xdc rfile:../../../Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_clk_wiz_1_1/Prj1Hello_clk_wiz_1_1.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
