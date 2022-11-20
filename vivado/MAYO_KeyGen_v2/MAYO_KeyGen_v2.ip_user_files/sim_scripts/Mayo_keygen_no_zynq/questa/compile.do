vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/blk_mem_gen_v8_4_4
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/fifo_generator_v13_2_5

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap blk_mem_gen_v8_4_4 questa_lib/msim/blk_mem_gen_v8_4_4
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap fifo_generator_v13_2_5 questa_lib/msim/fifo_generator_v13_2_5

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_4 -64 "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen_no_zynq/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_BIG_BRAM512K_0/sim/Mayo_keygen_no_zynq_BIG_BRAM512K_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_arbit_brama1_0/sim/Mayo_keygen_no_zynq_arbit_brama1_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_Small_BRAM8k_0/sim/Mayo_keygen_no_zynq_Small_BRAM8k_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_arbit_brama0_0/sim/Mayo_keygen_no_zynq_arbit_brama0_0.vhd" \
"../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_arbit_bramb0_0/sim/Mayo_keygen_no_zynq_arbit_bramb0_0.vhd" \

vlog -work xlconstant_v1_1_7 -64 "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen_no_zynq/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_Ground0_0/sim/Mayo_keygen_no_zynq_Ground0_0.v" \
"../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_Ground32_0/sim/Mayo_keygen_no_zynq_Ground32_0.v" \
"../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_Ground4_0/sim/Mayo_keygen_no_zynq_Ground4_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_hash_bram_arbit_0_0/sim/Mayo_keygen_no_zynq_mayo_hash_bram_arbit_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/src/hdl/SABER_HW/Verilog_src/Keccak_Core/SHA_SHAKE_wrapper.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/src/hdl/SABER_HW/Verilog_src/Keccak_Core/keccak_globals.vhd" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/src/hdl/SABER_HW/Verilog_src/Keccak_Core/keccak.vhd" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/src/hdl/SABER_HW/Verilog_src/Keccak_Core/keccak_buffer.vhd" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/src/hdl/SABER_HW/Verilog_src/Keccak_Core/keccak_round.vhd" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/src/hdl/SABER_HW/Verilog_src/Keccak_Core/keccak_round_constants_gen.vhd" \

vlog -work xil_defaultlib -64 "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_keygen_no_zynq/SHAKE_Saber/SHAKE_Saber.srcs/sources_1/new/MAYO_SHAKE.v" \
"../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_MAYO_SHAKE_1_0/sim/Mayo_keygen_no_zynq_MAYO_SHAKE_1_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_negate_0_0/sim/Mayo_keygen_no_zynq_mayo_negate_0_0.vhd" \

vlog -work fifo_generator_v13_2_5 -64 "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_TRNG_0_0/sources_1/ip/fifo_generator_0/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -64 -93 \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_TRNG_0_0/sources_1/ip/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5 -64 "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_TRNG_0_0/sources_1/ip/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_TRNG_0_0/sources_1/ip/fifo_generator_0/sim/fifo_generator_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Mayo_keygen_no_zynq/ipshared/a179/sources_1/imports/rtl/neoTRNG.vhd" \
"../../../bd/Mayo_keygen_no_zynq/ipshared/a179/sources_1/new/TRNG.vhd" \
"../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_TRNG_0_0/sim/Mayo_keygen_no_zynq_TRNG_0_0.vhd" \
"../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_trng_arbiter_0_0/sim/Mayo_keygen_no_zynq_mayo_trng_arbiter_0_0.vhd" \
"../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_reduce_0_0/sim/Mayo_keygen_no_zynq_mayo_reduce_0_0.vhd" \
"../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_sample_oil_space_0_0/sim/Mayo_keygen_no_zynq_mayo_sample_oil_space_0_0.vhd" \
"../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_linear_combinat_0_0/sim/Mayo_keygen_no_zynq_mayo_linear_combinat_0_0.vhd" \
"../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_add_vectors_0_0/sim/Mayo_keygen_no_zynq_mayo_add_vectors_0_0.vhd" \
"../../../bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_MAYO_KEYGEN_FSM_0_0/sim/Mayo_keygen_no_zynq_MAYO_KEYGEN_FSM_0_0.vhd" \
"../../../bd/Mayo_keygen_no_zynq/sim/Mayo_keygen_no_zynq.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

