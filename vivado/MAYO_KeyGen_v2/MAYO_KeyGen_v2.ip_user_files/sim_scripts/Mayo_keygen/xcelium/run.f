-makelib xcelium_lib/xilinx_vip -sv \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_8 -sv \
  "../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_10 -sv \
  "../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_processing_system7_0_0/sim/Mayo_keygen_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_22 \
  "../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_21 \
  "../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_23 \
  "../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_xbar_0/sim/Mayo_keygen_xbar_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_rst_ps7_0_100M_0/sim/Mayo_keygen_rst_ps7_0_100M_0.vhd" \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_arbit_brama1_0/sim/Mayo_keygen_arbit_brama1_0.vhd" \
-endlib
-makelib xcelium_lib/axi_bram_ctrl_v4_1_4 \
  "../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/c9f0/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_axi_bram_ctrl_0_1/sim/Mayo_keygen_axi_bram_ctrl_0_1.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_blk_mem_gen_0_2/sim/Mayo_keygen_blk_mem_gen_0_2.v" \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_BIG_BRAM256KDP_0/sim/Mayo_keygen_BIG_BRAM256KDP_0.v" \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_Small_BRAM8k_0/sim/Mayo_keygen_Small_BRAM8k_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_arbit_brama0_0/sim/Mayo_keygen_arbit_brama0_0.vhd" \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_arbit_bramb0_0/sim/Mayo_keygen_arbit_bramb0_0.vhd" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_Ground0_2/sim/Mayo_keygen_Ground0_2.v" \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_Ground32_0/sim/Mayo_keygen_Ground32_0.v" \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_Ground4_0/sim/Mayo_keygen_Ground4_0.v" \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_TRNG_0_0/sources_1/ip/fifo_generator_0/sim/fifo_generator_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen/ipshared/a179/sources_1/imports/rtl/neoTRNG.vhd" \
  "../../../bd/Mayo_keygen/ipshared/a179/sources_1/new/TRNG.vhd" \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_TRNG_0_0/sim/Mayo_keygen_TRNG_0_0.vhd" \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_mayo_trng_arbiter_0_0/sim/Mayo_keygen_mayo_trng_arbiter_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen/ipshared/1929/src/SHA_SHAKE_wrapper.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen/ipshared/1929/src/keccak_globals.vhd" \
  "../../../bd/Mayo_keygen/ipshared/1929/src/keccak.vhd" \
  "../../../bd/Mayo_keygen/ipshared/1929/src/keccak_buffer.vhd" \
  "../../../bd/Mayo_keygen/ipshared/1929/src/keccak_round.vhd" \
  "../../../bd/Mayo_keygen/ipshared/1929/src/keccak_round_constants_gen.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen/ipshared/1929/src/MAYO_SHAKE.v" \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_MAYO_SHAKE_1_0/sim/Mayo_keygen_MAYO_SHAKE_1_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_mayo_hash_bram_arbit_0_0/sim/Mayo_keygen_mayo_hash_bram_arbit_0_0.vhd" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_4 \
  "../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_xlconcat_0_0/sim/Mayo_keygen_xlconcat_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen/ipshared/d4c9/hdl/mayo_axi_litev3_v3_S00_AXI.vhd" \
  "../../../bd/Mayo_keygen/ipshared/d4c9/hdl/mayo_axi_litev3_v3.vhd" \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_mayo_axi_litev3_0_0/sim/Mayo_keygen_mayo_axi_litev3_0_0.vhd" \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_mayo_add_vectors_0_0/sim/Mayo_keygen_mayo_add_vectors_0_0.vhd" \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_mayo_linear_combinat_0_0/sim/Mayo_keygen_mayo_linear_combinat_0_0.vhd" \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_mayo_negate_0_0/sim/Mayo_keygen_mayo_negate_0_0.vhd" \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_mayo_reduce_0_0/sim/Mayo_keygen_mayo_reduce_0_0.vhd" \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_mayo_sample_oil_space_0_0/sim/Mayo_keygen_mayo_sample_oil_space_0_0.vhd" \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_MAYO_KEYGEN_FSM_0_0/sim/Mayo_keygen_MAYO_KEYGEN_FSM_0_0.vhd" \
  "../../../bd/Mayo_keygen/sim/Mayo_keygen.vhd" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_22 \
  "../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_auto_pc_1/sim/Mayo_keygen_auto_pc_1.v" \
  "../../../bd/Mayo_keygen/ip/Mayo_keygen_auto_pc_0/sim/Mayo_keygen_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

