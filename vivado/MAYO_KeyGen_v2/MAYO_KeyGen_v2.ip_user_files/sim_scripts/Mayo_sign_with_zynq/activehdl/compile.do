vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/blk_mem_gen_v8_4_4
vlib activehdl/xil_defaultlib
vlib activehdl/xlconstant_v1_1_7
vlib activehdl/fifo_generator_v13_2_5
vlib activehdl/xlconcat_v2_1_4
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_8
vlib activehdl/processing_system7_vip_v1_0_10
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/axi_bram_ctrl_v4_1_4
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_22
vlib activehdl/axi_data_fifo_v2_1_21
vlib activehdl/axi_crossbar_v2_1_23
vlib activehdl/axi_protocol_converter_v2_1_22

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap blk_mem_gen_v8_4_4 activehdl/blk_mem_gen_v8_4_4
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xlconstant_v1_1_7 activehdl/xlconstant_v1_1_7
vmap fifo_generator_v13_2_5 activehdl/fifo_generator_v13_2_5
vmap xlconcat_v2_1_4 activehdl/xlconcat_v2_1_4
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 activehdl/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 activehdl/processing_system7_vip_v1_0_10
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap axi_bram_ctrl_v4_1_4 activehdl/axi_bram_ctrl_v4_1_4
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_22 activehdl/axi_register_slice_v2_1_22
vmap axi_data_fifo_v2_1_21 activehdl/axi_data_fifo_v2_1_21
vmap axi_crossbar_v2_1_23 activehdl/axi_crossbar_v2_1_23
vmap axi_protocol_converter_v2_1_22 activehdl/axi_protocol_converter_v2_1_22

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

vlog -work xpm  -sv2k12 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_BigBRAM_2_256K_0/sim/Mayo_sign_with_zynq_BigBRAM_2_256K_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_bram_arbiter2_a_0/sim/Mayo_sign_with_zynq_mayo_bram_arbiter2_a_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_BigBRAM_3_256K_0/sim/Mayo_sign_with_zynq_BigBRAM_3_256K_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_bram_arbiter2_a_1/sim/Mayo_sign_with_zynq_mayo_bram_arbiter2_a_1.vhd" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_bram_arbiter2_b_1/sim/Mayo_sign_with_zynq_mayo_bram_arbiter2_b_1.vhd" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_Ground0_0/sim/Mayo_sign_with_zynq_Ground0_0.v" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_Ground32_0/sim/Mayo_sign_with_zynq_Ground32_0.v" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_Ground4_0/sim/Mayo_sign_with_zynq_Ground4_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_lin_comb_arbiter_0_0/sim/Mayo_sign_with_zynq_mayo_lin_comb_arbiter_0_0.vhd" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_linear_combinat_0_0/sim/Mayo_sign_with_zynq_mayo_linear_combinat_0_0.vhd" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_MAYO_P1P1T_0_0/sim/Mayo_sign_with_zynq_MAYO_P1P1T_0_0.vhd" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_MAYO_SIGNING_FSM_0_0/sim/Mayo_sign_with_zynq_MAYO_SIGNING_FSM_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_SmallBRAM_1_8K_0/sim/Mayo_sign_with_zynq_SmallBRAM_1_8K_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_bram_arbiter2_a_2/sim/Mayo_sign_with_zynq_mayo_bram_arbiter2_a_2.vhd" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_bram_arbiter2_b_2/sim/Mayo_sign_with_zynq_mayo_bram_arbiter2_b_2.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_TRNG_0_0/sources_1/ip/fifo_generator_0/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_TRNG_0_0/sources_1/ip/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_TRNG_0_0/sources_1/ip/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_TRNG_0_0/sources_1/ip/fifo_generator_0/sim/fifo_generator_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Mayo_sign_with_zynq/ipshared/a179/sources_1/imports/rtl/neoTRNG.vhd" \
"../../../bd/Mayo_sign_with_zynq/ipshared/a179/sources_1/new/TRNG.vhd" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_TRNG_0_0/sim/Mayo_sign_with_zynq_TRNG_0_0.vhd" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_xlconcat_0_0/sim/Mayo_sign_with_zynq_xlconcat_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_trng_arbiter_0_0/sim/Mayo_sign_with_zynq_mayo_trng_arbiter_0_0.vhd" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_add_vectors_arb_0_0/sim/Mayo_sign_with_zynq_mayo_add_vectors_arb_0_0.vhd" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_add_vectors_0_0/sim/Mayo_sign_with_zynq_mayo_add_vectors_0_0.vhd" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_hash_bram_arbit_0_0/sim/Mayo_sign_with_zynq_mayo_hash_bram_arbit_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_sign_with_zynq/ipshared/7b2a/src/SHA_SHAKE_wrapper.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Mayo_sign_with_zynq/ipshared/7b2a/src/keccak_globals.vhd" \
"../../../bd/Mayo_sign_with_zynq/ipshared/7b2a/src/keccak.vhd" \
"../../../bd/Mayo_sign_with_zynq/ipshared/7b2a/src/keccak_buffer.vhd" \
"../../../bd/Mayo_sign_with_zynq/ipshared/7b2a/src/keccak_round.vhd" \
"../../../bd/Mayo_sign_with_zynq/ipshared/7b2a/src/keccak_round_constants_gen.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_sign_with_zynq/ipshared/7b2a/src/MAYO_SHAKE.v" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_MAYO_SHAKE_1_0/sim/Mayo_sign_with_zynq_MAYO_SHAKE_1_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_add_oil_0_0/sim/Mayo_sign_with_zynq_mayo_add_oil_0_0.vhd" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_negate_0_0/sim/Mayo_sign_with_zynq_mayo_negate_0_0.vhd" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_reduce_0_0/sim/Mayo_sign_with_zynq_mayo_reduce_0_0.vhd" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_reduce_extension_0_0/sim/Mayo_sign_with_zynq_mayo_reduce_extension_0_0.vhd" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_sample_oil_0_0/sim/Mayo_sign_with_zynq_mayo_sample_oil_0_0.vhd" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_sample_oil_space_0_0/sim/Mayo_sign_with_zynq_mayo_sample_oil_space_0_0.vhd" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_sample_vinegar_0_0/sim/Mayo_sign_with_zynq_mayo_sample_vinegar_0_0.vhd" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_memcpy_0_0/sim/Mayo_sign_with_zynq_memcpy_0_0.vhd" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_memcpy_1_0/sim/Mayo_sign_with_zynq_memcpy_1_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -sv2k12 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10  -sv2k12 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_processing_system7_0_0/sim/Mayo_sign_with_zynq_processing_system7_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Mayo_sign_with_zynq/ipshared/d4c9/hdl/mayo_axi_litev3_v3_S00_AXI.vhd" \
"../../../bd/Mayo_sign_with_zynq/ipshared/d4c9/hdl/mayo_axi_litev3_v3.vhd" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_axi_litev3_0_0/sim/Mayo_sign_with_zynq_mayo_axi_litev3_0_0.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_rst_ps7_0_100M_0/sim/Mayo_sign_with_zynq_rst_ps7_0_100M_0.vhd" \

vcom -work axi_bram_ctrl_v4_1_4 -93 \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/c9f0/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_axi_bram_ctrl_0_0/sim/Mayo_sign_with_zynq_axi_bram_ctrl_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_23  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_xbar_0/sim/Mayo_sign_with_zynq_xbar_0.v" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_xlconcat_0_1/sim/Mayo_sign_with_zynq_xlconcat_0_1.v" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_xlconstant_0_0/sim/Mayo_sign_with_zynq_xlconstant_0_0.v" \

vlog -work axi_protocol_converter_v2_1_22  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/ec67/hdl" "+incdir+../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_auto_pc_1/sim/Mayo_sign_with_zynq_auto_pc_1.v" \
"../../../bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_auto_pc_0/sim/Mayo_sign_with_zynq_auto_pc_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Mayo_sign_with_zynq/sim/Mayo_sign_with_zynq.vhd" \

vlog -work xil_defaultlib \
"glbl.v"
