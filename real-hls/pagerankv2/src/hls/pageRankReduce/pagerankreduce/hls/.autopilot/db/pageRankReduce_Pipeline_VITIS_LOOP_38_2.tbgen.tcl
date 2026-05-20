set moduleName pageRankReduce_Pipeline_VITIS_LOOP_38_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
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
set C_modelName {pageRankReduce_Pipeline_VITIS_LOOP_38_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ base_task_vertex_count int 32 regular  }
	{ empty int 512 regular  }
	{ base_task_pPrNext int 64 regular  }
	{ taskOutGlobal int 512 regular {axi_s 1 volatile  { taskOutGlobal Data } }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "base_task_vertex_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "base_task_pPrNext", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "taskOutGlobal", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ taskOutGlobal_TREADY sc_in sc_logic 1 outacc 3 } 
	{ base_task_vertex_count sc_in sc_lv 32 signal 0 } 
	{ empty sc_in sc_lv 512 signal 1 } 
	{ base_task_pPrNext sc_in sc_lv 64 signal 2 } 
	{ taskOutGlobal_TDATA sc_out sc_lv 512 signal 3 } 
	{ taskOutGlobal_TVALID sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "taskOutGlobal_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "taskOutGlobal", "role": "TREADY" }} , 
 	{ "name": "base_task_vertex_count", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "base_task_vertex_count", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "base_task_pPrNext", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "base_task_pPrNext", "role": "default" }} , 
 	{ "name": "taskOutGlobal_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "taskOutGlobal", "role": "TDATA" }} , 
 	{ "name": "taskOutGlobal_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "taskOutGlobal", "role": "TVALID" }}  ]}

set ArgLastReadFirstWriteLatency {
	pageRankReduce_Pipeline_VITIS_LOOP_38_2 {
		base_task_vertex_count {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		base_task_pPrNext {Type I LastRead 0 FirstWrite -1}
		taskOutGlobal {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	base_task_vertex_count { ap_none {  { base_task_vertex_count in_data 0 32 } } }
	empty { ap_none {  { empty in_data 0 512 } } }
	base_task_pPrNext { ap_none {  { base_task_pPrNext in_data 0 64 } } }
	taskOutGlobal { axis {  { taskOutGlobal_TREADY out_acc 0 1 }  { taskOutGlobal_TDATA out_data 1 512 }  { taskOutGlobal_TVALID out_vld 1 1 } } }
}
