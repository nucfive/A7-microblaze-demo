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
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.cache/wt [current_project]
  set_property parent.project_path C:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.xpr [current_project]
  set_property ip_output_repo C:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet C:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.runs/synth_1/Prj1Hello_wrapper.dcp
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_microblaze_0_1/Prj1Hello_microblaze_0_1.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_microblaze_0_1/Prj1Hello_microblaze_0_1.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_dlmb_v10_1/Prj1Hello_dlmb_v10_1.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_dlmb_v10_1/Prj1Hello_dlmb_v10_1.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_ilmb_v10_1/Prj1Hello_ilmb_v10_1.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_ilmb_v10_1/Prj1Hello_ilmb_v10_1.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_dlmb_bram_if_cntlr_1/Prj1Hello_dlmb_bram_if_cntlr_1.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_dlmb_bram_if_cntlr_1/Prj1Hello_dlmb_bram_if_cntlr_1.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_ilmb_bram_if_cntlr_1/Prj1Hello_ilmb_bram_if_cntlr_1.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_ilmb_bram_if_cntlr_1/Prj1Hello_ilmb_bram_if_cntlr_1.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_lmb_bram_1/Prj1Hello_lmb_bram_1.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_lmb_bram_1/Prj1Hello_lmb_bram_1.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_mdm_1_1/Prj1Hello_mdm_1_1.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_mdm_1_1/Prj1Hello_mdm_1_1.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_clk_wiz_1_1/Prj1Hello_clk_wiz_1_1.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_clk_wiz_1_1/Prj1Hello_clk_wiz_1_1.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_rst_clk_wiz_1_100M_1/Prj1Hello_rst_clk_wiz_1_100M_1.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_rst_clk_wiz_1_100M_1/Prj1Hello_rst_clk_wiz_1_100M_1.dcp]
  add_files -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_axi_uartlite_0_0/Prj1Hello_axi_uartlite_0_0.dcp
  set_property netlist_only true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_axi_uartlite_0_0/Prj1Hello_axi_uartlite_0_0.dcp]
  add_files C:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/Prj1Hello.bmm
  set_property SCOPED_TO_REF Prj1Hello [get_files -all C:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/Prj1Hello.bmm]
  add_files c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_microblaze_0_1/data/mb_bootloop_le.elf
  set_property SCOPED_TO_REF Prj1Hello [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_microblaze_0_1/data/mb_bootloop_le.elf]
  set_property SCOPED_TO_CELLS microblaze_0 [get_files -all c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_microblaze_0_1/data/mb_bootloop_le.elf]
  read_xdc -ref Prj1Hello_microblaze_0_1 -cells U0 c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_microblaze_0_1/Prj1Hello_microblaze_0_1.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_microblaze_0_1/Prj1Hello_microblaze_0_1.xdc]
  read_xdc -ref Prj1Hello_dlmb_v10_1 -cells U0 c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_dlmb_v10_1/Prj1Hello_dlmb_v10_1.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_dlmb_v10_1/Prj1Hello_dlmb_v10_1.xdc]
  read_xdc -ref Prj1Hello_ilmb_v10_1 -cells U0 c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_ilmb_v10_1/Prj1Hello_ilmb_v10_1.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_ilmb_v10_1/Prj1Hello_ilmb_v10_1.xdc]
  read_xdc -ref Prj1Hello_mdm_1_1 -cells U0 c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_mdm_1_1/Prj1Hello_mdm_1_1.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_mdm_1_1/Prj1Hello_mdm_1_1.xdc]
  read_xdc -prop_thru_buffers -ref Prj1Hello_clk_wiz_1_1 -cells inst c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_clk_wiz_1_1/Prj1Hello_clk_wiz_1_1_board.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_clk_wiz_1_1/Prj1Hello_clk_wiz_1_1_board.xdc]
  read_xdc -ref Prj1Hello_clk_wiz_1_1 -cells inst c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_clk_wiz_1_1/Prj1Hello_clk_wiz_1_1.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_clk_wiz_1_1/Prj1Hello_clk_wiz_1_1.xdc]
  read_xdc -prop_thru_buffers -ref Prj1Hello_rst_clk_wiz_1_100M_1 -cells U0 c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_rst_clk_wiz_1_100M_1/Prj1Hello_rst_clk_wiz_1_100M_1_board.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_rst_clk_wiz_1_100M_1/Prj1Hello_rst_clk_wiz_1_100M_1_board.xdc]
  read_xdc -ref Prj1Hello_rst_clk_wiz_1_100M_1 -cells U0 c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_rst_clk_wiz_1_100M_1/Prj1Hello_rst_clk_wiz_1_100M_1.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_rst_clk_wiz_1_100M_1/Prj1Hello_rst_clk_wiz_1_100M_1.xdc]
  read_xdc -prop_thru_buffers -ref Prj1Hello_axi_uartlite_0_0 -cells U0 c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_axi_uartlite_0_0/Prj1Hello_axi_uartlite_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_axi_uartlite_0_0/Prj1Hello_axi_uartlite_0_0_board.xdc]
  read_xdc -ref Prj1Hello_axi_uartlite_0_0 -cells U0 c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_axi_uartlite_0_0/Prj1Hello_axi_uartlite_0_0.xdc
  set_property processing_order EARLY [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/Prj1Hello/Prj1Hello.srcs/sources_1/bd/Prj1Hello/ip/Prj1Hello_axi_uartlite_0_0/Prj1Hello_axi_uartlite_0_0.xdc]
  read_xdc C:/Prj/xilinxPrj/MicroblazePrj/Prj1Hello/Prj/src/constrain/mb_hello.xdc
  link_design -top Prj1Hello_wrapper -part xc7a100tcsg324-1
  write_hwdef -file Prj1Hello_wrapper.hwdef
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
  write_checkpoint -force Prj1Hello_wrapper_opt.dcp
  catch { report_drc -file Prj1Hello_wrapper_drc_opted.rpt }
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
  write_checkpoint -force Prj1Hello_wrapper_placed.dcp
  catch { report_io -file Prj1Hello_wrapper_io_placed.rpt }
  catch { report_utilization -file Prj1Hello_wrapper_utilization_placed.rpt -pb Prj1Hello_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file Prj1Hello_wrapper_control_sets_placed.rpt }
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
  write_checkpoint -force Prj1Hello_wrapper_routed.dcp
  catch { report_drc -file Prj1Hello_wrapper_drc_routed.rpt -pb Prj1Hello_wrapper_drc_routed.pb -rpx Prj1Hello_wrapper_drc_routed.rpx }
  catch { report_methodology -file Prj1Hello_wrapper_methodology_drc_routed.rpt -rpx Prj1Hello_wrapper_methodology_drc_routed.rpx }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file Prj1Hello_wrapper_timing_summary_routed.rpt -rpx Prj1Hello_wrapper_timing_summary_routed.rpx }
  catch { report_power -file Prj1Hello_wrapper_power_routed.rpt -pb Prj1Hello_wrapper_power_summary_routed.pb -rpx Prj1Hello_wrapper_power_routed.rpx }
  catch { report_route_status -file Prj1Hello_wrapper_route_status.rpt -pb Prj1Hello_wrapper_route_status.pb }
  catch { report_clock_utilization -file Prj1Hello_wrapper_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force Prj1Hello_wrapper_routed_error.dcp
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
  catch { write_mem_info -force Prj1Hello_wrapper.mmi }
  catch { write_bmm -force Prj1Hello_wrapper_bd.bmm }
  write_bitstream -force -no_partial_bitfile Prj1Hello_wrapper.bit 
  catch { write_sysdef -hwdef Prj1Hello_wrapper.hwdef -bitfile Prj1Hello_wrapper.bit -meminfo Prj1Hello_wrapper.mmi -file Prj1Hello_wrapper.sysdef }
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

