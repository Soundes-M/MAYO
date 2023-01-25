# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/osm/Documents/SECT-MAYO/MAYO/vitis/Mayo_keygen_sign_system/_ide/scripts/debugger_mayo_keygen_sign-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/osm/Documents/SECT-MAYO/MAYO/vitis/Mayo_keygen_sign_system/_ide/scripts/debugger_mayo_keygen_sign-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Platform Cable USB II 13724327082f01" && level==0 && jtag_device_ctx=="jsn-DLC10-13724327082f01-03727093-0"}
fpga -file /home/osm/Documents/SECT-MAYO/MAYO/vitis/Mayo_keygen_sign/_ide/bitstream/Mayo_keygen_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/osm/Documents/SECT-MAYO/MAYO/vitis/Mayo_keygen_wrapper/export/Mayo_keygen_wrapper/hw/Mayo_keygen_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/osm/Documents/SECT-MAYO/MAYO/vitis/Mayo_keygen_sign/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/osm/Documents/SECT-MAYO/MAYO/vitis/Mayo_keygen_sign/Debug/Mayo_keygen_sign.elf
configparams force-mem-access 0
bpadd -addr &main
