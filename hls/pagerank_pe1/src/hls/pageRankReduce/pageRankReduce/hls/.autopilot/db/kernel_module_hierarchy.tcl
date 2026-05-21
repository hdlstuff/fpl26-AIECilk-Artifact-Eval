set ModuleHierarchy {[{
"Name" : "pageRankReduce","ID" : "0","Type" : "sequential",
"SubLoops" : [
	{"Name" : "VITIS_LOOP_34_1","ID" : "1","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_pageRankReduce_Pipeline_VITIS_LOOP_38_2_fu_180","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_38_2","ID" : "3","Type" : "pipeline"},]},
	{"Name" : "grp_pageRankReduce_Pipeline_VITIS_LOOP_55_3_fu_192","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_55_3","ID" : "5","Type" : "pipeline"},]},
	{"Name" : "grp_pageRankReduce_Pipeline_VITIS_LOOP_62_4_fu_203","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_62_4","ID" : "7","Type" : "pipeline"},]},]},]
}]}