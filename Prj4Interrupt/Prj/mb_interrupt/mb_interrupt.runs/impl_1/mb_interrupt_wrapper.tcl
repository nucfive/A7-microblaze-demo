proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param simulator.modelsimInstallPath C:/ToolSoftWare/modulesim/win32
  create_project -in_memory -part xc7a100tcsg324-1
  set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.cache/wt [current_project]
  set_property parent.project_path C:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.xpr [current_project]
  set_property ip_output_repo C:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet C:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.runs/synth_1/mb_interrupt_wrapper.dcp
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_microblaze_0_1/mb_interrupt_microblaze_0_1.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_microblaze_0_1/mb_interrupt_microblaze_0_1.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_dlmb_v10_1/mb_interrupt_dlmb_v10_1.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_dlmb_v10_1/mb_interrupt_dlmb_v10_1.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_ilmb_v10_1/mb_interrupt_ilmb_v10_1.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_ilmb_v10_1/mb_interrupt_ilmb_v10_1.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_dlmb_bram_if_cntlr_1/mb_interrupt_dlmb_bram_if_cntlr_1.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_dlmb_bram_if_cntlr_1/mb_interrupt_dlmb_bram_if_cntlr_1.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_ilmb_bram_if_cntlr_1/mb_interrupt_ilmb_bram_if_cntlr_1.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_ilmb_bram_if_cntlr_1/mb_interrupt_ilmb_bram_if_cntlr_1.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_lmb_bram_1/mb_interrupt_lmb_bram_1.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_lmb_bram_1/mb_interrupt_lmb_bram_1.dcp]
  add_files -quiet C:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_microblaze_0_axi_intc_1/mb_interrupt_microblaze_0_axi_intc_1.dcp
  set_property netlist_only true [get_files C:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_microblaze_0_axi_intc_1/mb_interrupt_microblaze_0_axi_intc_1.dcp]
  add_files -quiet C:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_microblaze_0_xlconcat_1/mb_interrupt_microblaze_0_xlconcat_1.dcp
  set_property netlist_only true [get_files C:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_microblaze_0_xlconcat_1/mb_interrupt_microblaze_0_xlconcat_1.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_mdm_1_1/mb_interrupt_mdm_1_1.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_mdm_1_1/mb_interrupt_mdm_1_1.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_clk_wiz_1_1/mb_interrupt_clk_wiz_1_1.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_clk_wiz_1_1/mb_interrupt_clk_wiz_1_1.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_rst_clk_wiz_1_100M_1/mb_interrupt_rst_clk_wiz_1_100M_1.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_rst_clk_wiz_1_100M_1/mb_interrupt_rst_clk_wiz_1_100M_1.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_axi_uartlite_0_0/mb_interrupt_axi_uartlite_0_0.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_axi_uartlite_0_0/mb_interrupt_axi_uartlite_0_0.dcp]
  add_files -quiet C:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_xbar_1/mb_interrupt_xbar_1.dcp
  set_property netlist_only true [get_files C:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_xbar_1/mb_interrupt_xbar_1.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_mig_7series_0_1/mb_interrupt_mig_7series_0_1.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_mig_7series_0_1/mb_interrupt_mig_7series_0_1.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_xbar_2/mb_interrupt_xbar_2.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_xbar_2/mb_interrupt_xbar_2.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_rst_mig_7series_0_81M_1/mb_interrupt_rst_mig_7series_0_81M_1.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_rst_mig_7series_0_81M_1/mb_interrupt_rst_mig_7series_0_81M_1.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_axi_gpio_0_0/mb_interrupt_axi_gpio_0_0.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_axi_gpio_0_0/mb_interrupt_axi_gpio_0_0.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_axi_gpio_1_0/mb_interrupt_axi_gpio_1_0.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_axi_gpio_1_0/mb_interrupt_axi_gpio_1_0.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_auto_cc_0/mb_interrupt_auto_cc_0.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_auto_cc_0/mb_interrupt_auto_cc_0.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_auto_us_0/mb_interrupt_auto_us_0.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_auto_us_0/mb_interrupt_auto_us_0.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_auto_us_1/mb_interrupt_auto_us_1.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_auto_us_1/mb_interrupt_auto_us_1.dcp]
  add_files C:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/mb_interrupt.bmm
  set_property SCOPED_TO_REF mb_interrupt [get_files -all C:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/mb_interrupt.bmm]
  add_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_microblaze_0_1/data/mb_bootloop_le.elf
  set_property SCOPED_TO_REF mb_interrupt [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_microblaze_0_1/data/mb_bootloop_le.elf]
  set_property SCOPED_TO_CELLS microblaze_0 [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_microblaze_0_1/data/mb_bootloop_le.elf]
  read_xdc -ref mb_interrupt_microblaze_0_1 -cells U0 c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_microblaze_0_1/mb_interrupt_microblaze_0_1.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_microblaze_0_1/mb_interrupt_microblaze_0_1.xdc]
  read_xdc -ref mb_interrupt_dlmb_v10_1 -cells U0 c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_dlmb_v10_1/mb_interrupt_dlmb_v10_1.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_dlmb_v10_1/mb_interrupt_dlmb_v10_1.xdc]
  read_xdc -ref mb_interrupt_ilmb_v10_1 -cells U0 c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_ilmb_v10_1/mb_interrupt_ilmb_v10_1.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_ilmb_v10_1/mb_interrupt_ilmb_v10_1.xdc]
  read_xdc -ref mb_interrupt_microblaze_0_axi_intc_1 -cells U0 c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_microblaze_0_axi_intc_1/mb_interrupt_microblaze_0_axi_intc_1.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_microblaze_0_axi_intc_1/mb_interrupt_microblaze_0_axi_intc_1.xdc]
  read_xdc -ref mb_interrupt_mdm_1_1 -cells U0 c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_mdm_1_1/mb_interrupt_mdm_1_1.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_mdm_1_1/mb_interrupt_mdm_1_1.xdc]
  read_xdc -prop_thru_buffers -ref mb_interrupt_clk_wiz_1_1 -cells inst c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_clk_wiz_1_1/mb_interrupt_clk_wiz_1_1_board.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_clk_wiz_1_1/mb_interrupt_clk_wiz_1_1_board.xdc]
  read_xdc -ref mb_interrupt_clk_wiz_1_1 -cells inst c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_clk_wiz_1_1/mb_interrupt_clk_wiz_1_1.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_clk_wiz_1_1/mb_interrupt_clk_wiz_1_1.xdc]
  read_xdc -prop_thru_buffers -ref mb_interrupt_rst_clk_wiz_1_100M_1 -cells U0 c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_rst_clk_wiz_1_100M_1/mb_interrupt_rst_clk_wiz_1_100M_1_board.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_rst_clk_wiz_1_100M_1/mb_interrupt_rst_clk_wiz_1_100M_1_board.xdc]
  read_xdc -ref mb_interrupt_rst_clk_wiz_1_100M_1 -cells U0 c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_rst_clk_wiz_1_100M_1/mb_interrupt_rst_clk_wiz_1_100M_1.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_rst_clk_wiz_1_100M_1/mb_interrupt_rst_clk_wiz_1_100M_1.xdc]
  read_xdc -prop_thru_buffers -ref mb_interrupt_axi_uartlite_0_0 -cells U0 c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_axi_uartlite_0_0/mb_interrupt_axi_uartlite_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_axi_uartlite_0_0/mb_interrupt_axi_uartlite_0_0_board.xdc]
  read_xdc -ref mb_interrupt_axi_uartlite_0_0 -cells U0 c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_axi_uartlite_0_0/mb_interrupt_axi_uartlite_0_0.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_axi_uartlite_0_0/mb_interrupt_axi_uartlite_0_0.xdc]
  read_xdc -ref mb_interrupt_mig_7series_0_1 c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_mig_7series_0_1/mb_interrupt_mig_7series_0_1/user_design/constraints/mb_interrupt_mig_7series_0_1.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_mig_7series_0_1/mb_interrupt_mig_7series_0_1/user_design/constraints/mb_interrupt_mig_7series_0_1.xdc]
  read_xdc -prop_thru_buffers -ref mb_interrupt_mig_7series_0_1 c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_mig_7series_0_1/mb_interrupt_mig_7series_0_1_board.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_mig_7series_0_1/mb_interrupt_mig_7series_0_1_board.xdc]
  read_xdc -prop_thru_buffers -ref mb_interrupt_rst_mig_7series_0_81M_1 -cells U0 c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_rst_mig_7series_0_81M_1/mb_interrupt_rst_mig_7series_0_81M_1_board.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_rst_mig_7series_0_81M_1/mb_interrupt_rst_mig_7series_0_81M_1_board.xdc]
  read_xdc -ref mb_interrupt_rst_mig_7series_0_81M_1 -cells U0 c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_rst_mig_7series_0_81M_1/mb_interrupt_rst_mig_7series_0_81M_1.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_rst_mig_7series_0_81M_1/mb_interrupt_rst_mig_7series_0_81M_1.xdc]
  read_xdc -prop_thru_buffers -ref mb_interrupt_axi_gpio_0_0 -cells U0 c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_axi_gpio_0_0/mb_interrupt_axi_gpio_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_axi_gpio_0_0/mb_interrupt_axi_gpio_0_0_board.xdc]
  read_xdc -ref mb_interrupt_axi_gpio_0_0 -cells U0 c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_axi_gpio_0_0/mb_interrupt_axi_gpio_0_0.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_axi_gpio_0_0/mb_interrupt_axi_gpio_0_0.xdc]
  read_xdc -prop_thru_buffers -ref mb_interrupt_axi_gpio_1_0 -cells U0 c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_axi_gpio_1_0/mb_interrupt_axi_gpio_1_0_board.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_axi_gpio_1_0/mb_interrupt_axi_gpio_1_0_board.xdc]
  read_xdc -ref mb_interrupt_axi_gpio_1_0 -cells U0 c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_axi_gpio_1_0/mb_interrupt_axi_gpio_1_0.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_axi_gpio_1_0/mb_interrupt_axi_gpio_1_0.xdc]
  read_xdc -ref mb_interrupt_microblaze_0_axi_intc_1 -cells U0 c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_microblaze_0_axi_intc_1/mb_interrupt_microblaze_0_axi_intc_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_microblaze_0_axi_intc_1/mb_interrupt_microblaze_0_axi_intc_1_clocks.xdc]
  read_xdc -ref mb_interrupt_auto_cc_0 -cells inst c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_auto_cc_0/mb_interrupt_auto_cc_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_auto_cc_0/mb_interrupt_auto_cc_0_clocks.xdc]
  read_xdc -ref mb_interrupt_auto_us_0 -cells inst c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_auto_us_0/mb_interrupt_auto_us_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_auto_us_0/mb_interrupt_auto_us_0_clocks.xdc]
  read_xdc -ref mb_interrupt_auto_us_1 -cells inst c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_auto_us_1/mb_interrupt_auto_us_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_auto_us_1/mb_interrupt_auto_us_1_clocks.xdc]
  link_design -top mb_interrupt_wrapper -part xc7a100tcsg324-1
  write_hwdef -file mb_interrupt_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force mb_interrupt_wrapper_opt.dcp
  catch { report_drc -file mb_interrupt_wrapper_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force mb_interrupt_wrapper_placed.dcp
  catch { report_io -file mb_interrupt_wrapper_io_placed.rpt }
  catch { report_utilization -file mb_interrupt_wrapper_utilization_placed.rpt -pb mb_interrupt_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file mb_interrupt_wrapper_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force mb_interrupt_wrapper_routed.dcp
  catch { report_drc -file mb_interrupt_wrapper_drc_routed.rpt -pb mb_interrupt_wrapper_drc_routed.pb -rpx mb_interrupt_wrapper_drc_routed.rpx }
  catch { report_methodology -file mb_interrupt_wrapper_methodology_drc_routed.rpt -rpx mb_interrupt_wrapper_methodology_drc_routed.rpx }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file mb_interrupt_wrapper_timing_summary_routed.rpt -rpx mb_interrupt_wrapper_timing_summary_routed.rpx }
  catch { report_power -file mb_interrupt_wrapper_power_routed.rpt -pb mb_interrupt_wrapper_power_summary_routed.pb -rpx mb_interrupt_wrapper_power_routed.rpx }
  catch { report_route_status -file mb_interrupt_wrapper_route_status.rpt -pb mb_interrupt_wrapper_route_status.pb }
  catch { report_clock_utilization -file mb_interrupt_wrapper_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force mb_interrupt_wrapper_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  catch { write_mem_info -force mb_interrupt_wrapper.mmi }
  catch { write_bmm -force mb_interrupt_wrapper_bd.bmm }
  write_bitstream -force -no_partial_bitfile mb_interrupt_wrapper.bit 
  catch { write_sysdef -hwdef mb_interrupt_wrapper.hwdef -bitfile mb_interrupt_wrapper.bit -meminfo mb_interrupt_wrapper.mmi -file mb_interrupt_wrapper.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

