set moduleName feed_adder_value_Pipeline_VITIS_LOOP_140_2
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
set C_modelName {feed_adder_value_Pipeline_VITIS_LOOP_140_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ v_size int 32 regular  }
	{ adder_results int 32 regular {fifo 0 volatile }  }
	{ adder_in_feed_0 int 32 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "v_size", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "adder_results", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "adder_in_feed_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ adder_results_dout sc_in sc_lv 32 signal 1 } 
	{ adder_results_empty_n sc_in sc_logic 1 signal 1 } 
	{ adder_results_read sc_out sc_logic 1 signal 1 } 
	{ adder_results_num_data_valid sc_in sc_lv 8 signal 1 } 
	{ adder_results_fifo_cap sc_in sc_lv 8 signal 1 } 
	{ adder_in_feed_0_din sc_out sc_lv 32 signal 2 } 
	{ adder_in_feed_0_full_n sc_in sc_logic 1 signal 2 } 
	{ adder_in_feed_0_write sc_out sc_logic 1 signal 2 } 
	{ adder_in_feed_0_num_data_valid sc_in sc_lv 32 signal 2 } 
	{ adder_in_feed_0_fifo_cap sc_in sc_lv 32 signal 2 } 
	{ v_size sc_in sc_lv 32 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "adder_results_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "adder_results", "role": "dout" }} , 
 	{ "name": "adder_results_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adder_results", "role": "empty_n" }} , 
 	{ "name": "adder_results_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adder_results", "role": "read" }} , 
 	{ "name": "adder_results_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "adder_results", "role": "num_data_valid" }} , 
 	{ "name": "adder_results_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "adder_results", "role": "fifo_cap" }} , 
 	{ "name": "adder_in_feed_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "adder_in_feed_0", "role": "din" }} , 
 	{ "name": "adder_in_feed_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adder_in_feed_0", "role": "full_n" }} , 
 	{ "name": "adder_in_feed_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adder_in_feed_0", "role": "write" }} , 
 	{ "name": "adder_in_feed_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "adder_in_feed_0", "role": "num_data_valid" }} , 
 	{ "name": "adder_in_feed_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "adder_in_feed_0", "role": "fifo_cap" }} , 
 	{ "name": "v_size", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_size", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	feed_adder_value_Pipeline_VITIS_LOOP_140_2 {
		v_size {Type I LastRead 0 FirstWrite -1}
		adder_results {Type I LastRead 1 FirstWrite -1}
		adder_in_feed_0 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	v_size { ap_none {  { v_size in_data 0 32 } } }
	adder_results { ap_fifo {  { adder_results_dout fifo_data_in 0 32 }  { adder_results_empty_n fifo_status 0 1 }  { adder_results_read fifo_port_we 1 1 }  { adder_results_num_data_valid fifo_status_num_data_valid 0 8 }  { adder_results_fifo_cap fifo_update 0 8 } } }
	adder_in_feed_0 { ap_fifo {  { adder_in_feed_0_din fifo_data_in 1 32 }  { adder_in_feed_0_full_n fifo_status 0 1 }  { adder_in_feed_0_write fifo_port_we 1 1 }  { adder_in_feed_0_num_data_valid fifo_status_num_data_valid 0 32 }  { adder_in_feed_0_fifo_cap fifo_update 0 32 } } }
}
