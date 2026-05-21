set moduleName write_arg
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
set C_modelName {write_arg}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem_CHN_5 int 64 regular {axi_master 2}  }
	{ mem int 64 regular {fifo 0}  }
	{ taskOutGlobal int 512 regular {axi_s 1 volatile  { taskOutGlobal Data } }  }
	{ taskToWrite int 480 regular {fifo 0 volatile }  }
	{ sums_stream int 32 regular {fifo 0 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem_CHN_5", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "mem_5","offset": { "type": "dynamic","port_name": "mem_5","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "mem", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "taskOutGlobal", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "taskToWrite", "interface" : "fifo", "bitwidth" : 480, "direction" : "READONLY"} , 
 	{ "Name" : "sums_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 71
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_CHN_5_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_CHN_5_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_CHN_5_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_CHN_5_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_CHN_5_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_CHN_5_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_CHN_5_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_CHN_5_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_CHN_5_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_CHN_5_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_CHN_5_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_CHN_5_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_CHN_5_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_CHN_5_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_CHN_5_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_CHN_5_WDATA sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_CHN_5_WSTRB sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_CHN_5_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_CHN_5_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_CHN_5_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_CHN_5_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_CHN_5_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_CHN_5_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_CHN_5_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_CHN_5_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_CHN_5_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_CHN_5_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_CHN_5_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_CHN_5_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_CHN_5_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_CHN_5_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_CHN_5_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_CHN_5_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_CHN_5_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_CHN_5_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_CHN_5_RDATA sc_in sc_lv 64 signal 0 } 
	{ m_axi_gmem_CHN_5_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_CHN_5_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_CHN_5_RFIFONUM sc_in sc_lv 11 signal 0 } 
	{ m_axi_gmem_CHN_5_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_CHN_5_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_CHN_5_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_CHN_5_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_CHN_5_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_CHN_5_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_CHN_5_BUSER sc_in sc_lv 1 signal 0 } 
	{ mem_dout sc_in sc_lv 64 signal 1 } 
	{ mem_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ mem_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ mem_empty_n sc_in sc_logic 1 signal 1 } 
	{ mem_read sc_out sc_logic 1 signal 1 } 
	{ taskOutGlobal_TDATA sc_out sc_lv 512 signal 2 } 
	{ taskOutGlobal_TVALID sc_out sc_logic 1 outvld 2 } 
	{ taskOutGlobal_TREADY sc_in sc_logic 1 outacc 2 } 
	{ taskToWrite_dout sc_in sc_lv 480 signal 3 } 
	{ taskToWrite_num_data_valid sc_in sc_lv 5 signal 3 } 
	{ taskToWrite_fifo_cap sc_in sc_lv 5 signal 3 } 
	{ taskToWrite_empty_n sc_in sc_logic 1 signal 3 } 
	{ taskToWrite_read sc_out sc_logic 1 signal 3 } 
	{ sums_stream_dout sc_in sc_lv 32 signal 4 } 
	{ sums_stream_num_data_valid sc_in sc_lv 5 signal 4 } 
	{ sums_stream_fifo_cap sc_in sc_lv 5 signal 4 } 
	{ sums_stream_empty_n sc_in sc_logic 1 signal 4 } 
	{ sums_stream_read sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_CHN_5_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_CHN_5_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_CHN_5_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_CHN_5_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_CHN_5_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_CHN_5_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_CHN_5_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_CHN_5_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_CHN_5_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_CHN_5_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_CHN_5_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_CHN_5_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_CHN_5_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_CHN_5_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_CHN_5_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_CHN_5_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_CHN_5_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_CHN_5_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_CHN_5_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_CHN_5_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_CHN_5_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_CHN_5_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_CHN_5_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_CHN_5_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_CHN_5_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_CHN_5_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_CHN_5_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_CHN_5_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_CHN_5_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_CHN_5_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_CHN_5_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_CHN_5_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_CHN_5_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_CHN_5_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_CHN_5_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_CHN_5_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_CHN_5_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_CHN_5_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_CHN_5_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_CHN_5_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_CHN_5_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_CHN_5_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_CHN_5_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_CHN_5_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_CHN_5_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_CHN_5_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_5", "role": "BUSER" }} , 
 	{ "name": "mem_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mem", "role": "dout" }} , 
 	{ "name": "mem_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "num_data_valid" }} , 
 	{ "name": "mem_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "fifo_cap" }} , 
 	{ "name": "mem_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "empty_n" }} , 
 	{ "name": "mem_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "read" }} , 
 	{ "name": "taskOutGlobal_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "taskOutGlobal", "role": "TDATA" }} , 
 	{ "name": "taskOutGlobal_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "taskOutGlobal", "role": "TVALID" }} , 
 	{ "name": "taskOutGlobal_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "taskOutGlobal", "role": "TREADY" }} , 
 	{ "name": "taskToWrite_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":480, "type": "signal", "bundle":{"name": "taskToWrite", "role": "dout" }} , 
 	{ "name": "taskToWrite_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "taskToWrite", "role": "num_data_valid" }} , 
 	{ "name": "taskToWrite_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "taskToWrite", "role": "fifo_cap" }} , 
 	{ "name": "taskToWrite_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskToWrite", "role": "empty_n" }} , 
 	{ "name": "taskToWrite_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskToWrite", "role": "read" }} , 
 	{ "name": "sums_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sums_stream", "role": "dout" }} , 
 	{ "name": "sums_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sums_stream", "role": "num_data_valid" }} , 
 	{ "name": "sums_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sums_stream", "role": "fifo_cap" }} , 
 	{ "name": "sums_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sums_stream", "role": "empty_n" }} , 
 	{ "name": "sums_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sums_stream", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "write_arg",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem_CHN_5", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_CHN_5_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_CHN_5_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmem_CHN_5_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_CHN_5_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_CHN_5_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "mem", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mem_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskOutGlobal", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "taskOutGlobal_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskToWrite", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "taskToWrite_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sums_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sums_stream_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_7_full_dsp_1_U58", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U59", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_12_no_dsp_1_U60", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.uitofp_32ns_32_4_no_dsp_1_U61", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U62", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_taskOutGlobal_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	write_arg {
		gmem_CHN_5 {Type IO LastRead 73 FirstWrite 72}
		mem {Type I LastRead 0 FirstWrite -1}
		taskOutGlobal {Type O LastRead -1 FirstWrite 140}
		taskToWrite {Type I LastRead 0 FirstWrite -1}
		sums_stream {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "141", "Max" : "141"}
	, {"Name" : "Interval", "Min" : "141", "Max" : "141"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem_CHN_5_AWVALID VALID 1 1 }  { m_axi_gmem_CHN_5_AWREADY READY 0 1 }  { m_axi_gmem_CHN_5_AWADDR ADDR 1 64 }  { m_axi_gmem_CHN_5_AWID ID 1 1 }  { m_axi_gmem_CHN_5_AWLEN SIZE 1 32 }  { m_axi_gmem_CHN_5_AWSIZE BURST 1 3 }  { m_axi_gmem_CHN_5_AWBURST LOCK 1 2 }  { m_axi_gmem_CHN_5_AWLOCK CACHE 1 2 }  { m_axi_gmem_CHN_5_AWCACHE PROT 1 4 }  { m_axi_gmem_CHN_5_AWPROT QOS 1 3 }  { m_axi_gmem_CHN_5_AWQOS REGION 1 4 }  { m_axi_gmem_CHN_5_AWREGION USER 1 4 }  { m_axi_gmem_CHN_5_AWUSER DATA 1 1 }  { m_axi_gmem_CHN_5_WVALID VALID 1 1 }  { m_axi_gmem_CHN_5_WREADY READY 0 1 }  { m_axi_gmem_CHN_5_WDATA FIFONUM 1 64 }  { m_axi_gmem_CHN_5_WSTRB STRB 1 8 }  { m_axi_gmem_CHN_5_WLAST LAST 1 1 }  { m_axi_gmem_CHN_5_WID ID 1 1 }  { m_axi_gmem_CHN_5_WUSER DATA 1 1 }  { m_axi_gmem_CHN_5_ARVALID VALID 1 1 }  { m_axi_gmem_CHN_5_ARREADY READY 0 1 }  { m_axi_gmem_CHN_5_ARADDR ADDR 1 64 }  { m_axi_gmem_CHN_5_ARID ID 1 1 }  { m_axi_gmem_CHN_5_ARLEN SIZE 1 32 }  { m_axi_gmem_CHN_5_ARSIZE BURST 1 3 }  { m_axi_gmem_CHN_5_ARBURST LOCK 1 2 }  { m_axi_gmem_CHN_5_ARLOCK CACHE 1 2 }  { m_axi_gmem_CHN_5_ARCACHE PROT 1 4 }  { m_axi_gmem_CHN_5_ARPROT QOS 1 3 }  { m_axi_gmem_CHN_5_ARQOS REGION 1 4 }  { m_axi_gmem_CHN_5_ARREGION USER 1 4 }  { m_axi_gmem_CHN_5_ARUSER DATA 1 1 }  { m_axi_gmem_CHN_5_RVALID VALID 0 1 }  { m_axi_gmem_CHN_5_RREADY READY 1 1 }  { m_axi_gmem_CHN_5_RDATA FIFONUM 0 64 }  { m_axi_gmem_CHN_5_RLAST LAST 0 1 }  { m_axi_gmem_CHN_5_RID ID 0 1 }  { m_axi_gmem_CHN_5_RFIFONUM LEN 0 11 }  { m_axi_gmem_CHN_5_RUSER DATA 0 1 }  { m_axi_gmem_CHN_5_RRESP RESP 0 2 }  { m_axi_gmem_CHN_5_BVALID VALID 0 1 }  { m_axi_gmem_CHN_5_BREADY READY 1 1 }  { m_axi_gmem_CHN_5_BRESP RESP 0 2 }  { m_axi_gmem_CHN_5_BID ID 0 1 }  { m_axi_gmem_CHN_5_BUSER DATA 0 1 } } }
	mem { ap_fifo {  { mem_dout fifo_data_in 0 64 }  { mem_num_data_valid fifo_status_num_data_valid 0 4 }  { mem_fifo_cap fifo_update 0 4 }  { mem_empty_n fifo_status 0 1 }  { mem_read fifo_port_we 1 1 } } }
	taskOutGlobal { axis {  { taskOutGlobal_TDATA out_data 1 512 }  { taskOutGlobal_TVALID out_vld 1 1 }  { taskOutGlobal_TREADY out_acc 0 1 } } }
	taskToWrite { ap_fifo {  { taskToWrite_dout fifo_data_in 0 480 }  { taskToWrite_num_data_valid fifo_status_num_data_valid 0 5 }  { taskToWrite_fifo_cap fifo_update 0 5 }  { taskToWrite_empty_n fifo_status 0 1 }  { taskToWrite_read fifo_port_we 1 1 } } }
	sums_stream { ap_fifo {  { sums_stream_dout fifo_data_in 0 32 }  { sums_stream_num_data_valid fifo_status_num_data_valid 0 5 }  { sums_stream_fifo_cap fifo_update 0 5 }  { sums_stream_empty_n fifo_status 0 1 }  { sums_stream_read fifo_port_we 1 1 } } }
}
