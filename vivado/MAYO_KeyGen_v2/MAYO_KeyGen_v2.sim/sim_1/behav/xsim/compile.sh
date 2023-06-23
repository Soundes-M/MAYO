#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# Filename    : compile.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for compiling the simulation design source files
#
# Generated by Vivado on Fri Jun 23 19:54:09 CEST 2023
# SW Build 3064766 on Wed Nov 18 09:12:47 MST 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: compile.sh
#
# ****************************************************************************
set -Eeuo pipefail
# compile Verilog/System Verilog design sources
echo "xvlog --incr --relax -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip -prj Mayo_sign_no_zynq_tb_vlog.prj"
xvlog --incr --relax -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip -prj Mayo_sign_no_zynq_tb_vlog.prj 2>&1 | tee compile.log

# compile VHDL design sources
echo "xvhdl --incr --relax -prj Mayo_sign_no_zynq_tb_vhdl.prj"
xvhdl --incr --relax -prj Mayo_sign_no_zynq_tb_vhdl.prj 2>&1 | tee -a compile.log

echo "Waiting for jobs to finish..."
echo "No pending jobs, compilation finished."
