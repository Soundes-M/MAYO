#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Mon Sep 19 20:18:53 CEST 2022
# SW Build 3064766 on Wed Nov 18 09:12:47 MST 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab -wto 2f43b2cf09f640fea4cbc4f3e5748376 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L blk_mem_gen_v8_4_4 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot MAYO_SHAKE_tb_behav xil_defaultlib.MAYO_SHAKE_tb xil_defaultlib.glbl -log elaborate.log"
xelab -wto 2f43b2cf09f640fea4cbc4f3e5748376 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L blk_mem_gen_v8_4_4 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot MAYO_SHAKE_tb_behav xil_defaultlib.MAYO_SHAKE_tb xil_defaultlib.glbl -log elaborate.log
