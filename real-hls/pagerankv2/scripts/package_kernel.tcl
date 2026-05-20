
#/*
# Copyright (C) 2023, Advanced Micro Devices, Inc. All rights reserved.
# SPDX-License-Identifier: X11
#*/

set path_to_hdl "./src/rtl/${krnl_name}"
set path_to_packaged "./packaged/${suffix}"
set path_to_tmp_project "./packaged/tmp_${suffix}"

create_project -force kernel_pack $path_to_tmp_project

# Add RTL sources first.
set rtl_files [glob -nocomplain $path_to_hdl/*.v $path_to_hdl/*.sv]
if {[llength $rtl_files] > 0} {
  add_files -norecurse $rtl_files
}

# Source any HLS-generated IP creation scripts (e.g. *_ip.tcl) so Vivado
# creates corresponding .xci IPs used by wrapper RTL modules.
set ip_tcl_files [glob -nocomplain $path_to_hdl/*_ip.tcl]
foreach ip_tcl $ip_tcl_files {
  puts "INFO: Sourcing IP script $ip_tcl"
  source -notrace $ip_tcl
}

# Ensure generated IP definitions are in the project sources before packaging.
set xci_files {}
foreach ip_obj [get_ips] {
  set ip_file [get_property IP_FILE $ip_obj]
  if {$ip_file ne ""} {
    lappend xci_files $ip_file
  }
}
if {[llength $xci_files] > 0} {
  add_files -norecurse $xci_files
}

update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
ipx::package_project -root_dir $path_to_packaged -vendor epfl.ch -library hardcilk -taxonomy /KernelIP -import_files -set_current false
ipx::unload_core $path_to_packaged/component.xml
ipx::edit_ip_in_project -upgrade true -name tmp_edit_project -directory $path_to_packaged $path_to_packaged/component.xml

set_property core_revision 2 [ipx::current_core]
foreach up [ipx::get_user_parameters] {
  ipx::remove_user_parameter [get_property NAME $up] [ipx::current_core]
}
set_property sdx_kernel true [ipx::current_core]
set_property sdx_kernel_type rtl [ipx::current_core]
ipx::create_xgui_files [ipx::current_core]

ipx::associate_bus_interfaces -busif m_axi_00 -clock clock [ipx::current_core]
ipx::associate_bus_interfaces -busif m_axi_01 -clock clock [ipx::current_core]
ipx::associate_bus_interfaces -busif m_axi_02 -clock clock [ipx::current_core]
ipx::associate_bus_interfaces -busif m_axi_03 -clock clock [ipx::current_core]
ipx::associate_bus_interfaces -busif m_axi_04 -clock clock [ipx::current_core]
ipx::associate_bus_interfaces -busif m_axi_05 -clock clock [ipx::current_core]
ipx::associate_bus_interfaces -busif m_axi_06 -clock clock [ipx::current_core]
ipx::associate_bus_interfaces -busif s_axil_mgmt_hardcilk -clock clock [ipx::current_core]
ipx::associate_bus_interfaces -busif vertex_map_0_s_axi_control -clock clock [ipx::current_core]

# Associate all AXI-Stream interfaces with the clock
foreach bus_if [ipx::get_bus_interfaces -of_objects [ipx::current_core]] {
    set bus_type [get_property BUS_TYPE_VLNV $bus_if]
    if {[string match "*axis*" $bus_type]} {
        set bus_name [get_property NAME $bus_if]
        puts "Associating AXI-Stream interface $bus_name with clock"
        ipx::associate_bus_interfaces -busif $bus_name -clock clock [ipx::current_core]
    }
}

ipx::associate_bus_interfaces -clock clock -reset reset_n [ipx::current_core]


set_property xpm_libraries {XPM_CDC XPM_MEMORY XPM_FIFO} [ipx::current_core]
set_property supported_families { } [ipx::current_core]
set_property auto_family_support_level level_2 [ipx::current_core]
ipx::update_checksums [ipx::current_core]
ipx::save_core [ipx::current_core]
close_project -delete
