############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name computeP2 "computeP2"
set_directive_pipeline "linear_combination/LOOP_LC2"
set_directive_unroll -factor 4 "add_vectors/add_vectors_label0"
set_directive_unroll -factor 4 "add_vectors/add_vectors_label1"
