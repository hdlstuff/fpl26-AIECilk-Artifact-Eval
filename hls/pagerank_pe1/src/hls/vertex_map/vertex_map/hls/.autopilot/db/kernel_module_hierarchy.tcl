set ModuleHierarchy {[{
"Name" : "vertex_map","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "entry_proc_U0","ID" : "1","Type" : "sequential"},
	{"Name" : "read_task_U0","ID" : "2","Type" : "sequential"},
	{"Name" : "readVertex_U0","ID" : "3","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_readVertex_Pipeline_VITIS_LOOP_92_1_fu_98","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_92_1","ID" : "5","Type" : "pipeline"},]},]},
	{"Name" : "feed_adder_value_U0","ID" : "6","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_feed_adder_value_Pipeline_VITIS_LOOP_133_1_fu_30","ID" : "7","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_133_1","ID" : "8","Type" : "pipeline"},]},
		{"Name" : "grp_feed_adder_value_Pipeline_VITIS_LOOP_138_2_fu_36","ID" : "9","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_138_2","ID" : "10","Type" : "pipeline"},]},]},
	{"Name" : "adder_function_U0","ID" : "11","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_adder_function_Pipeline_VITIS_LOOP_115_1_fu_49","ID" : "12","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_115_1","ID" : "13","Type" : "pipeline"},]},
		{"Name" : "grp_adder_function_Pipeline_VITIS_LOOP_120_2_fu_60","ID" : "14","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_120_2","ID" : "15","Type" : "pipeline"},]},]},
	{"Name" : "write_arg_U0","ID" : "16","Type" : "sequential"},]
}]}