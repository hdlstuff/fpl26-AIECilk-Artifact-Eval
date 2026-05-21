set moduleName adder_function
set isTopModule 0
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
set C_modelName {adder_function}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ v_size_2 int 32 regular {fifo 0 volatile }  }
	{ sums_stream int 32 regular {fifo 1 volatile }  }
	{ adder_results int 32 regular {fifo 1 volatile }  }
	{ adder_in_feed_0 int 32 regular {fifo 0 volatile }  }
	{ adder_in_feed_1 int 32 regular {fifo 0 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "v_size_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sums_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "adder_results", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "adder_in_feed_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "adder_in_feed_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ v_size_2_dout sc_in sc_lv 32 signal 0 } 
	{ v_size_2_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ v_size_2_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ v_size_2_empty_n sc_in sc_logic 1 signal 0 } 
	{ v_size_2_read sc_out sc_logic 1 signal 0 } 
	{ sums_stream_din sc_out sc_lv 32 signal 1 } 
	{ sums_stream_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ sums_stream_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ sums_stream_full_n sc_in sc_logic 1 signal 1 } 
	{ sums_stream_write sc_out sc_logic 1 signal 1 } 
	{ adder_results_din sc_out sc_lv 32 signal 2 } 
	{ adder_results_num_data_valid sc_in sc_lv 8 signal 2 } 
	{ adder_results_fifo_cap sc_in sc_lv 8 signal 2 } 
	{ adder_results_full_n sc_in sc_logic 1 signal 2 } 
	{ adder_results_write sc_out sc_logic 1 signal 2 } 
	{ adder_in_feed_0_dout sc_in sc_lv 32 signal 3 } 
	{ adder_in_feed_0_num_data_valid sc_in sc_lv 8 signal 3 } 
	{ adder_in_feed_0_fifo_cap sc_in sc_lv 8 signal 3 } 
	{ adder_in_feed_0_empty_n sc_in sc_logic 1 signal 3 } 
	{ adder_in_feed_0_read sc_out sc_logic 1 signal 3 } 
	{ adder_in_feed_1_dout sc_in sc_lv 32 signal 4 } 
	{ adder_in_feed_1_num_data_valid sc_in sc_lv 8 signal 4 } 
	{ adder_in_feed_1_fifo_cap sc_in sc_lv 8 signal 4 } 
	{ adder_in_feed_1_empty_n sc_in sc_logic 1 signal 4 } 
	{ adder_in_feed_1_read sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "v_size_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_size_2", "role": "dout" }} , 
 	{ "name": "v_size_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "v_size_2", "role": "num_data_valid" }} , 
 	{ "name": "v_size_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "v_size_2", "role": "fifo_cap" }} , 
 	{ "name": "v_size_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_size_2", "role": "empty_n" }} , 
 	{ "name": "v_size_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_size_2", "role": "read" }} , 
 	{ "name": "sums_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sums_stream", "role": "din" }} , 
 	{ "name": "sums_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sums_stream", "role": "num_data_valid" }} , 
 	{ "name": "sums_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sums_stream", "role": "fifo_cap" }} , 
 	{ "name": "sums_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sums_stream", "role": "full_n" }} , 
 	{ "name": "sums_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sums_stream", "role": "write" }} , 
 	{ "name": "adder_results_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "adder_results", "role": "din" }} , 
 	{ "name": "adder_results_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "adder_results", "role": "num_data_valid" }} , 
 	{ "name": "adder_results_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "adder_results", "role": "fifo_cap" }} , 
 	{ "name": "adder_results_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adder_results", "role": "full_n" }} , 
 	{ "name": "adder_results_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adder_results", "role": "write" }} , 
 	{ "name": "adder_in_feed_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "adder_in_feed_0", "role": "dout" }} , 
 	{ "name": "adder_in_feed_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "adder_in_feed_0", "role": "num_data_valid" }} , 
 	{ "name": "adder_in_feed_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "adder_in_feed_0", "role": "fifo_cap" }} , 
 	{ "name": "adder_in_feed_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adder_in_feed_0", "role": "empty_n" }} , 
 	{ "name": "adder_in_feed_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adder_in_feed_0", "role": "read" }} , 
 	{ "name": "adder_in_feed_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "adder_in_feed_1", "role": "dout" }} , 
 	{ "name": "adder_in_feed_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "adder_in_feed_1", "role": "num_data_valid" }} , 
 	{ "name": "adder_in_feed_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "adder_in_feed_1", "role": "fifo_cap" }} , 
 	{ "name": "adder_in_feed_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adder_in_feed_1", "role": "empty_n" }} , 
 	{ "name": "adder_in_feed_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adder_in_feed_1", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5"],
		"CDFG" : "adder_function",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_size_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_size_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sums_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sums_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "adder_results", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_adder_function_Pipeline_VITIS_LOOP_115_1_fu_49", "Port" : "adder_results", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "adder_in_feed_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_adder_function_Pipeline_VITIS_LOOP_115_1_fu_49", "Port" : "adder_in_feed_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "3", "SubInstance" : "grp_adder_function_Pipeline_VITIS_LOOP_120_2_fu_60", "Port" : "adder_in_feed_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "adder_in_feed_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_adder_function_Pipeline_VITIS_LOOP_115_1_fu_49", "Port" : "adder_in_feed_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_adder_function_Pipeline_VITIS_LOOP_115_1_fu_49", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "adder_function_Pipeline_VITIS_LOOP_115_1",
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
			{"Name" : "v_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "adder_in_feed_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "adder_in_feed_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "adder_in_feed_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "adder_in_feed_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "adder_results", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "adder_results_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_115_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_adder_function_Pipeline_VITIS_LOOP_115_1_fu_49.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_adder_function_Pipeline_VITIS_LOOP_120_2_fu_60", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "adder_function_Pipeline_VITIS_LOOP_120_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "adder_in_feed_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "adder_in_feed_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sum_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_120_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_adder_function_Pipeline_VITIS_LOOP_120_2_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U51", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	adder_function {
		v_size_2 {Type I LastRead 0 FirstWrite -1}
		sums_stream {Type O LastRead -1 FirstWrite 6}
		adder_results {Type O LastRead -1 FirstWrite 9}
		adder_in_feed_0 {Type I LastRead 1 FirstWrite -1}
		adder_in_feed_1 {Type I LastRead 1 FirstWrite -1}}
	adder_function_Pipeline_VITIS_LOOP_115_1 {
		v_size {Type I LastRead 0 FirstWrite -1}
		adder_in_feed_0 {Type I LastRead 1 FirstWrite -1}
		adder_in_feed_1 {Type I LastRead 1 FirstWrite -1}
		adder_results {Type O LastRead -1 FirstWrite 9}}
	adder_function_Pipeline_VITIS_LOOP_120_2 {
		adder_in_feed_0 {Type I LastRead 1 FirstWrite -1}
		sum_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	v_size_2 { ap_fifo {  { v_size_2_dout fifo_data_in 0 32 }  { v_size_2_num_data_valid fifo_status_num_data_valid 0 5 }  { v_size_2_fifo_cap fifo_update 0 5 }  { v_size_2_empty_n fifo_status 0 1 }  { v_size_2_read fifo_port_we 1 1 } } }
	sums_stream { ap_fifo {  { sums_stream_din fifo_data_in 1 32 }  { sums_stream_num_data_valid fifo_status_num_data_valid 0 5 }  { sums_stream_fifo_cap fifo_update 0 5 }  { sums_stream_full_n fifo_status 0 1 }  { sums_stream_write fifo_port_we 1 1 } } }
	adder_results { ap_fifo {  { adder_results_din fifo_data_in 1 32 }  { adder_results_num_data_valid fifo_status_num_data_valid 0 8 }  { adder_results_fifo_cap fifo_update 0 8 }  { adder_results_full_n fifo_status 0 1 }  { adder_results_write fifo_port_we 1 1 } } }
	adder_in_feed_0 { ap_fifo {  { adder_in_feed_0_dout fifo_data_in 0 32 }  { adder_in_feed_0_num_data_valid fifo_status_num_data_valid 0 8 }  { adder_in_feed_0_fifo_cap fifo_update 0 8 }  { adder_in_feed_0_empty_n fifo_status 0 1 }  { adder_in_feed_0_read fifo_port_we 1 1 } } }
	adder_in_feed_1 { ap_fifo {  { adder_in_feed_1_dout fifo_data_in 0 32 }  { adder_in_feed_1_num_data_valid fifo_status_num_data_valid 0 8 }  { adder_in_feed_1_fifo_cap fifo_update 0 8 }  { adder_in_feed_1_empty_n fifo_status 0 1 }  { adder_in_feed_1_read fifo_port_we 1 1 } } }
}
