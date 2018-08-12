-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1733598 Wed Dec 14 22:35:39 MST 2016
-- Date        : Fri Aug 10 09:30:06 2018
-- Host        : WRFA1EF running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Prj/xilinxPrj/MicroblazePrj/Prj2AXIGpio/Prj/MBAXIGpio/MB_AXIGpio/MB_AXIGpio.srcs/sources_1/bd/mb_sys_gpio/ip/mb_sys_gpio_clk_wiz_1_0/mb_sys_gpio_clk_wiz_1_0_stub.vhdl
-- Design      : mb_sys_gpio_clk_wiz_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mb_sys_gpio_clk_wiz_1_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end mb_sys_gpio_clk_wiz_1_0;

architecture stub of mb_sys_gpio_clk_wiz_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,reset,locked,clk_in1";
begin
end;
