############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_linear_combination
set_top hls_linear_combination
add_files hls_linear_combination/hls_linear_combination.cpp
add_files hls_linear_combination/hls_linear_combination.h
add_files -tb hls_linear_combination/hls_linear_combinations_test.cpp -cflags "-Wno-unknown-pragmas"
add_files -tb hls_linear_combination/test_sample_la
open_solution "base" -flow_target vivado
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
source "./hls_linear_combination/base/directives.tcl"
csim_design -clean
csynth_design
cosim_design -enable_dataflow_profiling -trace_level all -rtl vhdl
export_design -format ip_catalog
