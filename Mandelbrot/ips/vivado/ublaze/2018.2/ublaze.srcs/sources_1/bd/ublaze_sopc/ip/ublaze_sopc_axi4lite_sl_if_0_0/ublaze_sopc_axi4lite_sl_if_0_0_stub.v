// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
// Date        : Mon Feb 25 09:59:43 2019
// Host        : xps13-debian running 64-bit Debian GNU/Linux 9.8 (stretch)
// Command     : write_verilog -force -mode synth_stub
//               /home/jo/Documents/Hepia/Cours/LPSC/Mandelbrot/ips/vivado/ublaze/2018.2/ublaze.srcs/sources_1/bd/ublaze_sopc/ip/ublaze_sopc_axi4lite_sl_if_0_0/ublaze_sopc_axi4lite_sl_if_0_0_stub.v
// Design      : ublaze_sopc_axi4lite_sl_if_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axi4lite_sl_if,Vivado 2018.2.2" *)
module ublaze_sopc_axi4lite_sl_if_0_0(SAxiClkxCI, SAxiResetxRANI, SAxiAWAddrxDI, 
  SAxiAWValidxSI, SAxiAWReadyxSO, SAxiWDataxDI, SAxiWStrbxDI, SAxiWValidxSI, SAxiWReadyxSO, 
  SAxiBRespxDO, SAxiBValidxSO, SAxiBReadyxSI, SAxiARAddrxDI, SAxiARValidxSI, SAxiARReadyxSO, 
  SAxiRDataxDO, SAxiRRespxDO, SAxiRValidxSO, SAxiRReadyxSI, WrDataxDO, WrAddrxDO, WrValidxSO, 
  RdDataxDI, RdAddrxDO, RdValidxSO, InterruptxSI, InterruptxSO)
/* synthesis syn_black_box black_box_pad_pin="SAxiClkxCI,SAxiResetxRANI,SAxiAWAddrxDI[31:0],SAxiAWValidxSI,SAxiAWReadyxSO,SAxiWDataxDI[31:0],SAxiWStrbxDI[3:0],SAxiWValidxSI,SAxiWReadyxSO,SAxiBRespxDO[1:0],SAxiBValidxSO,SAxiBReadyxSI,SAxiARAddrxDI[31:0],SAxiARValidxSI,SAxiARReadyxSO,SAxiRDataxDO[31:0],SAxiRRespxDO[1:0],SAxiRValidxSO,SAxiRReadyxSI,WrDataxDO[31:0],WrAddrxDO[11:0],WrValidxSO,RdDataxDI[31:0],RdAddrxDO[11:0],RdValidxSO,InterruptxSI,InterruptxSO" */;
  input SAxiClkxCI;
  input SAxiResetxRANI;
  input [31:0]SAxiAWAddrxDI;
  input SAxiAWValidxSI;
  output SAxiAWReadyxSO;
  input [31:0]SAxiWDataxDI;
  input [3:0]SAxiWStrbxDI;
  input SAxiWValidxSI;
  output SAxiWReadyxSO;
  output [1:0]SAxiBRespxDO;
  output SAxiBValidxSO;
  input SAxiBReadyxSI;
  input [31:0]SAxiARAddrxDI;
  input SAxiARValidxSI;
  output SAxiARReadyxSO;
  output [31:0]SAxiRDataxDO;
  output [1:0]SAxiRRespxDO;
  output SAxiRValidxSO;
  input SAxiRReadyxSI;
  output [31:0]WrDataxDO;
  output [11:0]WrAddrxDO;
  output WrValidxSO;
  input [31:0]RdDataxDI;
  output [11:0]RdAddrxDO;
  output RdValidxSO;
  input InterruptxSI;
  output InterruptxSO;
endmodule
