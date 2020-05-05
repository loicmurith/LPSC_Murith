// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue May  5 17:07:33 2020
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [36:0]P;

  wire [17:0]A;
  wire [17:0]B;
  wire [35:0]C;
  wire CLK;
  wire [36:0]P;
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
  (* C_P_LSB = "0" *) 
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
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000000000011010100000000,000001100011010100000000" *) (* C_P_LSB = "0" *) 
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
  output [36:0]P;
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
  wire [36:0]P;
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
  (* C_P_LSB = "0" *) 
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
FOV0UoT+FxNeguTySdq7qQmRtzp4eJj2oElUGDjNKHGdy4Tv+EBAkd3tWn1WSv9+txfgex+1DjHo
QlyeYTOwLO7qNrr21zjiZdFqGyxUw4t551bB5xFV2NYZ7cDzAUzYteJ/11+dY5b2zA3/TK+9aESX
zYk1a547obd9DYHzk3eIIOnjk+6vtikbb6uo8gAyubFC06Azjm5mFMhaSBReQCaxwXfOEPrGZWAj
08QORNq4KN+bBp+w9ik1ho3Pdc9B7bhm2peQR8r4t+b5uBDGt0Iw42eD5AKh7rA+N49qtiR7yKTf
vovKJTdoO3pcJdn7plLcxDeEuULcO36/M+ueuQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
otJr+SzD+EWCHCWocWPBGFjSKBi0mXgGdvj6kR9pGOqyRnw+HuHO+oS49MVJXSUl0L8asDApBz+I
R+ppbw2HBelJ0KN2pL1sGfGZv/SP7SWChkwJ6fzQYdjm2lDGpMndDyS6py4+KRFxqBSckE1bjzY3
86jTmWPvalsSCBir1789r2EdbetXnrl6Wnl4qCgPpuwJeoBkbVs5DieTH5ouGm5YtofIBnnR/8NE
dpTsdPBe5HAa1o6MiElMaDm8Zdn2RLXkGUeI0JhxjlwO27Ui5hgEaXRG5fu6XcqKAFfXo25I/HrW
tL6Rh5Goee9G3tBN7VMG+J1Lx8Bv18pQO4EM8g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9168)
`pragma protect data_block
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
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
