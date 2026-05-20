set ModuleHierarchy {[{
"Name" : "vertex_map", "RefName" : "vertex_map","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "entry_proc_U0", "RefName" : "entry_proc","ID" : "1","Type" : "sequential"},
	{"Name" : "read_task_U0", "RefName" : "read_task","ID" : "2","Type" : "sequential"},
	{"Name" : "readVertex_U0", "RefName" : "readVertex","ID" : "3","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_readVertex_Pipeline_VITIS_LOOP_94_1_fu_98", "RefName" : "readVertex_Pipeline_VITIS_LOOP_94_1","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_94_1","RefName" : "VITIS_LOOP_94_1","ID" : "5","Type" : "pipeline"},]},]},
	{"Name" : "feed_adder_value_U0", "RefName" : "feed_adder_value","ID" : "6","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_feed_adder_value_Pipeline_VITIS_LOOP_135_1_fu_30", "RefName" : "feed_adder_value_Pipeline_VITIS_LOOP_135_1","ID" : "7","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_135_1","RefName" : "VITIS_LOOP_135_1","ID" : "8","Type" : "pipeline"},]},
		{"Name" : "grp_feed_adder_value_Pipeline_VITIS_LOOP_140_2_fu_36", "RefName" : "feed_adder_value_Pipeline_VITIS_LOOP_140_2","ID" : "9","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_140_2","RefName" : "VITIS_LOOP_140_2","ID" : "10","Type" : "pipeline"},]},]},
	{"Name" : "adder_function_U0", "RefName" : "adder_function","ID" : "11","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_adder_function_Pipeline_VITIS_LOOP_117_1_fu_49", "RefName" : "adder_function_Pipeline_VITIS_LOOP_117_1","ID" : "12","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_117_1","RefName" : "VITIS_LOOP_117_1","ID" : "13","Type" : "pipeline"},]},
		{"Name" : "grp_adder_function_Pipeline_VITIS_LOOP_122_2_fu_61", "RefName" : "adder_function_Pipeline_VITIS_LOOP_122_2","ID" : "14","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_122_2","RefName" : "VITIS_LOOP_122_2","ID" : "15","Type" : "pipeline"},]},]},
	{"Name" : "write_arg_U0", "RefName" : "write_arg","ID" : "16","Type" : "sequential"},]
}]}