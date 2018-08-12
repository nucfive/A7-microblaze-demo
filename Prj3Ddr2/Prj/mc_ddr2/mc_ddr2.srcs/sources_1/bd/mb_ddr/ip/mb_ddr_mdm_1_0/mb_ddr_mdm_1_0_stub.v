// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1733598 Wed Dec 14 22:35:39 MST 2016
// Date        : Sun Aug 12 11:13:27 2018
// Host        : WRFA1EF running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               c:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.srcs/sources_1/bd/mb_ddr/ip/mb_ddr_mdm_1_0/mb_ddr_mdm_1_0_stub.v
// Design      : mb_ddr_mdm_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "MDM,Vivado 2016.4" *)
module mb_ddr_mdm_1_0(Debug_SYS_Rst, Dbg_Clk_0, Dbg_TDI_0, Dbg_TDO_0, 
  Dbg_Reg_En_0, Dbg_Capture_0, Dbg_Shift_0, Dbg_Update_0, Dbg_Rst_0, Dbg_Disable_0)
/* synthesis syn_black_box black_box_pad_pin="Debug_SYS_Rst,Dbg_Clk_0,Dbg_TDI_0,Dbg_TDO_0,Dbg_Reg_En_0[0:7],Dbg_Capture_0,Dbg_Shift_0,Dbg_Update_0,Dbg_Rst_0,Dbg_Disable_0" */;
  output Debug_SYS_Rst;
  output Dbg_Clk_0;
  output Dbg_TDI_0;
  input Dbg_TDO_0;
  output [0:7]Dbg_Reg_En_0;
  output Dbg_Capture_0;
  output Dbg_Shift_0;
  output Dbg_Update_0;
  output Dbg_Rst_0;
  output Dbg_Disable_0;
endmodule
