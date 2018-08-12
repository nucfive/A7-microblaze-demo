# 
# Synthesis run script generated by Vivado
# 

set_param simulator.modelsimInstallPath C:/ToolSoftWare/modulesim/win32
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.cache/wt [current_project]
set_property parent.project_path C:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib C:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/imports/hdl/Prj1Hello_wrapper.v
add_files C:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/Prj1Hello.bd
set_property used_in_implementation false [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_microblaze_0_1/Prj1Hello_microblaze_0_1.xdc]
set_property used_in_implementation false [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_microblaze_0_1/Prj1Hello_microblaze_0_1_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_microblaze_0_1/Prj1Hello_microblaze_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_dlmb_v10_1/Prj1Hello_dlmb_v10_1.xdc]
set_property used_in_implementation false [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_dlmb_v10_1/Prj1Hello_dlmb_v10_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_ilmb_v10_1/Prj1Hello_ilmb_v10_1.xdc]
set_property used_in_implementation false [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_ilmb_v10_1/Prj1Hello_ilmb_v10_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_dlmb_bram_if_cntlr_1/Prj1Hello_dlmb_bram_if_cntlr_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_ilmb_bram_if_cntlr_1/Prj1Hello_ilmb_bram_if_cntlr_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_lmb_bram_1/Prj1Hello_lmb_bram_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_mdm_1_1/Prj1Hello_mdm_1_1.xdc]
set_property used_in_implementation false [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_mdm_1_1/Prj1Hello_mdm_1_1_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_clk_wiz_1_1/Prj1Hello_clk_wiz_1_1_board.xdc]
set_property used_in_implementation false [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_clk_wiz_1_1/Prj1Hello_clk_wiz_1_1.xdc]
set_property used_in_implementation false [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_clk_wiz_1_1/Prj1Hello_clk_wiz_1_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_rst_clk_wiz_1_100M_1/Prj1Hello_rst_clk_wiz_1_100M_1_board.xdc]
set_property used_in_implementation false [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_rst_clk_wiz_1_100M_1/Prj1Hello_rst_clk_wiz_1_100M_1.xdc]
set_property used_in_implementation false [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_rst_clk_wiz_1_100M_1/Prj1Hello_rst_clk_wiz_1_100M_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_axi_uartlite_0_0/Prj1Hello_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_axi_uartlite_0_0/Prj1Hello_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_axi_uartlite_0_0/Prj1Hello_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all C:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/Prj1Hello_ooc.xdc]
set_property is_locked true [get_files C:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/Prj1Hello.bd]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/src/constrain/mb_hello.xdc
set_property used_in_implementation false [get_files C:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/src/constrain/mb_hello.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top Prj1Hello_wrapper -part xc7a100tcsg324-1


write_checkpoint -force -noxdef Prj1Hello_wrapper.dcp

catch { report_utilization -file Prj1Hello_wrapper_utilization_synth.rpt -pb Prj1Hello_wrapper_utilization_synth.pb }