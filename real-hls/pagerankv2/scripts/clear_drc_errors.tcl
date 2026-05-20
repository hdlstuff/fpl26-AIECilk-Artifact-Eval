proc allow_loop_on_net {net_name} {
	set nets [get_nets -hier $net_name]
	if {[llength $nets] > 0} {
		set_property ALLOW_COMBINATORIAL_LOOPS TRUE $nets
		puts "INFO: allowed combinational loop on $net_name"
	} else {
		puts "WARNING: net not found for combinational-loop waiver: $net_name"
	}
}

set lutlp_check [get_drc_checks LUTLP-1]
if {[llength $lutlp_check] > 0} {
	set_property SEVERITY Warning $lutlp_check
	puts "INFO: downgraded LUTLP-1 severity to Warning"
}

allow_loop_on_net {top_i/ulp/pageRankHS_1/inst/peMap_0_2_0/pe/gmem_m_axi_U/load_arbiter/tmp_valid_reg}
allow_loop_on_net {top_i/ulp/pageRankHS_1/inst/peMap_0_2_0/pe/gmem_m_axi_U/load_unit_5/bus_wide_gen.rreq_offset/full_n_reg_1}
allow_loop_on_net {top_i/ulp/pageRankHS_1/inst/peMap_0_2_0/pe/gmem_m_axi_U/bus_read/rreq_burst_conv/burst_interleave/req_buffer/U_fifo_srl/req[0]}
