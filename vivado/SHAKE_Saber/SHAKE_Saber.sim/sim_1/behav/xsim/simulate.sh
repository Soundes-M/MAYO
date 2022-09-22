#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Mon Sep 19 20:20:09 CEST 2022
# SW Build 3064766 on Wed Nov 18 09:12:47 MST 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim MAYO_SHAKE_tb_behav -key {Behavioral:sim_1:Functional:MAYO_SHAKE_tb} -tclbatch MAYO_SHAKE_tb.tcl -view /home/osm/Documents/SECT-MAYO/MAYO/vivado/SHAKE_Saber/MAYO_SHAKE_tb_behav.wcfg -log simulate.log"
xsim MAYO_SHAKE_tb_behav -key {Behavioral:sim_1:Functional:MAYO_SHAKE_tb} -tclbatch MAYO_SHAKE_tb.tcl -view /home/osm/Documents/SECT-MAYO/MAYO/vivado/SHAKE_Saber/MAYO_SHAKE_tb_behav.wcfg -log simulate.log
