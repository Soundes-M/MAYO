set moduleName linear_combination_1
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
set C_modelName {linear_combination.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ oil_space int 8 regular {array 336 { 1 3 } 1 1 }  }
	{ P2 int 8 regular {array 1260 { 0 3 } 0 1 }  }
	{ vecs int 5 regular {array 20160 { 1 3 } 1 1 }  }
	{ vecs_offset int 15 regular  }
	{ coeffs int 9 regular  }
	{ out_r int 11 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "oil_space", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "P2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vecs", "interface" : "memory", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "vecs_offset", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "coeffs", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "out_r", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
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
	{ P2_address0 sc_out sc_lv 11 signal 1 } 
	{ P2_ce0 sc_out sc_logic 1 signal 1 } 
	{ P2_we0 sc_out sc_logic 1 signal 1 } 
	{ P2_d0 sc_out sc_lv 8 signal 1 } 
	{ vecs_address0 sc_out sc_lv 15 signal 2 } 
	{ vecs_ce0 sc_out sc_logic 1 signal 2 } 
	{ vecs_q0 sc_in sc_lv 5 signal 2 } 
	{ vecs_offset sc_in sc_lv 15 signal 3 } 
	{ coeffs sc_in sc_lv 9 signal 4 } 
	{ out_r sc_in sc_lv 11 signal 5 } 
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
 	{ "name": "P2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "P2", "role": "address0" }} , 
 	{ "name": "P2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2", "role": "ce0" }} , 
 	{ "name": "P2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2", "role": "we0" }} , 
 	{ "name": "P2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2", "role": "d0" }} , 
 	{ "name": "vecs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "vecs", "role": "address0" }} , 
 	{ "name": "vecs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vecs", "role": "ce0" }} , 
 	{ "name": "vecs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vecs", "role": "q0" }} , 
 	{ "name": "vecs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "vecs_offset", "role": "default" }} , 
 	{ "name": "coeffs", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "coeffs", "role": "default" }} , 
 	{ "name": "out_r", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "out_r", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accumulators_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_32ns_6ns_8_36_seq_1_U21", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_5ns_8ns_32ns_32_4_1_U22", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	linear_combination_1 {
		oil_space {Type I LastRead 2 FirstWrite -1}
		P2 {Type O LastRead -1 FirstWrite 41}
		vecs {Type I LastRead 4 FirstWrite -1}
		vecs_offset {Type I LastRead 0 FirstWrite -1}
		coeffs {Type I LastRead 0 FirstWrite -1}
		out_r {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "19371", "Max" : "19371"}
	, {"Name" : "Interval", "Min" : "19371", "Max" : "19371"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	oil_space { ap_memory {  { oil_space_address0 mem_address 1 9 }  { oil_space_ce0 mem_ce 1 1 }  { oil_space_q0 mem_dout 0 8 } } }
	P2 { ap_memory {  { P2_address0 mem_address 1 11 }  { P2_ce0 mem_ce 1 1 }  { P2_we0 mem_we 1 1 }  { P2_d0 mem_din 1 8 } } }
	vecs { ap_memory {  { vecs_address0 mem_address 1 15 }  { vecs_ce0 mem_ce 1 1 }  { vecs_q0 mem_dout 0 5 } } }
	vecs_offset { ap_none {  { vecs_offset in_data 0 15 } } }
	coeffs { ap_none {  { coeffs in_data 0 9 } } }
	out_r { ap_none {  { out_r in_data 0 11 } } }
}
