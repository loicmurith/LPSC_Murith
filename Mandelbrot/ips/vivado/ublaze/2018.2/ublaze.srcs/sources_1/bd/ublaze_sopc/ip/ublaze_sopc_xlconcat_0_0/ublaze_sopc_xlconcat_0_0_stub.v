// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
// Date        : Fri Feb 22 09:30:48 2019
// Host        : xps13-debian running 64-bit Debian GNU/Linux 9.8 (stretch)
// Command     : write_verilog -force -mode synth_stub -rename_top ublaze_sopc_xlconcat_0_0 -prefix
//               ublaze_sopc_xlconcat_0_0_ ublaze_sopc_xlconcat_0_0_stub.v
// Design      : ublaze_sopc_xlconcat_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlconcat_v2_1_1_xlconcat,Vivado 2018.2.2" *)
module ublaze_sopc_xlconcat_0_0(In0, In1, dout)
/* synthesis syn_black_box black_box_pad_pin="In0[0:0],In1[0:0],dout[1:0]" */;
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;
endmodule
