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
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen_no_zynq/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_BIG_BRAM512K_0/sim/Mayo_keygen_no_zynq_BIG_BRAM512K_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_arbit_brama1_0/sim/Mayo_keygen_no_zynq_arbit_brama1_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_Small_BRAM8k_0/sim/Mayo_keygen_no_zynq_Small_BRAM8k_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_arbit_brama0_0/sim/Mayo_keygen_no_zynq_arbit_brama0_0.vhd" \
  "../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_arbit_bramb0_0/sim/Mayo_keygen_no_zynq_arbit_bramb0_0.vhd" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen_no_zynq/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_Ground0_0/sim/Mayo_keygen_no_zynq_Ground0_0.v" \
  "../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_Ground32_0/sim/Mayo_keygen_no_zynq_Ground32_0.v" \
  "../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_Ground4_0/sim/Mayo_keygen_no_zynq_Ground4_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_hash_bram_arbit_0_0/sim/Mayo_keygen_no_zynq_mayo_hash_bram_arbit_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen_no_zynq/ipshared/30f0/src/SHA_SHAKE_wrapper.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen_no_zynq/ipshared/30f0/src/keccak_globals.vhd" \
  "../../../bd/Mayo_keygen_no_zynq/ipshared/30f0/src/keccak.vhd" \
  "../../../bd/Mayo_keygen_no_zynq/ipshared/30f0/src/keccak_buffer.vhd" \
  "../../../bd/Mayo_keygen_no_zynq/ipshared/30f0/src/keccak_round.vhd" \
  "../../../bd/Mayo_keygen_no_zynq/ipshared/30f0/src/keccak_round_constants_gen.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen_no_zynq/ipshared/30f0/src/MAYO_SHAKE.v" \
  "../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_MAYO_SHAKE_0_0/sim/Mayo_keygen_no_zynq_MAYO_SHAKE_0_0.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_TRNG_0_0/sources_1/ip/fifo_generator_0/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_TRNG_0_0/sources_1/ip/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_TRNG_0_0/sources_1/ip/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_TRNG_0_0/sources_1/ip/fifo_generator_0/sim/fifo_generator_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Mayo_keygen_no_zynq/ipshared/a179/sources_1/imports/rtl/neoTRNG.vhd" \
  "../../../bd/Mayo_keygen_no_zynq/ipshared/a179/sources_1/new/TRNG.vhd" \
  "../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_TRNG_0_0/sim/Mayo_keygen_no_zynq_TRNG_0_0.vhd" \
  "../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_trng_arbiter_0_0/sim/Mayo_keygen_no_zynq_mayo_trng_arbiter_0_0.vhd" \
  "../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_reduce_0_0/sim/Mayo_keygen_no_zynq_mayo_reduce_0_0.vhd" \
  "../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_sample_oil_space_0_0/sim/Mayo_keygen_no_zynq_mayo_sample_oil_space_0_0.vhd" \
  "../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_add_vectors_0_0/sim/Mayo_keygen_no_zynq_mayo_add_vectors_0_0.vhd" \
  "../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_linear_combinat_0_0/sim/Mayo_keygen_no_zynq_mayo_linear_combinat_0_0.vhd" \
  "../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_MAYO_KEYGEN_FSM_0_0/sim/Mayo_keygen_no_zynq_MAYO_KEYGEN_FSM_0_0.vhd" \
  "../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_negate_0_0/sim/Mayo_keygen_no_zynq_mayo_negate_0_0.vhd" \
  "../../../bd/Mayo_keygen_no_zynq/sim/Mayo_keygen_no_zynq.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

