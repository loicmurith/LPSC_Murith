// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Thu May 14 14:52:48 2020
// Host        : xilinx-vm running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.runs/mathDSP_synth_1/mathDSP_sim_netlist.v
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
EhVUkzJeNXP/1w/YN6IY496jDzHztGum4pW78Iwt24sTexTO2tJgPrj7mWGyMM8FX4AyLYLVbqOD
qdJdod8vsC9CINN58QsBzx/F1mur6pieO5fHLmHhdW/K9YpiqP/0PHaUchx+QWY0qkzdvkcLONvn
uEHJnQnEzrCGweApCAKgev6wFupf4Ui2XjgZJs2vtIYRXzO6Zd/5GI0VqVgapi/gyyvrUahN9+Ha
W183GoEKhBQ5g5WdW/Oc9WqqCJmEe/uOnliy5SkQuU+NrO0Qxf9sSYYRrr+SkHHpSwlACPlR1+01
+ReOKq3Ws3SCaqkfzKi5h9MJn2/aNYbzOii0fw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VgGdJ3oCt0EC7AMQOXScmebiEsdfAqzEQ0d/hoPb9KKiy9YMO5TICaftKdZ6aivLDH/GukU2IIkc
WbEGKYfWBHviRmGmZQfY0oMg9OroUvP161lxDODgJELHzdtHGotwcVP5S0hC+wfKanmci6ZJOcmN
PgRA8Zh2rE7KHRjnFSTWx8Oe6olRkPHrVVr+juIeRMwHTsgTVcQ+3uerYcS9LwwgD/fKTf4QJYBc
+PjlluGT5iUTS7ACrpPpjIuqYuQi2MTctLfjOdivy7ZQGadwMawVnBwsIeFCfLfS4U58TgcV9WTW
pHSd4vVkUwB2gknIXmnqXDYF3o0B6WOpZavYCQ==

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
