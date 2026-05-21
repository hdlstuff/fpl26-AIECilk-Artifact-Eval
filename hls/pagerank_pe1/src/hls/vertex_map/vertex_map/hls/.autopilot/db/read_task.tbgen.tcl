set moduleName read_task
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
set C_modelName {read_task}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem_CHN_0 int 64 regular {axi_master 0}  }
	{ mem int 64 regular  }
	{ taskIn int 512 regular {axi_s 0 volatile  { taskIn Data } }  }
	{ v_neighbours_stream int 64 regular {fifo 1 volatile }  }
	{ Pcurrs int 64 regular {fifo 1 volatile }  }
	{ adj_lists int 64 regular {fifo 1 volatile }  }
	{ v_size_0 int 32 regular {fifo 1 volatile }  }
	{ v_size_1 int 32 regular {fifo 1 volatile }  }
	{ v_size_2 int 32 regular {fifo 1 volatile }  }
	{ taskToWrite int 480 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem_CHN_0", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "mem_0","offset": { "type": "dynamic","port_name": "mem_0","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "mem", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "taskIn", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "v_neighbours_stream", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Pcurrs", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "adj_lists", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v_size_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v_size_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v_size_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "taskToWrite", "interface" : "fifo", "bitwidth" : 480, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 92
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_CHN_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_CHN_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_CHN_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_CHN_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_CHN_0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_CHN_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_CHN_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_CHN_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_CHN_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_CHN_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_CHN_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_CHN_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_CHN_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_CHN_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_CHN_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_CHN_0_WDATA sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_CHN_0_WSTRB sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_CHN_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_CHN_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_CHN_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_CHN_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_CHN_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_CHN_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_CHN_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_CHN_0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_CHN_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_CHN_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_CHN_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_CHN_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_CHN_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_CHN_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_CHN_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_CHN_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_CHN_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_CHN_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_CHN_0_RDATA sc_in sc_lv 64 signal 0 } 
	{ m_axi_gmem_CHN_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_CHN_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_CHN_0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem_CHN_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_CHN_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_CHN_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_CHN_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_CHN_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_CHN_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_CHN_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ mem sc_in sc_lv 64 signal 1 } 
	{ taskIn_TDATA sc_in sc_lv 512 signal 2 } 
	{ taskIn_TVALID sc_in sc_logic 1 invld 2 } 
	{ taskIn_TREADY sc_out sc_logic 1 inacc 2 } 
	{ v_neighbours_stream_din sc_out sc_lv 64 signal 3 } 
	{ v_neighbours_stream_num_data_valid sc_in sc_lv 5 signal 3 } 
	{ v_neighbours_stream_fifo_cap sc_in sc_lv 5 signal 3 } 
	{ v_neighbours_stream_full_n sc_in sc_logic 1 signal 3 } 
	{ v_neighbours_stream_write sc_out sc_logic 1 signal 3 } 
	{ Pcurrs_din sc_out sc_lv 64 signal 4 } 
	{ Pcurrs_num_data_valid sc_in sc_lv 5 signal 4 } 
	{ Pcurrs_fifo_cap sc_in sc_lv 5 signal 4 } 
	{ Pcurrs_full_n sc_in sc_logic 1 signal 4 } 
	{ Pcurrs_write sc_out sc_logic 1 signal 4 } 
	{ adj_lists_din sc_out sc_lv 64 signal 5 } 
	{ adj_lists_num_data_valid sc_in sc_lv 5 signal 5 } 
	{ adj_lists_fifo_cap sc_in sc_lv 5 signal 5 } 
	{ adj_lists_full_n sc_in sc_logic 1 signal 5 } 
	{ adj_lists_write sc_out sc_logic 1 signal 5 } 
	{ v_size_0_din sc_out sc_lv 32 signal 6 } 
	{ v_size_0_num_data_valid sc_in sc_lv 5 signal 6 } 
	{ v_size_0_fifo_cap sc_in sc_lv 5 signal 6 } 
	{ v_size_0_full_n sc_in sc_logic 1 signal 6 } 
	{ v_size_0_write sc_out sc_logic 1 signal 6 } 
	{ v_size_1_din sc_out sc_lv 32 signal 7 } 
	{ v_size_1_num_data_valid sc_in sc_lv 5 signal 7 } 
	{ v_size_1_fifo_cap sc_in sc_lv 5 signal 7 } 
	{ v_size_1_full_n sc_in sc_logic 1 signal 7 } 
	{ v_size_1_write sc_out sc_logic 1 signal 7 } 
	{ v_size_2_din sc_out sc_lv 32 signal 8 } 
	{ v_size_2_num_data_valid sc_in sc_lv 5 signal 8 } 
	{ v_size_2_fifo_cap sc_in sc_lv 5 signal 8 } 
	{ v_size_2_full_n sc_in sc_logic 1 signal 8 } 
	{ v_size_2_write sc_out sc_logic 1 signal 8 } 
	{ taskToWrite_din sc_out sc_lv 480 signal 9 } 
	{ taskToWrite_num_data_valid sc_in sc_lv 5 signal 9 } 
	{ taskToWrite_fifo_cap sc_in sc_lv 5 signal 9 } 
	{ taskToWrite_full_n sc_in sc_logic 1 signal 9 } 
	{ taskToWrite_write sc_out sc_logic 1 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_CHN_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_CHN_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_CHN_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_CHN_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_CHN_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_CHN_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_CHN_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_CHN_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_CHN_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_CHN_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_CHN_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_CHN_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_CHN_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_CHN_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_CHN_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_CHN_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_CHN_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_CHN_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_CHN_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_CHN_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_CHN_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_CHN_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_CHN_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_CHN_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_CHN_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_CHN_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_CHN_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_CHN_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_CHN_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_CHN_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_CHN_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_CHN_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_CHN_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_CHN_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_CHN_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_CHN_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_CHN_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_CHN_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_CHN_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_CHN_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_CHN_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_CHN_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_CHN_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_CHN_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_CHN_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_CHN_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_CHN_0", "role": "BUSER" }} , 
 	{ "name": "mem", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mem", "role": "default" }} , 
 	{ "name": "taskIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "taskIn", "role": "TDATA" }} , 
 	{ "name": "taskIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "taskIn", "role": "TVALID" }} , 
 	{ "name": "taskIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "taskIn", "role": "TREADY" }} , 
 	{ "name": "v_neighbours_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v_neighbours_stream", "role": "din" }} , 
 	{ "name": "v_neighbours_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "v_neighbours_stream", "role": "num_data_valid" }} , 
 	{ "name": "v_neighbours_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "v_neighbours_stream", "role": "fifo_cap" }} , 
 	{ "name": "v_neighbours_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_neighbours_stream", "role": "full_n" }} , 
 	{ "name": "v_neighbours_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_neighbours_stream", "role": "write" }} , 
 	{ "name": "Pcurrs_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Pcurrs", "role": "din" }} , 
 	{ "name": "Pcurrs_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Pcurrs", "role": "num_data_valid" }} , 
 	{ "name": "Pcurrs_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Pcurrs", "role": "fifo_cap" }} , 
 	{ "name": "Pcurrs_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Pcurrs", "role": "full_n" }} , 
 	{ "name": "Pcurrs_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Pcurrs", "role": "write" }} , 
 	{ "name": "adj_lists_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "adj_lists", "role": "din" }} , 
 	{ "name": "adj_lists_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "adj_lists", "role": "num_data_valid" }} , 
 	{ "name": "adj_lists_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "adj_lists", "role": "fifo_cap" }} , 
 	{ "name": "adj_lists_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adj_lists", "role": "full_n" }} , 
 	{ "name": "adj_lists_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adj_lists", "role": "write" }} , 
 	{ "name": "v_size_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_size_0", "role": "din" }} , 
 	{ "name": "v_size_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "v_size_0", "role": "num_data_valid" }} , 
 	{ "name": "v_size_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "v_size_0", "role": "fifo_cap" }} , 
 	{ "name": "v_size_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_size_0", "role": "full_n" }} , 
 	{ "name": "v_size_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_size_0", "role": "write" }} , 
 	{ "name": "v_size_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_size_1", "role": "din" }} , 
 	{ "name": "v_size_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "v_size_1", "role": "num_data_valid" }} , 
 	{ "name": "v_size_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "v_size_1", "role": "fifo_cap" }} , 
 	{ "name": "v_size_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_size_1", "role": "full_n" }} , 
 	{ "name": "v_size_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_size_1", "role": "write" }} , 
 	{ "name": "v_size_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_size_2", "role": "din" }} , 
 	{ "name": "v_size_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "v_size_2", "role": "num_data_valid" }} , 
 	{ "name": "v_size_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "v_size_2", "role": "fifo_cap" }} , 
 	{ "name": "v_size_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_size_2", "role": "full_n" }} , 
 	{ "name": "v_size_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_size_2", "role": "write" }} , 
 	{ "name": "taskToWrite_din", "direction": "out", "datatype": "sc_lv", "bitwidth":480, "type": "signal", "bundle":{"name": "taskToWrite", "role": "din" }} , 
 	{ "name": "taskToWrite_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "taskToWrite", "role": "num_data_valid" }} , 
 	{ "name": "taskToWrite_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "taskToWrite", "role": "fifo_cap" }} , 
 	{ "name": "taskToWrite_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskToWrite", "role": "full_n" }} , 
 	{ "name": "taskToWrite_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskToWrite", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "read_task",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "74", "EstimateLatencyMax" : "74",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem_CHN_0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_CHN_0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_CHN_0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "mem", "Type" : "None", "Direction" : "I"},
			{"Name" : "taskIn", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "taskIn_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_neighbours_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_neighbours_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Pcurrs", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "Pcurrs_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "adj_lists", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "adj_lists_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_size_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_size_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_size_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_size_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_size_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_size_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskToWrite", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "taskToWrite_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_taskIn_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	read_task {
		gmem_CHN_0 {Type I LastRead 73 FirstWrite -1}
		mem {Type I LastRead 0 FirstWrite -1}
		taskIn {Type I LastRead 0 FirstWrite -1}
		v_neighbours_stream {Type O LastRead -1 FirstWrite 74}
		Pcurrs {Type O LastRead -1 FirstWrite 74}
		adj_lists {Type O LastRead -1 FirstWrite 74}
		v_size_0 {Type O LastRead -1 FirstWrite 74}
		v_size_1 {Type O LastRead -1 FirstWrite 74}
		v_size_2 {Type O LastRead -1 FirstWrite 74}
		taskToWrite {Type O LastRead -1 FirstWrite 74}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "74", "Max" : "74"}
	, {"Name" : "Interval", "Min" : "74", "Max" : "74"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem_CHN_0_AWVALID VALID 1 1 }  { m_axi_gmem_CHN_0_AWREADY READY 0 1 }  { m_axi_gmem_CHN_0_AWADDR ADDR 1 64 }  { m_axi_gmem_CHN_0_AWID ID 1 1 }  { m_axi_gmem_CHN_0_AWLEN SIZE 1 32 }  { m_axi_gmem_CHN_0_AWSIZE BURST 1 3 }  { m_axi_gmem_CHN_0_AWBURST LOCK 1 2 }  { m_axi_gmem_CHN_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_CHN_0_AWCACHE PROT 1 4 }  { m_axi_gmem_CHN_0_AWPROT QOS 1 3 }  { m_axi_gmem_CHN_0_AWQOS REGION 1 4 }  { m_axi_gmem_CHN_0_AWREGION USER 1 4 }  { m_axi_gmem_CHN_0_AWUSER DATA 1 1 }  { m_axi_gmem_CHN_0_WVALID VALID 1 1 }  { m_axi_gmem_CHN_0_WREADY READY 0 1 }  { m_axi_gmem_CHN_0_WDATA FIFONUM 1 64 }  { m_axi_gmem_CHN_0_WSTRB STRB 1 8 }  { m_axi_gmem_CHN_0_WLAST LAST 1 1 }  { m_axi_gmem_CHN_0_WID ID 1 1 }  { m_axi_gmem_CHN_0_WUSER DATA 1 1 }  { m_axi_gmem_CHN_0_ARVALID VALID 1 1 }  { m_axi_gmem_CHN_0_ARREADY READY 0 1 }  { m_axi_gmem_CHN_0_ARADDR ADDR 1 64 }  { m_axi_gmem_CHN_0_ARID ID 1 1 }  { m_axi_gmem_CHN_0_ARLEN SIZE 1 32 }  { m_axi_gmem_CHN_0_ARSIZE BURST 1 3 }  { m_axi_gmem_CHN_0_ARBURST LOCK 1 2 }  { m_axi_gmem_CHN_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_CHN_0_ARCACHE PROT 1 4 }  { m_axi_gmem_CHN_0_ARPROT QOS 1 3 }  { m_axi_gmem_CHN_0_ARQOS REGION 1 4 }  { m_axi_gmem_CHN_0_ARREGION USER 1 4 }  { m_axi_gmem_CHN_0_ARUSER DATA 1 1 }  { m_axi_gmem_CHN_0_RVALID VALID 0 1 }  { m_axi_gmem_CHN_0_RREADY READY 1 1 }  { m_axi_gmem_CHN_0_RDATA FIFONUM 0 64 }  { m_axi_gmem_CHN_0_RLAST LAST 0 1 }  { m_axi_gmem_CHN_0_RID ID 0 1 }  { m_axi_gmem_CHN_0_RFIFONUM LEN 0 9 }  { m_axi_gmem_CHN_0_RUSER DATA 0 1 }  { m_axi_gmem_CHN_0_RRESP RESP 0 2 }  { m_axi_gmem_CHN_0_BVALID VALID 0 1 }  { m_axi_gmem_CHN_0_BREADY READY 1 1 }  { m_axi_gmem_CHN_0_BRESP RESP 0 2 }  { m_axi_gmem_CHN_0_BID ID 0 1 }  { m_axi_gmem_CHN_0_BUSER DATA 0 1 } } }
	mem { ap_none {  { mem in_data 0 64 } } }
	taskIn { axis {  { taskIn_TDATA in_data 0 512 }  { taskIn_TVALID in_vld 0 1 }  { taskIn_TREADY in_acc 1 1 } } }
	v_neighbours_stream { ap_fifo {  { v_neighbours_stream_din fifo_data_in 1 64 }  { v_neighbours_stream_num_data_valid fifo_status_num_data_valid 0 5 }  { v_neighbours_stream_fifo_cap fifo_update 0 5 }  { v_neighbours_stream_full_n fifo_status 0 1 }  { v_neighbours_stream_write fifo_port_we 1 1 } } }
	Pcurrs { ap_fifo {  { Pcurrs_din fifo_data_in 1 64 }  { Pcurrs_num_data_valid fifo_status_num_data_valid 0 5 }  { Pcurrs_fifo_cap fifo_update 0 5 }  { Pcurrs_full_n fifo_status 0 1 }  { Pcurrs_write fifo_port_we 1 1 } } }
	adj_lists { ap_fifo {  { adj_lists_din fifo_data_in 1 64 }  { adj_lists_num_data_valid fifo_status_num_data_valid 0 5 }  { adj_lists_fifo_cap fifo_update 0 5 }  { adj_lists_full_n fifo_status 0 1 }  { adj_lists_write fifo_port_we 1 1 } } }
	v_size_0 { ap_fifo {  { v_size_0_din fifo_data_in 1 32 }  { v_size_0_num_data_valid fifo_status_num_data_valid 0 5 }  { v_size_0_fifo_cap fifo_update 0 5 }  { v_size_0_full_n fifo_status 0 1 }  { v_size_0_write fifo_port_we 1 1 } } }
	v_size_1 { ap_fifo {  { v_size_1_din fifo_data_in 1 32 }  { v_size_1_num_data_valid fifo_status_num_data_valid 0 5 }  { v_size_1_fifo_cap fifo_update 0 5 }  { v_size_1_full_n fifo_status 0 1 }  { v_size_1_write fifo_port_we 1 1 } } }
	v_size_2 { ap_fifo {  { v_size_2_din fifo_data_in 1 32 }  { v_size_2_num_data_valid fifo_status_num_data_valid 0 5 }  { v_size_2_fifo_cap fifo_update 0 5 }  { v_size_2_full_n fifo_status 0 1 }  { v_size_2_write fifo_port_we 1 1 } } }
	taskToWrite { ap_fifo {  { taskToWrite_din fifo_data_in 1 480 }  { taskToWrite_num_data_valid fifo_status_num_data_valid 0 5 }  { taskToWrite_fifo_cap fifo_update 0 5 }  { taskToWrite_full_n fifo_status 0 1 }  { taskToWrite_write fifo_port_we 1 1 } } }
}
