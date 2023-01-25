# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/osm/Documents/SECT-MAYO/MAYO/vitis/Mayo_keygen_wrapper/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/osm/Documents/SECT-MAYO/MAYO/vitis/Mayo_keygen_wrapper/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Mayo_keygen_wrapper}\
-hw {/home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/Mayo_keygen_wrapper.xsa}\
-fsbl-target {psu_cortexa53_0} -out {/home/osm/Documents/SECT-MAYO/MAYO/vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {Mayo_keygen_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform active {Mayo_keygen_wrapper}
bsp reload
domain active {zynq_fsbl}
bsp reload
platform generate -domains 
platform clean
platform clean
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform active {Mayo_keygen_wrapper}
bsp reload
bsp reload
platform generate -domains 
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform active {Mayo_keygen_wrapper}
platform config -updatehw {/home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/Mayo_keygen_wrapper.xsa}
platform clean
platform generate
platform active {Mayo_keygen_wrapper}
platform config -updatehw {/home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/Mayo_keygen_wrapper.xsa}
platform clean
platform generate
platform active {Mayo_keygen_wrapper}
platform config -updatehw {/home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/Mayo_keygen_wrapper.xsa}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform clean
platform active {Mayo_keygen_wrapper}
platform config -updatehw {/home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/Mayo_keygen_wrapper.xsa}
platform generate
platform config -updatehw {/home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/Mayo_keygen_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/Mayo_keygen_wrapper.xsa}
platform generate -domains 
platform active {Mayo_keygen_wrapper}
platform config -updatehw {/home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/Mayo_keygen_wrapper.xsa}
platform clean
platform generate
platform generate
