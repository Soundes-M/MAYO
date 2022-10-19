vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_8
vlib riviera/processing_system7_vip_v1_0_10
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_22
vlib riviera/fifo_generator_v13_2_5
vlib riviera/axi_data_fifo_v2_1_21
vlib riviera/axi_crossbar_v2_1_23
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/xlconstant_v1_1_7
vlib riviera/blk_mem_gen_v8_4_4
vlib riviera/axi_bram_ctrl_v4_1_4
vlib riviera/axi_protocol_converter_v2_1_22

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 riviera/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 riviera/processing_system7_vip_v1_0_10
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_22 riviera/axi_register_slice_v2_1_22
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_21 riviera/axi_data_fifo_v2_1_21
vmap axi_crossbar_v2_1_23 riviera/axi_crossbar_v2_1_23
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7
vmap blk_mem_gen_v8_4_4 riviera/blk_mem_gen_v8_4_4
vmap axi_bram_ctrl_v4_1_4 riviera/axi_bram_ctrl_v4_1_4
vmap axi_protocol_converter_v2_1_22 riviera/axi_protocol_converter_v2_1_22

vlog -work xilinx_vip  -sv2k12 "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Mayo_keygen/ipshared/53d8/src/MAYO_Common.vhd" \
"../../../bd/Mayo_keygen/ipshared/53d8/src/utils.vhd" \
"../../../bd/Mayo_keygen/ipshared/53d8/hdl/AXI_LITE_Mayo_Keygen_v1_5_S00_AXI.vhd" \
"../../../bd/Mayo_keygen/ipshared/53d8/hdl/AXI_LITE_Mayo_Keygen_v1_5.vhd" \
"../../../bd/Mayo_keygen/ip/Mayo_keygen_AXI_LITE_Mayo_Keygen_0_0/sim/Mayo_keygen_AXI_LITE_Mayo_Keygen_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -sv2k12 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10  -sv2k12 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_keygen/ip/Mayo_keygen_processing_system7_0_0/sim/Mayo_keygen_processing_system7_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_23  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_keygen/ip/Mayo_keygen_xbar_0/sim/Mayo_keygen_xbar_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Mayo_keygen/ip/Mayo_keygen_rst_ps7_0_100M_0/sim/Mayo_keygen_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_keygen/ip/Mayo_keygen_TRNG_0_0/sources_1/ip/fifo_generator_0/sim/fifo_generator_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Mayo_keygen/ipshared/9e6c/sources_1/imports/rtl/neoTRNG.vhd" \
"../../../bd/Mayo_keygen/ipshared/9e6c/sources_1/new/TRNG.vhd" \
"../../../bd/Mayo_keygen/ip/Mayo_keygen_TRNG_0_0/sim/Mayo_keygen_TRNG_0_0.vhd" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_keygen/ip/Mayo_keygen_xlconstant_0_0/sim/Mayo_keygen_xlconstant_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Mayo_keygen/ip/Mayo_keygen_mayo_linear_combinat_0_0/sim/Mayo_keygen_mayo_linear_combinat_0_0.vhd" \
"../../../bd/Mayo_keygen/ip/Mayo_keygen_mayo_negate_0_0/sim/Mayo_keygen_mayo_negate_0_0.vhd" \
"../../../bd/Mayo_keygen/ip/Mayo_keygen_mayo_reduce_0_0/sim/Mayo_keygen_mayo_reduce_0_0.vhd" \
"../../../bd/Mayo_keygen/ip/Mayo_keygen_mayo_sample_oil_space_0_0/sim/Mayo_keygen_mayo_sample_oil_space_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_keygen/ip/Mayo_keygen_Ground0_0/sim/Mayo_keygen_Ground0_0.v" \
"../../../bd/Mayo_keygen/ipshared/43b5/src/SHA_SHAKE_wrapper.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Mayo_keygen/ipshared/43b5/src/keccak_globals.vhd" \
"../../../bd/Mayo_keygen/ipshared/43b5/src/keccak.vhd" \
"../../../bd/Mayo_keygen/ipshared/43b5/src/keccak_buffer.vhd" \
"../../../bd/Mayo_keygen/ipshared/43b5/src/keccak_round.vhd" \
"../../../bd/Mayo_keygen/ipshared/43b5/src/keccak_round_constants_gen.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_keygen/ipshared/43b5/src/MAYO_SHAKE.v" \
"../../../bd/Mayo_keygen/ip/Mayo_keygen_MAYO_SHAKE_1_0/sim/Mayo_keygen_MAYO_SHAKE_1_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Mayo_keygen/ip/Mayo_keygen_mayo_hash_arbiter_0_0/sim/Mayo_keygen_mayo_hash_arbiter_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_keygen/ip/Mayo_keygen_blk_mem_gen_0_0/sim/Mayo_keygen_blk_mem_gen_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Mayo_keygen/ip/Mayo_keygen_mayo_bram_arbiter_0_0/sim/Mayo_keygen_mayo_bram_arbiter_0_0.vhd" \
"../../../bd/Mayo_keygen/ip/Mayo_keygen_mayo_bram_arbiter_1_0/sim/Mayo_keygen_mayo_bram_arbiter_1_0.vhd" \

vcom -work axi_bram_ctrl_v4_1_4 -93 \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/c9f0/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Mayo_keygen/ip/Mayo_keygen_axi_bram_ctrl_0_0/sim/Mayo_keygen_axi_bram_ctrl_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_keygen/ip/Mayo_keygen_blk_mem_gen_0_1/sim/Mayo_keygen_blk_mem_gen_0_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Mayo_keygen/ip/Mayo_keygen_mayo_bram_arbiter_2_0/sim/Mayo_keygen_mayo_bram_arbiter_2_0.vhd" \
"../../../bd/Mayo_keygen/ip/Mayo_keygen_mayo_add_vectors_0_0/sim/Mayo_keygen_mayo_add_vectors_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_keygen/ip/Mayo_keygen_Ground0_1/sim/Mayo_keygen_Ground0_1.v" \

vlog -work axi_protocol_converter_v2_1_22  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_keygen/ip/Mayo_keygen_auto_pc_1/sim/Mayo_keygen_auto_pc_1.v" \
"../../../bd/Mayo_keygen/ip/Mayo_keygen_auto_pc_0/sim/Mayo_keygen_auto_pc_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Mayo_keygen/sim/Mayo_keygen.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

