-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1733598 Wed Dec 14 22:35:39 MST 2016
-- Date        : Sun Aug 12 11:13:17 2018
-- Host        : WRFA1EF running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Prj/xilinxPrj/MicroblazePrj/Prj3Ddr2/Prj/mc_ddr2/mc_ddr2.srcs/sources_1/bd/mb_ddr/ip/mb_ddr_clk_wiz_1_0/mb_ddr_clk_wiz_1_0_stub.vhdl
-- Design      : mb_ddr_clk_wiz_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mb_ddr_clk_wiz_1_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end mb_ddr_clk_wiz_1_0;

architecture stub of mb_ddr_clk_wiz_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_out2,resetn,locked,clk_in1";
begin
end;
