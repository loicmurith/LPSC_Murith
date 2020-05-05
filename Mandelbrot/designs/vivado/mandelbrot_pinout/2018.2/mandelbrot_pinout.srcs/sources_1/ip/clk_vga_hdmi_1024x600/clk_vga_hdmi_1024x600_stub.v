// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue May  5 18:00:11 2020
// Host        : xilinx-vm running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.srcs/sources_1/ip/clk_vga_hdmi_1024x600/clk_vga_hdmi_1024x600_stub.v
// Design      : clk_vga_hdmi_1024x600
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_vga_hdmi_1024x600(ClkVgaxCO, ClkHdmixCO, reset, PllLockedxSO, 
  ClkSys100MhzxCI)
/* synthesis syn_black_box black_box_pad_pin="ClkVgaxCO,ClkHdmixCO,reset,PllLockedxSO,ClkSys100MhzxCI" */;
  output ClkVgaxCO;
  output ClkHdmixCO;
  input reset;
  output PllLockedxSO;
  input ClkSys100MhzxCI;
endmodule
