set moduleName vertex_map
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {vertex_map}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem int 64 regular {axi_master 2}  }
	{ mem_0 int 64 regular {axi_slave 0}  }
	{ mem_1 int 64 regular {axi_slave 0}  }
	{ mem_2 int 64 regular {axi_slave 0}  }
	{ mem_5 int 64 regular {axi_slave 0}  }
	{ taskIn int 512 regular {axi_s 0 volatile  { taskIn Data } }  }
	{ taskOutGlobal int 512 regular {axi_s 1 volatile  { taskOutGlobal Data } }  }
}
set hasAXIMCache 1
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
dict set AXIMCacheInstDict gmem_m_axi_U [list 1 2]
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "mem_5","offset": { "type": "dynamic","port_name": "mem_5","bundle": "control"},"direction": "READWRITE"}]},{"cElement": [{"cName": "mem_0","offset": { "type": "dynamic","port_name": "mem_0","bundle": "control"},"direction": "READONLY"}]},{"cElement": [{"cName": "mem_1","offset": { "type": "dynamic","port_name": "mem_1","bundle": "control"},"direction": "READONLY"}]},{"cElement": [{"cName": "mem_2","offset": { "type": "dynamic","port_name": "mem_2","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "mem_0", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "mem_1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "mem_2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "mem_5", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "taskIn", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "taskOutGlobal", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 70
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 3 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 3 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ taskIn_TDATA sc_in sc_lv 512 signal 5 } 
	{ taskOutGlobal_TDATA sc_out sc_lv 512 signal 6 } 
	{ taskIn_TVALID sc_in sc_logic 1 invld 5 } 
	{ taskIn_TREADY sc_out sc_logic 1 inacc 5 } 
	{ taskOutGlobal_TVALID sc_out sc_logic 1 outvld 6 } 
	{ taskOutGlobal_TREADY sc_in sc_logic 1 outacc 6 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"mem_0","role":"data","value":"16"},{"name":"mem_1","role":"data","value":"28"},{"name":"mem_2","role":"data","value":"40"},{"name":"mem_5","role":"data","value":"52"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "taskIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "taskIn", "role": "TDATA" }} , 
 	{ "name": "taskOutGlobal_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "taskOutGlobal", "role": "TDATA" }} , 
 	{ "name": "taskIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "taskIn", "role": "TVALID" }} , 
 	{ "name": "taskIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "taskIn", "role": "TREADY" }} , 
 	{ "name": "taskOutGlobal_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "taskOutGlobal", "role": "TVALID" }} , 
 	{ "name": "taskOutGlobal_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "taskOutGlobal", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "6", "11", "16", "22", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40"],
		"CDFG" : "vertex_map",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "3", "Name" : "entry_proc_U0"},
			{"ID" : "4", "Name" : "read_task_U0"},
			{"ID" : "6", "Name" : "readVertex_U0"},
			{"ID" : "22", "Name" : "write_arg_U0"}],
		"OutputProcess" : [
			{"ID" : "22", "Name" : "write_arg_U0"}],
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_task_U0", "Port" : "gmem_CHN_0"},
					{"ID" : "22", "SubInstance" : "write_arg_U0", "Port" : "gmem_CHN_5"},
					{"ID" : "6", "SubInstance" : "readVertex_U0", "Port" : "gmem_CHN_2"}]},
			{"Name" : "mem_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "mem_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "mem_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "mem_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "taskIn", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_task_U0", "Port" : "taskIn"}]},
			{"Name" : "taskOutGlobal", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "write_arg_U0", "Port" : "taskOutGlobal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mem_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "mem_5_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "29", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mem_5_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_task_U0", "Parent" : "0", "Child" : ["5"],
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
			{"Name" : "v_neighbours_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "30", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_neighbours_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Pcurrs", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "31", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "Pcurrs_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "adj_lists", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "32", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "adj_lists_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_size_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "33", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_size_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_size_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "34", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_size_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_size_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "35", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_size_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskToWrite", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "36", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "taskToWrite_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_task_U0.regslice_both_taskIn_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.readVertex_U0", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "readVertex",
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
			{"Name" : "gmem_CHN_1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_readVertex_Pipeline_VITIS_LOOP_92_1_fu_98", "Port" : "gmem_CHN_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "mem0", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_CHN_2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_readVertex_Pipeline_VITIS_LOOP_92_1_fu_98", "Port" : "gmem_CHN_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "mem1", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_neighbours_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "30", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_neighbours_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_size_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "33", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_size_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "adj_lists", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "32", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "adj_lists_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Pcurrs", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "31", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "Pcurrs_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "adder_in_feed_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "37", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_readVertex_Pipeline_VITIS_LOOP_92_1_fu_98", "Port" : "adder_in_feed_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.readVertex_U0.grp_readVertex_Pipeline_VITIS_LOOP_92_1_fu_98", "Parent" : "6", "Child" : ["8", "9", "10"],
		"CDFG" : "readVertex_Pipeline_VITIS_LOOP_92_1",
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
			{"Name" : "mem0", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_neighbours", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_CHN_1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_CHN_1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_CHN_1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "adj_list", "Type" : "None", "Direction" : "I"},
			{"Name" : "mem1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Pcurr", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_CHN_2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_CHN_2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_CHN_2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "adder_in_feed_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "adder_in_feed_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter81", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter81", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.readVertex_U0.grp_readVertex_Pipeline_VITIS_LOOP_92_1_fu_98.fdiv_32ns_32ns_32_12_no_dsp_1_U14", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.readVertex_U0.grp_readVertex_Pipeline_VITIS_LOOP_92_1_fu_98.uitofp_32ns_32_4_no_dsp_1_U15", "Parent" : "7"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.readVertex_U0.grp_readVertex_Pipeline_VITIS_LOOP_92_1_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.feed_adder_value_U0", "Parent" : "0", "Child" : ["12", "14"],
		"CDFG" : "feed_adder_value",
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
			{"Name" : "v_size_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "34", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_size_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "adder_results", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["16"], "DependentChan" : "38", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_feed_adder_value_Pipeline_VITIS_LOOP_138_2_fu_36", "Port" : "adder_results", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "adder_in_feed_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "39", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_feed_adder_value_Pipeline_VITIS_LOOP_133_1_fu_30", "Port" : "adder_in_feed_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "14", "SubInstance" : "grp_feed_adder_value_Pipeline_VITIS_LOOP_138_2_fu_36", "Port" : "adder_in_feed_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.feed_adder_value_U0.grp_feed_adder_value_Pipeline_VITIS_LOOP_133_1_fu_30", "Parent" : "11", "Child" : ["13"],
		"CDFG" : "feed_adder_value_Pipeline_VITIS_LOOP_133_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "adder_in_feed_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "adder_in_feed_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_133_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.feed_adder_value_U0.grp_feed_adder_value_Pipeline_VITIS_LOOP_133_1_fu_30.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.feed_adder_value_U0.grp_feed_adder_value_Pipeline_VITIS_LOOP_138_2_fu_36", "Parent" : "11", "Child" : ["15"],
		"CDFG" : "feed_adder_value_Pipeline_VITIS_LOOP_138_2",
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
			{"Name" : "adder_results", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "adder_results_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "adder_in_feed_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "adder_in_feed_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_138_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.feed_adder_value_U0.grp_feed_adder_value_Pipeline_VITIS_LOOP_138_2_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.adder_function_U0", "Parent" : "0", "Child" : ["17", "19", "21"],
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
			{"Name" : "v_size_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "35", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_size_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sums_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "40", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sums_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "adder_results", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "38", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_adder_function_Pipeline_VITIS_LOOP_115_1_fu_49", "Port" : "adder_results", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "adder_in_feed_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["11"], "DependentChan" : "39", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_adder_function_Pipeline_VITIS_LOOP_115_1_fu_49", "Port" : "adder_in_feed_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "19", "SubInstance" : "grp_adder_function_Pipeline_VITIS_LOOP_120_2_fu_60", "Port" : "adder_in_feed_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "adder_in_feed_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "37", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_adder_function_Pipeline_VITIS_LOOP_115_1_fu_49", "Port" : "adder_in_feed_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.adder_function_U0.grp_adder_function_Pipeline_VITIS_LOOP_115_1_fu_49", "Parent" : "16", "Child" : ["18"],
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
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.adder_function_U0.grp_adder_function_Pipeline_VITIS_LOOP_115_1_fu_49.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.adder_function_U0.grp_adder_function_Pipeline_VITIS_LOOP_120_2_fu_60", "Parent" : "16", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.adder_function_U0.grp_adder_function_Pipeline_VITIS_LOOP_120_2_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.adder_function_U0.fadd_32ns_32ns_32_7_full_dsp_1_U51", "Parent" : "16"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.write_arg_U0", "Parent" : "0", "Child" : ["23", "24", "25", "26", "27", "28"],
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
			{"Name" : "mem", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "29", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mem_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskOutGlobal", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "taskOutGlobal_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskToWrite", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "36", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "taskToWrite_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sums_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["16"], "DependentChan" : "40", "DependentChanDepth" : "9", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sums_stream_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.write_arg_U0.faddfsub_32ns_32ns_32_7_full_dsp_1_U58", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.write_arg_U0.fmul_32ns_32ns_32_4_max_dsp_1_U59", "Parent" : "22"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.write_arg_U0.fdiv_32ns_32ns_32_12_no_dsp_1_U60", "Parent" : "22"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.write_arg_U0.uitofp_32ns_32_4_no_dsp_1_U61", "Parent" : "22"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.write_arg_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U62", "Parent" : "22"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.write_arg_U0.regslice_both_taskOutGlobal_U", "Parent" : "22"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_5_c_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_neighbours_stream_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Pcurrs_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.adj_lists_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_size_0_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_size_1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_size_2_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.taskToWrite_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.adder_in_feed_1_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.adder_results_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.adder_in_feed_0_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sums_stream_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	vertex_map {
		gmem {Type IO LastRead 145 FirstWrite -1}
		mem_0 {Type I LastRead 1 FirstWrite -1}
		mem_1 {Type I LastRead 1 FirstWrite -1}
		mem_2 {Type I LastRead 1 FirstWrite -1}
		mem_5 {Type I LastRead 1 FirstWrite -1}
		taskIn {Type I LastRead 0 FirstWrite -1}
		taskOutGlobal {Type O LastRead -1 FirstWrite 140}}
	entry_proc {
		mem_5 {Type I LastRead 0 FirstWrite -1}
		mem_5_c {Type O LastRead -1 FirstWrite 0}}
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
		taskToWrite {Type O LastRead -1 FirstWrite 74}}
	readVertex {
		gmem_CHN_1 {Type I LastRead 145 FirstWrite -1}
		mem0 {Type I LastRead 0 FirstWrite -1}
		gmem_CHN_2 {Type I LastRead 145 FirstWrite -1}
		mem1 {Type I LastRead 0 FirstWrite -1}
		v_neighbours_stream {Type I LastRead 0 FirstWrite -1}
		v_size_0 {Type I LastRead 0 FirstWrite -1}
		adj_lists {Type I LastRead 0 FirstWrite -1}
		Pcurrs {Type I LastRead 0 FirstWrite -1}
		adder_in_feed_1 {Type O LastRead -1 FirstWrite 162}}
	readVertex_Pipeline_VITIS_LOOP_92_1 {
		v_size {Type I LastRead 0 FirstWrite -1}
		mem0 {Type I LastRead 0 FirstWrite -1}
		v_neighbours {Type I LastRead 0 FirstWrite -1}
		gmem_CHN_1 {Type I LastRead 145 FirstWrite -1}
		adj_list {Type I LastRead 0 FirstWrite -1}
		mem1 {Type I LastRead 0 FirstWrite -1}
		Pcurr {Type I LastRead 0 FirstWrite -1}
		gmem_CHN_2 {Type I LastRead 145 FirstWrite -1}
		adder_in_feed_1 {Type O LastRead -1 FirstWrite 162}}
	feed_adder_value {
		v_size_1 {Type I LastRead 0 FirstWrite -1}
		adder_results {Type I LastRead 1 FirstWrite -1}
		adder_in_feed_0 {Type O LastRead -1 FirstWrite 1}}
	feed_adder_value_Pipeline_VITIS_LOOP_133_1 {
		adder_in_feed_0 {Type O LastRead -1 FirstWrite 1}}
	feed_adder_value_Pipeline_VITIS_LOOP_138_2 {
		v_size {Type I LastRead 0 FirstWrite -1}
		adder_results {Type I LastRead 1 FirstWrite -1}
		adder_in_feed_0 {Type O LastRead -1 FirstWrite 1}}
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
		sum_out {Type O LastRead -1 FirstWrite 2}}
	write_arg {
		gmem_CHN_5 {Type IO LastRead 73 FirstWrite 72}
		mem {Type I LastRead 0 FirstWrite -1}
		taskOutGlobal {Type O LastRead -1 FirstWrite 140}
		taskToWrite {Type I LastRead 0 FirstWrite -1}
		sums_stream {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 3 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 256 }  { m_axi_gmem_WSTRB STRB 1 32 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 3 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 3 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 256 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 3 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 3 }  { m_axi_gmem_BUSER DATA 0 1 } } }
	taskIn { axis {  { taskIn_TDATA in_data 0 512 }  { taskIn_TVALID in_vld 0 1 }  { taskIn_TREADY in_acc 1 1 } } }
	taskOutGlobal { axis {  { taskOutGlobal_TDATA out_data 1 512 }  { taskOutGlobal_TVALID out_vld 1 1 }  { taskOutGlobal_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem_CHN_0 { CHANNEL_NUM 0 BUNDLE gmem NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_CHN_1 { CHANNEL_NUM 1 BUNDLE gmem NUM_READ_OUTSTANDING 64 NUM_WRITE_OUTSTANDING 1 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY NUM_CACHE_LINES 2 CACHE_LINE_DEPTH 4 CACHE_LINE_WIDTH 64 CACHE_MEM_IMPL auto}
dict set maxi_interface_dict gmem_CHN_2 { CHANNEL_NUM 2 BUNDLE gmem NUM_READ_OUTSTANDING 64 NUM_WRITE_OUTSTANDING 1 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY NUM_CACHE_LINES 2 CACHE_LINE_DEPTH 4 CACHE_LINE_WIDTH 64 CACHE_MEM_IMPL auto}
dict set maxi_interface_dict gmem_CHN_5 { CHANNEL_NUM 5 BUNDLE gmem NUM_READ_OUTSTANDING 64 NUM_WRITE_OUTSTANDING 1 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}
dict set maxi_interface_dict gmem {CHANNEL_NAMES {gmem_CHN_0 gmem_CHN_1 gmem_CHN_2 gmem_CHN_5}}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
