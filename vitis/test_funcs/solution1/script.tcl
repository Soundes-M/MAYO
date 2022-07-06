############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project test_funcs
set_top test_func
add_files test_func.cpp
add_files test_func.h
add_files -tb test_func_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./test_funcs/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -wave_debug -enable_dataflow_profiling -trace_level all -rtl vhdl
export_design -format ip_catalog
