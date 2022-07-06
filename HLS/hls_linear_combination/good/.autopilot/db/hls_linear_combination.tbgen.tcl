set moduleName hls_linear_combination
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
set C_modelName {hls_linear_combination}
set C_modelType { void 0 }
set C_modelArgList {
	{ vecs_V int 16 regular {axi_s 0 volatile  { vecs_V Data } }  }
	{ coeffs_V int 16 regular {axi_s 0 volatile  { coeffs_V Data } }  }
	{ len int 32 regular  }
	{ out_V int 16 regular {axi_s 1 volatile  { out_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vecs_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "vecs.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "coeffs_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "coeffs.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "len", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "len","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "out_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vecs_V_TDATA sc_in sc_lv 16 signal 0 } 
	{ vecs_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ vecs_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ coeffs_V_TDATA sc_in sc_lv 16 signal 1 } 
	{ coeffs_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ coeffs_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ len sc_in sc_lv 32 signal 2 } 
	{ out_V_TDATA sc_out sc_lv 16 signal 3 } 
	{ out_V_TVALID sc_out sc_logic 1 outvld 3 } 
	{ out_V_TREADY sc_in sc_logic 1 outacc 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vecs_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "vecs_V", "role": "TDATA" }} , 
 	{ "name": "vecs_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "vecs_V", "role": "TVALID" }} , 
 	{ "name": "vecs_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "vecs_V", "role": "TREADY" }} , 
 	{ "name": "coeffs_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "coeffs_V", "role": "TDATA" }} , 
 	{ "name": "coeffs_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "coeffs_V", "role": "TVALID" }} , 
 	{ "name": "coeffs_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "coeffs_V", "role": "TREADY" }} , 
 	{ "name": "len", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "len", "role": "default" }} , 
 	{ "name": "out_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_V", "role": "TDATA" }} , 
 	{ "name": "out_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_V", "role": "TVALID" }} , 
 	{ "name": "out_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88"],
		"CDFG" : "hls_linear_combination",
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
		"Port" : [
			{"Name" : "vecs_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vecs_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "coeffs_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "coeffs_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "accumulators_15_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_15_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_15_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_0_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_0_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_0_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_0_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_1_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_1_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_1_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_1_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_2_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_2_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_2_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_2_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_3_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_3_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_3_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_3_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_4_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_4_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_4_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_4_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_5_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_5_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_5_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_5_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_6_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_6_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_6_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_6_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_7_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_7_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_7_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_7_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_8_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_8_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_8_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_8_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_9_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_9_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_9_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_9_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_10_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_10_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_10_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_10_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_11_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_11_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_11_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_11_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_12_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_12_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_12_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_13_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_13_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_13_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_14_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_14_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accumulators_14_2", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vec_l_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vec_l_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vec_l_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vec_l_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vec_l_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vec_l_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.coeffs_l_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_l_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U1", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U2", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U3", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U4", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U5", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U6", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U7", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U8", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U9", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U10", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U11", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U12", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U13", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U14", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U15", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U16", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_32ns_6ns_5_36_1_U17", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U18", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U19", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U20", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U21", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U22", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U23", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U24", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U25", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U26", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U27", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U28", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U29", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U30", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U31", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U32", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U33", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U34", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U35", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U36", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U37", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U38", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U39", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U40", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U41", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U42", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U43", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U44", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U45", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U46", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U47", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U48", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U49", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U50", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U51", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U52", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U53", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U54", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U55", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U56", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U57", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U58", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U59", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U60", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U61", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U62", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U63", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U64", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U65", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U66", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U67", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U68", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U69", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U70", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U71", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U72", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U73", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U74", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U75", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U76", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_32ns_32_4_1_U77", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_vecs_V_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_coeffs_V_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hls_linear_combination {
		vecs_V {Type I LastRead 8 FirstWrite -1}
		coeffs_V {Type I LastRead 8 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		out_V {Type O LastRead -1 FirstWrite 15}
		accumulators_15_0 {Type IO LastRead -1 FirstWrite -1}
		accumulators_15_1 {Type IO LastRead -1 FirstWrite -1}
		accumulators_15_2 {Type IO LastRead -1 FirstWrite -1}
		accumulators_0_0 {Type IO LastRead -1 FirstWrite -1}
		accumulators_0_1 {Type IO LastRead -1 FirstWrite -1}
		accumulators_0_2 {Type IO LastRead -1 FirstWrite -1}
		accumulators_0_3 {Type IO LastRead -1 FirstWrite -1}
		accumulators_1_0 {Type IO LastRead -1 FirstWrite -1}
		accumulators_1_1 {Type IO LastRead -1 FirstWrite -1}
		accumulators_1_2 {Type IO LastRead -1 FirstWrite -1}
		accumulators_1_3 {Type IO LastRead -1 FirstWrite -1}
		accumulators_2_0 {Type IO LastRead -1 FirstWrite -1}
		accumulators_2_1 {Type IO LastRead -1 FirstWrite -1}
		accumulators_2_2 {Type IO LastRead -1 FirstWrite -1}
		accumulators_2_3 {Type IO LastRead -1 FirstWrite -1}
		accumulators_3_0 {Type IO LastRead -1 FirstWrite -1}
		accumulators_3_1 {Type IO LastRead -1 FirstWrite -1}
		accumulators_3_2 {Type IO LastRead -1 FirstWrite -1}
		accumulators_3_3 {Type IO LastRead -1 FirstWrite -1}
		accumulators_4_0 {Type IO LastRead -1 FirstWrite -1}
		accumulators_4_1 {Type IO LastRead -1 FirstWrite -1}
		accumulators_4_2 {Type IO LastRead -1 FirstWrite -1}
		accumulators_4_3 {Type IO LastRead -1 FirstWrite -1}
		accumulators_5_0 {Type IO LastRead -1 FirstWrite -1}
		accumulators_5_1 {Type IO LastRead -1 FirstWrite -1}
		accumulators_5_2 {Type IO LastRead -1 FirstWrite -1}
		accumulators_5_3 {Type IO LastRead -1 FirstWrite -1}
		accumulators_6_0 {Type IO LastRead -1 FirstWrite -1}
		accumulators_6_1 {Type IO LastRead -1 FirstWrite -1}
		accumulators_6_2 {Type IO LastRead -1 FirstWrite -1}
		accumulators_6_3 {Type IO LastRead -1 FirstWrite -1}
		accumulators_7_0 {Type IO LastRead -1 FirstWrite -1}
		accumulators_7_1 {Type IO LastRead -1 FirstWrite -1}
		accumulators_7_2 {Type IO LastRead -1 FirstWrite -1}
		accumulators_7_3 {Type IO LastRead -1 FirstWrite -1}
		accumulators_8_0 {Type IO LastRead -1 FirstWrite -1}
		accumulators_8_1 {Type IO LastRead -1 FirstWrite -1}
		accumulators_8_2 {Type IO LastRead -1 FirstWrite -1}
		accumulators_8_3 {Type IO LastRead -1 FirstWrite -1}
		accumulators_9_0 {Type IO LastRead -1 FirstWrite -1}
		accumulators_9_1 {Type IO LastRead -1 FirstWrite -1}
		accumulators_9_2 {Type IO LastRead -1 FirstWrite -1}
		accumulators_9_3 {Type IO LastRead -1 FirstWrite -1}
		accumulators_10_0 {Type IO LastRead -1 FirstWrite -1}
		accumulators_10_1 {Type IO LastRead -1 FirstWrite -1}
		accumulators_10_2 {Type IO LastRead -1 FirstWrite -1}
		accumulators_10_3 {Type IO LastRead -1 FirstWrite -1}
		accumulators_11_0 {Type IO LastRead -1 FirstWrite -1}
		accumulators_11_1 {Type IO LastRead -1 FirstWrite -1}
		accumulators_11_2 {Type IO LastRead -1 FirstWrite -1}
		accumulators_11_3 {Type IO LastRead -1 FirstWrite -1}
		accumulators_12_0 {Type IO LastRead -1 FirstWrite -1}
		accumulators_12_1 {Type IO LastRead -1 FirstWrite -1}
		accumulators_12_2 {Type IO LastRead -1 FirstWrite -1}
		accumulators_13_0 {Type IO LastRead -1 FirstWrite -1}
		accumulators_13_1 {Type IO LastRead -1 FirstWrite -1}
		accumulators_13_2 {Type IO LastRead -1 FirstWrite -1}
		accumulators_14_0 {Type IO LastRead -1 FirstWrite -1}
		accumulators_14_1 {Type IO LastRead -1 FirstWrite -1}
		accumulators_14_2 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "5", "EnableSignal" : "ap_enable_pp5"}
	{"Pipeline" : "6", "EnableSignal" : "ap_enable_pp6"}
	{"Pipeline" : "7", "EnableSignal" : "ap_enable_pp7"}
]}

set Spec2ImplPortList { 
	vecs_V { axis {  { vecs_V_TDATA in_data 0 16 }  { vecs_V_TVALID in_vld 0 1 }  { vecs_V_TREADY in_acc 1 1 } } }
	coeffs_V { axis {  { coeffs_V_TDATA in_data 0 16 }  { coeffs_V_TVALID in_vld 0 1 }  { coeffs_V_TREADY in_acc 1 1 } } }
	len { ap_none {  { len in_data 0 32 } } }
	out_V { axis {  { out_V_TDATA out_data 1 16 }  { out_V_TVALID out_vld 1 1 }  { out_V_TREADY out_acc 0 1 } } }
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
