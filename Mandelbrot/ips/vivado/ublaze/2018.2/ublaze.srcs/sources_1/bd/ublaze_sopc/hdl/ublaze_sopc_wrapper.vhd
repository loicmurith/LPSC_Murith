--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
--Date        : Mon Feb 25 08:44:19 2019
--Host        : xps13-debian running 64-bit Debian GNU/Linux 9.8 (stretch)
--Command     : generate_target ublaze_sopc_wrapper.bd
--Design      : ublaze_sopc_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ublaze_sopc_wrapper is
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
end ublaze_sopc_wrapper;

architecture STRUCTURE of ublaze_sopc_wrapper is
  component ublaze_sopc is
  port (
    GpioxDO_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ResetxRNI : in STD_LOGIC;
    SysClkxCI : in STD_LOGIC;
    UserClkxCO : out STD_LOGIC;
    PllLockedxSO : out STD_LOGIC;
    WrDataxDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WrAddrxDO : out STD_LOGIC_VECTOR ( 11 downto 0 );
    WrValidxSO : out STD_LOGIC;
    RdDataxDI : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RdAddrxDO : out STD_LOGIC_VECTOR ( 11 downto 0 );
    RdValidxSO : out STD_LOGIC;
    InterruptxSI : in STD_LOGIC
  );
  end component ublaze_sopc;
begin
ublaze_sopc_i: component ublaze_sopc
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
