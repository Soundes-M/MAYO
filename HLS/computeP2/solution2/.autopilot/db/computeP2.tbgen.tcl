set moduleName computeP2
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {computeP2}
set C_modelType { void 0 }
set C_modelArgList {
	{ oil_space int 8 regular {array 336 { 1 3 } 1 1 }  }
	{ P1 int 8 regular {array 115920 { 1 1 } 1 1 }  }
	{ P2 int 8 regular {array 1260 { 2 0 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "oil_space", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "oil_space","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "P1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "P1","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "P2", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "P2","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ oil_space_address0 sc_out sc_lv 9 signal 0 } 
	{ oil_space_ce0 sc_out sc_logic 1 signal 0 } 
	{ oil_space_q0 sc_in sc_lv 8 signal 0 } 
	{ P1_address0 sc_out sc_lv 17 signal 1 } 
	{ P1_ce0 sc_out sc_logic 1 signal 1 } 
	{ P1_q0 sc_in sc_lv 8 signal 1 } 
	{ P1_address1 sc_out sc_lv 17 signal 1 } 
	{ P1_ce1 sc_out sc_logic 1 signal 1 } 
	{ P1_q1 sc_in sc_lv 8 signal 1 } 
	{ P2_address0 sc_out sc_lv 11 signal 2 } 
	{ P2_ce0 sc_out sc_logic 1 signal 2 } 
	{ P2_we0 sc_out sc_logic 1 signal 2 } 
	{ P2_d0 sc_out sc_lv 8 signal 2 } 
	{ P2_q0 sc_in sc_lv 8 signal 2 } 
	{ P2_address1 sc_out sc_lv 11 signal 2 } 
	{ P2_ce1 sc_out sc_logic 1 signal 2 } 
	{ P2_we1 sc_out sc_logic 1 signal 2 } 
	{ P2_d1 sc_out sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "oil_space_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "oil_space", "role": "address0" }} , 
 	{ "name": "oil_space_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "oil_space", "role": "ce0" }} , 
 	{ "name": "oil_space_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "oil_space", "role": "q0" }} , 
 	{ "name": "P1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "P1", "role": "address0" }} , 
 	{ "name": "P1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1", "role": "ce0" }} , 
 	{ "name": "P1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P1", "role": "q0" }} , 
 	{ "name": "P1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "P1", "role": "address1" }} , 
 	{ "name": "P1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1", "role": "ce1" }} , 
 	{ "name": "P1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P1", "role": "q1" }} , 
 	{ "name": "P2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "P2", "role": "address0" }} , 
 	{ "name": "P2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2", "role": "ce0" }} , 
 	{ "name": "P2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2", "role": "we0" }} , 
 	{ "name": "P2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2", "role": "d0" }} , 
 	{ "name": "P2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2", "role": "q0" }} , 
 	{ "name": "P2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "P2", "role": "address1" }} , 
 	{ "name": "P2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2", "role": "ce1" }} , 
 	{ "name": "P2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2", "role": "we1" }} , 
 	{ "name": "P2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "10", "14", "18", "22", "27", "28", "29", "30", "31"],
		"CDFG" : "computeP2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1437290", "EstimateLatencyMax" : "8347940",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "oil_space", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_linear_combination_fu_544", "Port" : "oil_space"},
					{"ID" : "18", "SubInstance" : "grp_linear_combination_1_fu_567", "Port" : "oil_space"},
					{"ID" : "14", "SubInstance" : "grp_linear_combination_2_fu_556", "Port" : "oil_space"}]},
			{"Name" : "P1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_linear_combination_fu_544", "Port" : "P1"},
					{"ID" : "5", "SubInstance" : "grp_add_vectors_1_fu_534", "Port" : "P1"}]},
			{"Name" : "P2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_add_vectors_2_fu_579", "Port" : "P2"},
					{"ID" : "18", "SubInstance" : "grp_linear_combination_1_fu_567", "Port" : "P2"}]},
			{"Name" : "temp", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_add_vectors_1_fu_534", "Port" : "v1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vec_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tempt_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vec_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_add_vectors_1_fu_534", "Parent" : "0", "Child" : ["6", "7", "8", "9"],
		"CDFG" : "add_vectors_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "901", "EstimateLatencyMax" : "901",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "P1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v2", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_add_vectors_1_fu_534.urem_9ns_6ns_5_13_seq_1_U12", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_add_vectors_1_fu_534.urem_9ns_6ns_5_13_seq_1_U13", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_add_vectors_1_fu_534.urem_9ns_6ns_5_13_seq_1_U14", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_add_vectors_1_fu_534.urem_9ns_6ns_5_13_seq_1_U15", "Parent" : "5"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_linear_combination_fu_544", "Parent" : "0", "Child" : ["11", "12", "13"],
		"CDFG" : "linear_combination",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2646", "EstimateLatencyMax" : "19311",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "P1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "oil_space", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "vecs", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeffs", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_linear_combination_fu_544.accumulators_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_linear_combination_fu_544.urem_32ns_6ns_5_36_seq_1_U1", "Parent" : "10"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_linear_combination_fu_544.mac_muladd_8ns_8ns_32ns_32_4_1_U2", "Parent" : "10"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_linear_combination_2_fu_556", "Parent" : "0", "Child" : ["15", "16", "17"],
		"CDFG" : "linear_combination_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19311", "EstimateLatencyMax" : "19311",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "oil_space", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "vecs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "vecs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeffs", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_linear_combination_2_fu_556.accumulators_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_linear_combination_2_fu_556.urem_32ns_6ns_5_36_seq_1_U31", "Parent" : "14"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_linear_combination_2_fu_556.mac_muladd_5ns_8ns_32ns_32_4_1_U32", "Parent" : "14"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_linear_combination_1_fu_567", "Parent" : "0", "Child" : ["19", "20", "21"],
		"CDFG" : "linear_combination_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19371", "EstimateLatencyMax" : "19371",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "oil_space", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "P2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "vecs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "vecs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeffs", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_linear_combination_1_fu_567.accumulators_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_linear_combination_1_fu_567.urem_32ns_6ns_8_36_seq_1_U21", "Parent" : "18"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_linear_combination_1_fu_567.mac_muladd_5ns_8ns_32ns_32_4_1_U22", "Parent" : "18"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_add_vectors_2_fu_579", "Parent" : "0", "Child" : ["23", "24", "25", "26"],
		"CDFG" : "add_vectors_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "901", "EstimateLatencyMax" : "901",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "P2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "v1", "Type" : "None", "Direction" : "I"},
			{"Name" : "v2", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_add_vectors_2_fu_579.urem_9ns_6ns_8_13_seq_1_U38", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_add_vectors_2_fu_579.urem_9ns_6ns_8_13_seq_1_U39", "Parent" : "22"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_add_vectors_2_fu_579.urem_9ns_6ns_8_13_seq_1_U40", "Parent" : "22"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_add_vectors_2_fu_579.urem_9ns_6ns_8_13_seq_1_U41", "Parent" : "22"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_6ns_6ns_5_10_seq_1_U46", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_6ns_6ns_5_10_seq_1_U47", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_6ns_6ns_5_10_seq_1_U48", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_6ns_6ns_5_10_seq_1_U49", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_15s_13ns_15_4_1_U50", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	computeP2 {
		oil_space {Type I LastRead 2 FirstWrite -1}
		P1 {Type I LastRead 32 FirstWrite -1}
		P2 {Type IO LastRead 46 FirstWrite 6}
		temp {Type IO LastRead -1 FirstWrite -1}}
	add_vectors_1 {
		P1 {Type I LastRead 32 FirstWrite -1}
		v1 {Type IO LastRead 46 FirstWrite 15}
		out_offset {Type I LastRead 0 FirstWrite -1}
		v2 {Type I LastRead 0 FirstWrite -1}}
	linear_combination {
		P1 {Type I LastRead 4 FirstWrite -1}
		oil_space {Type I LastRead 2 FirstWrite -1}
		vecs {Type I LastRead 0 FirstWrite -1}
		coeffs {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 40}}
	linear_combination_2 {
		oil_space {Type I LastRead 2 FirstWrite -1}
		vecs {Type I LastRead 4 FirstWrite -1}
		vecs_offset {Type I LastRead 0 FirstWrite -1}
		coeffs {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 40}}
	linear_combination_1 {
		oil_space {Type I LastRead 2 FirstWrite -1}
		P2 {Type O LastRead -1 FirstWrite 41}
		vecs {Type I LastRead 4 FirstWrite -1}
		vecs_offset {Type I LastRead 0 FirstWrite -1}
		coeffs {Type I LastRead 0 FirstWrite -1}
		out_r {Type I LastRead 0 FirstWrite -1}}
	add_vectors_2 {
		P2 {Type IO LastRead 46 FirstWrite 15}
		v1 {Type I LastRead 0 FirstWrite -1}
		v2 {Type I LastRead 32 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1437290", "Max" : "8347940"}
	, {"Name" : "Interval", "Min" : "1437291", "Max" : "8347941"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	oil_space { ap_memory {  { oil_space_address0 mem_address 1 9 }  { oil_space_ce0 mem_ce 1 1 }  { oil_space_q0 mem_dout 0 8 } } }
	P1 { ap_memory {  { P1_address0 mem_address 1 17 }  { P1_ce0 mem_ce 1 1 }  { P1_q0 mem_dout 0 8 }  { P1_address1 MemPortADDR2 1 17 }  { P1_ce1 MemPortCE2 1 1 }  { P1_q1 MemPortDOUT2 0 8 } } }
	P2 { ap_memory {  { P2_address0 mem_address 1 11 }  { P2_ce0 mem_ce 1 1 }  { P2_we0 mem_we 1 1 }  { P2_d0 mem_din 1 8 }  { P2_q0 mem_dout 0 8 }  { P2_address1 MemPortADDR2 1 11 }  { P2_ce1 MemPortCE2 1 1 }  { P2_we1 MemPortWE2 1 1 }  { P2_d1 MemPortDIN2 1 8 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
