set moduleName pageRankReduce
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 4
set C_modelName {pageRankReduce}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ taskOutGlobal int 512 regular {axi_s 1 volatile  { taskOutGlobal Data } }  }
	{ taskIn int 512 regular {axi_s 0 volatile  { taskIn Data } }  }
	{ argOut int 64 regular {axi_s 1 volatile  { argOut Data } }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
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

set ArgLastReadFirstWriteLatency {
	pageRankReduce {
		taskOutGlobal {Type O LastRead -1 FirstWrite 1}
		taskIn {Type I LastRead 0 FirstWrite -1}
		argOut {Type O LastRead -1 FirstWrite 0}}
	pageRankReduce_Pipeline_VITIS_LOOP_38_2 {
		base_task_vertex_count {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		base_task_pPrNext {Type I LastRead 0 FirstWrite -1}
		taskOutGlobal {Type O LastRead -1 FirstWrite 1}}}

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
