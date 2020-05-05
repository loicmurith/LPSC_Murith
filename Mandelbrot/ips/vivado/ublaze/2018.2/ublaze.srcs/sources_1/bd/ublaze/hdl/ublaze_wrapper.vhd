--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
--Date        : Thu Feb 14 16:16:16 2019
--Host        : xps13-debian running 64-bit Debian GNU/Linux 9.7 (stretch)
--Command     : generate_target ublaze_wrapper.bd
--Design      : ublaze_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ublaze_wrapper is
  port (
    GpioxDO_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    InterruptxSI : in STD_LOGIC;
    PllLockedxSO : out STD_LOGIC;
    RdAddrxDO : out STD_LOGIC_VECTOR ( 11 downto 0 );
    RdDataxDI : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RdValidxSO : out STD_LOGIC;
    ResetxRNI : in STD_LOGIC;
    SysClkxCI : in STD_LOGIC;
    UserClkxCO : out STD_LOGIC;
    WrAddrxDO : out STD_LOGIC_VECTOR ( 11 downto 0 );
    WrDataxDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WrValidxSO : out STD_LOGIC
  );
end ublaze_wrapper;

architecture STRUCTURE of ublaze_wrapper is
  component ublaze is
  port (
    UserClkxCO : out STD_LOGIC;
    SysClkxCI : in STD_LOGIC;
    ResetxRNI : in STD_LOGIC;
    PllLockedxSO : out STD_LOGIC;
    WrDataxDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WrAddrxDO : out STD_LOGIC_VECTOR ( 11 downto 0 );
    WrValidxSO : out STD_LOGIC;
    RdAddrxDO : out STD_LOGIC_VECTOR ( 11 downto 0 );
    RdValidxSO : out STD_LOGIC;
    InterruptxSI : in STD_LOGIC;
    RdDataxDI : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GpioxDO_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component ublaze;
begin
ublaze_i: component ublaze
     port map (
      GpioxDO_tri_o(7 downto 0) => GpioxDO_tri_o(7 downto 0),
      InterruptxSI => InterruptxSI,
      PllLockedxSO => PllLockedxSO,
      RdAddrxDO(11 downto 0) => RdAddrxDO(11 downto 0),
      RdDataxDI(31 downto 0) => RdDataxDI(31 downto 0),
      RdValidxSO => RdValidxSO,
      ResetxRNI => ResetxRNI,
      SysClkxCI => SysClkxCI,
      UserClkxCO => UserClkxCO,
      WrAddrxDO(11 downto 0) => WrAddrxDO(11 downto 0),
      WrDataxDO(31 downto 0) => WrDataxDO(31 downto 0),
      WrValidxSO => WrValidxSO
    );
end STRUCTURE;
