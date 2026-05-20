set SynModuleInfo {
  {SRCNAME pageRankReduce_Pipeline_VITIS_LOOP_38_2 MODELNAME pageRankReduce_Pipeline_VITIS_LOOP_38_2 RTLNAME pageRankReduce_pageRankReduce_Pipeline_VITIS_LOOP_38_2
    SUBMODULES {
      {MODELNAME pageRankReduce_flow_control_loop_pipe_sequential_init RTLNAME pageRankReduce_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME pageRankReduce_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME pageRankReduce MODELNAME pageRankReduce RTLNAME pageRankReduce IS_TOP 1
    SUBMODULES {
      {MODELNAME pageRankReduce_regslice_both RTLNAME pageRankReduce_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
