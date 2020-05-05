// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue May  5 17:07:32 2020
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
PTcDyNogrhJzXC1yWVYiWxhbOeQKoa0e/Ub210jNDmlTOQEiEhRikikDybYV4cvqZSwbewwHm7Jw
hSTFyQrYA70GDIUKQdO2oF8I+f/E/oWiYkT7+1bL4ffswJZb/qwl+Av69+LiJvH02VFQU7IzgHaX
vDqHTJBnjwopnbutjD8SYjSQUIN/MsGxuwn+tq5iGG0wcT7OgwIAQA6a5p4LV1N/ComiQufPez14
qINoFrhr0ZIedWRFhiitCm/Fv2Cz01xTGknCQMGQBsBTcaiid7sAwh0yhB5I7Q8XsCYdD6DbNrXg
ddZYgXIDyauOaH/kp5STHLrVSZi2OP5qH2okTw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LFmUHJNT6iT41TEwp0uMCO4EX5OlSMfSMLI1HRIg5Dw9MQB3yAeVJ6cQwuU8mucDfXqGoMRXu6nt
z0TMneNdhZOuHkFCu2nT7D6QxqexDmNYLWBmAXahIwRiys94xwJPgTGv8gx/kQQHEL1Ivt+CRHgS
2aj8iDz2/+YkyhAE0WxKEGNJ29wUFc6IN2L9ybzBT64mMK9gQhy4FsQwb8OTHGuhMji7D5Cw461K
VrGmGqeykMPA4LYVCQH9bVpVGEzwhQxd0zDk6PRLxpggc/VnOa7oLqqnscJEceUjzu/cp878xfoW
/PLggBIRv5wwNLy++ECUx7w0PKQJgwtptDgjdA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9184)
`pragma protect data_block
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
jyzwpKsmUw==
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
