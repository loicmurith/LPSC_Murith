// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue May  5 17:07:33 2020
// Host        : xilinx-vm running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/xilinx/LPSC_project/mandlebrot/mandlebrot.srcs/sources_1/ip/mathDSP/mathDSP_stub.v
// Design      : mathDSP
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xbip_dsp48_macro_v3_0_17,Vivado 2019.2" *)
module mathDSP(CLK, SEL, A, B, C, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,SEL[0:0],A[17:0],B[17:0],C[35:0],P[36:0]" */;
  input CLK;
  input [0:0]SEL;
  input [17:0]A;
  input [17:0]B;
  input [35:0]C;
  output [36:0]P;
endmodule
