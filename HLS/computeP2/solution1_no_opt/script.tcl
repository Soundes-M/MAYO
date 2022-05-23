############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project computeP2
set_top computeP2
add_files computeP2/c/computeP2.h
add_files computeP2/c/computeP2.cpp
open_solution "solution1_no_opt" -flow_target vivado
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
config_unroll -tripcount_threshold 1
source "./computeP2/solution1_no_opt/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl vhdl -format ip_catalog
