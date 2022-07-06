############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_linear_combination
set_top hls_linear_combination
add_files hls_linear_combination/hls_linear_combination.h
add_files hls_linear_combination/hls_linear_combination.cpp
add_files -tb hls_linear_combination/test_sample_la -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb hls_linear_combination/hls_linear_combinations_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "good" -flow_target vivado
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
config_export -format ip_catalog -output /home/osm/Documents/SECT-MAYO/MAYO/HLS/ips/hls_linear_combination.zip -rtl vhdl
source "./hls_linear_combination/good/directives.tcl"
csim_design -clean
csynth_design
cosim_design -wave_debug -trace_level all -rtl vhdl
export_design -rtl vhdl -format ip_catalog -output /home/osm/Documents/SECT-MAYO/MAYO/HLS/ips/hls_linear_combination.zip
