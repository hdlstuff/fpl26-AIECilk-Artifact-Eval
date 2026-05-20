set ModuleHierarchy {[{
"Name" : "vertex_map", "RefName" : "vertex_map","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "entry_proc_U0", "RefName" : "entry_proc","ID" : "1","Type" : "sequential"},
	{"Name" : "read_task_U0", "RefName" : "read_task","ID" : "2","Type" : "sequential"},
	{"Name" : "readVertex_U0", "RefName" : "readVertex","ID" : "3","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_readVertex_Pipeline_VITIS_LOOP_95_1_fu_88", "RefName" : "readVertex_Pipeline_VITIS_LOOP_95_1","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_95_1","RefName" : "VITIS_LOOP_95_1","ID" : "5","Type" : "pipeline"},]},]},
	{"Name" : "feed_adder_value_U0", "RefName" : "feed_adder_value","ID" : "6","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_feed_adder_value_Pipeline_VITIS_LOOP_136_1_fu_30", "RefName" : "feed_adder_value_Pipeline_VITIS_LOOP_136_1","ID" : "7","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_136_1","RefName" : "VITIS_LOOP_136_1","ID" : "8","Type" : "pipeline"},]},
		{"Name" : "grp_feed_adder_value_Pipeline_VITIS_LOOP_141_2_fu_36", "RefName" : "feed_adder_value_Pipeline_VITIS_LOOP_141_2","ID" : "9","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_141_2","RefName" : "VITIS_LOOP_141_2","ID" : "10","Type" : "pipeline"},]},]},
	{"Name" : "adder_function_U0", "RefName" : "adder_function","ID" : "11","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_adder_function_Pipeline_VITIS_LOOP_118_1_fu_49", "RefName" : "adder_function_Pipeline_VITIS_LOOP_118_1","ID" : "12","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_118_1","RefName" : "VITIS_LOOP_118_1","ID" : "13","Type" : "pipeline"},]},
		{"Name" : "grp_adder_function_Pipeline_VITIS_LOOP_123_2_fu_61", "RefName" : "adder_function_Pipeline_VITIS_LOOP_123_2","ID" : "14","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_123_2","RefName" : "VITIS_LOOP_123_2","ID" : "15","Type" : "pipeline"},]},]},
	{"Name" : "write_arg_U0", "RefName" : "write_arg","ID" : "16","Type" : "sequential"},]
}]}