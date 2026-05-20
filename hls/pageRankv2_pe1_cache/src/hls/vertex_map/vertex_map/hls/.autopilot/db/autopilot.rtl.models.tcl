set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME vertex_map_entry_proc}
  {SRCNAME read_task MODELNAME read_task RTLNAME vertex_map_read_task
    SUBMODULES {
      {MODELNAME vertex_map_regslice_both RTLNAME vertex_map_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
  {SRCNAME readVertex_Pipeline_VITIS_LOOP_94_1 MODELNAME readVertex_Pipeline_VITIS_LOOP_94_1 RTLNAME vertex_map_readVertex_Pipeline_VITIS_LOOP_94_1
    SUBMODULES {
      {MODELNAME vertex_map_fdiv_32ns_32ns_32_12_no_dsp_1 RTLNAME vertex_map_fdiv_32ns_32ns_32_12_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 11 ALLOW_PRAGMA 1}
      {MODELNAME vertex_map_uitofp_32ns_32_4_no_dsp_1 RTLNAME vertex_map_uitofp_32ns_32_4_no_dsp_1 BINDTYPE op TYPE uitofp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME vertex_map_flow_control_loop_pipe_sequential_init RTLNAME vertex_map_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME vertex_map_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME readVertex MODELNAME readVertex RTLNAME vertex_map_readVertex}
  {SRCNAME feed_adder_value_Pipeline_VITIS_LOOP_135_1 MODELNAME feed_adder_value_Pipeline_VITIS_LOOP_135_1 RTLNAME vertex_map_feed_adder_value_Pipeline_VITIS_LOOP_135_1}
  {SRCNAME feed_adder_value_Pipeline_VITIS_LOOP_140_2 MODELNAME feed_adder_value_Pipeline_VITIS_LOOP_140_2 RTLNAME vertex_map_feed_adder_value_Pipeline_VITIS_LOOP_140_2}
  {SRCNAME feed_adder_value MODELNAME feed_adder_value RTLNAME vertex_map_feed_adder_value}
  {SRCNAME adder_function_Pipeline_VITIS_LOOP_117_1 MODELNAME adder_function_Pipeline_VITIS_LOOP_117_1 RTLNAME vertex_map_adder_function_Pipeline_VITIS_LOOP_117_1}
  {SRCNAME adder_function_Pipeline_VITIS_LOOP_122_2 MODELNAME adder_function_Pipeline_VITIS_LOOP_122_2 RTLNAME vertex_map_adder_function_Pipeline_VITIS_LOOP_122_2}
  {SRCNAME adder_function MODELNAME adder_function RTLNAME vertex_map_adder_function
    SUBMODULES {
      {MODELNAME vertex_map_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME vertex_map_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME write_arg MODELNAME write_arg RTLNAME vertex_map_write_arg
    SUBMODULES {
      {MODELNAME vertex_map_faddfsub_32ns_32ns_32_7_full_dsp_1 RTLNAME vertex_map_faddfsub_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME vertex_map_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME vertex_map_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME vertex_map_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME vertex_map_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME vertex_map MODELNAME vertex_map RTLNAME vertex_map IS_TOP 1
    SUBMODULES {
      {MODELNAME vertex_map_fifo_w64_d5_S RTLNAME vertex_map_fifo_w64_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mem_5_c_U}
      {MODELNAME vertex_map_fifo_w64_d9_S RTLNAME vertex_map_fifo_w64_d9_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_neighbours_stream_U}
      {MODELNAME vertex_map_fifo_w64_d9_S RTLNAME vertex_map_fifo_w64_d9_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME Pcurrs_U}
      {MODELNAME vertex_map_fifo_w64_d9_S RTLNAME vertex_map_fifo_w64_d9_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME adj_lists_U}
      {MODELNAME vertex_map_fifo_w32_d9_S RTLNAME vertex_map_fifo_w32_d9_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_size_0_U}
      {MODELNAME vertex_map_fifo_w32_d9_S RTLNAME vertex_map_fifo_w32_d9_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_size_1_U}
      {MODELNAME vertex_map_fifo_w32_d9_S RTLNAME vertex_map_fifo_w32_d9_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_size_2_U}
      {MODELNAME vertex_map_fifo_w480_d9_A RTLNAME vertex_map_fifo_w480_d9_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME taskToWrite_U}
      {MODELNAME vertex_map_fifo_w32_d128_A RTLNAME vertex_map_fifo_w32_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME adder_in_feed_1_U}
      {MODELNAME vertex_map_fifo_w32_d128_A RTLNAME vertex_map_fifo_w32_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME adder_results_U}
      {MODELNAME vertex_map_fifo_w32_d128_A RTLNAME vertex_map_fifo_w32_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME adder_in_feed_0_U}
      {MODELNAME vertex_map_fifo_w32_d9_S RTLNAME vertex_map_fifo_w32_d9_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME sums_stream_U}
      {MODELNAME vertex_map_gmem_m_axi RTLNAME vertex_map_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME vertex_map_control_s_axi RTLNAME vertex_map_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
