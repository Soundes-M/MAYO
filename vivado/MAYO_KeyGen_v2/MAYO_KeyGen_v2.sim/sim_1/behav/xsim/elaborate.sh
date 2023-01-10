#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Wed Jan 04 18:17:29 CET 2023
# SW Build 3064766 on Wed Nov 18 09:12:47 MST 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab -wto c288448962fe4364bad66aba55020fde --incr --debug typical --relax --mt 8 -L xil_defaultlib -L blk_mem_gen_v8_4_4 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot lin_comb_tb_behav xil_defaultlib.lin_comb_tb xil_defaultlib.glbl -log elaborate.log"
xelab -wto c288448962fe4364bad66aba55020fde --incr --debug typical --relax --mt 8 -L xil_defaultlib -L blk_mem_gen_v8_4_4 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot lin_comb_tb_behav xil_defaultlib.lin_comb_tb xil_defaultlib.glbl -log elaborate.log

