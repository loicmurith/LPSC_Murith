
################################################################
# This is a generated script based on design: ublaze_sopc
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source ublaze_sopc_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a200tsbg484-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name ublaze_sopc

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ./ips/vivado/ublaze/2018.2/ublaze.srcs/sources_1/bd

  # Use origin directory path location variable, if specified in the tcl shell
  if { [info exists ::origin_dir_loc] } {
     set origin_dir $::origin_dir_loc
  }

  set str_bd_folder [file normalize ${origin_dir}]
  set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

  # Check if remote design exists on disk
  if { [file exists $str_bd_filepath ] == 1 } {
     catch {common::send_msg_id "BD_TCL-110" "ERROR" "The remote BD file path <$str_bd_filepath> already exists!"}
     common::send_msg_id "BD_TCL-008" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0>."
     common::send_msg_id "BD_TCL-009" "INFO" "Also make sure there is no design <$design_name> existing in your current project."

     return 1
  }

  # Check if design exists in memory
  set list_existing_designs [get_bd_designs -quiet $design_name]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-111" "ERROR" "The design <$design_name> already exists in this project! Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-010" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Check if design exists on disk within project
  set list_existing_designs [get_files -quiet */${design_name}.bd]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-112" "ERROR" "The design <$design_name> already exists in this project at location:
    $list_existing_designs"}
     catch {common::send_msg_id "BD_TCL-113" "ERROR" "Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-011" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Now can create the remote BD
  # NOTE - usage of <-dir> will create <$str_bd_folder/$design_name/$design_name.bd>
  create_bd_design -dir $str_bd_folder $design_name
} else {

  # Create regular design
  if { [catch {create_bd_design $design_name} errmsg] } {
     common::send_msg_id "BD_TCL-012" "INFO" "Please set a different value to variable <design_name>."

     return 1
  }
}

current_bd_design $design_name

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set GpioxDO [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 GpioxDO ]

  # Create ports
  set InterruptxSI [ create_bd_port -dir I -type intr InterruptxSI ]
  set PllLockedxSO [ create_bd_port -dir O PllLockedxSO ]
  set RdAddrxDO [ create_bd_port -dir O -from 11 -to 0 RdAddrxDO ]
  set RdDataxDI [ create_bd_port -dir I -from 31 -to 0 RdDataxDI ]
  set RdValidxSO [ create_bd_port -dir O RdValidxSO ]
  set ResetxRNI [ create_bd_port -dir I -type rst ResetxRNI ]
  set SysClkxCI [ create_bd_port -dir I -type clk SysClkxCI ]
  set UserClkxCO [ create_bd_port -dir O -type clk UserClkxCO ]
  set WrAddrxDO [ create_bd_port -dir O -from 11 -to 0 WrAddrxDO ]
  set WrDataxDO [ create_bd_port -dir O -from 31 -to 0 WrDataxDO ]
  set WrValidxSO [ create_bd_port -dir O WrValidxSO ]

  # Create instance: axi_gpio, and set properties
  set axi_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {8} \
 ] $axi_gpio

  # Create instance: axi_intc, and set properties
  set axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 axi_intc ]

  # Create instance: axi_interconnect, and set properties
  set axi_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect ]
  set_property -dict [ list \
   CONFIG.NUM_MI {5} \
   CONFIG.NUM_SI {1} \
 ] $axi_interconnect

  # Create instance: axi_timer, and set properties
  set axi_timer [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer ]

  # Create instance: dlmb, and set properties
  set dlmb [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb ]

  # Create instance: dlmb_bram_ctrl, and set properties
  set dlmb_bram_ctrl [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_ctrl ]

  # Create instance: ilmb, and set properties
  set ilmb [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb ]

  # Create instance: ilmb_bram_ctrl, and set properties
  set ilmb_bram_ctrl [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_ctrl ]

  # Create instance: interrupt_xlconcat, and set properties
  set interrupt_xlconcat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 interrupt_xlconcat ]

  # Create instance: mandelbrot_regbank, and set properties
  set mandelbrot_regbank [ create_bd_cell -type ip -vlnv hepia.hesge.ch:user:axi4lite_sl_if:1.2 mandelbrot_regbank ]

  # Create instance: mdm, and set properties
  set mdm [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm ]
  set_property -dict [ list \
   CONFIG.C_USE_UART {1} \
 ] $mdm

  # Create instance: ublaze_bram, and set properties
  set ublaze_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 ublaze_bram ]
  set_property -dict [ list \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Use_RSTB_Pin {true} \
 ] $ublaze_bram

  # Create instance: ublaze_core, and set properties
  set ublaze_core [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:10.0 ublaze_core ]
  set_property -dict [ list \
   CONFIG.C_D_AXI {1} \
 ] $ublaze_core

  # Create instance: ublaze_pll, and set properties
  set ublaze_pll [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 ublaze_pll ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {151.636} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {50} \
   CONFIG.CLK_OUT1_PORT {UserClkxCO} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {20.000} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
 ] $ublaze_pll

  # Create instance: ublaze_sys_reset, and set properties
  set ublaze_sys_reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 ublaze_sys_reset ]

  # Create interface connections
  connect_bd_intf_net -intf_net Conn [get_bd_intf_pins dlmb/LMB_Sl_0] [get_bd_intf_pins dlmb_bram_ctrl/SLMB]
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins ilmb/LMB_Sl_0] [get_bd_intf_pins ilmb_bram_ctrl/SLMB]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi_interconnect/S00_AXI] [get_bd_intf_pins ublaze_core/M_AXI_DP]
  connect_bd_intf_net -intf_net axi_gpio_GPIO [get_bd_intf_ports GpioxDO] [get_bd_intf_pins axi_gpio/GPIO]
  connect_bd_intf_net -intf_net axi_intc_interrupt [get_bd_intf_pins axi_intc/interrupt] [get_bd_intf_pins ublaze_core/INTERRUPT]
  connect_bd_intf_net -intf_net axi_interconnect_M00_AXI [get_bd_intf_pins axi_interconnect/M00_AXI] [get_bd_intf_pins mdm/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_M01_AXI [get_bd_intf_pins axi_gpio/S_AXI] [get_bd_intf_pins axi_interconnect/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_M02_AXI [get_bd_intf_pins axi_interconnect/M02_AXI] [get_bd_intf_pins axi_timer/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_M03_AXI [get_bd_intf_pins axi_intc/s_axi] [get_bd_intf_pins axi_interconnect/M03_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_M04_AXI [get_bd_intf_pins axi_interconnect/M04_AXI] [get_bd_intf_pins mandelbrot_regbank/AxiLitexDIO]
  connect_bd_intf_net -intf_net dlmb_bram_ctrl_BRAM_PORT [get_bd_intf_pins dlmb_bram_ctrl/BRAM_PORT] [get_bd_intf_pins ublaze_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net ilmb_bram_ctrl_BRAM_PORT [get_bd_intf_pins ilmb_bram_ctrl/BRAM_PORT] [get_bd_intf_pins ublaze_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net mdm_MBDEBUG_0 [get_bd_intf_pins mdm/MBDEBUG_0] [get_bd_intf_pins ublaze_core/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_DLMB [get_bd_intf_pins dlmb/LMB_M] [get_bd_intf_pins ublaze_core/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ILMB [get_bd_intf_pins ilmb/LMB_M] [get_bd_intf_pins ublaze_core/ILMB]

  # Create port connections
  connect_bd_net -net ARESETN_1 [get_bd_pins axi_interconnect/ARESETN] [get_bd_pins ublaze_sys_reset/interconnect_aresetn]
  connect_bd_net -net InterruptxSI_0_1 [get_bd_ports InterruptxSI] [get_bd_pins mandelbrot_regbank/InterruptxSI]
  connect_bd_net -net RdDataxDI_0_1 [get_bd_ports RdDataxDI] [get_bd_pins mandelbrot_regbank/RdDataxDI]
  connect_bd_net -net S00_ARESETN_1 [get_bd_pins axi_gpio/s_axi_aresetn] [get_bd_pins axi_intc/s_axi_aresetn] [get_bd_pins axi_interconnect/M00_ARESETN] [get_bd_pins axi_interconnect/M01_ARESETN] [get_bd_pins axi_interconnect/M02_ARESETN] [get_bd_pins axi_interconnect/M03_ARESETN] [get_bd_pins axi_interconnect/M04_ARESETN] [get_bd_pins axi_interconnect/S00_ARESETN] [get_bd_pins axi_timer/s_axi_aresetn] [get_bd_pins mandelbrot_regbank/SAxiResetxRANI] [get_bd_pins mdm/S_AXI_ARESETN] [get_bd_pins ublaze_sys_reset/peripheral_aresetn]
  connect_bd_net -net axi4lite_sl_if_0_InterruptxSO [get_bd_pins interrupt_xlconcat/In1] [get_bd_pins mandelbrot_regbank/InterruptxSO]
  connect_bd_net -net axi4lite_sl_if_0_RdAddrxDO [get_bd_ports RdAddrxDO] [get_bd_pins mandelbrot_regbank/RdAddrxDO]
  connect_bd_net -net axi4lite_sl_if_0_RdValidxSO [get_bd_ports RdValidxSO] [get_bd_pins mandelbrot_regbank/RdValidxSO]
  connect_bd_net -net axi4lite_sl_if_0_WrAddrxDO [get_bd_ports WrAddrxDO] [get_bd_pins mandelbrot_regbank/WrAddrxDO]
  connect_bd_net -net axi4lite_sl_if_0_WrDataxDO [get_bd_ports WrDataxDO] [get_bd_pins mandelbrot_regbank/WrDataxDO]
  connect_bd_net -net axi4lite_sl_if_0_WrValidxSO [get_bd_ports WrValidxSO] [get_bd_pins mandelbrot_regbank/WrValidxSO]
  connect_bd_net -net axi_timer_interrupt [get_bd_pins axi_timer/interrupt] [get_bd_pins interrupt_xlconcat/In0]
  connect_bd_net -net clk_in1_0_1 [get_bd_ports SysClkxCI] [get_bd_pins ublaze_pll/clk_in1]
  connect_bd_net -net clk_wiz_0_UserClkxCO [get_bd_ports UserClkxCO] [get_bd_pins axi_gpio/s_axi_aclk] [get_bd_pins axi_intc/s_axi_aclk] [get_bd_pins axi_interconnect/ACLK] [get_bd_pins axi_interconnect/M00_ACLK] [get_bd_pins axi_interconnect/M01_ACLK] [get_bd_pins axi_interconnect/M02_ACLK] [get_bd_pins axi_interconnect/M03_ACLK] [get_bd_pins axi_interconnect/M04_ACLK] [get_bd_pins axi_interconnect/S00_ACLK] [get_bd_pins axi_timer/s_axi_aclk] [get_bd_pins dlmb/LMB_Clk] [get_bd_pins dlmb_bram_ctrl/LMB_Clk] [get_bd_pins ilmb/LMB_Clk] [get_bd_pins ilmb_bram_ctrl/LMB_Clk] [get_bd_pins mandelbrot_regbank/SAxiClkxCI] [get_bd_pins mdm/S_AXI_ACLK] [get_bd_pins ublaze_core/Clk] [get_bd_pins ublaze_pll/UserClkxCO] [get_bd_pins ublaze_sys_reset/slowest_sync_clk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_ports PllLockedxSO] [get_bd_pins ublaze_pll/locked] [get_bd_pins ublaze_sys_reset/dcm_locked]
  connect_bd_net -net interrupt_xlconcat_dout [get_bd_pins axi_intc/intr] [get_bd_pins interrupt_xlconcat/dout]
  connect_bd_net -net proc_sys_reset_0_bus_struct_reset [get_bd_pins dlmb/SYS_Rst] [get_bd_pins dlmb_bram_ctrl/LMB_Rst] [get_bd_pins ilmb/SYS_Rst] [get_bd_pins ilmb_bram_ctrl/LMB_Rst] [get_bd_pins ublaze_sys_reset/bus_struct_reset]
  connect_bd_net -net proc_sys_reset_0_mb_reset [get_bd_pins ublaze_core/Reset] [get_bd_pins ublaze_sys_reset/mb_reset]
  connect_bd_net -net resetn_0_1 [get_bd_ports ResetxRNI] [get_bd_pins ublaze_pll/resetn] [get_bd_pins ublaze_sys_reset/ext_reset_in]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces ublaze_core/Data] [get_bd_addr_segs axi_gpio/S_AXI/Reg] SEG_axi_gpio_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces ublaze_core/Data] [get_bd_addr_segs axi_intc/S_AXI/Reg] SEG_axi_intc_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41C00000 [get_bd_addr_spaces ublaze_core/Data] [get_bd_addr_segs axi_timer/S_AXI/Reg] SEG_axi_timer_Reg
  create_bd_addr_seg -range 0x00008000 -offset 0x00000000 [get_bd_addr_spaces ublaze_core/Data] [get_bd_addr_segs dlmb_bram_ctrl/SLMB/Mem] SEG_dlmb_bram_ctrl_Mem
  create_bd_addr_seg -range 0x00008000 -offset 0x00000000 [get_bd_addr_spaces ublaze_core/Instruction] [get_bd_addr_segs ilmb_bram_ctrl/SLMB/Mem] SEG_ilmb_bram_ctrl_Mem
  create_bd_addr_seg -range 0x00001000 -offset 0x44A00000 [get_bd_addr_spaces ublaze_core/Data] [get_bd_addr_segs mandelbrot_regbank/AxiLitexDIO/Reg] SEG_mandelbrot_regbank_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x41400000 [get_bd_addr_spaces ublaze_core/Data] [get_bd_addr_segs mdm/S_AXI/Reg] SEG_mdm_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


