# 
# Synthesis run script generated by Vivado
# 

set_param simulator.modelsimInstallPath C:/ToolSoftWare/modulesim/win32
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.cache/wt [current_project]
set_property parent.project_path C:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
set_property ip_output_repo c:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet c:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.srcs/sources_1/bd/mb_ddr/ip/mb_ddr_mig_7series_0_0/mb_ddr_mig_7series_0_0.xci
set_property is_locked true [get_files c:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.srcs/sources_1/bd/mb_ddr/ip/mb_ddr_mig_7series_0_0/mb_ddr_mig_7series_0_0.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir C:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.runs/mb_ddr_mig_7series_0_0_synth_1 -new_name mb_ddr_mig_7series_0_0 -ip [get_ips mb_ddr_mig_7series_0_0]]

if { $cached_ip eq {} } {

synth_design -top mb_ddr_mig_7series_0_0 -part xc7a100tcsg324-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix mb_ddr_mig_7series_0_0_ mb_ddr_mig_7series_0_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mb_ddr_mig_7series_0_0_stub.v
 lappend ipCachedFiles mb_ddr_mig_7series_0_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mb_ddr_mig_7series_0_0_stub.vhdl
 lappend ipCachedFiles mb_ddr_mig_7series_0_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mb_ddr_mig_7series_0_0_sim_netlist.v
 lappend ipCachedFiles mb_ddr_mig_7series_0_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mb_ddr_mig_7series_0_0_sim_netlist.vhdl
 lappend ipCachedFiles mb_ddr_mig_7series_0_0_sim_netlist.vhdl

 config_ip_cache -add -dcp mb_ddr_mig_7series_0_0.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips mb_ddr_mig_7series_0_0]
}

rename_ref -prefix_all mb_ddr_mig_7series_0_0_

write_checkpoint -force -noxdef mb_ddr_mig_7series_0_0.dcp

catch { report_utilization -file mb_ddr_mig_7series_0_0_utilization_synth.rpt -pb mb_ddr_mig_7series_0_0_utilization_synth.pb }

if { [catch {
  file copy -force C:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.runs/mb_ddr_mig_7series_0_0_synth_1/mb_ddr_mig_7series_0_0.dcp c:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.srcs/sources_1/bd/mb_ddr/ip/mb_ddr_mig_7series_0_0/mb_ddr_mig_7series_0_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub c:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.srcs/sources_1/bd/mb_ddr/ip/mb_ddr_mig_7series_0_0/mb_ddr_mig_7series_0_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub c:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.srcs/sources_1/bd/mb_ddr/ip/mb_ddr_mig_7series_0_0/mb_ddr_mig_7series_0_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim c:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.srcs/sources_1/bd/mb_ddr/ip/mb_ddr_mig_7series_0_0/mb_ddr_mig_7series_0_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim c:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.srcs/sources_1/bd/mb_ddr/ip/mb_ddr_mig_7series_0_0/mb_ddr_mig_7series_0_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force C:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.runs/mb_ddr_mig_7series_0_0_synth_1/mb_ddr_mig_7series_0_0.dcp c:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.srcs/sources_1/bd/mb_ddr/ip/mb_ddr_mig_7series_0_0/mb_ddr_mig_7series_0_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force C:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.runs/mb_ddr_mig_7series_0_0_synth_1/mb_ddr_mig_7series_0_0_stub.v c:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.srcs/sources_1/bd/mb_ddr/ip/mb_ddr_mig_7series_0_0/mb_ddr_mig_7series_0_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.runs/mb_ddr_mig_7series_0_0_synth_1/mb_ddr_mig_7series_0_0_stub.vhdl c:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.srcs/sources_1/bd/mb_ddr/ip/mb_ddr_mig_7series_0_0/mb_ddr_mig_7series_0_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.runs/mb_ddr_mig_7series_0_0_synth_1/mb_ddr_mig_7series_0_0_sim_netlist.v c:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.srcs/sources_1/bd/mb_ddr/ip/mb_ddr_mig_7series_0_0/mb_ddr_mig_7series_0_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.runs/mb_ddr_mig_7series_0_0_synth_1/mb_ddr_mig_7series_0_0_sim_netlist.vhdl c:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.srcs/sources_1/bd/mb_ddr/ip/mb_ddr_mig_7series_0_0/mb_ddr_mig_7series_0_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir C:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.ip_user_files/ip/mb_ddr_mig_7series_0_0]} {
  catch { 
    file copy -force c:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.srcs/sources_1/bd/mb_ddr/ip/mb_ddr_mig_7series_0_0/mb_ddr_mig_7series_0_0_stub.v C:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.ip_user_files/ip/mb_ddr_mig_7series_0_0
  }
}

if {[file isdir C:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.ip_user_files/ip/mb_ddr_mig_7series_0_0]} {
  catch { 
    file copy -force c:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.srcs/sources_1/bd/mb_ddr/ip/mb_ddr_mig_7series_0_0/mb_ddr_mig_7series_0_0_stub.vhdl C:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.ip_user_files/ip/mb_ddr_mig_7series_0_0
  }
}
