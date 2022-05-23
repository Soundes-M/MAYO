############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name hls_linear_combination "hls_linear_combination"
set_directive_pipeline "hls_linear_combination/LOOP_LC2"
set_directive_pipeline "hls_linear_combination/LOOP_LC1"
set_directive_array_partition -type cyclic -factor 16 -dim 1 "hls_linear_combination" accumulators
set_directive_pipeline "hls_linear_combination"
