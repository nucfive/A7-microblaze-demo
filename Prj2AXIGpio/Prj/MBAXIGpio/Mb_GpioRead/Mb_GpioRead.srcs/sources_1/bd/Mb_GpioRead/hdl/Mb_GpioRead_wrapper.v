//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (win64) Build 1733598 Wed Dec 14 22:35:39 MST 2016
//Date        : Fri Aug 10 12:13:30 2018
//Host        : WRFA1EF running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target Mb_GpioRead_wrapper.bd
//Design      : Mb_GpioRead_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Mb_GpioRead_wrapper
   (clk_in1,
    gpio_rtl_0_tri_io,
    gpio_rtl_tri_io,
    reset,
    uart_rtl_rxd,
    uart_rtl_txd);
  input clk_in1;
  inout [0:0]gpio_rtl_0_tri_io;
  inout [0:0]gpio_rtl_tri_io;
  input reset;
  input uart_rtl_rxd;
  output uart_rtl_txd;

  wire clk_in1;
  wire [0:0]gpio_rtl_0_tri_i_0;
  wire [0:0]gpio_rtl_0_tri_io_0;
  wire [0:0]gpio_rtl_0_tri_o_0;
  wire [0:0]gpio_rtl_0_tri_t_0;
  wire [0:0]gpio_rtl_tri_i_0;
  wire [0:0]gpio_rtl_tri_io_0;
  wire [0:0]gpio_rtl_tri_o_0;
  wire [0:0]gpio_rtl_tri_t_0;
  wire reset;
  wire uart_rtl_rxd;
  wire uart_rtl_txd;

  Mb_GpioRead Mb_GpioRead_i
       (.clk_in1(clk_in1),
        .gpio_rtl_0_tri_i(gpio_rtl_0_tri_i_0),
        .gpio_rtl_0_tri_o(gpio_rtl_0_tri_o_0),
        .gpio_rtl_0_tri_t(gpio_rtl_0_tri_t_0),
        .gpio_rtl_tri_i(gpio_rtl_tri_i_0),
        .gpio_rtl_tri_o(gpio_rtl_tri_o_0),
        .gpio_rtl_tri_t(gpio_rtl_tri_t_0),
        .reset(reset),
        .uart_rtl_rxd(uart_rtl_rxd),
        .uart_rtl_txd(uart_rtl_txd));
  IOBUF gpio_rtl_0_tri_iobuf_0
       (.I(gpio_rtl_0_tri_o_0),
        .IO(gpio_rtl_0_tri_io[0]),
        .O(gpio_rtl_0_tri_i_0),
        .T(gpio_rtl_0_tri_t_0));
  IOBUF gpio_rtl_tri_iobuf_0
       (.I(gpio_rtl_tri_o_0),
        .IO(gpio_rtl_tri_io[0]),
        .O(gpio_rtl_tri_i_0),
        .T(gpio_rtl_tri_t_0));
endmodule
