# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
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
    id 28 \
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
    id 29 \
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
    id 30 \
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
    id 31 \
    name v_neighbours_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_neighbours_stream \
    op interface \
    ports { v_neighbours_stream_dout { I 64 vector } v_neighbours_stream_empty_n { I 1 bit } v_neighbours_stream_read { O 1 bit } v_neighbours_stream_num_data_valid { I 5 vector } v_neighbours_stream_fifo_cap { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name v_size_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_size_0 \
    op interface \
    ports { v_size_0_dout { I 32 vector } v_size_0_empty_n { I 1 bit } v_size_0_read { O 1 bit } v_size_0_num_data_valid { I 5 vector } v_size_0_fifo_cap { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name adj_lists \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_adj_lists \
    op interface \
    ports { adj_lists_dout { I 64 vector } adj_lists_empty_n { I 1 bit } adj_lists_read { O 1 bit } adj_lists_num_data_valid { I 5 vector } adj_lists_fifo_cap { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name Pcurrs \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Pcurrs \
    op interface \
    ports { Pcurrs_dout { I 64 vector } Pcurrs_empty_n { I 1 bit } Pcurrs_read { O 1 bit } Pcurrs_num_data_valid { I 5 vector } Pcurrs_fifo_cap { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
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


