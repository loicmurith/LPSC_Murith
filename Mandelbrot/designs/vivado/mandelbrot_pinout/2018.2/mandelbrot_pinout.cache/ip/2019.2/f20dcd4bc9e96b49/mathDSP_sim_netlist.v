// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Thu May 14 14:52:48 2020
// Host        : xilinx-vm running 64-bit unknown
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mathDSP_sim_netlist.v
// Design      : mathDSP
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mathDSP,xbip_dsp48_macro_v3_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_17,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_dsp48_macro_v3_0_17 U0
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
(* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_dsp48_macro_v3_0_17
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_dsp48_macro_v3_0_17_viv i_synth
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
hfTIEgaFNEzPQxQX7wrv+Jzc9YZu4O7imUEzIOHdaswu9zEwx/T1AN6benj5Nq6Dh0JzgFC96SMS
KEpkel/kUsVWFBUvRc01ngehJGke2Gv10GqPqDCjgkWDGkaxCTsEHGS1gSj/deQFCB8rJMzcfTVy
gnvpn4a+eCLAYbbznxoAmH01UzO8+4iVW4IIITfoXVNVdp7XxTdFwpVg4vWuuJY5w0S3EjxOZSzg
3eYKziqJhMKAiJw5gGn7aus6KoUqYS6aLyK7BoeRWwswbOquxBMgkRyO75p2rT7+us4IxvYJ10GK
X2WKL/NMrelmUi7RgP8ji2ixePVKuauJMzMhPQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T0TZxDAAAM3Y07ueId2XkitAepqoh218ay1OSfhiHTj3l6X9xvjFFadQPeXJUGM/1Dj8WHrxFRtG
SlxoCJt9TPq4WI0c3Dheg/i+bcDtZKtpODr6XDedrI/Z25lizQboAveIssKZ4DF+tdqyZlsqMMUj
K8eXZV4MTLimTJiauoyxpoBMwRac6LGNrRFxlVkKrk0huNh9G5pVgHDOaRaJ7582o4M3KBlPoEsk
gBwcXhNnj2rzc5wFknRE7pb1/UhKDdJhQW11Vc1YFl2zI3z29cdeXtZ+WRk4TL9wSg+V+FdXYLCC
lpr0rMsY8Vj/ysyz01S5if/90n1SvmKvzuJmZg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9184)
`pragma protect data_block
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
EYB/Ke7T6Q==
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
