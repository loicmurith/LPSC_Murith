// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue Apr 28 12:02:14 2020
// Host        : xilinx-vm running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/xilinx/LPSC_project/mandlebrot/mandlebrot.srcs/sources_1/ip/mathDSP/mathDSP_sim_netlist.v
// Design      : mathDSP
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mathDSP,xbip_dsp48_macro_v3_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_17,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module mathDSP
   (CLK,
    SEL,
    A,
    B,
    C,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 sel_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME sel_intf, LAYERED_METADATA undef" *) input [0:0]SEL;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [35:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [35:0]P;

  wire [17:0]A;
  wire [17:0]B;
  wire [35:0]C;
  wire CLK;
  wire [35:0]P;
  wire [0:0]SEL;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "18" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "36" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000000000011010100000000,000001100011010100000000" *) 
  (* C_P_LSB = "1" *) 
  (* C_P_MSB = "36" *) 
  (* C_REG_CONFIG = "00000000000000000000000000000100" *) 
  (* C_SEL_WIDTH = "1" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mathDSP_xbip_dsp48_macro_v3_0_17 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C(C),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(1'b1),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(SEL));
endmodule

(* C_A_WIDTH = "18" *) (* C_B_WIDTH = "18" *) (* C_CONCAT_WIDTH = "48" *) 
(* C_CONSTANT_1 = "1" *) (* C_C_WIDTH = "36" *) (* C_D_WIDTH = "18" *) 
(* C_HAS_A = "1" *) (* C_HAS_ACIN = "0" *) (* C_HAS_ACOUT = "0" *) 
(* C_HAS_B = "1" *) (* C_HAS_BCIN = "0" *) (* C_HAS_BCOUT = "0" *) 
(* C_HAS_C = "1" *) (* C_HAS_CARRYCASCIN = "0" *) (* C_HAS_CARRYCASCOUT = "0" *) 
(* C_HAS_CARRYIN = "0" *) (* C_HAS_CARRYOUT = "0" *) (* C_HAS_CE = "0" *) 
(* C_HAS_CEA = "0" *) (* C_HAS_CEB = "0" *) (* C_HAS_CEC = "0" *) 
(* C_HAS_CECONCAT = "0" *) (* C_HAS_CED = "0" *) (* C_HAS_CEM = "0" *) 
(* C_HAS_CEP = "0" *) (* C_HAS_CESEL = "0" *) (* C_HAS_CONCAT = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_INDEP_CE = "0" *) (* C_HAS_INDEP_SCLR = "0" *) 
(* C_HAS_PCIN = "0" *) (* C_HAS_PCOUT = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SCLRA = "0" *) (* C_HAS_SCLRB = "0" *) (* C_HAS_SCLRC = "0" *) 
(* C_HAS_SCLRCONCAT = "0" *) (* C_HAS_SCLRD = "0" *) (* C_HAS_SCLRM = "0" *) 
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "128" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000000000011010100000000,000001100011010100000000" *) (* C_P_LSB = "1" *) 
(* C_P_MSB = "36" *) (* C_REG_CONFIG = "00000000000000000000000000000100" *) (* C_SEL_WIDTH = "1" *) 
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* ORIG_REF_NAME = "xbip_dsp48_macro_v3_0_17" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mathDSP_xbip_dsp48_macro_v3_0_17
   (CLK,
    CE,
    SCLR,
    SEL,
    CARRYCASCIN,
    CARRYIN,
    PCIN,
    ACIN,
    BCIN,
    A,
    B,
    C,
    D,
    CONCAT,
    ACOUT,
    BCOUT,
    CARRYOUT,
    CARRYCASCOUT,
    PCOUT,
    P,
    CED,
    CED1,
    CED2,
    CED3,
    CEA,
    CEA1,
    CEA2,
    CEA3,
    CEA4,
    CEB,
    CEB1,
    CEB2,
    CEB3,
    CEB4,
    CECONCAT,
    CECONCAT3,
    CECONCAT4,
    CECONCAT5,
    CEC,
    CEC1,
    CEC2,
    CEC3,
    CEC4,
    CEC5,
    CEM,
    CEP,
    CESEL,
    CESEL1,
    CESEL2,
    CESEL3,
    CESEL4,
    CESEL5,
    SCLRD,
    SCLRA,
    SCLRB,
    SCLRCONCAT,
    SCLRC,
    SCLRM,
    SCLRP,
    SCLRSEL);
  input CLK;
  input CE;
  input SCLR;
  input [0:0]SEL;
  input CARRYCASCIN;
  input CARRYIN;
  input [47:0]PCIN;
  input [29:0]ACIN;
  input [17:0]BCIN;
  input [17:0]A;
  input [17:0]B;
  input [35:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [35:0]P;
  input CED;
  input CED1;
  input CED2;
  input CED3;
  input CEA;
  input CEA1;
  input CEA2;
  input CEA3;
  input CEA4;
  input CEB;
  input CEB1;
  input CEB2;
  input CEB3;
  input CEB4;
  input CECONCAT;
  input CECONCAT3;
  input CECONCAT4;
  input CECONCAT5;
  input CEC;
  input CEC1;
  input CEC2;
  input CEC3;
  input CEC4;
  input CEC5;
  input CEM;
  input CEP;
  input CESEL;
  input CESEL1;
  input CESEL2;
  input CESEL3;
  input CESEL4;
  input CESEL5;
  input SCLRD;
  input SCLRA;
  input SCLRB;
  input SCLRCONCAT;
  input SCLRC;
  input SCLRM;
  input SCLRP;
  input SCLRSEL;

  wire [17:0]A;
  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [17:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire [35:0]C;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYOUT;
  wire CLK;
  wire [35:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;
  wire [0:0]SEL;

  (* C_A_WIDTH = "18" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "36" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000000000011010100000000,000001100011010100000000" *) 
  (* C_P_LSB = "1" *) 
  (* C_P_MSB = "36" *) 
  (* C_REG_CONFIG = "00000000000000000000000000000100" *) 
  (* C_SEL_WIDTH = "1" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mathDSP_xbip_dsp48_macro_v3_0_17_viv i_synth
       (.A(A),
        .ACIN(ACIN),
        .ACOUT(ACOUT),
        .B(B),
        .BCIN(BCIN),
        .BCOUT(BCOUT),
        .C(C),
        .CARRYCASCIN(CARRYCASCIN),
        .CARRYCASCOUT(CARRYCASCOUT),
        .CARRYIN(1'b0),
        .CARRYOUT(CARRYOUT),
        .CE(1'b0),
        .CEA(1'b0),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEA3(1'b0),
        .CEA4(1'b0),
        .CEB(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEB3(1'b0),
        .CEB4(1'b0),
        .CEC(1'b0),
        .CEC1(1'b0),
        .CEC2(1'b0),
        .CEC3(1'b0),
        .CEC4(1'b0),
        .CEC5(1'b0),
        .CECONCAT(1'b0),
        .CECONCAT3(1'b0),
        .CECONCAT4(1'b0),
        .CECONCAT5(1'b0),
        .CED(1'b0),
        .CED1(1'b0),
        .CED2(1'b0),
        .CED3(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CESEL(1'b0),
        .CESEL1(1'b0),
        .CESEL2(1'b0),
        .CESEL3(1'b0),
        .CESEL4(1'b0),
        .CESEL5(1'b0),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN(PCIN),
        .PCOUT(PCOUT),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(SEL));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
o95kQsykeBnv/6RKTex/4MyOqp3EGnPFH/nv5raMenbKASm/6owCQp4giB3JGq3yU+Peuq4HmH2a
zCDpR2ue0Q==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VB9GXqz76JcxGkDIhWmf/Tvu6ktxli9qmz3kvoomNuowfSnKyyUf21nolwdhnVr1C2+5yMJGWxPZ
BLZG0iRJeqsy39qwM9osyuU+SIaK3ZNZlXHldcb5bqAcCuJ+kdyh182BY5RLREoDcjBSaH6et2y0
nHwnoYvMurbi5069L7o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xRZ06DbUma6Yw1PiSnZUG2PGjSadC3LNKsDhEzPo8eyEaE9nHgZw/3DDvJK29nvTv83gI0iUR83s
DsWaX9kx/1Ncn4XbmSdT8+ji+OZrf49Rig/ID8665qlNZBqow90+wIcAD4bOqRrXrA1K59qrwHvT
HjF7LoHC546/c3M96yI1UmGveOEfoOIgajP6XX7KY7mxUrsrAoYckHW83+iWbeBUCWMWQkQHuGlA
pkJa7gi2QS5qK1xo/K1KptSjNKWEcDFKsQLQ0NrqR8Wc3xWjV9RkH6EV4AAjqgx4aW1aiTi6aDCV
R//ORC0dbwb38TBnvY0dK2NwJ9AndoUpVf0ZFg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ctpu7OT3NYFV50M7g3X5OWgzfC+1lvHtpPPrHYvfD4BdZUOZtoWbRVMYSofIc3yuOpx1VVcEmRr/
TnKkV/uYIbG4TaOQ6J02lm6ilU0VHOky/Li1McDu0RZw0Ym3gBtycWQulvxZmJPkYKOdQkolKxS2
jt0O51yRobPY6/N1kQhzEZxou6hMzAUa4xc+wECnWdAy6L4Xa7QaVNQGQYFvi6pXqDdNwgODZGXV
5IthUoYOPE4oo8tmSbvgOpIx9hwhoF2s9j0YUqc9z5WDcrLuIl33wuxjH9d1akOqv6Jbd35TUycY
EQqcSWCRs1KWhT2dlakG8g64BkZHy8Jiv0tc+w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KBrCiroMzB0+0nGnzcg92RWUMI8YS6FFqefgILdK30KYEgKgP8lepDeGmJjACZ9cZn7KH7Y56rOZ
3EGE6Ha7toC7ZtEIAJyZd6DO+Tkv/f42zt5Fq4pNzMIbgRDlzMjiEiEnIYrgwku58DE8qUIJ3B9W
2jOTjFiJcu/375a6hszX+ndN4lQcDcn3FIRME2BcbfHSYXv/KeBn/ikpyK99TnHjwjYNKfVU3f1s
8U1dtN43mHPq1V/p7H2k4VgNO66O2TAxqrQLk7ET+p4au9Q8p9kGatxXPKHX45+4TZ+IvLas4jOs
5tUxRs9+HyKayPE8oEuQNe70m5jjSzYyt8AtuQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ljpgiVbqME/DDt2YubRDsiAaUvvd0luRm1Kyn0zXi5Oi5H+daHLhjdtMKs7UXT4hOyMtBPXvIHzO
r3gvIW1qQXCE9n01v8P7aUKDZWCDsuc8k1+1gf6LDZ6q1vDWNFnrEp12ZZOMWzKLj8BUfqSDayNa
cjbp1Qs1t9jdv8TVPvI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Df6Zc2J6DGn8PimsfKk8mQ+cpGIR1yrpcw5QseDEQJ4mE8uqo8cLRqffFGcLqTX/B1Vnkh1zy8xG
q2t9DwcdlrbPZvTj6RWyWp3oTBVBqAAriOEphkMP775Jrl1gYe/XFWYC8bce89oTVSt9VI8dqzVe
DMMbb0kX66Rabi08xQhUh9Jpf8v6we/rN6jUKKJDGvZaK3mRBx7yzs6QFFk/kzUVNg0OGyiWqITi
+ku5Dvvn4QhDeP6hu9E6Qjw0Q7i23BjvONLiQ5H9kbefLDIA8CwOsmjZ4gggEIYYgBpAIP0Fbt2j
o+kGZlTAq7P7yrZGTKNPS0BKI+JsCX8NJ0OWHg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dq7KDgd134IyGuCX1+RhFxXxAPr9vqLex10Nngq3feVDBCLFxJ/JXYEh7jTmUBXZQOdASytF08EH
SO+w1Is1cxQsti/FmNiauEPgjoRq5wsqNMWbCm4flZRONPn8J2PeWlbgolgFaQQEQVS4CCq7CsKj
/rDM/jgVtgnKCkbabtq/ivobGvVa/xOG7V3VkW7ouxzozBspI437g30tRNux4+AQ+Fn8AnBkcA2y
E06hXTFA/DYA5ZKTk1R7S5JbEOyKubRtpN0R9MTQdnZzwCLnNOO3Ew75HG+cqMmieZYwjdlN4Dwl
VUaDYFkm15DHeBfjYc+2SQhYtTsm2W/5dS4XpA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
n0tgq4ksINp3qlHZo+xzZp02ZRebmEfbQSmAYR5QnHzKP66an8M4PWceT5XdDyUVjCE/EizwTdbf
QuWGvWAUzK2vlH6tyTjueD1ciDCf/ZQYIkJ4C2JecxgWFTYaSQypFvlTM8QBki04Oz01A9PWO3kB
mACO8A2iTq0phck5PDlZjeNhJXnIzMwobdps5LD4cvI5SR3du3NpYL5ldH0kiPmM6UFNKDLbTHar
GOHNz4EZHJqR1IrywOoqeRjEZz6Px1IIv2pND5a1wmW9DZ00CTJvcbD0QOkYMU9wTMJ69KBTmRLb
lGwIsVhI+hrb0LMoR3CgpDxdqzPg8RRC/Xs/Gg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iizsTZ7BlZLRlST4PdmG3sKM6rVrdHYabIVf+gP9/3XpA82hfuJITXVlJMlAxq+ZEClqFJZI2mR4
UaBIvsd69we2BsXnKXW6dEbSshJKpGpcYviwuEzA54kNe9wHHWb1sLXCVyPgfgagwNTTYDBb0Fnv
yVS8t6ryx9k99uyj60GG7+prTu2WzYTfJdvInXmWAtoIEAEUtoPupqSCucIYRKrNKnkAfAvtFkyj
YIbz12ohIPnCP3TV0vR4bY2SL/xjCQGRU9WTaEChmeb7tRj9Jq5UCaKnUFZAoKVU4piN9esH7ahz
MMA+oO2fTAULZch5ULj1TPQJW2cZvfoQhFIT8Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9200)
`pragma protect data_block
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
7UjF+BjHEbj9Ip4EYq4/7HFdNJDtmJQ=
`pragma protect end_protected
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
