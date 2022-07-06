############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name hls_linear_combination "hls_linear_combination"
set_directive_interface -mode axis -register -register_mode both "hls_linear_combination" vecs
set_directive_interface -mode axis -register -register_mode both "hls_linear_combination" coeffs
set_directive_interface -mode axis -register -register_mode both "hls_linear_combination" out
set_directive_array_partition -type cyclic -factor 16 -dim 1 "hls_linear_combination" accumulators
set_directive_array_partition -type cyclic -factor 6 -dim 2 "hls_linear_combination" vec_l
set_directive_pipeline -off "hls_linear_combination/READ_LOOP_VEC1"
set_directive_unroll -factor 4 "hls_linear_combination/READ_LOOP_VEC1"
set_directive_pipeline "hls_linear_combination/READ_LOOP_VEC2"
