//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (win64) Build 1733598 Wed Dec 14 22:35:39 MST 2016
//Date        : Mon Aug 06 19:50:00 2018
//Host        : WRFA1EF running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target Prj1Hello_wrapper.bd
//Design      : Prj1Hello_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Prj1Hello_wrapper
   (clk_in1,
    reset,
    uart_rtl_rxd,
    uart_rtl_txd);
  input clk_in1;
  input reset;
  input uart_rtl_rxd;
  output uart_rtl_txd;

  wire clk_in1;
  wire reset;
  wire uart_rtl_rxd;
  wire uart_rtl_txd;

  Prj1Hello Prj1Hello_i
       (.clk_in1(clk_in1),
        .reset(reset),
        .uart_rtl_rxd(uart_rtl_rxd),
        .uart_rtl_txd(uart_rtl_txd));
endmodule
