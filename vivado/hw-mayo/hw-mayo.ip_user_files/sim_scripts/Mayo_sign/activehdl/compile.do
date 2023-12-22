vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xlconstant_v1_1_7
vlib activehdl/xil_defaultlib
vlib activehdl/xlconcat_v2_1_4

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xlconstant_v1_1_7 activehdl/xlconstant_v1_1_7
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xlconcat_v2_1_4 activehdl/xlconcat_v2_1_4

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

vlog -work xpm  -sv2k12 "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../hw-mayo.gen/sources_1/bd/Mayo_sign/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_sign/ip/Mayo_sign_Ground0_0/sim/Mayo_sign_Ground0_0.v" \
"../../../bd/Mayo_sign/ip/Mayo_sign_Ground32_0/sim/Mayo_sign_Ground32_0.v" \
"../../../bd/Mayo_sign/ip/Mayo_sign_Ground4_0/sim/Mayo_sign_Ground4_0.v" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../hw-mayo.gen/sources_1/bd/Mayo_sign/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_sign/ip/Mayo_sign_xlconcat_0_0/sim/Mayo_sign_xlconcat_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Mayo_sign/ip/Mayo_sign_mayo_trng_arbiter_0_0/sim/Mayo_sign_mayo_trng_arbiter_0_0.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_aes_128_ctr_0_1/sim/Mayo_sign_aes_128_ctr_0_1.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_mayo_hash_bram_arbit_0_0/sim/Mayo_sign_mayo_hash_bram_arbit_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/Mayo_sign/ip/Mayo_sign_xlconstant_0_0/sim/Mayo_sign_xlconstant_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Mayo_sign/ip/Mayo_sign_shake_128_0_0/sim/Mayo_sign_shake_128_0_0.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_mayo_bram_arbiter2_0_0/sim/Mayo_sign_mayo_bram_arbiter2_0_0.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_mayo_bram_arbiter2_0_1/sim/Mayo_sign_mayo_bram_arbiter2_0_1.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_tdp_SmallBRAM_1_0_0/sim/Mayo_sign_tdp_SmallBRAM_1_0_0.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_mayo_bram_arbiter2_0_2/sim/Mayo_sign_mayo_bram_arbiter2_0_2.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_mayo_bram_arbiter2_1_0/sim/Mayo_sign_mayo_bram_arbiter2_1_0.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_tdp_BigBRAM_2_0_0/sim/Mayo_sign_tdp_BigBRAM_2_0_0.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_mayo_lin_comb_arbiter_0_0/sim/Mayo_sign_mayo_lin_comb_arbiter_0_0.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_mayo_linear_combinat_0_0/sim/Mayo_sign_mayo_linear_combinat_0_0.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_mayo_bram_arbiter2_0_3/sim/Mayo_sign_mayo_bram_arbiter2_0_3.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_mayo_bram_arbiter2_0_4/sim/Mayo_sign_mayo_bram_arbiter2_0_4.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_tdp_BigBRAM_3_0_0/sim/Mayo_sign_tdp_BigBRAM_3_0_0.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_mayo_add_vectors_0_0/sim/Mayo_sign_mayo_add_vectors_0_0.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_mayo_add_vectors_arb_0_0_1/sim/Mayo_sign_mayo_add_vectors_arb_0_0.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_MAYO_P1P1T_0_0/sim/Mayo_sign_MAYO_P1P1T_0_0.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_mayo_add_oil_0_0/sim/Mayo_sign_mayo_add_oil_0_0.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_mayo_negate_0_0/sim/Mayo_sign_mayo_negate_0_0.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_mayo_reduce_0_0/sim/Mayo_sign_mayo_reduce_0_0.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_mayo_reduce_extension_0_0/sim/Mayo_sign_mayo_reduce_extension_0_0.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_memcpy_0_0/sim/Mayo_sign_memcpy_0_0.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_memcpy_0_1/sim/Mayo_sign_memcpy_0_1.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_MAYO_SIGNING_FSM_0_0/sim/Mayo_sign_MAYO_SIGNING_FSM_0_0.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_mayo_sample_oil_0_0/sim/Mayo_sign_mayo_sample_oil_0_0.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_mayo_sample_vinegar_0_0/sim/Mayo_sign_mayo_sample_vinegar_0_0.vhd" \
"../../../bd/Mayo_sign/ip/Mayo_sign_mayo_sample_oil_space_0_0/sim/Mayo_sign_mayo_sample_oil_space_0_0.vhd" \
"../../../bd/Mayo_sign/sim/Mayo_sign.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

