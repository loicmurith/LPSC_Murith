// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
// Date        : Mon Feb 25 09:59:44 2019
// Host        : xps13-debian running 64-bit Debian GNU/Linux 9.8 (stretch)
// Command     : write_verilog -force -mode funcsim
//               /home/jo/Documents/Hepia/Cours/LPSC/Mandelbrot/ips/vivado/ublaze/2018.2/ublaze.srcs/sources_1/bd/ublaze_sopc/ip/ublaze_sopc_axi4lite_sl_if_0_0/ublaze_sopc_axi4lite_sl_if_0_0_sim_netlist.v
// Design      : ublaze_sopc_axi4lite_sl_if_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ublaze_sopc_axi4lite_sl_if_0_0,axi4lite_sl_if,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "axi4lite_sl_if,Vivado 2018.2.2" *) 
(* NotValidForBitStream *)
module ublaze_sopc_axi4lite_sl_if_0_0
   (SAxiClkxCI,
    SAxiResetxRANI,
    SAxiAWAddrxDI,
    SAxiAWValidxSI,
    SAxiAWReadyxSO,
    SAxiWDataxDI,
    SAxiWStrbxDI,
    SAxiWValidxSI,
    SAxiWReadyxSO,
    SAxiBRespxDO,
    SAxiBValidxSO,
    SAxiBReadyxSI,
    SAxiARAddrxDI,
    SAxiARValidxSI,
    SAxiARReadyxSO,
    SAxiRDataxDO,
    SAxiRRespxDO,
    SAxiRValidxSO,
    SAxiRReadyxSI,
    WrDataxDO,
    WrAddrxDO,
    WrValidxSO,
    RdDataxDI,
    RdAddrxDO,
    RdValidxSO,
    InterruptxSI,
    InterruptxSO);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 SAxiClkxCI CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME SAxiClkxCI, ASSOCIATED_RESET InterruptxSO:InterruptxSI:SAxiResetxRANI, ASSOCIATED_BUSIF AxiLitexDIO, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /ublaze_pll_clk_out1" *) input SAxiClkxCI;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 SAxiResetxRANI RST" *) (* x_interface_parameter = "XIL_INTERFACENAME SAxiResetxRANI, POLARITY ACTIVE_LOW" *) input SAxiResetxRANI;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AxiLitexDIO AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME AxiLitexDIO, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /ublaze_pll_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [31:0]SAxiAWAddrxDI;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AxiLitexDIO AWVALID" *) input SAxiAWValidxSI;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AxiLitexDIO AWREADY" *) output SAxiAWReadyxSO;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AxiLitexDIO WDATA" *) input [31:0]SAxiWDataxDI;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AxiLitexDIO WSTRB" *) input [3:0]SAxiWStrbxDI;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AxiLitexDIO WVALID" *) input SAxiWValidxSI;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AxiLitexDIO WREADY" *) output SAxiWReadyxSO;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AxiLitexDIO BRESP" *) output [1:0]SAxiBRespxDO;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AxiLitexDIO BVALID" *) output SAxiBValidxSO;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AxiLitexDIO BREADY" *) input SAxiBReadyxSI;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AxiLitexDIO ARADDR" *) input [31:0]SAxiARAddrxDI;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AxiLitexDIO ARVALID" *) input SAxiARValidxSI;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AxiLitexDIO ARREADY" *) output SAxiARReadyxSO;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AxiLitexDIO RDATA" *) output [31:0]SAxiRDataxDO;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AxiLitexDIO RRESP" *) output [1:0]SAxiRRespxDO;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AxiLitexDIO RVALID" *) output SAxiRValidxSO;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AxiLitexDIO RREADY" *) input SAxiRReadyxSI;
  output [31:0]WrDataxDO;
  output [11:0]WrAddrxDO;
  output WrValidxSO;
  input [31:0]RdDataxDI;
  output [11:0]RdAddrxDO;
  output RdValidxSO;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 InterruptxSI INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME InterruptxSI, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) input InterruptxSI;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 InterruptxSO INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME InterruptxSO, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output InterruptxSO;

  wire \<const0> ;
  wire InterruptxSI;
  wire [31:0]RdDataxDI;
  wire [31:0]SAxiARAddrxDI;
  wire SAxiARReadyxSO;
  wire SAxiARValidxSI;
  wire [31:0]SAxiAWAddrxDI;
  wire SAxiAWReadyxSO;
  wire SAxiAWValidxSI;
  wire SAxiBReadyxSI;
  wire SAxiBValidxSO;
  wire SAxiClkxCI;
  wire SAxiRReadyxSI;
  wire SAxiRValidxSO;
  wire SAxiResetxRANI;
  wire [31:0]SAxiWDataxDI;
  wire SAxiWReadyxSO;
  wire SAxiWValidxSI;
  wire [11:0]WrAddrxDO;

  assign InterruptxSO = InterruptxSI;
  assign RdAddrxDO[11:0] = SAxiARAddrxDI[11:0];
  assign RdValidxSO = SAxiARValidxSI;
  assign SAxiBRespxDO[1] = \<const0> ;
  assign SAxiBRespxDO[0] = \<const0> ;
  assign SAxiRDataxDO[31:0] = RdDataxDI;
  assign SAxiRRespxDO[1] = \<const0> ;
  assign SAxiRRespxDO[0] = \<const0> ;
  assign WrDataxDO[31:0] = SAxiWDataxDI;
  assign WrValidxSO = SAxiWValidxSI;
  GND GND
       (.G(\<const0> ));
  ublaze_sopc_axi4lite_sl_if_0_0_axi4lite_sl_if U0
       (.SAxiARReadyxSO(SAxiARReadyxSO),
        .SAxiARValidxSI(SAxiARValidxSI),
        .SAxiAWAddrxDI(SAxiAWAddrxDI[11:0]),
        .SAxiAWReadyxSO(SAxiAWReadyxSO),
        .SAxiAWValidxSI(SAxiAWValidxSI),
        .SAxiBReadyxSI(SAxiBReadyxSI),
        .SAxiBValidxSO(SAxiBValidxSO),
        .SAxiClkxCI(SAxiClkxCI),
        .SAxiRReadyxSI(SAxiRReadyxSI),
        .SAxiRValidxSO(SAxiRValidxSO),
        .SAxiResetxRANI(SAxiResetxRANI),
        .SAxiWReadyxSO(SAxiWReadyxSO),
        .SAxiWValidxSI(SAxiWValidxSI),
        .WrAddrxDO(WrAddrxDO));
endmodule

(* ORIG_REF_NAME = "axi4lite_rd_chan_sl_if" *) 
module ublaze_sopc_axi4lite_sl_if_0_0_axi4lite_rd_chan_sl_if
   (SAxiARReadyxSO,
    SAxiRValidxSO,
    SAxiClkxCI,
    SAxiResetxRANI,
    SAxiRReadyxSI,
    StateAfterResetxS,
    SAxiARValidxSI);
  output SAxiARReadyxSO;
  output SAxiRValidxSO;
  input SAxiClkxCI;
  input SAxiResetxRANI;
  input SAxiRReadyxSI;
  input StateAfterResetxS;
  input SAxiARValidxSI;

  wire SAxiARReadyxSO;
  wire SAxiARReadyxS_i_1_n_0;
  wire SAxiARValidxSI;
  wire SAxiClkxCI;
  wire SAxiRReadyxSI;
  wire SAxiRValidxSO;
  wire SAxiRValidxS_i_1_n_0;
  wire SAxiResetxRANI;
  wire StateAfterResetxS;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h44FE)) 
    SAxiARReadyxS_i_1
       (.I0(SAxiARReadyxSO),
        .I1(SAxiRReadyxSI),
        .I2(StateAfterResetxS),
        .I3(SAxiARValidxSI),
        .O(SAxiARReadyxS_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    SAxiARReadyxS_reg
       (.C(SAxiClkxCI),
        .CE(1'b1),
        .CLR(SAxiResetxRANI),
        .D(SAxiARReadyxS_i_1_n_0),
        .Q(SAxiARReadyxSO));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7444)) 
    SAxiRValidxS_i_1
       (.I0(SAxiRReadyxSI),
        .I1(SAxiRValidxSO),
        .I2(SAxiARReadyxSO),
        .I3(SAxiARValidxSI),
        .O(SAxiRValidxS_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    SAxiRValidxS_reg
       (.C(SAxiClkxCI),
        .CE(1'b1),
        .CLR(SAxiResetxRANI),
        .D(SAxiRValidxS_i_1_n_0),
        .Q(SAxiRValidxSO));
endmodule

(* ORIG_REF_NAME = "axi4lite_sl_if" *) 
module ublaze_sopc_axi4lite_sl_if_0_0_axi4lite_sl_if
   (WrAddrxDO,
    SAxiAWReadyxSO,
    SAxiWReadyxSO,
    SAxiBValidxSO,
    SAxiARReadyxSO,
    SAxiRValidxSO,
    SAxiAWValidxSI,
    SAxiAWAddrxDI,
    SAxiClkxCI,
    SAxiResetxRANI,
    SAxiWValidxSI,
    SAxiBReadyxSI,
    SAxiRReadyxSI,
    SAxiARValidxSI);
  output [11:0]WrAddrxDO;
  output SAxiAWReadyxSO;
  output SAxiWReadyxSO;
  output SAxiBValidxSO;
  output SAxiARReadyxSO;
  output SAxiRValidxSO;
  input SAxiAWValidxSI;
  input [11:0]SAxiAWAddrxDI;
  input SAxiClkxCI;
  input SAxiResetxRANI;
  input SAxiWValidxSI;
  input SAxiBReadyxSI;
  input SAxiRReadyxSI;
  input SAxiARValidxSI;

  wire \Axi4LiteSlIfxB.Axi4LiteWrChanSlIfxI_n_1 ;
  wire SAxiARReadyxSO;
  wire SAxiARValidxSI;
  wire [11:0]SAxiAWAddrxDI;
  wire SAxiAWReadyxSO;
  wire SAxiAWValidxSI;
  wire SAxiBReadyxSI;
  wire SAxiBValidxSO;
  wire SAxiClkxCI;
  wire SAxiRReadyxSI;
  wire SAxiRValidxSO;
  wire SAxiResetxRANI;
  wire SAxiWReadyxSO;
  wire SAxiWValidxSI;
  wire StateAfterResetxS;
  wire [11:0]WrAddrxDO;

  ublaze_sopc_axi4lite_sl_if_0_0_axi4lite_rd_chan_sl_if \Axi4LiteSlIfxB.Axi4LiteRdChanSlIfxI 
       (.SAxiARReadyxSO(SAxiARReadyxSO),
        .SAxiARValidxSI(SAxiARValidxSI),
        .SAxiClkxCI(SAxiClkxCI),
        .SAxiRReadyxSI(SAxiRReadyxSI),
        .SAxiRValidxSO(SAxiRValidxSO),
        .SAxiResetxRANI(\Axi4LiteSlIfxB.Axi4LiteWrChanSlIfxI_n_1 ),
        .StateAfterResetxS(StateAfterResetxS));
  ublaze_sopc_axi4lite_sl_if_0_0_axi4lite_wr_chan_sl_if \Axi4LiteSlIfxB.Axi4LiteWrChanSlIfxI 
       (.SAxiAWAddrxDI(SAxiAWAddrxDI),
        .SAxiAWReadyxSO(SAxiAWReadyxSO),
        .SAxiAWReadyxS_reg_0(\Axi4LiteSlIfxB.Axi4LiteWrChanSlIfxI_n_1 ),
        .SAxiAWValidxSI(SAxiAWValidxSI),
        .SAxiBReadyxSI(SAxiBReadyxSI),
        .SAxiBValidxSO(SAxiBValidxSO),
        .SAxiClkxCI(SAxiClkxCI),
        .SAxiResetxRANI(SAxiResetxRANI),
        .SAxiWReadyxSO(SAxiWReadyxSO),
        .SAxiWValidxSI(SAxiWValidxSI),
        .StateAfterResetxS(StateAfterResetxS),
        .WrAddrxDO(WrAddrxDO));
endmodule

(* ORIG_REF_NAME = "axi4lite_wr_chan_sl_if" *) 
module ublaze_sopc_axi4lite_sl_if_0_0_axi4lite_wr_chan_sl_if
   (StateAfterResetxS,
    SAxiAWReadyxS_reg_0,
    SAxiAWReadyxSO,
    SAxiWReadyxSO,
    SAxiBValidxSO,
    WrAddrxDO,
    SAxiClkxCI,
    SAxiResetxRANI,
    SAxiWValidxSI,
    SAxiAWValidxSI,
    SAxiBReadyxSI,
    SAxiAWAddrxDI);
  output StateAfterResetxS;
  output SAxiAWReadyxS_reg_0;
  output SAxiAWReadyxSO;
  output SAxiWReadyxSO;
  output SAxiBValidxSO;
  output [11:0]WrAddrxDO;
  input SAxiClkxCI;
  input SAxiResetxRANI;
  input SAxiWValidxSI;
  input SAxiAWValidxSI;
  input SAxiBReadyxSI;
  input [11:0]SAxiAWAddrxDI;

  wire [11:0]SAxiAWAddrxDI;
  wire SAxiAWReadyxSO;
  wire SAxiAWReadyxS_i_1_n_0;
  wire SAxiAWReadyxS_reg_0;
  wire SAxiAWValidxSI;
  wire SAxiBReadyxSI;
  wire SAxiBValidxSO;
  wire SAxiBValidxS_i_1_n_0;
  wire SAxiClkxCI;
  wire SAxiResetxRANI;
  wire SAxiWReadyxSO;
  wire SAxiWReadyxS_i_1_n_0;
  wire SAxiWValidxSI;
  wire StateAfterResetxS;
  wire [11:0]WrAddrxDO;

  FDCE #(
    .INIT(1'b0)) 
    \AddrxDP_reg[0] 
       (.C(SAxiClkxCI),
        .CE(SAxiAWValidxSI),
        .CLR(SAxiAWReadyxS_reg_0),
        .D(SAxiAWAddrxDI[0]),
        .Q(WrAddrxDO[0]));
  FDCE #(
    .INIT(1'b0)) 
    \AddrxDP_reg[10] 
       (.C(SAxiClkxCI),
        .CE(SAxiAWValidxSI),
        .CLR(SAxiAWReadyxS_reg_0),
        .D(SAxiAWAddrxDI[10]),
        .Q(WrAddrxDO[10]));
  FDCE #(
    .INIT(1'b0)) 
    \AddrxDP_reg[11] 
       (.C(SAxiClkxCI),
        .CE(SAxiAWValidxSI),
        .CLR(SAxiAWReadyxS_reg_0),
        .D(SAxiAWAddrxDI[11]),
        .Q(WrAddrxDO[11]));
  FDCE #(
    .INIT(1'b0)) 
    \AddrxDP_reg[1] 
       (.C(SAxiClkxCI),
        .CE(SAxiAWValidxSI),
        .CLR(SAxiAWReadyxS_reg_0),
        .D(SAxiAWAddrxDI[1]),
        .Q(WrAddrxDO[1]));
  FDCE #(
    .INIT(1'b0)) 
    \AddrxDP_reg[2] 
       (.C(SAxiClkxCI),
        .CE(SAxiAWValidxSI),
        .CLR(SAxiAWReadyxS_reg_0),
        .D(SAxiAWAddrxDI[2]),
        .Q(WrAddrxDO[2]));
  FDCE #(
    .INIT(1'b0)) 
    \AddrxDP_reg[3] 
       (.C(SAxiClkxCI),
        .CE(SAxiAWValidxSI),
        .CLR(SAxiAWReadyxS_reg_0),
        .D(SAxiAWAddrxDI[3]),
        .Q(WrAddrxDO[3]));
  FDCE #(
    .INIT(1'b0)) 
    \AddrxDP_reg[4] 
       (.C(SAxiClkxCI),
        .CE(SAxiAWValidxSI),
        .CLR(SAxiAWReadyxS_reg_0),
        .D(SAxiAWAddrxDI[4]),
        .Q(WrAddrxDO[4]));
  FDCE #(
    .INIT(1'b0)) 
    \AddrxDP_reg[5] 
       (.C(SAxiClkxCI),
        .CE(SAxiAWValidxSI),
        .CLR(SAxiAWReadyxS_reg_0),
        .D(SAxiAWAddrxDI[5]),
        .Q(WrAddrxDO[5]));
  FDCE #(
    .INIT(1'b0)) 
    \AddrxDP_reg[6] 
       (.C(SAxiClkxCI),
        .CE(SAxiAWValidxSI),
        .CLR(SAxiAWReadyxS_reg_0),
        .D(SAxiAWAddrxDI[6]),
        .Q(WrAddrxDO[6]));
  FDCE #(
    .INIT(1'b0)) 
    \AddrxDP_reg[7] 
       (.C(SAxiClkxCI),
        .CE(SAxiAWValidxSI),
        .CLR(SAxiAWReadyxS_reg_0),
        .D(SAxiAWAddrxDI[7]),
        .Q(WrAddrxDO[7]));
  FDCE #(
    .INIT(1'b0)) 
    \AddrxDP_reg[8] 
       (.C(SAxiClkxCI),
        .CE(SAxiAWValidxSI),
        .CLR(SAxiAWReadyxS_reg_0),
        .D(SAxiAWAddrxDI[8]),
        .Q(WrAddrxDO[8]));
  FDCE #(
    .INIT(1'b0)) 
    \AddrxDP_reg[9] 
       (.C(SAxiClkxCI),
        .CE(SAxiAWValidxSI),
        .CLR(SAxiAWReadyxS_reg_0),
        .D(SAxiAWAddrxDI[9]),
        .Q(WrAddrxDO[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAFAE)) 
    SAxiAWReadyxS_i_1
       (.I0(SAxiWValidxSI),
        .I1(StateAfterResetxS),
        .I2(SAxiAWValidxSI),
        .I3(SAxiAWReadyxSO),
        .O(SAxiAWReadyxS_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    SAxiAWReadyxS_i_2
       (.I0(SAxiResetxRANI),
        .O(SAxiAWReadyxS_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    SAxiAWReadyxS_reg
       (.C(SAxiClkxCI),
        .CE(1'b1),
        .CLR(SAxiAWReadyxS_reg_0),
        .D(SAxiAWReadyxS_i_1_n_0),
        .Q(SAxiAWReadyxSO));
  LUT4 #(
    .INIT(16'h7444)) 
    SAxiBValidxS_i_1
       (.I0(SAxiBReadyxSI),
        .I1(SAxiBValidxSO),
        .I2(SAxiWReadyxSO),
        .I3(SAxiWValidxSI),
        .O(SAxiBValidxS_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    SAxiBValidxS_reg
       (.C(SAxiClkxCI),
        .CE(1'b1),
        .CLR(SAxiAWReadyxS_reg_0),
        .D(SAxiBValidxS_i_1_n_0),
        .Q(SAxiBValidxSO));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7222)) 
    SAxiWReadyxS_i_1
       (.I0(SAxiWReadyxSO),
        .I1(SAxiWValidxSI),
        .I2(SAxiAWReadyxSO),
        .I3(SAxiAWValidxSI),
        .O(SAxiWReadyxS_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    SAxiWReadyxS_reg
       (.C(SAxiClkxCI),
        .CE(1'b1),
        .CLR(SAxiAWReadyxS_reg_0),
        .D(SAxiWReadyxS_i_1_n_0),
        .Q(SAxiWReadyxSO));
  FDPE #(
    .INIT(1'b1)) 
    StateAfterResetxS_reg
       (.C(SAxiClkxCI),
        .CE(1'b1),
        .D(1'b0),
        .PRE(SAxiAWReadyxS_reg_0),
        .Q(StateAfterResetxS));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
