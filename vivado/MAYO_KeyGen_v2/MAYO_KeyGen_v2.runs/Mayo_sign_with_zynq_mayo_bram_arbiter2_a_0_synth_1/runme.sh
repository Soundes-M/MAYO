#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/tools/Xilinx/Vitis/2020.2/bin:/tools/Xilinx/Vivado/2020.2/ids_lite/ISE/bin/lin64:/tools/Xilinx/Vivado/2020.2/bin
else
  PATH=/tools/Xilinx/Vitis/2020.2/bin:/tools/Xilinx/Vivado/2020.2/ids_lite/ISE/bin/lin64:/tools/Xilinx/Vivado/2020.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.runs/Mayo_sign_with_zynq_mayo_bram_arbiter2_a_0_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log Mayo_sign_with_zynq_mayo_bram_arbiter2_a_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source Mayo_sign_with_zynq_mayo_bram_arbiter2_a_0.tcl