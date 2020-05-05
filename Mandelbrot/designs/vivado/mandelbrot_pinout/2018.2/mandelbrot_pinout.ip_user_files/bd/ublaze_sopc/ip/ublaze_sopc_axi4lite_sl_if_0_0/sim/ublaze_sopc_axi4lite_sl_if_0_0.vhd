-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: hepia.hesge.ch:user:axi4lite_sl_if:1.2
-- IP Revision: 18

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ublaze_sopc_axi4lite_sl_if_0_0 IS
  PORT (
    SAxiClkxCI : IN STD_LOGIC;
    SAxiResetxRANI : IN STD_LOGIC;
    SAxiAWAddrxDI : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SAxiAWValidxSI : IN STD_LOGIC;
    SAxiAWReadyxSO : OUT STD_LOGIC;
    SAxiWDataxDI : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SAxiWStrbxDI : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SAxiWValidxSI : IN STD_LOGIC;
    SAxiWReadyxSO : OUT STD_LOGIC;
    SAxiBRespxDO : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SAxiBValidxSO : OUT STD_LOGIC;
    SAxiBReadyxSI : IN STD_LOGIC;
    SAxiARAddrxDI : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SAxiARValidxSI : IN STD_LOGIC;
    SAxiARReadyxSO : OUT STD_LOGIC;
    SAxiRDataxDO : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SAxiRRespxDO : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SAxiRValidxSO : OUT STD_LOGIC;
    SAxiRReadyxSI : IN STD_LOGIC;
    WrDataxDO : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    WrAddrxDO : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    WrValidxSO : OUT STD_LOGIC;
    RdDataxDI : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    RdAddrxDO : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    RdValidxSO : OUT STD_LOGIC;
    InterruptxSI : IN STD_LOGIC;
    InterruptxSO : OUT STD_LOGIC
  );
END ublaze_sopc_axi4lite_sl_if_0_0;

ARCHITECTURE ublaze_sopc_axi4lite_sl_if_0_0_arch OF ublaze_sopc_axi4lite_sl_if_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF ublaze_sopc_axi4lite_sl_if_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT axi4lite_sl_if IS
    GENERIC (
      C_AXI4_ARADDR_SIZE : INTEGER;
      C_AXI4_RDATA_SIZE : INTEGER;
      C_AXI4_RRESP_SIZE : INTEGER;
      C_AXI4_AWADDR_SIZE : INTEGER;
      C_AXI4_WDATA_SIZE : INTEGER;
      C_AXI4_WSTRB_SIZE : INTEGER;
      C_AXI4_BRESP_SIZE : INTEGER;
      C_AXI4_DATA_SIZE : INTEGER;
      C_AXI4_ADDR_SIZE : INTEGER
    );
    PORT (
      SAxiClkxCI : IN STD_LOGIC;
      SAxiResetxRANI : IN STD_LOGIC;
      SAxiAWAddrxDI : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SAxiAWValidxSI : IN STD_LOGIC;
      SAxiAWReadyxSO : OUT STD_LOGIC;
      SAxiWDataxDI : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SAxiWStrbxDI : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SAxiWValidxSI : IN STD_LOGIC;
      SAxiWReadyxSO : OUT STD_LOGIC;
      SAxiBRespxDO : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SAxiBValidxSO : OUT STD_LOGIC;
      SAxiBReadyxSI : IN STD_LOGIC;
      SAxiARAddrxDI : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SAxiARValidxSI : IN STD_LOGIC;
      SAxiARReadyxSO : OUT STD_LOGIC;
      SAxiRDataxDO : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SAxiRRespxDO : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SAxiRValidxSO : OUT STD_LOGIC;
      SAxiRReadyxSI : IN STD_LOGIC;
      WrDataxDO : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      WrAddrxDO : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      WrValidxSO : OUT STD_LOGIC;
      RdDataxDI : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      RdAddrxDO : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      RdValidxSO : OUT STD_LOGIC;
      InterruptxSI : IN STD_LOGIC;
      InterruptxSO : OUT STD_LOGIC
    );
  END COMPONENT axi4lite_sl_if;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF ublaze_sopc_axi4lite_sl_if_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF InterruptxSO: SIGNAL IS "XIL_INTERFACENAME InterruptxSO, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF InterruptxSO: SIGNAL IS "xilinx.com:signal:interrupt:1.0 InterruptxSO INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF InterruptxSI: SIGNAL IS "XIL_INTERFACENAME InterruptxSI, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF InterruptxSI: SIGNAL IS "xilinx.com:signal:interrupt:1.0 InterruptxSI INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF SAxiRReadyxSI: SIGNAL IS "xilinx.com:interface:aximm:1.0 AxiLitexDIO RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SAxiRValidxSO: SIGNAL IS "xilinx.com:interface:aximm:1.0 AxiLitexDIO RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SAxiRRespxDO: SIGNAL IS "xilinx.com:interface:aximm:1.0 AxiLitexDIO RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SAxiRDataxDO: SIGNAL IS "xilinx.com:interface:aximm:1.0 AxiLitexDIO RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SAxiARReadyxSO: SIGNAL IS "xilinx.com:interface:aximm:1.0 AxiLitexDIO ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SAxiARValidxSI: SIGNAL IS "xilinx.com:interface:aximm:1.0 AxiLitexDIO ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SAxiARAddrxDI: SIGNAL IS "xilinx.com:interface:aximm:1.0 AxiLitexDIO ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SAxiBReadyxSI: SIGNAL IS "xilinx.com:interface:aximm:1.0 AxiLitexDIO BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SAxiBValidxSO: SIGNAL IS "xilinx.com:interface:aximm:1.0 AxiLitexDIO BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SAxiBRespxDO: SIGNAL IS "xilinx.com:interface:aximm:1.0 AxiLitexDIO BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SAxiWReadyxSO: SIGNAL IS "xilinx.com:interface:aximm:1.0 AxiLitexDIO WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SAxiWValidxSI: SIGNAL IS "xilinx.com:interface:aximm:1.0 AxiLitexDIO WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SAxiWStrbxDI: SIGNAL IS "xilinx.com:interface:aximm:1.0 AxiLitexDIO WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF SAxiWDataxDI: SIGNAL IS "xilinx.com:interface:aximm:1.0 AxiLitexDIO WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SAxiAWReadyxSO: SIGNAL IS "xilinx.com:interface:aximm:1.0 AxiLitexDIO AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SAxiAWValidxSI: SIGNAL IS "xilinx.com:interface:aximm:1.0 AxiLitexDIO AWVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SAxiAWAddrxDI: SIGNAL IS "XIL_INTERFACENAME AxiLitexDIO, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /ublaze_pll_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THR" & 
"EADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF SAxiAWAddrxDI: SIGNAL IS "xilinx.com:interface:aximm:1.0 AxiLitexDIO AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SAxiResetxRANI: SIGNAL IS "XIL_INTERFACENAME SAxiResetxRANI, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF SAxiResetxRANI: SIGNAL IS "xilinx.com:signal:reset:1.0 SAxiResetxRANI RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SAxiClkxCI: SIGNAL IS "XIL_INTERFACENAME SAxiClkxCI, ASSOCIATED_RESET InterruptxSO:InterruptxSI:SAxiResetxRANI, ASSOCIATED_BUSIF AxiLitexDIO, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /ublaze_pll_clk_out1";
  ATTRIBUTE X_INTERFACE_INFO OF SAxiClkxCI: SIGNAL IS "xilinx.com:signal:clock:1.0 SAxiClkxCI CLK";
BEGIN
  U0 : axi4lite_sl_if
    GENERIC MAP (
      C_AXI4_ARADDR_SIZE => 32,
      C_AXI4_RDATA_SIZE => 32,
      C_AXI4_RRESP_SIZE => 2,
      C_AXI4_AWADDR_SIZE => 32,
      C_AXI4_WDATA_SIZE => 32,
      C_AXI4_WSTRB_SIZE => 4,
      C_AXI4_BRESP_SIZE => 2,
      C_AXI4_DATA_SIZE => 32,
      C_AXI4_ADDR_SIZE => 12
    )
    PORT MAP (
      SAxiClkxCI => SAxiClkxCI,
      SAxiResetxRANI => SAxiResetxRANI,
      SAxiAWAddrxDI => SAxiAWAddrxDI,
      SAxiAWValidxSI => SAxiAWValidxSI,
      SAxiAWReadyxSO => SAxiAWReadyxSO,
      SAxiWDataxDI => SAxiWDataxDI,
      SAxiWStrbxDI => SAxiWStrbxDI,
      SAxiWValidxSI => SAxiWValidxSI,
      SAxiWReadyxSO => SAxiWReadyxSO,
      SAxiBRespxDO => SAxiBRespxDO,
      SAxiBValidxSO => SAxiBValidxSO,
      SAxiBReadyxSI => SAxiBReadyxSI,
      SAxiARAddrxDI => SAxiARAddrxDI,
      SAxiARValidxSI => SAxiARValidxSI,
      SAxiARReadyxSO => SAxiARReadyxSO,
      SAxiRDataxDO => SAxiRDataxDO,
      SAxiRRespxDO => SAxiRRespxDO,
      SAxiRValidxSO => SAxiRValidxSO,
      SAxiRReadyxSI => SAxiRReadyxSI,
      WrDataxDO => WrDataxDO,
      WrAddrxDO => WrAddrxDO,
      WrValidxSO => WrValidxSO,
      RdDataxDI => RdDataxDI,
      RdAddrxDO => RdAddrxDO,
      RdValidxSO => RdValidxSO,
      InterruptxSI => InterruptxSI,
      InterruptxSO => InterruptxSO
    );
END ublaze_sopc_axi4lite_sl_if_0_0_arch;
