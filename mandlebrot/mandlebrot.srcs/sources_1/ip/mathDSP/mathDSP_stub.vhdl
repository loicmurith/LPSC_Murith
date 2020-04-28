-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Tue Apr 28 12:02:14 2020
-- Host        : xilinx-vm running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/xilinx/LPSC_project/mandlebrot/mandlebrot.srcs/sources_1/ip/mathDSP/mathDSP_stub.vhdl
-- Design      : mathDSP
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mathDSP is
  Port ( 
    CLK : in STD_LOGIC;
    SEL : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 17 downto 0 );
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    C : in STD_LOGIC_VECTOR ( 35 downto 0 );
    P : out STD_LOGIC_VECTOR ( 35 downto 0 )
  );

end mathDSP;

architecture stub of mathDSP is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,SEL[0:0],A[17:0],B[17:0],C[35:0],P[35:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "xbip_dsp48_macro_v3_0_17,Vivado 2019.2";
begin
end;
