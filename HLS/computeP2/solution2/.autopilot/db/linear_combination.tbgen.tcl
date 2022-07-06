set moduleName linear_combination
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
set C_modelName {linear_combination}
set C_modelType { void 0 }
set C_modelArgList {
	{ P1 int 8 regular {array 115920 { 1 3 } 1 1 }  }
	{ oil_space int 8 regular {array 336 { 1 3 } 1 1 }  }
	{ vecs int 17 regular  }
	{ coeffs int 9 regular  }
	{ len int 6 regular  }
	{ out_r int 5 regular {array 60 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "P1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "oil_space", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "vecs", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "coeffs", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "len", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "out_r", "interface" : "memory", "bitwidth" : 5, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ P1_address0 sc_out sc_lv 17 signal 0 } 
	{ P1_ce0 sc_out sc_logic 1 signal 0 } 
	{ P1_q0 sc_in sc_lv 8 signal 0 } 
	{ oil_space_address0 sc_out sc_lv 9 signal 1 } 
	{ oil_space_ce0 sc_out sc_logic 1 signal 1 } 
	{ oil_space_q0 sc_in sc_lv 8 signal 1 } 
	{ vecs sc_in sc_lv 17 signal 2 } 
	{ coeffs sc_in sc_lv 9 signal 3 } 
	{ len sc_in sc_lv 6 signal 4 } 
	{ out_r_address0 sc_out sc_lv 6 signal 5 } 
	{ out_r_ce0 sc_out sc_logic 1 signal 5 } 
	{ out_r_we0 sc_out sc_logic 1 signal 5 } 
	{ out_r_d0 sc_out sc_lv 5 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "P1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "P1", "role": "address0" }} , 
 	{ "name": "P1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1", "role": "ce0" }} , 
 	{ "name": "P1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P1", "role": "q0" }} , 
 	{ "name": "oil_space_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "oil_space", "role": "address0" }} , 
 	{ "name": "oil_space_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "oil_space", "role": "ce0" }} , 
 	{ "name": "oil_space_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "oil_space", "role": "q0" }} , 
 	{ "name": "vecs", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "vecs", "role": "default" }} , 
 	{ "name": "coeffs", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "coeffs", "role": "default" }} , 
 	{ "name": "len", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "len", "role": "default" }} , 
 	{ "name": "out_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "out_r", "role": "address0" }} , 
 	{ "name": "out_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ce0" }} , 
 	{ "name": "out_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "we0" }} , 
 	{ "name": "out_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_r", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accumulators_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_32ns_6ns_5_36_seq_1_U1", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U2", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	linear_combination {
		P1 {Type I LastRead 4 FirstWrite -1}
		oil_space {Type I LastRead 2 FirstWrite -1}
		vecs {Type I LastRead 0 FirstWrite -1}
		coeffs {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 40}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2646", "Max" : "19311"}
	, {"Name" : "Interval", "Min" : "2646", "Max" : "19311"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	P1 { ap_memory {  { P1_address0 mem_address 1 17 }  { P1_ce0 mem_ce 1 1 }  { P1_q0 mem_dout 0 8 } } }
	oil_space { ap_memory {  { oil_space_address0 mem_address 1 9 }  { oil_space_ce0 mem_ce 1 1 }  { oil_space_q0 mem_dout 0 8 } } }
	vecs { ap_none {  { vecs in_data 0 17 } } }
	coeffs { ap_none {  { coeffs in_data 0 9 } } }
	len { ap_none {  { len in_data 0 6 } } }
	out_r { ap_memory {  { out_r_address0 mem_address 1 6 }  { out_r_ce0 mem_ce 1 1 }  { out_r_we0 mem_we 1 1 }  { out_r_d0 mem_din 1 5 } } }
}
