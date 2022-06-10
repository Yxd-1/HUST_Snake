-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon Jun  6 12:39:23 2022
-- Host        : LAPTOP-TMRLG6GU running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub F:/snake_1/snake_1.srcs/sources_1/bd/snake/snake_stub.vhdl
-- Design      : snake
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity snake is
  Port ( 
    DDR2_0_addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    DDR2_0_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR2_0_cas_n : out STD_LOGIC;
    DDR2_0_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_0_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_0_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_0_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_0_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR2_0_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR2_0_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR2_0_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR2_0_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_0_ras_n : out STD_LOGIC;
    DDR2_0_we_n : out STD_LOGIC;
    dip_switches_16bits_tri_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dual_seven_seg_led_disp_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_16bits_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    push_buttons_5bits_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    reset : in STD_LOGIC;
    rgb_led_tri_o : out STD_LOGIC_VECTOR ( 5 downto 0 );
    seven_seg_led_an_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sys_clock : in STD_LOGIC;
    tft_hsync_0 : out STD_LOGIC;
    tft_vga_b_0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_g_0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_r_0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vsync_0 : out STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );

end snake;

architecture stub of snake is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "DDR2_0_addr[12:0],DDR2_0_ba[2:0],DDR2_0_cas_n,DDR2_0_ck_n[0:0],DDR2_0_ck_p[0:0],DDR2_0_cke[0:0],DDR2_0_cs_n[0:0],DDR2_0_dm[1:0],DDR2_0_dq[15:0],DDR2_0_dqs_n[1:0],DDR2_0_dqs_p[1:0],DDR2_0_odt[0:0],DDR2_0_ras_n,DDR2_0_we_n,dip_switches_16bits_tri_i[15:0],dual_seven_seg_led_disp_tri_o[7:0],led_16bits_tri_o[15:0],push_buttons_5bits_tri_i[4:0],reset,rgb_led_tri_o[5:0],seven_seg_led_an_tri_o[7:0],sys_clock,tft_hsync_0,tft_vga_b_0[5:0],tft_vga_g_0[5:0],tft_vga_r_0[5:0],tft_vsync_0,usb_uart_rxd,usb_uart_txd";
begin
end;
