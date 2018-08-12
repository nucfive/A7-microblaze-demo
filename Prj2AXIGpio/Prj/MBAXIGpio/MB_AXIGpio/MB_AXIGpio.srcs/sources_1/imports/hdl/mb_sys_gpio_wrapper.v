//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (win64) Build 1733598 Wed Dec 14 22:35:39 MST 2016
//Date        : Fri Aug 10 09:28:59 2018
//Host        : WRFA1EF running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target mb_sys_gpio_wrapper.bd
//Design      : mb_sys_gpio_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mb_sys_gpio_wrapper
   (gpio_led_tri_io,
    key,
    sysCLk,
    uart_rtl_rxd,
    uart_rtl_txd);
  inout [15:0]gpio_led_tri_io;
  input key;
  input sysCLk;
  input uart_rtl_rxd;
  output uart_rtl_txd;

  wire [0:0]gpio_led_tri_i_0;
  wire [1:1]gpio_led_tri_i_1;
  wire [10:10]gpio_led_tri_i_10;
  wire [11:11]gpio_led_tri_i_11;
  wire [12:12]gpio_led_tri_i_12;
  wire [13:13]gpio_led_tri_i_13;
  wire [14:14]gpio_led_tri_i_14;
  wire [15:15]gpio_led_tri_i_15;
  wire [2:2]gpio_led_tri_i_2;
  wire [3:3]gpio_led_tri_i_3;
  wire [4:4]gpio_led_tri_i_4;
  wire [5:5]gpio_led_tri_i_5;
  wire [6:6]gpio_led_tri_i_6;
  wire [7:7]gpio_led_tri_i_7;
  wire [8:8]gpio_led_tri_i_8;
  wire [9:9]gpio_led_tri_i_9;
  wire [0:0]gpio_led_tri_io_0;
  wire [1:1]gpio_led_tri_io_1;
  wire [10:10]gpio_led_tri_io_10;
  wire [11:11]gpio_led_tri_io_11;
  wire [12:12]gpio_led_tri_io_12;
  wire [13:13]gpio_led_tri_io_13;
  wire [14:14]gpio_led_tri_io_14;
  wire [15:15]gpio_led_tri_io_15;
  wire [2:2]gpio_led_tri_io_2;
  wire [3:3]gpio_led_tri_io_3;
  wire [4:4]gpio_led_tri_io_4;
  wire [5:5]gpio_led_tri_io_5;
  wire [6:6]gpio_led_tri_io_6;
  wire [7:7]gpio_led_tri_io_7;
  wire [8:8]gpio_led_tri_io_8;
  wire [9:9]gpio_led_tri_io_9;
  wire [0:0]gpio_led_tri_o_0;
  wire [1:1]gpio_led_tri_o_1;
  wire [10:10]gpio_led_tri_o_10;
  wire [11:11]gpio_led_tri_o_11;
  wire [12:12]gpio_led_tri_o_12;
  wire [13:13]gpio_led_tri_o_13;
  wire [14:14]gpio_led_tri_o_14;
  wire [15:15]gpio_led_tri_o_15;
  wire [2:2]gpio_led_tri_o_2;
  wire [3:3]gpio_led_tri_o_3;
  wire [4:4]gpio_led_tri_o_4;
  wire [5:5]gpio_led_tri_o_5;
  wire [6:6]gpio_led_tri_o_6;
  wire [7:7]gpio_led_tri_o_7;
  wire [8:8]gpio_led_tri_o_8;
  wire [9:9]gpio_led_tri_o_9;
  wire [0:0]gpio_led_tri_t_0;
  wire [1:1]gpio_led_tri_t_1;
  wire [10:10]gpio_led_tri_t_10;
  wire [11:11]gpio_led_tri_t_11;
  wire [12:12]gpio_led_tri_t_12;
  wire [13:13]gpio_led_tri_t_13;
  wire [14:14]gpio_led_tri_t_14;
  wire [15:15]gpio_led_tri_t_15;
  wire [2:2]gpio_led_tri_t_2;
  wire [3:3]gpio_led_tri_t_3;
  wire [4:4]gpio_led_tri_t_4;
  wire [5:5]gpio_led_tri_t_5;
  wire [6:6]gpio_led_tri_t_6;
  wire [7:7]gpio_led_tri_t_7;
  wire [8:8]gpio_led_tri_t_8;
  wire [9:9]gpio_led_tri_t_9;
  wire key;
  wire sysCLk;
  wire uart_rtl_rxd;
  wire uart_rtl_txd;

  IOBUF gpio_led_tri_iobuf_0
       (.I(gpio_led_tri_o_0),
        .IO(gpio_led_tri_io[0]),
        .O(gpio_led_tri_i_0),
        .T(gpio_led_tri_t_0));
  IOBUF gpio_led_tri_iobuf_1
       (.I(gpio_led_tri_o_1),
        .IO(gpio_led_tri_io[1]),
        .O(gpio_led_tri_i_1),
        .T(gpio_led_tri_t_1));
  IOBUF gpio_led_tri_iobuf_10
       (.I(gpio_led_tri_o_10),
        .IO(gpio_led_tri_io[10]),
        .O(gpio_led_tri_i_10),
        .T(gpio_led_tri_t_10));
  IOBUF gpio_led_tri_iobuf_11
       (.I(gpio_led_tri_o_11),
        .IO(gpio_led_tri_io[11]),
        .O(gpio_led_tri_i_11),
        .T(gpio_led_tri_t_11));
  IOBUF gpio_led_tri_iobuf_12
       (.I(gpio_led_tri_o_12),
        .IO(gpio_led_tri_io[12]),
        .O(gpio_led_tri_i_12),
        .T(gpio_led_tri_t_12));
  IOBUF gpio_led_tri_iobuf_13
       (.I(gpio_led_tri_o_13),
        .IO(gpio_led_tri_io[13]),
        .O(gpio_led_tri_i_13),
        .T(gpio_led_tri_t_13));
  IOBUF gpio_led_tri_iobuf_14
       (.I(gpio_led_tri_o_14),
        .IO(gpio_led_tri_io[14]),
        .O(gpio_led_tri_i_14),
        .T(gpio_led_tri_t_14));
  IOBUF gpio_led_tri_iobuf_15
       (.I(gpio_led_tri_o_15),
        .IO(gpio_led_tri_io[15]),
        .O(gpio_led_tri_i_15),
        .T(gpio_led_tri_t_15));
  IOBUF gpio_led_tri_iobuf_2
       (.I(gpio_led_tri_o_2),
        .IO(gpio_led_tri_io[2]),
        .O(gpio_led_tri_i_2),
        .T(gpio_led_tri_t_2));
  IOBUF gpio_led_tri_iobuf_3
       (.I(gpio_led_tri_o_3),
        .IO(gpio_led_tri_io[3]),
        .O(gpio_led_tri_i_3),
        .T(gpio_led_tri_t_3));
  IOBUF gpio_led_tri_iobuf_4
       (.I(gpio_led_tri_o_4),
        .IO(gpio_led_tri_io[4]),
        .O(gpio_led_tri_i_4),
        .T(gpio_led_tri_t_4));
  IOBUF gpio_led_tri_iobuf_5
       (.I(gpio_led_tri_o_5),
        .IO(gpio_led_tri_io[5]),
        .O(gpio_led_tri_i_5),
        .T(gpio_led_tri_t_5));
  IOBUF gpio_led_tri_iobuf_6
       (.I(gpio_led_tri_o_6),
        .IO(gpio_led_tri_io[6]),
        .O(gpio_led_tri_i_6),
        .T(gpio_led_tri_t_6));
  IOBUF gpio_led_tri_iobuf_7
       (.I(gpio_led_tri_o_7),
        .IO(gpio_led_tri_io[7]),
        .O(gpio_led_tri_i_7),
        .T(gpio_led_tri_t_7));
  IOBUF gpio_led_tri_iobuf_8
       (.I(gpio_led_tri_o_8),
        .IO(gpio_led_tri_io[8]),
        .O(gpio_led_tri_i_8),
        .T(gpio_led_tri_t_8));
  IOBUF gpio_led_tri_iobuf_9
       (.I(gpio_led_tri_o_9),
        .IO(gpio_led_tri_io[9]),
        .O(gpio_led_tri_i_9),
        .T(gpio_led_tri_t_9));
  mb_sys_gpio mb_sys_gpio_i
       (.GPIO_LED_tri_i({gpio_led_tri_i_15,gpio_led_tri_i_14,gpio_led_tri_i_13,gpio_led_tri_i_12,gpio_led_tri_i_11,gpio_led_tri_i_10,gpio_led_tri_i_9,gpio_led_tri_i_8,gpio_led_tri_i_7,gpio_led_tri_i_6,gpio_led_tri_i_5,gpio_led_tri_i_4,gpio_led_tri_i_3,gpio_led_tri_i_2,gpio_led_tri_i_1,gpio_led_tri_i_0}),
        .GPIO_LED_tri_o({gpio_led_tri_o_15,gpio_led_tri_o_14,gpio_led_tri_o_13,gpio_led_tri_o_12,gpio_led_tri_o_11,gpio_led_tri_o_10,gpio_led_tri_o_9,gpio_led_tri_o_8,gpio_led_tri_o_7,gpio_led_tri_o_6,gpio_led_tri_o_5,gpio_led_tri_o_4,gpio_led_tri_o_3,gpio_led_tri_o_2,gpio_led_tri_o_1,gpio_led_tri_o_0}),
        .GPIO_LED_tri_t({gpio_led_tri_t_15,gpio_led_tri_t_14,gpio_led_tri_t_13,gpio_led_tri_t_12,gpio_led_tri_t_11,gpio_led_tri_t_10,gpio_led_tri_t_9,gpio_led_tri_t_8,gpio_led_tri_t_7,gpio_led_tri_t_6,gpio_led_tri_t_5,gpio_led_tri_t_4,gpio_led_tri_t_3,gpio_led_tri_t_2,gpio_led_tri_t_1,gpio_led_tri_t_0}),
        .key(key),
        .sysCLk(sysCLk),
        .uart_rtl_rxd(uart_rtl_rxd),
        .uart_rtl_txd(uart_rtl_txd));
endmodule
