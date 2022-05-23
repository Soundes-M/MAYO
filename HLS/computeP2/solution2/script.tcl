############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project computeP2
set_top computeP2
add_files computeP2/c/computeP2.cpp
add_files computeP2/c/computeP2.h
open_solution "solution2" -flow_target vivado
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
config_unroll -tripcount_threshold 1
source "./computeP2/solution2/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl vhdl -format ip_catalog
