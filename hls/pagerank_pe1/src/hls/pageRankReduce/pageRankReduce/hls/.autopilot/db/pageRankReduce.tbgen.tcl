set moduleName pageRankReduce
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {pageRankReduce}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ taskOutGlobal int 512 regular {axi_s 1 volatile  { taskOutGlobal Data } }  }
	{ taskIn int 512 regular {axi_s 0 volatile  { taskIn Data } }  }
	{ argOut int 64 regular {axi_s 1 volatile  { argOut Data } }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "taskOutGlobal", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "taskIn", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "argOut", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ taskOutGlobal_TDATA sc_out sc_lv 512 signal 0 } 
	{ taskOutGlobal_TVALID sc_out sc_logic 1 outvld 0 } 
	{ taskOutGlobal_TREADY sc_in sc_logic 1 outacc 0 } 
	{ taskIn_TDATA sc_in sc_lv 512 signal 1 } 
	{ taskIn_TVALID sc_in sc_logic 1 invld 1 } 
	{ taskIn_TREADY sc_out sc_logic 1 inacc 1 } 
	{ argOut_TDATA sc_out sc_lv 64 signal 2 } 
	{ argOut_TVALID sc_out sc_logic 1 outvld 2 } 
	{ argOut_TREADY sc_in sc_logic 1 outacc 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "taskOutGlobal_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "taskOutGlobal", "role": "TDATA" }} , 
 	{ "name": "taskOutGlobal_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "taskOutGlobal", "role": "TVALID" }} , 
 	{ "name": "taskOutGlobal_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "taskOutGlobal", "role": "TREADY" }} , 
 	{ "name": "taskIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "taskIn", "role": "TDATA" }} , 
 	{ "name": "taskIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "taskIn", "role": "TVALID" }} , 
 	{ "name": "taskIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "taskIn", "role": "TREADY" }} , 
 	{ "name": "argOut_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "argOut", "role": "TDATA" }} , 
 	{ "name": "argOut_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "argOut", "role": "TVALID" }} , 
 	{ "name": "argOut_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "argOut", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "7", "11", "12", "13", "14"],
		"CDFG" : "pageRankReduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "taskOutGlobal", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pageRankReduce_Pipeline_VITIS_LOOP_38_2_fu_180", "Port" : "taskOutGlobal", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "taskIn", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "taskIn_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_pageRankReduce_Pipeline_VITIS_LOOP_55_3_fu_192", "Port" : "taskIn", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "argOut", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "argOut_TDATA_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pageRankReduce_Pipeline_VITIS_LOOP_38_2_fu_180", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "pageRankReduce_Pipeline_VITIS_LOOP_38_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "base_task_vertex_count4", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "base_task_pPrCurr_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "base_task_pPrNext_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "taskOutGlobal", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "taskOutGlobal_TDATA_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pageRankReduce_Pipeline_VITIS_LOOP_38_2_fu_180.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pageRankReduce_Pipeline_VITIS_LOOP_55_3_fu_192", "Parent" : "0", "Child" : ["4", "5", "6"],
		"CDFG" : "pageRankReduce_Pipeline_VITIS_LOOP_55_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "base_task_vertex_count4", "Type" : "None", "Direction" : "I"},
			{"Name" : "taskIn", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "taskIn_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "partial_sums_load_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "partial_sums_1_load_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "partial_sums_2_load_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "partial_sums_3_load_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_55_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pageRankReduce_Pipeline_VITIS_LOOP_55_3_fu_192.fadd_32ns_32ns_32_4_no_dsp_1_U6", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pageRankReduce_Pipeline_VITIS_LOOP_55_3_fu_192.sparsemux_9_2_32_1_1_U7", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pageRankReduce_Pipeline_VITIS_LOOP_55_3_fu_192.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pageRankReduce_Pipeline_VITIS_LOOP_62_4_fu_203", "Parent" : "0", "Child" : ["8", "9", "10"],
		"CDFG" : "pageRankReduce_Pipeline_VITIS_LOOP_62_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "partial_sums_load_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "partial_sums_1_load_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "partial_sums_2_load_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "partial_sums_3_load_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pageRankReduce_Pipeline_VITIS_LOOP_62_4_fu_203.fadd_32ns_32ns_32_7_full_dsp_1_U16", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pageRankReduce_Pipeline_VITIS_LOOP_62_4_fu_203.sparsemux_9_2_32_1_1_U17", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pageRankReduce_Pipeline_VITIS_LOOP_62_4_fu_203.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U24", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_taskOutGlobal_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_taskIn_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_argOut_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	pageRankReduce {
		taskOutGlobal {Type O LastRead -1 FirstWrite 1}
		taskIn {Type I LastRead 0 FirstWrite -1}
		argOut {Type O LastRead -1 FirstWrite 9}}
	pageRankReduce_Pipeline_VITIS_LOOP_38_2 {
		base_task_vertex_count4 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		base_task_pPrCurr_3 {Type I LastRead 0 FirstWrite -1}
		base_task_pPrNext_3 {Type I LastRead 0 FirstWrite -1}
		taskOutGlobal {Type O LastRead -1 FirstWrite 1}}
	pageRankReduce_Pipeline_VITIS_LOOP_55_3 {
		base_task_vertex_count4 {Type I LastRead 0 FirstWrite -1}
		taskIn {Type I LastRead 0 FirstWrite -1}
		partial_sums_load_out {Type O LastRead -1 FirstWrite 3}
		partial_sums_1_load_out {Type O LastRead -1 FirstWrite 3}
		partial_sums_2_load_out {Type O LastRead -1 FirstWrite 3}
		partial_sums_3_load_out {Type O LastRead -1 FirstWrite 3}}
	pageRankReduce_Pipeline_VITIS_LOOP_62_4 {
		partial_sums_load_reload {Type I LastRead 0 FirstWrite -1}
		partial_sums_1_load_reload {Type I LastRead 0 FirstWrite -1}
		partial_sums_2_load_reload {Type I LastRead 0 FirstWrite -1}
		partial_sums_3_load_reload {Type I LastRead 0 FirstWrite -1}
		sum_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	taskOutGlobal { axis {  { taskOutGlobal_TDATA out_data 1 512 }  { taskOutGlobal_TVALID out_vld 1 1 }  { taskOutGlobal_TREADY out_acc 0 1 } } }
	taskIn { axis {  { taskIn_TDATA in_data 0 512 }  { taskIn_TVALID in_vld 0 1 }  { taskIn_TREADY in_acc 1 1 } } }
	argOut { axis {  { argOut_TDATA out_data 1 64 }  { argOut_TVALID out_vld 1 1 }  { argOut_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
