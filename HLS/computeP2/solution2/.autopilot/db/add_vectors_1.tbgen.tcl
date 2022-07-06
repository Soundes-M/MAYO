set moduleName add_vectors_1
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
set C_modelName {add_vectors.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ P1 int 8 regular {array 115920 { 1 1 } 1 1 }  }
	{ v1 int 5 regular {array 20160 { 2 3 } 1 1 }  }
	{ out_offset int 15 regular  }
	{ v2 int 17 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "P1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "v1", "interface" : "memory", "bitwidth" : 5, "direction" : "READWRITE"} , 
 	{ "Name" : "out_offset", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "v2", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} ]}
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
	{ P1_address1 sc_out sc_lv 17 signal 0 } 
	{ P1_ce1 sc_out sc_logic 1 signal 0 } 
	{ P1_q1 sc_in sc_lv 8 signal 0 } 
	{ v1_address0 sc_out sc_lv 15 signal 1 } 
	{ v1_ce0 sc_out sc_logic 1 signal 1 } 
	{ v1_we0 sc_out sc_logic 1 signal 1 } 
	{ v1_d0 sc_out sc_lv 5 signal 1 } 
	{ v1_q0 sc_in sc_lv 5 signal 1 } 
	{ out_offset sc_in sc_lv 15 signal 2 } 
	{ v2 sc_in sc_lv 17 signal 3 } 
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
 	{ "name": "P1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "P1", "role": "address1" }} , 
 	{ "name": "P1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1", "role": "ce1" }} , 
 	{ "name": "P1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P1", "role": "q1" }} , 
 	{ "name": "v1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "v1", "role": "address0" }} , 
 	{ "name": "v1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1", "role": "ce0" }} , 
 	{ "name": "v1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1", "role": "we0" }} , 
 	{ "name": "v1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "v1", "role": "d0" }} , 
 	{ "name": "v1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "v1", "role": "q0" }} , 
 	{ "name": "out_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "out_offset", "role": "default" }} , 
 	{ "name": "v2", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "v2", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_9ns_6ns_5_13_seq_1_U12", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_9ns_6ns_5_13_seq_1_U13", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_9ns_6ns_5_13_seq_1_U14", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_9ns_6ns_5_13_seq_1_U15", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	add_vectors_1 {
		P1 {Type I LastRead 32 FirstWrite -1}
		v1 {Type IO LastRead 46 FirstWrite 15}
		out_offset {Type I LastRead 0 FirstWrite -1}
		v2 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "901", "Max" : "901"}
	, {"Name" : "Interval", "Min" : "901", "Max" : "901"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	P1 { ap_memory {  { P1_address0 mem_address 1 17 }  { P1_ce0 mem_ce 1 1 }  { P1_q0 mem_dout 0 8 }  { P1_address1 MemPortADDR2 1 17 }  { P1_ce1 MemPortCE2 1 1 }  { P1_q1 MemPortDOUT2 0 8 } } }
	v1 { ap_memory {  { v1_address0 mem_address 1 15 }  { v1_ce0 mem_ce 1 1 }  { v1_we0 mem_we 1 1 }  { v1_d0 mem_din 1 5 }  { v1_q0 mem_dout 0 5 } } }
	out_offset { ap_none {  { out_offset in_data 0 15 } } }
	v2 { ap_none {  { v2 in_data 0 17 } } }
}
