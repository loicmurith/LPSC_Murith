// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue Apr 28 12:02:14 2020
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
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000000000011010100000000,000001100011010100000000" *) (* C_P_LSB = "1" *) 
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
m/CjottyQrWINgU6vpIpt5tElVH20aVh0B0LMFtMnAW0UKXjfhRCu/DBWawZELyCEca5zjvvFPFf
mIoyCi/XQ2Jp4as355TWUJG0QgZu2J2B2n7QLJjXVtxVwLNuGgtH1z4gmncWIqcOkuNM7suQMiX/
ragpms5OJUA90S1dpYfBEDlgsZJi0kxWmRiJoU4bRH0S/0VXvFG6qXqyRBoeisaA8bJlyp81lBf7
e4Gg/bXenl2gLpR6phB3Ik8GRnRhY2IFMdI3qNcluUIm1cDGEN09gDxcnh3JxkhP4mw5ExH99kgH
hMQ1TRihngBDx9ctSHqLzkYUQpebhjBM+ciVKg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jMZgu5i3Sc206U6tluJ1X6cTn6sgcPCq5CzYKcR0fXKdFapIQBkrdqgfdKG0B59CCYp2PRmNRAEm
2Qs633081HZHkft1NgurvNlHCpg7VxlczI/ksHwiIQ1hvy404ITrXG/HWm4Yr+lZbWAnlaoVue/W
gs8DXGowAlPnZ9qP6thVis70x4BlaWCUPmFZX0/W9ct5GiU5Icd3zZ+vqEFeFm4P810R22P6sfln
JXb4ahGjjpddEfns94tt7MSSxxbxLysFRhW/a9zhWHdYZstwgulvdw7vetylBnjTw1auNlzqaP/J
DpOqjwPX2d/zxoLn9Hk1wVHny/m27BDiTUAykA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9216)
`pragma protect data_block
5f/Y4SrZZnTBKT9WzJ0L+20+1sViyPsZ1+/gwuoZvnHRIpdc55CfgmOhjgVbnFT15G1oQg4WLEAt
77Y7Fl2upM6aouEUabQmWAozE/FHnQcJClRp+tIJmFnDGFci4RXed1LbdNx4dUVUHLEyg+mRWVB/
6w4F3lBHYeQzwqU/ldOkPnZs9ngCLUekmk7lTEXALC49tVLH4679NqBugeyWk2ngEL+a+7FSsQml
TUh3mL7yqPFCx5KsPCaYFOFNgZL1y3Xjli+2nNSZmT7b33n+iYI7EQjGHA6icMxw2l6vVxmGPX/O
Isev721JYv7XpsGB/6IQ3xhML6t3BdXOwMo7YqDakDkD6IW4xEZeo9XblduYcjMd97SXw73ghmhL
9kYSnL2oWVE78LUP31wuveJTp6WWBuapr9yo7oyJ7EA/6qvXKP7b4OpD9Mk7LCHtWNnKPqAYVQA+
lmYZR1zlF8vulb0nQRtAsvL9efvgvSs4Zt19NLK7uHt7l0oxxZyYuQRdSZ7ljriQuu9d84axDanM
n9XbVF0iExyssP83dp5oTRqQ/egI8aBSBoGHQqwjVycI6jMkHIGy6CfH0VS5a/R70QBbQIGIc7Gz
SiE5X4PDf/6WYoag7FmCC+wtceMa8V1HwHPIEn9KwS30jTVrhq6j9pqNTNrh3ywKpYXIYXW9lSeV
h+ppQzXLzy9LC6B+f0XPrbMhbJwkQ0ISE9LPBlqtpsgFKZ6LZ2hRlEVB1b5GeGHSfwXM6W0TE6s1
PEIXTCs7Zl2PrJU3YeQWebTTO2/lJtot36L75CvCy5mw6WlAZowaiDxzWFuDhXWGy2lhhox/n9/C
YJG85NUTu7TI1sDcjO2C1Qi/Jj2Dc/VTrbXpIXR+f8QgYJ+tywt58H10SFcnh226+gi4oZeZE846
hJA9ghIUVwndLNmJFTD3jORM+ZktTzH6ZI0ih/lw9FT9vEqvcfVD+UlOWLEPYJwox6RXAM0o23zb
zipLHgqt46YjMM3zsaR9e1e7rRvjRc9HUUcFojpPGllibKUnd6whrgtDcqkvE8ODn8ecsIC3bMHV
wNRKU+OEuyINovydpypyryhDo1Hoss8CHSLy01o25k7MxeV8pawSuBck8FRR8YSHutcE+Uup+5c8
DX90KKea3BQDiXY4GD6AlQp+X726hyEPVPLHaxa7Zks41ataNFozQuXmw6m5nI4mI3CK/wZkVYmF
oFR84c0IZj9k3WhfxWqf+H80GphuaI4F8ADy1LF4FNV7pkvdDDjD/fC+HD17J/TEhetmssKjkU05
ji1hYox4qpxzN7bAnyOgIqwD9BOh67cTgoh/RlurxJ3zg6EzucLaaMCXgJ/FbmJAKt8kh9LoS/WZ
Ku/sxqrA2f/1HqkJbc9OSTh3wyt2Rh4LSVp+DpHliS1tPG1Bv3JAUeQV//W+D5CstTcyBk3+QqqL
Xa9XwM3aj8iPaTS3ILyDctoEE24v43LYMMWex1hIgeC6CSWQvOwvUhnqQECPh2bKbVRRhQpDy4L0
ansidaD3TrRc9UKrH1hrgMXVsHoSxM8Oy7GD64PYjO1vCJKrpKiy0RkOYw+e0/wK8eR5r+GAHm7I
0AHlMsYLaU2sJoGbyBqejakuxGMqiB4AoZsMtTpR/mObkbUt2pPqujwxLENJEZo+2QSxGpAmANe2
Q6zz9EHy8OjSr4naETAzBfyxSDjzkRkDCT6LTykclh6vnvQlw3HGwElXC6bvZ+wuEe1VamtlnHbg
6p3UvtIXvRv8+aUBMRKM34AstWbw1tei36glC3CKSHcIt2bXaTBSr73J0kQk1B9GoIfJbFjQcYSe
YCe/3Y+s8li938o9lfQDHDN0NZEjVMsRGti/k+EngukAdoMuW0Ulv1GNXJaiVp3ZiY6MyiTblLHF
r76WUGF0kWqNNfGtGAbljMSJmzzQ/mJxo43jmK/9P2zRFcIv6n4dg4VlGv5Ya4DdNx694eVavAkg
6BUAYAjrMl6+/CVNTiwn8sPHoVSKIVCosWhvaEu7/9dowAQb1NblUPN5Dwe6gPGoue1m3nDryBHd
9quXQRO7bm+33OYq/Y3c7xo4dAjhbdkBnWSaRrQaCrFLR3dT3Ys/HrJwkz1wndTZt0FEr9zia7Pw
7YIItcy8dG7bZ4OWHLnujLG7omif+BlNuLJ/1zFn86EsiLEzifwoIJXer9pVJzeVnFzEpoZOiINo
+H2brMd5sZpFjzlqbj/z6MpRBlLVvIenUz9GG7yDlwgM8m5c0p7VuC+Uq0T+U7LtT4i3aFWTCC7u
+ygxHxzmOgD6CmCvDDlcQxy8FE5NJgV7D8GmZk/1NTvQqrHu/fHfP9llYYxzuUkAizpNNelHlk3y
vN9r99J0zelDikn5oahcyMy0XV5pvHu9h1YPYQL189qGAxrYkm5EnK3sMUqRS7DUVTn6X4nfnDrw
p0X+GnKnkXN1lw+ssP8j8iZWB7xWRYaIBr/Xo4wpKZ1cpPW38XeMlCmw2qk4py+k3yn5BxHwSOWp
OZ6GE0APOLtvddESE+iIuoDEXMDCBJP7aBFSWCONgN9NY6M2jC1P/QlqQiuusiPNIVmA2vLDkelj
k5o1n+7rZeeZ5M0EGB6Q4yqgVpBlU+S7+3Of4u8d7lfa+w22MNeUBwT5H9tq4z9ZMYonFsxJR9J5
4UXX6qrXGH+9idMxeakZ7ULDS4oVWE0ofEEQ/Mra/Ur4mdHabg1Iu41+8COCKZteptpfuwqeE4Yq
ZyHqqjz0NteHebNJjL1sGlzPcHmswEzCTBK8eUD6Dv+A2PDN/E6nJABDuLFeiYLfybgvGXlFNI69
jXtz5vbq+Hc+v3+e/3iY54s9RoYEzl/LuaXoFXARvUt2T9MpxtHHXT7CdFM/BYv2hYxt6ZinVRWn
YHoxRY42fqoMruF+m/UI3nRKHCb7nrcBrDfQcowzVSRXeeR1rUUti1sZeKdyG8L5y4XclhChtY4R
lalkMQTgszZ52XHmZB742NPra2qnxfsYIXNP72tXU+Ph3b2LiuqNM+mmyKE3tDQiHxr1kAku8NOn
K0p8ZHpCISYS0RasI4iVbCi5d0kVC335h4A83E1CY0jb4SYhClX6TE7UsJZATwCg5ggJQVltN0ii
GhIoU0u9M0T8a7h/uJKMto7Mi1/3HNmGhQIDPS/7ID8+bIqLw+79+QDAYz4BJWZTelZZX9FzwjVs
gi6hr8VdIUvhbfTUKbze10YJr0ip6v2ThyAyGzZj+79mLtTEW6YUWA9yzJnjUUiej7yRdNWBIpqN
ZzLs6nE/BBTt2BkayN35/yBRTl3rdKb0e79HNNqVqJXvZU43bF917JiINtsF6xfvhaG7qE1t5IGv
WooOaCGSvp2YH2uqlsFJ5lsuVXGtuQkMKRqIk91v7wzM9BXryqJwchYEPMo0lzXS3gyfh+P0okgM
EJwsVHzRFe0jSzNmWWYoCaI8Q4WNV9ASxy/VuBAPsHwRmpM3xRkUq8uA0BuZ3ChyYxD+stGzm3zm
v2FKwQXoSaWekvw4e/OfWiPmZFqTBr3jtjyhEIsSo0+VAUjDPthSuDIVcyFX5O6IvXr66iltn0Kq
4ojCS7V4FSszDWfFkqD4EdIr/45k9aY8AUnK2Ovcm1KzjMF7IE29GwdeqJrW/9oxA2NQQgCtMuJ1
X7g73IbAUana4ZBMaPS3nl0XHr6m/1Y3956qXi16R4/eYpCjjBrRqr4FhdOdSNp1tCTOHM2NzfKp
GI9AKKr308zgE1xzqssrXFEEHgJaqiFkKtuuklvcN16ZWxIzNZHY2EVx9hmUn53hqTxSPzw3G1XH
/HES8AeMgoab7ctUaMg1AoI9SUYg7I8yjABO8TLwWMtokQF52b3yRHPHEwAZq7l+UgXabZZ9a9QL
oj5R5hMj8u2m/iH4jvnVI22qG3pGjDXvmvikXIBtPWZslLYv0JULNOT2v9HSxKFAs1gbI3epeDaS
G9cxdRwPADD8jV0tRVcQA7kuDVaO7EVsE7idBYvy3Prqudzq+EK0IA4Pvnxqs33Gcxtx+pBCqGNj
IePOTrwigYcg0aWoJUoG22B2uO3mgFd2SHKyKwQOqrllMEJAjb9/ssyWr9S16SKbckHGn9IX3XYA
CMVesmdXw8vsoObFu9Ny8inay0NvGvxETi9WqkgHPgy2ZJO1W3AI14S7ulldPk/5ebcx3BT7v61T
+FI3aPjw63F7cRQfMtzRM9KH5bu4sr0P9EC9x/Gc3e69InotpQWY8YP0p58zTlBnRY+waxlPUcVx
ReOhdrNxIyocl4pJMfFsk8OX0JdYRyBzelzwDHxXU+8ZIS7T+a9KYQPVfxH0MD6PyWt6PA8jNofa
0DBu+gfuD7FSWOjpY66KL8ZYIuHwlvA+pAH2Xs6TD3wHlp2MYNi2NX/p46QKit4ECclaOqEkNrGp
mZI2f6eULHIZhVqJueM17xUjZfUnO4tPxfOC2B4Z6pyQEpIfI2NZkFg097M6UQd1D+MDEE6poyHG
5Tg/aDsAHjrHe8jho+i3MOGMrOWvP2SQBa1p7HhSjPSxBhu4651mFAF/KzHZMZvuUfdrBKXKq6TP
8eBLcrCaN4NxiGVFy7H45LrgjDHM62KnciPi+Dfcht/O/52xNGwP91z2sKfONgTs54wYJrCxnn7S
+da6NwTNYXMqPnHk7higH2KAm6VB5hlwZuSblUyREQqKqBIyAW4oHVhPdeqVk/INNcGYnxzlUjB7
G9MivGmDrzNBr2Hu0Y+4O1pxQl7SJLXHrLo4r0JhYQDHEgObqFik3YKVWTzxqgUuO3J9GoARTJxK
K3/qcVE3eosWHhRJAx3c0dBeTX+ghLcwfDBCsgK7tKRXjbT0TkSuqrguajCzc6A4b7ooZZBFrnJm
ImJ+NBWAkDyUHuEDxA2pmxFv5AW/zz28zCEr6+f6hbfugpz2KDRSxzxlH94KZ18JWdIYyaS/HUy6
7dgBdFENpWdipx/4VT9UG042/oXAJUjSEhJ/VNXOuQNdYD1YTBQzvwawh2ZUa+4EG4Ih2C3HNOA0
I9PsHnIaxCStST4n3B9H8PM2Zo5xD5XIUyOqwKHBJH8+lwGTZQ1z6JOpHglvVJlFQ9qKl93BiNl2
9uc//ySnq9cRHKqF22L5azCryvs0vmTiT8rYtHqJZ9jblwygIt4g5/2yxu5BH0NS0CmmeMP7kbWd
rb5RC0zsrnUjzmknZlvomBQBw5sZBW0nt/2ocb9Ah7GkzZ01d0lmoqwT+z+ke9fDiSABUWl1K69x
iGrD+L6ZMax1FFc0i7GaEiKVFLA2aAarSNGMx7n2Ss/hsp35EjiM/28XgFfQgh/Ool+CoEFm5Q8S
fiYgEF3GvfgNBdIllpNyndN7rsI7wumY8pVcSrU+pgPXhRZ4CpMz8/YSt307sDqv8trtnKdHAvfc
PjLelDv27FBTcD56RP/tOE8VUJPgsuMzwUrszfn+9wOo4TJL1APfphCaPtXhDNExludfBKPL2yQX
n6pqecv9m5ABQG8hchRZOZgUbETcsVto/LPtIHj+w9ZqAp8ebGoUTAR4FGtjhcx5y4S3luZzyRou
+W5r6qOtqyNqz3JCEGYKOIJPzZJgIcgqd1Jh0BLx/THuO2pZaCMN0pmyaoV8TLpXBMH8ysuWlMWL
iz006N/Jj3256n+QW4pc8hjflp18BW1R39HAMOXMLGzaMHmTzN/JYUSk7r0H3COmXZKt059KJDaW
mDY+9LtDZpjiPaysH7f9/qZnt8xhU1pzgx1uqrd7bZ98UiB4jnfqMPOYWBNrvvJQhyksAeOoSoRN
euv3EXr8g3CL/zo5AKQ2AldmocIsxRlMgmkFxvYA4a3W2nmEQ2wcrUMFPXe3KBLyV3QZl9su66Xt
g5GX6rE2brgj/To2kXbs1HNEFv3fC+n16URyQi2vYUq8z7p8Rl8EqGbv85khXcpoftk+JEfTh8Si
LN9QHHevgjPBmYfRr/fcqtSV9+vBVPOv5ofOcLJEHx99jf4OZzVMs4INkP4o4RPkytkWHOZ0LOUr
MsVm+YqgB8usTsTLQfyHxqvPSNpFZ8Mdj+2TroEzzDRNyg1exnOLPLSuaWR9eYe2r/CLihlk2Amj
AA7/XmPEVj9uBY5eWO3eyYWzQ4wBY6ugdwbqex11R3hziELIAY4MvXudmnTP/dFiI0g7NXu0ruAA
dU7PHvBhx4d/rUJSjkgWo3Oj/QyKMptjB/m+6fXVpOeGEaaVKcR46LYgFMmhvysy+f0/zyWXggZz
mfdoancsUrzrMDQ77D6Dk142y2tuWnhsRdSq9S0+QWSIynfBSFrgbXnDPpeye9Lae/8aNhS+5Mbh
eHjGlh6H+0MMWAEWiPvlD3415Gn9XYEMEKMDUMYMpfGE8RLckyLNOJVZUjybNWAWJzGXDgEK4kk+
1tRljqEp7ImfkuS0ffSDXqfAMSPRJlm3cOzHwBeohlV8OAVjvsVlxwy8BPFscqBmx6qEi1SyGaTF
5Q+KfvJwNNI5cc2XYAgL+v6shqUwh39/jIc7/YKoLQCDsWBXksLnnf7jpczd3fzqpr2o8/VYWj6T
Y6xnGYhgl9GcR9NtYPTKZy1ot8L8JFcnEA3eGcxmIPI5xPdw9VO5SGuSSrV7wSD2lZ6e7KC3SjZZ
Ljk2gWZ4B8FJiugNWyYRQmubYzjJRDZ6PPvTqZLFPZyHC3kv4nURFCpEe0WrvPdyYinQTsqu5sSt
xSBi7qcgWUFz4GT9vuHhnoA4rst2IE4gE+3OBDyCx2Y29NsLRLKES8lKtXxikw1+BGnMs6GlculX
W5pziDZS/SoGg628r3BPiXv14HSxwlo6bfk7hL7isUBdgiPk3as/TwDCryJ8DEn7nqD6JOnnHnHp
MJIMzsJiclICr8+V1Q1niok0vOjxL5AuBOv3llmVPe4KIkL1vdjZB9vRw6Ttjv1cTWJpsJOYcMjT
0swCqIPSfcuPDFYhtLa4mtVyMVdSbw89zeyzgTmOLa2M8NL0g9JPCejPAJW5MN1jKSMqTqtcNQ/m
Ojpqwvpi69CynFbNUH+jSsnjiCheEecwHzVna3xRGVuObJ40W1z1+4cr7fNPIRSpm/UsePg3kqM1
Po6tVnofKoWh2YXM+VsSZoCsNemqfeyH+ef1/lm8nc42jSBklGvZ/iYrWzoIc6QoncmCv94+vZc7
FZCs3V38Tx1Jijf0Uj4IoVst6QrQUfDCI8h6/hJN0QBajktNYLJZVktMvmC7rxLYZUcWfQr1DKuQ
ZHUS2UAThZJzUeThk+Nv3/XjUSSXbLG9q1j8QETRHW4wPkUYf/m4KzSigBT20vp3UTaeTxaxR0Ha
yARYr7a0ukoC/xVbpeW9JNTZ+05UJ2c+v4O25ZgQmFnT5o7yIuOw4DVHiFxSBQvNQPR/Xxc8hUd7
z6v/pjuz/ZPkXxATLmovoEmR1suwMOK0RQkZzzi6EtfZvlMLga5KfdFmgtVX+/w8pWxBkEDgcFNb
TuO2bmG728QK/89ogQrwmzTcsP5kT5Afum58sAKXhZJHKekw12ieiOujzN5E2yh2wmPA/4OFnCAu
IAw38UdS6T2IPy3dd1OJi59tQoOQCDfax2QspOid1gJTpfn/yhwYJwsQCiKNS0I1c5+bDRtafdEp
F1qKq2IBBwhcGbovhZ483W+9zpTkePA3o0eUkuEo08PPcEtGrD8HZyrD9vB+DhM/47MF7xHhFy4L
sWLZgyu4TEa7XLc9R2LdlnwMxlMSkUpb/AI6iB/Krp+ZrGeVrWRj7HvIipeZZcV66RQMM/AriMm6
boLZ2i2EYX4i8EMeCOG6xh65pf0rHZlk70IJYYFeHIhoDUEJ30JdOx6ebLVivSbxoS732TIYNUmD
qGelF69KqJYruH0hOvW/tpnMZZhxzBJi15pqyZwRaSh658ZnbTqhDNPvDAr22CydBuL9KKc5UFWO
gYGxY6XM0ljGD1uh35zhtzseJTM7b334+88H/6AMW+2OYlpKz5c39KCFHzxYARHWYGpIW0bAizzZ
+H68zHtwi07mtZ6z77Cldmk/Vdf97aZflAzsnwBTd31VKUVhLR1FGL8FfPDsSYPgHBgbkah45EMe
DY5s00SIRN8AWFzx+8B4lR3bBwBlZQUgvgYjGepF3IKYqKMuP7pP12mnoTkFPEHcjcwCwnqbOcVP
eFsJ2h+EblxNxT1Xshk5qu1AhCIBBXbcXX9SQ7T7QfjRTH8mpwylMwqhc74JheFsIT8u0Fj1w/5q
D6F6PViAqKXkm9INPJVrAeD8j4mddlXVxHSb80GhibV4aEn1GYQLOVed+b7NMoeGQQmNJuXIOUat
yy0iavOOVtkPkm2VgFYsAuR0GNb1Ndg+FPJxymFGsZDtgf7ZW1tYRQaJ6EEys93E+7CR2/viDKYs
x7j7h8rcpqhkMMgi2umbWAbcQhWw4RkfxyP+5qU4tBuvUaKpDuQ32GI8sx2C18SV7nWpEte9sb9I
qs/ZWGbMENPBxvIlhp00bkGqRDKWmvmwnL1ch5kj2VZp7AR3HNF92H4qWG9/FE+eH23P07m+A/ut
Ycu8Fve/foKaAP7ej9Cx34pVnfHltcyzMjiCpF6uLSHAuPE5StN/NWMS9vscg+GibZ+XQ/G8fj1Y
iSSddsdWXnZZyF89UVBLEEewkaycQ6NXGnp7TAs6QAeEys/rfRbx5XH4I4qHkrcBty0E6FZg18Ux
r59dZdul6sFrVdLEKAL8nACNxArc8XGuy5LMvJIyQDyFj0+0G/zptCfkfQDk9u5zp69ApiBmnwKO
bKabf7N4a3VSd30N3thMjt9UPGOPV8ZB2U9g9tLD3WPiG0PMB1jV11TYFbWDgXiIeQuE5LlTUyFF
2TWRbXdOnpGOUxtdAkBtxQq9mQZSMaOUkQUDq948Stf/J+YJgT9rbsDl+MqGdGRKNQL9e/MmvpOy
WlW7qL4fTb3MYoscj7SjxAkgUPQg32IDKQV9olaO4ks805A5ZWf4Oz5k2qWooQ48woHaSoxFFcBq
dpNXdfSTSh7PWMx/+wwIFaB75MzRkgT+PxsTO5nx/O236IqMinBzWBUyhdsOol34kmLh0if/1Yzd
BaRv3VqY8NIQ9v0NJWABrPQTfzDsXujtdV4K8qdeAlsPtLU9r2YN2IXhBT3NtckvQHMvFuq4g10o
OpnT+Ymq7Tc1a3jRABT+T9sYuxw2KmuuoGW+Xcpuc7tk2SHu8xie3xTFdVyCXLFPB2q+5iP5fniV
Hy7PvmI5ASJ6DM7QBMXRQCMcOU/AOoRG71c0do8QcQMlAWkfGFODBSCtenPhOE0OPpNfqZj1mU6H
y6Cgf2vCZ4iq4Osq2tJdEkoLt0yFHFNCHMtMYtXYrNO3Gpq5sjfuMcnzT8HYUJ17vsB+5/IjC5TP
J+scq/JGxa7BnMLVY29u5T3/s3cqAJlZqgSg0OQBXPa4KR6TnUFmsDBkrmouk1CoVXAXNof1F9Xx
jbtzeQpJz/n6LUKeWYAhsrinkZs0BtQ/azwdbZmpA8PkCNT00Ijqs5rKGjMp/YnvhHUqMTkkwy+x
QID2/C2ZvOoWZDX2tciLnx7g/2Fn3j/lMHMgePYM9wDNoyhxJLt4/BkmocZchRt7aNog3Qlp0qpt
NE68kiugBZ/YZ7mIs9iEyrpl6BUl9EYncT5RUpvtlMHOHiVrP6h8qBriX+qsLa4BKNpbNoyMrbw0
v9MxB83BS4wr7SmFBW7/TtZDCcXNGiCHB4Nb0BRwj/3qJNMQ4UoDNd+dSi5U6uV/stcnLWmCVQj4
kH0ZbCrug74ENpSYFH1TpoICLQJN7+Ef/VuJL01zRlQvkolydFn7TtkNG7TIxBvAbwYdOWH+Lx3M
1q2/gY7t4srXtg0riAb3/RbiXTMtzIaAq1ieUDJuaB2OPjaznNOE+YFgvrHeV0W8KUdhYjbbxXz6
RupmXlC98OYq9EnPYILqiEy/i3P1JKScv+OobGcQ+wgUCa6RnQHrCM54Kdpmoofbd63M/e83/LL0
I8saKYJPxAy11hvwMNeXiYesGypSFCNUCyBckphx9uKJs26EpI9MZCR8Ja7nEvaCRBvk17K6fc8O
5ALUk7Qo3LGq0ARHvIv+CXr388sh1BnDvzeeHt75p7YlAM3qruYa4wG+PrB1O6Z8nAFqC5E0uUrO
RqdJdERsEh17V92RWGRwULYtffLSpPOWtdoIquuSJBDcw9ZEEJGnTM3pjO2DlqgYeG++8ljPi5UG
g8SfH7JU8gpmItgl6189FfjrJ3cdilgJ9/T4ULBrPItkYfavgtt+m0LjwlXBSuvFIA6RdPSmnJXG
KPUKo5982D3MbbMetcLwmO9Ae68ZDB0AErZKU1tD+XK1/m0sF5nLUXE17SN17iQ0KhOCBvh4G/xo
zag59L9hlYiDEFD4SaVh8jGUN5Fcz+CZWqy8VH77/D1RV/EB76VmRWx7H9ac7snv8t8iA39X6hun
2Bnst2jkHbwPmx5hdXCM7yZd3VlPeC/yVZYmYqWHKgBrlLMMZWhte7Pg30dkhPwi3hSHiRdtBmz7
5Agdg1wnyfB8ciIdAWMoa4IvKuMtTkYBWT12ax1hgUAMzmvJAfZf+sER5JbkN3nvWnsSCqyIZvqM
F5Oj7ImjHMGYwgKejPW7ycvFwpFk7RlEC/ORyUsbz7Y2ExAxfHGBsAvqeVj4A/6ieyIGa9ahpOY2
wSP8YTXpXRBWiJu+R6AlyYhT6qYYotvAPh3+vwU4xh+CxBsqQxTa5JUCoq5Odi3dMHtDM2tinJ/f
9Lw5a+/sUn1o8ukFbL2jv6zPJMFouxbr9KRVKbtGbombXAzA3m4+hlkt5IMuipS8PgrH+uW67A2Q
FQuIB6g+Z/IChgKGBx4BDKgYws2XG82Aa/GXKAhYp/KSrhoYm+d5hKuhxttBOiQr0TQk2VhVJqf5
KjtX+q9dvMlaH6c3ShZm97vwne3+lNl3aPLkQztyKx+OeiS5cHh4gRNeT6737QpDPUmztcFReJXX
xGrqxm1HKqCEwkxd40AwCwOzZjx4oSrgN5huHmWt+dux+zL7OFuUra56UgZZAaQ6V6w9q/1y+dy0
06+Y5S+hJXwsKsx1DR666c47GAaAWhh1Xx0ODJuSaE2C5Hsscs+viPFoQA/dM0qyaacZEZS11/hc
pulZ3Ls0574afvYIYwVZ1jFrVL2QKUmAc0OmA0ona4fiYATn+7W0cWm3D40qSxAtSTkvAQZWDplf
xQcootm+82SFQDGJ1iQjulBjCtOQcqMtwmzppQyQHPoI/y1S2tBy9ccBRaLNKV0fvmKFrsJh9iNX
bisL+sIUbGUb9btDzvps33we0cWoW+J4F37+47YJ3Ef8jMNIBmrHIOJOs8yN20kZMz1XRRtnPCfF
tZr5ehFMFAghpC7uXNSCWbU/Zj4RRUkbZ+Ex5CWkr1YViIZdKLJX3VyW+tZCnRH/50TPk04JOAPH
I3EX9QSJ5FRaeBaahcu0qNSt4LqfFlr407K0fe7lBWY5cVYEYxLk+x4FXVd4dKOwinlZBuLrq330
pqr1xogbC8vCWzk2XblBceqiu/U7IZkRLq/orDo7VuCRBk68S5aWxo5b+I1KpqU27s96Jr0I2psQ
UH7YuMpidCRxcmE4ZprKApuh9plpMGhhgzcEJ2JszUEAzFUn0lJym36Eigor4ZfG+gprLr2ToLVY
tNhK8JqxlOqEo0aI4U8ZhYioD2MjFRdKRHaZBJP+XCP0YGAr9ijYj2+O07CRA7AzjV3P+5oJdk78
43pcNkR61ypkdM62yPGrmR9E9klIOVyiIwW9xmneSrfqT8I4/1G/kvvZOkMg1K5pqw2Q/XaXCacI
LigQk2mndrz1pI56eZwMZ2fwr/VpuJfHF9Fj7Zx5Ao1cPzaFmZxMXAOYHFif8XJcD/P+Rcc4KMf/
VkvXaAQx//xAuVNPCyqfuS4S2RUyhGjjsQW5g98rPKuEBJuAj9clSTBOa3eN5BGBIYPZm9VARbNJ
gtpyGihgKP3HM6pks6/lMR7VjZaAg9O4v04/PVwkQM833WAVy13J5mRJ49QZfNLfkHj+J64+BEYu
t/d5aSM7R8xghgI+Y+jaKBZnVOamPgOXPylk93yygwlHj3Wg7BHu4nMKx205/6fS0IMR1C05kqk4
touXKkU4m2N6ZuSiHRGOsApjApT+Q8BBCp2/6VjrwFl0w6fOVji8uu1Xb7xbIIZ5VZ6xHq1ZiycZ
Ytf6AaD4fHKGUmcSr4Sj72X3f5OnoaKrJKDgXpeieFtGlKWxIouwySQgWrABJuJ0hqeApk/arayZ
/cLEKFuAhOzXk3671jN7d5fG/CEBdIue0WIxMbeqd+zv5bSp+IE+
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
