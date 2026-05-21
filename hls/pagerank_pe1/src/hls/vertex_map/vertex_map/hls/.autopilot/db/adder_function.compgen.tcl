# This script segment is generated automatically by AutoPilot

set name vertex_map_fadd_32ns_32ns_32_7_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 6 ALLOW_PRAGMA 1
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
    id 53 \
    name v_size_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_size_2 \
    op interface \
    ports { v_size_2_dout { I 32 vector } v_size_2_num_data_valid { I 5 vector } v_size_2_fifo_cap { I 5 vector } v_size_2_empty_n { I 1 bit } v_size_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name sums_stream \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sums_stream \
    op interface \
    ports { sums_stream_din { O 32 vector } sums_stream_num_data_valid { I 5 vector } sums_stream_fifo_cap { I 5 vector } sums_stream_full_n { I 1 bit } sums_stream_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name adder_results \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_adder_results \
    op interface \
    ports { adder_results_din { O 32 vector } adder_results_num_data_valid { I 8 vector } adder_results_fifo_cap { I 8 vector } adder_results_full_n { I 1 bit } adder_results_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name adder_in_feed_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_adder_in_feed_0 \
    op interface \
    ports { adder_in_feed_0_dout { I 32 vector } adder_in_feed_0_num_data_valid { I 8 vector } adder_in_feed_0_fifo_cap { I 8 vector } adder_in_feed_0_empty_n { I 1 bit } adder_in_feed_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name adder_in_feed_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_adder_in_feed_1 \
    op interface \
    ports { adder_in_feed_1_dout { I 32 vector } adder_in_feed_1_num_data_valid { I 8 vector } adder_in_feed_1_fifo_cap { I 8 vector } adder_in_feed_1_empty_n { I 1 bit } adder_in_feed_1_read { O 1 bit } } \
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


