# This script segment is generated automatically by AutoPilot

set name vertex_map_faddfsub_32ns_32ns_32_7_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fsub} IMPL {fulldsp} LATENCY 6 ALLOW_PRAGMA 1
}


set name vertex_map_fmul_32ns_32ns_32_4_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 3 ALLOW_PRAGMA 1
}


set name vertex_map_fcmp_32ns_32ns_1_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fcmp} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 68 \
    name argOut \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { argOut_TDATA { O 64 vector } argOut_TVALID { O 1 bit } argOut_TREADY { I 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'argOut'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name gmem_CHN_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_CHN_5 \
    op interface \
    ports { m_axi_gmem_CHN_5_0_AWVALID { O 1 bit } m_axi_gmem_CHN_5_0_AWREADY { I 1 bit } m_axi_gmem_CHN_5_0_AWADDR { O 64 vector } m_axi_gmem_CHN_5_0_AWID { O 1 vector } m_axi_gmem_CHN_5_0_AWLEN { O 32 vector } m_axi_gmem_CHN_5_0_AWSIZE { O 3 vector } m_axi_gmem_CHN_5_0_AWBURST { O 2 vector } m_axi_gmem_CHN_5_0_AWLOCK { O 2 vector } m_axi_gmem_CHN_5_0_AWCACHE { O 4 vector } m_axi_gmem_CHN_5_0_AWPROT { O 3 vector } m_axi_gmem_CHN_5_0_AWQOS { O 4 vector } m_axi_gmem_CHN_5_0_AWREGION { O 4 vector } m_axi_gmem_CHN_5_0_AWUSER { O 1 vector } m_axi_gmem_CHN_5_0_WVALID { O 1 bit } m_axi_gmem_CHN_5_0_WREADY { I 1 bit } m_axi_gmem_CHN_5_0_WDATA { O 64 vector } m_axi_gmem_CHN_5_0_WSTRB { O 8 vector } m_axi_gmem_CHN_5_0_WLAST { O 1 bit } m_axi_gmem_CHN_5_0_WID { O 1 vector } m_axi_gmem_CHN_5_0_WUSER { O 1 vector } m_axi_gmem_CHN_5_0_ARVALID { O 1 bit } m_axi_gmem_CHN_5_0_ARREADY { I 1 bit } m_axi_gmem_CHN_5_0_ARADDR { O 64 vector } m_axi_gmem_CHN_5_0_ARID { O 1 vector } m_axi_gmem_CHN_5_0_ARLEN { O 32 vector } m_axi_gmem_CHN_5_0_ARSIZE { O 3 vector } m_axi_gmem_CHN_5_0_ARBURST { O 2 vector } m_axi_gmem_CHN_5_0_ARLOCK { O 2 vector } m_axi_gmem_CHN_5_0_ARCACHE { O 4 vector } m_axi_gmem_CHN_5_0_ARPROT { O 3 vector } m_axi_gmem_CHN_5_0_ARQOS { O 4 vector } m_axi_gmem_CHN_5_0_ARREGION { O 4 vector } m_axi_gmem_CHN_5_0_ARUSER { O 1 vector } m_axi_gmem_CHN_5_0_RVALID { I 1 bit } m_axi_gmem_CHN_5_0_RREADY { O 1 bit } m_axi_gmem_CHN_5_0_RDATA { I 64 vector } m_axi_gmem_CHN_5_0_RLAST { I 1 bit } m_axi_gmem_CHN_5_0_RID { I 1 vector } m_axi_gmem_CHN_5_0_RFIFONUM { I 11 vector } m_axi_gmem_CHN_5_0_RUSER { I 1 vector } m_axi_gmem_CHN_5_0_RRESP { I 2 vector } m_axi_gmem_CHN_5_0_BVALID { I 1 bit } m_axi_gmem_CHN_5_0_BREADY { O 1 bit } m_axi_gmem_CHN_5_0_BRESP { I 2 vector } m_axi_gmem_CHN_5_0_BID { I 1 vector } m_axi_gmem_CHN_5_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name mem \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mem \
    op interface \
    ports { mem_dout { I 64 vector } mem_empty_n { I 1 bit } mem_read { O 1 bit } mem_num_data_valid { I 4 vector } mem_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name taskToWrite \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_taskToWrite \
    op interface \
    ports { taskToWrite_dout { I 480 vector } taskToWrite_empty_n { I 1 bit } taskToWrite_read { O 1 bit } taskToWrite_num_data_valid { I 5 vector } taskToWrite_fifo_cap { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name sums_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sums_stream \
    op interface \
    ports { sums_stream_dout { I 32 vector } sums_stream_empty_n { I 1 bit } sums_stream_read { O 1 bit } sums_stream_num_data_valid { I 5 vector } sums_stream_fifo_cap { I 5 vector } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vertex_map_regslice_both BINDTYPE {interface} TYPE {adapter} IMPL {reg_slice}
}


