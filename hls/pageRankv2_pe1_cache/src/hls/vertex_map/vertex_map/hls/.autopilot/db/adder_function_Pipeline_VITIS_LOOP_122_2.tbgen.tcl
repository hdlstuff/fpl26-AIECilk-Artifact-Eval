set moduleName adder_function_Pipeline_VITIS_LOOP_122_2
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
set cdfgNum 14
set C_modelName {adder_function_Pipeline_VITIS_LOOP_122_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ adder_in_feed_0 int 32 regular {fifo 0 volatile }  }
	{ sum_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "adder_in_feed_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ adder_in_feed_0_dout sc_in sc_lv 32 signal 0 } 
	{ adder_in_feed_0_empty_n sc_in sc_logic 1 signal 0 } 
	{ adder_in_feed_0_read sc_out sc_logic 1 signal 0 } 
	{ adder_in_feed_0_num_data_valid sc_in sc_lv 8 signal 0 } 
	{ adder_in_feed_0_fifo_cap sc_in sc_lv 8 signal 0 } 
	{ sum_out sc_out sc_lv 32 signal 1 } 
	{ sum_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ grp_fu_151_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_151_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_151_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_151_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_151_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "adder_in_feed_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "adder_in_feed_0", "role": "dout" }} , 
 	{ "name": "adder_in_feed_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adder_in_feed_0", "role": "empty_n" }} , 
 	{ "name": "adder_in_feed_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adder_in_feed_0", "role": "read" }} , 
 	{ "name": "adder_in_feed_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "adder_in_feed_0", "role": "num_data_valid" }} , 
 	{ "name": "adder_in_feed_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "adder_in_feed_0", "role": "fifo_cap" }} , 
 	{ "name": "sum_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_out", "role": "default" }} , 
 	{ "name": "sum_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_151_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_151_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_151_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_151_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_151_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_151_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_151_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_151_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_151_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_151_p_ce", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	adder_function_Pipeline_VITIS_LOOP_122_2 {
		adder_in_feed_0 {Type I LastRead 1 FirstWrite -1}
		sum_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "64", "Max" : "64"}
	, {"Name" : "Interval", "Min" : "64", "Max" : "64"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	adder_in_feed_0 { ap_fifo {  { adder_in_feed_0_dout fifo_data_in 0 32 }  { adder_in_feed_0_empty_n fifo_status 0 1 }  { adder_in_feed_0_read fifo_port_we 1 1 }  { adder_in_feed_0_num_data_valid fifo_status_num_data_valid 0 8 }  { adder_in_feed_0_fifo_cap fifo_update 0 8 } } }
	sum_out { ap_vld {  { sum_out out_data 1 32 }  { sum_out_ap_vld out_vld 1 1 } } }
}
