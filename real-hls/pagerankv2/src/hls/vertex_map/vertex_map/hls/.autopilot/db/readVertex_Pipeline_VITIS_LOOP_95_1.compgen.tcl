# This script segment is generated automatically by AutoPilot

set name vertex_map_fdiv_32ns_32ns_32_12_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fdiv} IMPL {fabric} LATENCY 11 ALLOW_PRAGMA 1
}


set name vertex_map_uitofp_32ns_32_4_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {uitofp} IMPL {auto} LATENCY 3 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name v_size \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_size \
    op interface \
    ports { v_size { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name mem0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mem0 \
    op interface \
    ports { mem0 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name v_neighbours \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_neighbours \
    op interface \
    ports { v_neighbours { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name gmem_CHN_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_CHN_1 \
    op interface \
    ports { m_axi_gmem_CHN_1_0_AWVALID { O 1 bit } m_axi_gmem_CHN_1_0_AWREADY { I 1 bit } m_axi_gmem_CHN_1_0_AWADDR { O 64 vector } m_axi_gmem_CHN_1_0_AWID { O 1 vector } m_axi_gmem_CHN_1_0_AWLEN { O 32 vector } m_axi_gmem_CHN_1_0_AWSIZE { O 3 vector } m_axi_gmem_CHN_1_0_AWBURST { O 2 vector } m_axi_gmem_CHN_1_0_AWLOCK { O 2 vector } m_axi_gmem_CHN_1_0_AWCACHE { O 4 vector } m_axi_gmem_CHN_1_0_AWPROT { O 3 vector } m_axi_gmem_CHN_1_0_AWQOS { O 4 vector } m_axi_gmem_CHN_1_0_AWREGION { O 4 vector } m_axi_gmem_CHN_1_0_AWUSER { O 1 vector } m_axi_gmem_CHN_1_0_WVALID { O 1 bit } m_axi_gmem_CHN_1_0_WREADY { I 1 bit } m_axi_gmem_CHN_1_0_WDATA { O 64 vector } m_axi_gmem_CHN_1_0_WSTRB { O 8 vector } m_axi_gmem_CHN_1_0_WLAST { O 1 bit } m_axi_gmem_CHN_1_0_WID { O 1 vector } m_axi_gmem_CHN_1_0_WUSER { O 1 vector } m_axi_gmem_CHN_1_0_ARVALID { O 1 bit } m_axi_gmem_CHN_1_0_ARREADY { I 1 bit } m_axi_gmem_CHN_1_0_ARADDR { O 64 vector } m_axi_gmem_CHN_1_0_ARID { O 1 vector } m_axi_gmem_CHN_1_0_ARLEN { O 32 vector } m_axi_gmem_CHN_1_0_ARSIZE { O 3 vector } m_axi_gmem_CHN_1_0_ARBURST { O 2 vector } m_axi_gmem_CHN_1_0_ARLOCK { O 2 vector } m_axi_gmem_CHN_1_0_ARCACHE { O 4 vector } m_axi_gmem_CHN_1_0_ARPROT { O 3 vector } m_axi_gmem_CHN_1_0_ARQOS { O 4 vector } m_axi_gmem_CHN_1_0_ARREGION { O 4 vector } m_axi_gmem_CHN_1_0_ARUSER { O 1 vector } m_axi_gmem_CHN_1_0_RVALID { I 1 bit } m_axi_gmem_CHN_1_0_RREADY { O 1 bit } m_axi_gmem_CHN_1_0_RDATA { I 64 vector } m_axi_gmem_CHN_1_0_RLAST { I 1 bit } m_axi_gmem_CHN_1_0_RID { I 1 vector } m_axi_gmem_CHN_1_0_RFIFONUM { I 11 vector } m_axi_gmem_CHN_1_0_RUSER { I 1 vector } m_axi_gmem_CHN_1_0_RRESP { I 2 vector } m_axi_gmem_CHN_1_0_BVALID { I 1 bit } m_axi_gmem_CHN_1_0_BREADY { O 1 bit } m_axi_gmem_CHN_1_0_BRESP { I 2 vector } m_axi_gmem_CHN_1_0_BID { I 1 vector } m_axi_gmem_CHN_1_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name adj_list \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_adj_list \
    op interface \
    ports { adj_list { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name mem1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mem1 \
    op interface \
    ports { mem1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name Pcurr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Pcurr \
    op interface \
    ports { Pcurr { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name gmem_CHN_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_CHN_2 \
    op interface \
    ports { m_axi_gmem_CHN_2_0_AWVALID { O 1 bit } m_axi_gmem_CHN_2_0_AWREADY { I 1 bit } m_axi_gmem_CHN_2_0_AWADDR { O 64 vector } m_axi_gmem_CHN_2_0_AWID { O 1 vector } m_axi_gmem_CHN_2_0_AWLEN { O 32 vector } m_axi_gmem_CHN_2_0_AWSIZE { O 3 vector } m_axi_gmem_CHN_2_0_AWBURST { O 2 vector } m_axi_gmem_CHN_2_0_AWLOCK { O 2 vector } m_axi_gmem_CHN_2_0_AWCACHE { O 4 vector } m_axi_gmem_CHN_2_0_AWPROT { O 3 vector } m_axi_gmem_CHN_2_0_AWQOS { O 4 vector } m_axi_gmem_CHN_2_0_AWREGION { O 4 vector } m_axi_gmem_CHN_2_0_AWUSER { O 1 vector } m_axi_gmem_CHN_2_0_WVALID { O 1 bit } m_axi_gmem_CHN_2_0_WREADY { I 1 bit } m_axi_gmem_CHN_2_0_WDATA { O 64 vector } m_axi_gmem_CHN_2_0_WSTRB { O 8 vector } m_axi_gmem_CHN_2_0_WLAST { O 1 bit } m_axi_gmem_CHN_2_0_WID { O 1 vector } m_axi_gmem_CHN_2_0_WUSER { O 1 vector } m_axi_gmem_CHN_2_0_ARVALID { O 1 bit } m_axi_gmem_CHN_2_0_ARREADY { I 1 bit } m_axi_gmem_CHN_2_0_ARADDR { O 64 vector } m_axi_gmem_CHN_2_0_ARID { O 1 vector } m_axi_gmem_CHN_2_0_ARLEN { O 32 vector } m_axi_gmem_CHN_2_0_ARSIZE { O 3 vector } m_axi_gmem_CHN_2_0_ARBURST { O 2 vector } m_axi_gmem_CHN_2_0_ARLOCK { O 2 vector } m_axi_gmem_CHN_2_0_ARCACHE { O 4 vector } m_axi_gmem_CHN_2_0_ARPROT { O 3 vector } m_axi_gmem_CHN_2_0_ARQOS { O 4 vector } m_axi_gmem_CHN_2_0_ARREGION { O 4 vector } m_axi_gmem_CHN_2_0_ARUSER { O 1 vector } m_axi_gmem_CHN_2_0_RVALID { I 1 bit } m_axi_gmem_CHN_2_0_RREADY { O 1 bit } m_axi_gmem_CHN_2_0_RDATA { I 64 vector } m_axi_gmem_CHN_2_0_RLAST { I 1 bit } m_axi_gmem_CHN_2_0_RID { I 1 vector } m_axi_gmem_CHN_2_0_RFIFONUM { I 11 vector } m_axi_gmem_CHN_2_0_RUSER { I 1 vector } m_axi_gmem_CHN_2_0_RRESP { I 2 vector } m_axi_gmem_CHN_2_0_BVALID { I 1 bit } m_axi_gmem_CHN_2_0_BREADY { O 1 bit } m_axi_gmem_CHN_2_0_BRESP { I 2 vector } m_axi_gmem_CHN_2_0_BID { I 1 vector } m_axi_gmem_CHN_2_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name adder_in_feed_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_adder_in_feed_1 \
    op interface \
    ports { adder_in_feed_1_din { O 32 vector } adder_in_feed_1_full_n { I 1 bit } adder_in_feed_1_write { O 1 bit } adder_in_feed_1_num_data_valid { I 8 vector } adder_in_feed_1_fifo_cap { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName vertex_map_flow_control_loop_pipe_sequential_init_U
set CompName vertex_map_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix vertex_map_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


