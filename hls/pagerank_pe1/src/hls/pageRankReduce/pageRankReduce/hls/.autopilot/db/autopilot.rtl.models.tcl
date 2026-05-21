set SynModuleInfo {
  {SRCNAME pageRankReduce_Pipeline_VITIS_LOOP_38_2 MODELNAME pageRankReduce_Pipeline_VITIS_LOOP_38_2 RTLNAME pageRankReduce_pageRankReduce_Pipeline_VITIS_LOOP_38_2
    SUBMODULES {
      {MODELNAME pageRankReduce_flow_control_loop_pipe_sequential_init RTLNAME pageRankReduce_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME pageRankReduce_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME pageRankReduce_Pipeline_VITIS_LOOP_55_3 MODELNAME pageRankReduce_Pipeline_VITIS_LOOP_55_3 RTLNAME pageRankReduce_pageRankReduce_Pipeline_VITIS_LOOP_55_3
    SUBMODULES {
      {MODELNAME pageRankReduce_fadd_32ns_32ns_32_4_no_dsp_1 RTLNAME pageRankReduce_fadd_32ns_32ns_32_4_no_dsp_1 BINDTYPE op TYPE fadd IMPL fabric LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME pageRankReduce_sparsemux_9_2_32_1_1 RTLNAME pageRankReduce_sparsemux_9_2_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME pageRankReduce_Pipeline_VITIS_LOOP_62_4 MODELNAME pageRankReduce_Pipeline_VITIS_LOOP_62_4 RTLNAME pageRankReduce_pageRankReduce_Pipeline_VITIS_LOOP_62_4
    SUBMODULES {
      {MODELNAME pageRankReduce_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME pageRankReduce_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pageRankReduce MODELNAME pageRankReduce RTLNAME pageRankReduce IS_TOP 1
    SUBMODULES {
      {MODELNAME pageRankReduce_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME pageRankReduce_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME pageRankReduce_regslice_both RTLNAME pageRankReduce_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
