// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Jun  6 12:39:23 2022
// Host        : LAPTOP-TMRLG6GU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub F:/snake_1/snake_1.srcs/sources_1/bd/snake/snake_stub.v
// Design      : snake
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module snake(DDR2_0_addr, DDR2_0_ba, DDR2_0_cas_n, 
  DDR2_0_ck_n, DDR2_0_ck_p, DDR2_0_cke, DDR2_0_cs_n, DDR2_0_dm, DDR2_0_dq, DDR2_0_dqs_n, 
  DDR2_0_dqs_p, DDR2_0_odt, DDR2_0_ras_n, DDR2_0_we_n, dip_switches_16bits_tri_i, 
  dual_seven_seg_led_disp_tri_o, led_16bits_tri_o, push_buttons_5bits_tri_i, reset, 
  rgb_led_tri_o, seven_seg_led_an_tri_o, sys_clock, tft_hsync_0, tft_vga_b_0, tft_vga_g_0, 
  tft_vga_r_0, tft_vsync_0, usb_uart_rxd, usb_uart_txd)
/* synthesis syn_black_box black_box_pad_pin="DDR2_0_addr[12:0],DDR2_0_ba[2:0],DDR2_0_cas_n,DDR2_0_ck_n[0:0],DDR2_0_ck_p[0:0],DDR2_0_cke[0:0],DDR2_0_cs_n[0:0],DDR2_0_dm[1:0],DDR2_0_dq[15:0],DDR2_0_dqs_n[1:0],DDR2_0_dqs_p[1:0],DDR2_0_odt[0:0],DDR2_0_ras_n,DDR2_0_we_n,dip_switches_16bits_tri_i[15:0],dual_seven_seg_led_disp_tri_o[7:0],led_16bits_tri_o[15:0],push_buttons_5bits_tri_i[4:0],reset,rgb_led_tri_o[5:0],seven_seg_led_an_tri_o[7:0],sys_clock,tft_hsync_0,tft_vga_b_0[5:0],tft_vga_g_0[5:0],tft_vga_r_0[5:0],tft_vsync_0,usb_uart_rxd,usb_uart_txd" */;
  output [12:0]DDR2_0_addr;
  output [2:0]DDR2_0_ba;
  output DDR2_0_cas_n;
  output [0:0]DDR2_0_ck_n;
  output [0:0]DDR2_0_ck_p;
  output [0:0]DDR2_0_cke;
  output [0:0]DDR2_0_cs_n;
  output [1:0]DDR2_0_dm;
  inout [15:0]DDR2_0_dq;
  inout [1:0]DDR2_0_dqs_n;
  inout [1:0]DDR2_0_dqs_p;
  output [0:0]DDR2_0_odt;
  output DDR2_0_ras_n;
  output DDR2_0_we_n;
  input [15:0]dip_switches_16bits_tri_i;
  output [7:0]dual_seven_seg_led_disp_tri_o;
  output [15:0]led_16bits_tri_o;
  input [4:0]push_buttons_5bits_tri_i;
  input reset;
  output [5:0]rgb_led_tri_o;
  output [7:0]seven_seg_led_an_tri_o;
  input sys_clock;
  output tft_hsync_0;
  output [5:0]tft_vga_b_0;
  output [5:0]tft_vga_g_0;
  output [5:0]tft_vga_r_0;
  output tft_vsync_0;
  input usb_uart_rxd;
  output usb_uart_txd;
endmodule
