
################################################################
# This is a generated script based on design: ublaze
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
set scripts_vivado_version 2018.3
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
# source ublaze_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a200tsbg484-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name ublaze

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ./ips/vivado/ublaze/2018.3/ublaze.srcs/sources_1/bd

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
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {ResetxRNI} \
 ] $SysClkxCI
  set UserClkxCO [ create_bd_port -dir O -type clk UserClkxCO ]
  set WrAddrxDO [ create_bd_port -dir O -from 11 -to 0 WrAddrxDO ]
  set WrDataxDO [ create_bd_port -dir O -from 31 -to 0 WrDataxDO ]
  set WrValidxSO [ create_bd_port -dir O WrValidxSO ]

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {8} \
 ] $axi_gpio_0

  # Create instance: axi_intc_0, and set properties
  set axi_intc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 axi_intc_0 ]
  set_property -dict [ list \
   CONFIG.C_HAS_FAST {1} \
 ] $axi_intc_0

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {5} \
 ] $axi_interconnect_0

  # Create instance: axi_timer_0, and set properties
  set axi_timer_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_0 ]
  set_property -dict [ list \
   CONFIG.enable_timer2 {0} \
 ] $axi_timer_0

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN2_JITTER_PS {166.66} \
   CONFIG.CLKOUT1_JITTER {151.636} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {50} \
   CONFIG.CLK_OUT1_PORT {SysClkxCO} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {20.000} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
   CONFIG.SECONDARY_SOURCE {Single_ended_clock_capable_pin} \
   CONFIG.USE_INCLK_SWITCHOVER {false} \
 ] $clk_wiz_0

  # Create instance: dlmb, and set properties
  set dlmb [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb ]

  # Create instance: dlmb_bram_ctrl, and set properties
  set dlmb_bram_ctrl [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_ctrl ]

  # Create instance: ilmb, and set properties
  set ilmb [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb ]

  # Create instance: ilmb_bram_ctrl, and set properties
  set ilmb_bram_ctrl [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_ctrl ]

  # Create instance: mandelbrot_reg_bank, and set properties
  set mandelbrot_reg_bank [ create_bd_cell -type ip -vlnv hepia.hesge.ch:user:axi4lite_sl_if:1.1 mandelbrot_reg_bank ]

  # Create instance: mdm_0, and set properties
  set mdm_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_0 ]
  set_property -dict [ list \
   CONFIG.C_USE_UART {1} \
 ] $mdm_0

  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:11.0 microblaze_0 ]
  set_property -dict [ list \
   CONFIG.C_ADDR_TAG_BITS {0} \
   CONFIG.C_AREA_OPTIMIZED {0} \
   CONFIG.C_CACHE_BYTE_SIZE {8192} \
   CONFIG.C_DCACHE_ADDR_TAG {0} \
   CONFIG.C_DCACHE_BYTE_SIZE {8192} \
   CONFIG.C_DCACHE_USE_WRITEBACK {0} \
   CONFIG.C_DIV_ZERO_EXCEPTION {0} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_FPU_EXCEPTION {0} \
   CONFIG.C_ICACHE_LINE_LEN {4} \
   CONFIG.C_ICACHE_STREAMS {0} \
   CONFIG.C_ICACHE_VICTIMS {0} \
   CONFIG.C_ILL_OPCODE_EXCEPTION {0} \
   CONFIG.C_MMU_DTLB_SIZE {4} \
   CONFIG.C_MMU_ITLB_SIZE {2} \
   CONFIG.C_MMU_ZONES {16} \
   CONFIG.C_M_AXI_D_BUS_EXCEPTION {0} \
   CONFIG.C_M_AXI_I_BUS_EXCEPTION {0} \
   CONFIG.C_NUMBER_OF_PC_BRK {1} \
   CONFIG.C_NUMBER_OF_RD_ADDR_BRK {0} \
   CONFIG.C_NUMBER_OF_WR_ADDR_BRK {0} \
   CONFIG.C_OPCODE_0x0_ILLEGAL {0} \
   CONFIG.C_PVR {0} \
   CONFIG.C_UNALIGNED_EXCEPTIONS {0} \
   CONFIG.C_USE_BARREL {0} \
   CONFIG.C_USE_BRANCH_TARGET_CACHE {0} \
   CONFIG.C_USE_DCACHE {0} \
   CONFIG.C_USE_DIV {0} \
   CONFIG.C_USE_FPU {0} \
   CONFIG.C_USE_HW_MUL {0} \
   CONFIG.C_USE_ICACHE {0} \
   CONFIG.C_USE_MMU {0} \
   CONFIG.C_USE_MSR_INSTR {0} \
   CONFIG.C_USE_PCMP_INSTR {0} \
   CONFIG.C_USE_REORDER_INSTR {1} \
   CONFIG.G_TEMPLATE_LIST {0} \
   CONFIG.G_USE_EXCEPTIONS {0} \
 ] $microblaze_0

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

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

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {2} \
 ] $xlconcat_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn [get_bd_intf_pins ilmb/LMB_Sl_0] [get_bd_intf_pins ilmb_bram_ctrl/SLMB]
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins dlmb/LMB_Sl_0] [get_bd_intf_pins dlmb_bram_ctrl/SLMB]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO [get_bd_intf_ports GpioxDO] [get_bd_intf_pins axi_gpio_0/GPIO]
  connect_bd_intf_net -intf_net axi_intc_0_interrupt [get_bd_intf_pins axi_intc_0/interrupt] [get_bd_intf_pins microblaze_0/INTERRUPT]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins mdm_0/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI [get_bd_intf_pins axi_interconnect_0/M02_AXI] [get_bd_intf_pins axi_timer_0/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M03_AXI [get_bd_intf_pins axi_intc_0/s_axi] [get_bd_intf_pins axi_interconnect_0/M03_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M04_AXI [get_bd_intf_pins axi_interconnect_0/M04_AXI] [get_bd_intf_pins mandelbrot_reg_bank/SAxiLiteSlavexDIO]
  connect_bd_intf_net -intf_net dlmb_bram_ctrl_BRAM_PORT [get_bd_intf_pins dlmb_bram_ctrl/BRAM_PORT] [get_bd_intf_pins ublaze_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net ilmb_bram_ctrl_BRAM_PORT [get_bd_intf_pins ilmb_bram_ctrl/BRAM_PORT] [get_bd_intf_pins ublaze_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net mdm_0_MBDEBUG_0 [get_bd_intf_pins mdm_0/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_DLMB [get_bd_intf_pins dlmb/LMB_M] [get_bd_intf_pins microblaze_0/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ILMB [get_bd_intf_pins ilmb/LMB_M] [get_bd_intf_pins microblaze_0/ILMB]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_DP [get_bd_intf_pins axi_interconnect_0/S00_AXI] [get_bd_intf_pins microblaze_0/M_AXI_DP]

  # Create port connections
  connect_bd_net -net ARESETN_1 [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins proc_sys_reset_0/interconnect_aresetn]
  connect_bd_net -net InterruptxSI_1 [get_bd_ports InterruptxSI] [get_bd_pins mandelbrot_reg_bank/InterruptxSI]
  connect_bd_net -net RdDataxDI_1 [get_bd_ports RdDataxDI] [get_bd_pins mandelbrot_reg_bank/RdDataxDI]
  connect_bd_net -net S00_ARESETN_1 [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_intc_0/s_axi_aresetn] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/M02_ARESETN] [get_bd_pins axi_interconnect_0/M03_ARESETN] [get_bd_pins axi_interconnect_0/M04_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_timer_0/s_axi_aresetn] [get_bd_pins mandelbrot_reg_bank/SAxiResetxRANI] [get_bd_pins mdm_0/S_AXI_ARESETN] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
  connect_bd_net -net axi4lite_sl_if_0_InterruptxSO [get_bd_pins mandelbrot_reg_bank/InterruptxSO] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net axi4lite_sl_if_0_RdAddrxDO [get_bd_ports RdAddrxDO] [get_bd_pins mandelbrot_reg_bank/RdAddrxDO]
  connect_bd_net -net axi4lite_sl_if_0_RdValidxSO [get_bd_ports RdValidxSO] [get_bd_pins mandelbrot_reg_bank/RdValidxSO]
  connect_bd_net -net axi4lite_sl_if_0_WrAddrxDO [get_bd_ports WrAddrxDO] [get_bd_pins mandelbrot_reg_bank/WrAddrxDO]
  connect_bd_net -net axi4lite_sl_if_0_WrDataxDO [get_bd_ports WrDataxDO] [get_bd_pins mandelbrot_reg_bank/WrDataxDO]
  connect_bd_net -net axi4lite_sl_if_0_WrValidxSO [get_bd_ports WrValidxSO] [get_bd_pins mandelbrot_reg_bank/WrValidxSO]
  connect_bd_net -net axi_timer_0_interrupt [get_bd_pins axi_timer_0/interrupt] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net clk_in1_0_1 [get_bd_ports SysClkxCI] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net clk_wiz_0_SysClkxCO [get_bd_ports UserClkxCO] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_intc_0/processor_clk] [get_bd_pins axi_intc_0/s_axi_aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/M02_ACLK] [get_bd_pins axi_interconnect_0/M03_ACLK] [get_bd_pins axi_interconnect_0/M04_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_timer_0/s_axi_aclk] [get_bd_pins clk_wiz_0/SysClkxCO] [get_bd_pins dlmb/LMB_Clk] [get_bd_pins dlmb_bram_ctrl/LMB_Clk] [get_bd_pins ilmb/LMB_Clk] [get_bd_pins ilmb_bram_ctrl/LMB_Clk] [get_bd_pins mandelbrot_reg_bank/SAxiClkxCI] [get_bd_pins mdm_0/S_AXI_ACLK] [get_bd_pins microblaze_0/Clk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_ports PllLockedxSO] [get_bd_pins clk_wiz_0/locked] [get_bd_pins proc_sys_reset_0/dcm_locked]
  connect_bd_net -net mdm_0_Debug_SYS_Rst [get_bd_pins mdm_0/Debug_SYS_Rst] [get_bd_pins proc_sys_reset_0/mb_debug_sys_rst]
  connect_bd_net -net proc_sys_reset_0_bus_struct_reset [get_bd_pins dlmb/SYS_Rst] [get_bd_pins dlmb_bram_ctrl/LMB_Rst] [get_bd_pins ilmb/SYS_Rst] [get_bd_pins ilmb_bram_ctrl/LMB_Rst] [get_bd_pins proc_sys_reset_0/bus_struct_reset]
  connect_bd_net -net proc_sys_reset_0_mb_reset [get_bd_pins axi_intc_0/processor_rst] [get_bd_pins microblaze_0/Reset] [get_bd_pins proc_sys_reset_0/mb_reset]
  connect_bd_net -net resetn_0_1 [get_bd_ports ResetxRNI] [get_bd_pins clk_wiz_0/resetn] [get_bd_pins proc_sys_reset_0/ext_reset_in]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins axi_intc_0/intr] [get_bd_pins xlconcat_0/dout]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_intc_0/S_AXI/Reg] SEG_axi_intc_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41C00000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_timer_0/S_AXI/Reg] SEG_axi_timer_0_Reg
  create_bd_addr_seg -range 0x00008000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs dlmb_bram_ctrl/SLMB/Mem] SEG_dlmb_bram_ctrl_Mem
  create_bd_addr_seg -range 0x00008000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs ilmb_bram_ctrl/SLMB/Mem] SEG_ilmb_bram_ctrl_Mem
  create_bd_addr_seg -range 0x00001000 -offset 0x44A00000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs mandelbrot_reg_bank/SAxiLiteSlavexDIO/Reg] SEG_mandelbrot_reg_bank_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x41400000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs mdm_0/S_AXI/Reg] SEG_mdm_0_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


