# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 1
set_param xicom.use_bs_reader 1
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a200tsbg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.cache/wt [current_project]
set_property parent.project_path /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_repo_paths /home/xilinx/LPSC_project/Mandelbrot [current_project]
update_ip_catalog
set_property ip_output_repo /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib /home/xilinx/LPSC_project/Mandelbrot/ips/hw/hdmi/src/hdl_pkg/hdmi_interface_pkg.vhd
read_vhdl -vhdl2008 -library xil_defaultlib {
  /home/xilinx/LPSC_project/Mandelbrot/ips/hw/hdmi/src/hdl/vga_stripes.vhd
  /home/xilinx/LPSC_project/Mandelbrot/ips/hw/hdmi/src/hdl/vga_controler.vhd
  /home/xilinx/LPSC_project/Mandelbrot/ips/hw/hdmi/src/hdl/vga.vhd
  /home/xilinx/LPSC_project/Mandelbrot/ips/hw/hdmi/src/hdl/tmds_encoder.vhd
  /home/xilinx/LPSC_project/Mandelbrot/ips/hw/hdmi/src/hdl/serializer_10_to_1.vhd
  /home/xilinx/LPSC_project/Mandelbrot/ips/hw/hdmi/src/hdl/vga_to_hdmi.vhd
  /home/xilinx/LPSC_project/Mandelbrot/ips/hw/hdmi/src/hdl/hdmi.vhd
  /home/xilinx/LPSC_project/Mandelbrot/ips/hw/image_generator/src/hdl/image_generator.vhd
  /home/xilinx/LPSC_project/Mandelbrot/designs/hw/mandelbrot_pinout/src/hdl/mandelbrot_pinout.vhd
}
read_ip -quiet /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.srcs/sources_1/ip/clk_vga_hdmi_1024x600/clk_vga_hdmi_1024x600.xci
set_property used_in_implementation false [get_files -all /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.srcs/sources_1/ip/clk_vga_hdmi_1024x600/clk_vga_hdmi_1024x600_board.xdc]
set_property used_in_implementation false [get_files -all /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.srcs/sources_1/ip/clk_vga_hdmi_1024x600/clk_vga_hdmi_1024x600.xdc]
set_property used_in_implementation false [get_files -all /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.srcs/sources_1/ip/clk_vga_hdmi_1024x600/clk_vga_hdmi_1024x600_ooc.xdc]

read_ip -quiet /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.srcs/sources_1/ip/clk_vga_hdmi_1024x768/clk_vga_hdmi_1024x768.xci
set_property used_in_implementation false [get_files -all /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.srcs/sources_1/ip/clk_vga_hdmi_1024x768/clk_vga_hdmi_1024x768_board.xdc]
set_property used_in_implementation false [get_files -all /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.srcs/sources_1/ip/clk_vga_hdmi_1024x768/clk_vga_hdmi_1024x768.xdc]
set_property used_in_implementation false [get_files -all /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.srcs/sources_1/ip/clk_vga_hdmi_1024x768/clk_vga_hdmi_1024x768_ooc.xdc]

read_ip -quiet /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.srcs/sources_1/ip/clk_vga_hdmi_640x480/clk_vga_hdmi_640x480.xci
set_property used_in_implementation false [get_files -all /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.srcs/sources_1/ip/clk_vga_hdmi_640x480/clk_vga_hdmi_640x480_board.xdc]
set_property used_in_implementation false [get_files -all /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.srcs/sources_1/ip/clk_vga_hdmi_640x480/clk_vga_hdmi_640x480.xdc]
set_property used_in_implementation false [get_files -all /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.srcs/sources_1/ip/clk_vga_hdmi_640x480/clk_vga_hdmi_640x480_ooc.xdc]

read_ip -quiet /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.srcs/sources_1/ip/clk_vga_hdmi_800x600/clk_vga_hdmi_800x600.xci
set_property used_in_implementation false [get_files -all /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.srcs/sources_1/ip/clk_vga_hdmi_800x600/clk_vga_hdmi_800x600_board.xdc]
set_property used_in_implementation false [get_files -all /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.srcs/sources_1/ip/clk_vga_hdmi_800x600/clk_vga_hdmi_800x600.xdc]
set_property used_in_implementation false [get_files -all /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.srcs/sources_1/ip/clk_vga_hdmi_800x600/clk_vga_hdmi_800x600_ooc.xdc]

read_ip -quiet /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.srcs/sources_1/ip/bram_video_memory_wauto_dauto_rdclk1_wrclk1/bram_video_memory_wauto_dauto_rdclk1_wrclk1.xci
set_property used_in_implementation false [get_files -all /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.srcs/sources_1/ip/bram_video_memory_wauto_dauto_rdclk1_wrclk1/bram_video_memory_wauto_dauto_rdclk1_wrclk1_ooc.xdc]

read_ip -quiet /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.srcs/sources_1/ip/clk_mandelbrot/clk_mandelbrot.xci
set_property used_in_implementation false [get_files -all /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.srcs/sources_1/ip/clk_mandelbrot/clk_mandelbrot_board.xdc]
set_property used_in_implementation false [get_files -all /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.srcs/sources_1/ip/clk_mandelbrot/clk_mandelbrot.xdc]
set_property used_in_implementation false [get_files -all /home/xilinx/LPSC_project/Mandelbrot/designs/vivado/mandelbrot_pinout/2018.2/mandelbrot_pinout.srcs/sources_1/ip/clk_mandelbrot/clk_mandelbrot_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/xilinx/LPSC_project/Mandelbrot/designs/hw/mandelbrot_pinout/src/constrs/mandelbrot_pinout.xdc
set_property used_in_implementation false [get_files /home/xilinx/LPSC_project/Mandelbrot/designs/hw/mandelbrot_pinout/src/constrs/mandelbrot_pinout.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top mandelbrot_pinout -part xc7a200tsbg484-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef mandelbrot_pinout.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file mandelbrot_pinout_utilization_synth.rpt -pb mandelbrot_pinout_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
